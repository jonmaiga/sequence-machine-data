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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
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
import Seq.B003.C006
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A096853.P9612521034690238778

`A062401(2^(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A096853.P9612521034690238778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (2 ^ (n + 1) - 1)

end

end A096853.P9612521034690238778

noncomputable section

/-- A096853: a(n) = A062401(2^n-1).

Offset 1, canonical program `A096853.P9612521034690238778`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A062401(2^(n+1)-1)` (program `A096853.P9612521034690238778`, by `A096853.P9612521034690238778.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A096853 (n : ℕ) : ℤ :=
  A096853.P9612521034690238778.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A062401(2^(n+1)-1)` (program `A096853.P9612521034690238778`, by `A096853.P9612521034690238778.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A096853.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A096854.P16261224724697573173

`A062402(2^(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A096854.P16261224724697573173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062402 (2 ^ (n + 1) - 1)

end

end A096854.P16261224724697573173

noncomputable section

/-- A096854: a(n) = A062402(2^n-1).

Offset 1, canonical program `A096854.P16261224724697573173`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A062402(2^(n+1)-1)` (program `A096854.P16261224724697573173`, by `A096854.P16261224724697573173.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A096854 (n : ℕ) : ℤ :=
  A096854.P16261224724697573173.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A062402(2^(n+1)-1)` (program `A096854.P16261224724697573173`, by `A096854.P16261224724697573173.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A096854.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A096855.P4288218702433459592

`A062401(2^n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A096855.P4288218702433459592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (2 ^ n + 1)

end

end A096855.P4288218702433459592

noncomputable section

/-- A096855: a(n) = A062401(2^n + 1).

Offset 0, canonical program `A096855.P4288218702433459592`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A062401(2^n+1)` (program `A096855.P4288218702433459592`, by `A096855.P4288218702433459592.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A096855 (n : ℕ) : ℤ :=
  A096855.P4288218702433459592.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A062401(2^n+1)` (program `A096855.P4288218702433459592`, by `A096855.P4288218702433459592.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A096855.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A096856.P6825072489695385686

`A062402(2^n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A096856.P6825072489695385686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062402 (2 ^ n + 1)

end

end A096856.P6825072489695385686

noncomputable section

/-- A096856: a(n) = A062402(2^n+1).

Offset 0, canonical program `A096856.P6825072489695385686`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A062402(2^n+1)` (program `A096856.P6825072489695385686`, by `A096856.P6825072489695385686.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A096856 (n : ℕ) : ℤ :=
  A096856.P6825072489695385686.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A062402(2^n+1)` (program `A096856.P6825072489695385686`, by `A096856.P6825072489695385686.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A096856.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A140466.P2617124052483112329

`4*A002088(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140466.P2617124052483112329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002088 n

end

end A140466.P2617124052483112329

noncomputable section

/-- A140466: a(n) = 4*A002088(n).

Offset 0, canonical program `A140466.P2617124052483112329`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*A002088(n)` (program `A140466.P2617124052483112329`, by `A140466.P2617124052483112329.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A140466 (n : ℕ) : ℤ :=
  A140466.P2617124052483112329.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*A002088(n)` (program `A140466.P2617124052483112329`, by `A140466.P2617124052483112329.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A140466.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A143231.P5537858308455081862

`A000010(n+1)*A002088(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143231.P5537858308455081862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A002088 (n + 1)

end

end A143231.P5537858308455081862

noncomputable section

/-- A143231: a(n) = A000010(n) * A002088(n).

Offset 1, canonical program `A143231.P5537858308455081862`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)*A002088(n+1)` (program `A143231.P5537858308455081862`, by `A143231.P5537858308455081862.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A143231 (n : ℕ) : ℤ :=
  A143231.P5537858308455081862.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)*A002088(n+1)` (program `A143231.P5537858308455081862`, by `A143231.P5537858308455081862.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A143231.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A143270.P7173211897729135477

`(n+1)*A002088(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A143270.P7173211897729135477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002088 (n + 1)

end

end A143270.P7173211897729135477

noncomputable section

/-- A143270: a(n) = n*A002088(n).

Offset 1, canonical program `A143270.P7173211897729135477`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A002088(n+1)` (program `A143270.P7173211897729135477`, by `A143270.P7173211897729135477.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A143270 (n : ℕ) : ℤ :=
  A143270.P7173211897729135477.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A002088(n+1)` (program `A143270.P7173211897729135477`, by `A143270.P7173211897729135477.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A143270.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A167134.P1934329230293337295

`∪[A141850(n+1), A215210(n+1)]`
-/

namespace A167134.P1934329230293337295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167134.P1934329230293337295

noncomputable section

/-- A167134: Primes congruent to {2, 3, 5, 7} mod 11.

Offset 1, canonical program `A167134.P1934329230293337295`. Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A167134.anchor (n : ℕ) (hn : 1 ≤ n) : A167134 n = (Nat.nth (fun p => p.Prime ∧ p % 11 ∈ ({2, 3, 5, 7} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A167.A167134`. -/
def A167134 (n : ℕ) : ℤ :=
  (A167134.P1934329230293337295.a (n - 1) : ℤ)

end

/-- Verified: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A167134.anchor (n : ℕ) (hn : 1 ≤ n) : A167134 n = (Nat.nth (fun p => p.Prime ∧ p % 11 ∈ ({2, 3, 5, 7} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A167.A167134`. -/
def A167134.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A083549.P10383271468232548209

`lcm(A051953(n+1), A051953(n+2))/gcd(A051953(n+1), A051953(n+2))`
-/

namespace A083549.P10383271468232548209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A051953 (n + 1)) (A051953 (n + 2)) : ℚ) / (Int.gcd (A051953 (n + 1)) (A051953 (n + 2)) : ℚ)

end

end A083549.P10383271468232548209

noncomputable section

/-- A083549: Quotient if least common multiple (lcm) of cototient values of consecutive integers is divided by the greatest common divisor (gcd) of the same pair of consecutive numbers.

Offset 1, canonical program `A083549.P10383271468232548209`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083549 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A083549.P10383271468232548209.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083549.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084921.P9444845645736558906

`A009286(A000040(n+1))`
-/

namespace A084921.P9444845645736558906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009286 (A000040 (n + 1)).toNat

end

end A084921.P9444845645736558906

noncomputable section

/-- A084921: a(n) = lcm(p-1, p+1) where p is the n-th prime.

Offset 1, canonical program `A084921.P9444845645736558906`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084921 (n : ℕ) : ℤ :=
  A084921.P9444845645736558906.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084921.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A085342.P7672575335003737733

`A074398(n+1)+A010051(n+1)`
-/

namespace A085342.P7672575335003737733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074398 (n + 1) + A010051 (n + 1)

end

end A085342.P7672575335003737733

noncomputable section

/-- A085342: Number of primes between phi(n) and n, where n is included in the count if it is a prime, while phi(n) is never included in the count even if it is a prime.

Offset 1, canonical program `A085342.P7672575335003737733`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085342 (n : ℕ) : ℤ :=
  A085342.P7672575335003737733.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085342.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A085343.P16599532433614219245

`A070803(n+1)-A070804(n+1)`
-/

namespace A085343.P16599532433614219245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070803 (n + 1) - A070804 (n + 1)

end

end A085343.P16599532433614219245

noncomputable section

/-- A085343: Number of primes between sigma(n) and phi(n) inclusive.

Offset 1, canonical program `A085343.P16599532433614219245`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085343 (n : ℕ) : ℤ :=
  A085343.P16599532433614219245.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085343.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A089266.P5248576897213251852

`1/2*(A037225(n+1)+A034444(2*(n+1)+1))`
-/

namespace A089266.P5248576897213251852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A037225 (n + 1) + A034444 (2 * (n + 1) + 1) : ℚ)

end

end A089266.P5248576897213251852

noncomputable section

/-- A089266: Rational knots of determinant 2n+1, counting chiral pairs twice.

Offset 1, canonical program `A089266.P5248576897213251852`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089266 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A089266.P5248576897213251852.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089266.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A089692.P4290977152710679352

`A062570(n+1)/A034444(n+1)`
-/

namespace A089692.P4290977152710679352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062570 (n + 1) : ℚ) / (A034444 (n + 1) : ℚ)

end

end A089692.P4290977152710679352

noncomputable section

/-- A089692: a(n) = phi(2n)/2^omega(n).

Offset 1, canonical program `A089692.P4290977152710679352`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089692 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A089692.P4290977152710679352.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A089692.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A090621.P8657121778584496807

`floor(A090616(n)/2)`
-/

namespace A090621.P8657121778584496807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A090616 n : ℚ) / 2⌋

end

end A090621.P8657121778584496807

noncomputable section

/-- A090621: Exponent of highest power of 16 dividing n!.

Offset 0, canonical program `A090621.P8657121778584496807`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A090621 (n : ℕ) : ℤ :=
  A090621.P8657121778584496807.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A090621.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A090780.P1948436138477558002

`A299822(n+1)/2^A001221(n+1)`
-/

namespace A090780.P1948436138477558002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299822 (n + 1) : ℚ) / (2 : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A090780.P1948436138477558002

noncomputable section

/-- A090780: a(n) = n*Product_{p prime, p|n} (p - 1)/2.

Offset 1, canonical program `A090780.P1948436138477558002`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A090780 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A090780.P1948436138477558002.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A090780.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A092693.P489239560406468948

`A053478(n+1)-(n+1)`
-/

namespace A092693.P489239560406468948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053478 (n + 1) - (n + 1 : ℤ)

end

end A092693.P489239560406468948

noncomputable section

/-- A092693: Sum of iterated phi(n).

Offset 1, canonical program `A092693.P489239560406468948`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092693 (n : ℕ) : ℤ :=
  A092693.P489239560406468948.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A092693.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A093505.P1791230667715959471

`floor(A001969(n+1)/2+1/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A093505.P1791230667715959471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001969 (n + 1) : ℚ) / 2 + (1 : ℚ) / 2⌋

end

end A093505.P1791230667715959471

noncomputable section

/-- A093505: a(n) = floor(A001969(n)/2 + 1/2).

Offset 1, canonical program `A093505.P1791230667715959471`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A093505 (n : ℕ) : ℤ :=
  A093505.P1791230667715959471.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A093505.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A093581.P8575942353686549720

`4*A061549(n)`
-/

namespace A093581.P8575942353686549720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A061549 n

end

end A093581.P8575942353686549720

noncomputable section

/-- A093581: Numerators of odd moments in the distribution of chord lengths for picked at random on the circumference of a unit circle.

Offset 1, canonical program `A093581.P8575942353686549720`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A093581 (n : ℕ) : ℤ :=
  A093581.P8575942353686549720.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A093581.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A094051.P17874121840297430644

`A008330(n+3)/2`
-/

namespace A094051.P17874121840297430644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008330 (n + 3) : ℚ) / 2

end

end A094051.P17874121840297430644

noncomputable section

/-- A094051: a(n) = phi(phi(p))/2 where p = prime(n).

Offset 3, canonical program `A094051.P17874121840297430644`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094051 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A094051.P17874121840297430644.a (n - 3))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A094051.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A097454.P2717210328983116484

`1+A072731(n+1)`
-/

namespace A097454.P2717210328983116484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A072731 (n + 1)

end

end A097454.P2717210328983116484

noncomputable section

/-- A097454: a(n) = (number of nonprimes <= n) - (number of primes <= n).

Offset 1, canonical program `A097454.P2717210328983116484`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097454 (n : ℕ) : ℤ :=
  A097454.P2717210328983116484.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A097454.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A100371.P1765266703165715938

`A066781(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A100371.P1765266703165715938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066781 (n + 1) - 1

end

end A100371.P1765266703165715938

noncomputable section

/-- A100371: a(n) = 2^phi(n) - 1 = A066781(n) - 1.

Offset 1, canonical program `A100371.P1765266703165715938`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100371 (n : ℕ) : ℤ :=
  A100371.P1765266703165715938.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100371.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A100449.P13498763257578754956

`1+4*A002088(n)`
-/

namespace A100449.P13498763257578754956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 4 * A002088 n

end

end A100449.P13498763257578754956

noncomputable section

/-- A100449: Number of ordered pairs (i,j) with |i| + |j| <= n and gcd(i,j) <= 1.

Offset 0, canonical program `A100449.P13498763257578754956`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100449 (n : ℕ) : ℤ :=
  A100449.P13498763257578754956.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A100449.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A103890.P10895498586581410336

`A092435(n+1)+1`
-/

namespace A103890.P10895498586581410336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092435 (n + 1) + 1

end

end A103890.P10895498586581410336

noncomputable section

/-- A103890: a(n) = prime(n)! / prime(n)# + 1.

Offset 1, canonical program `A103890.P10895498586581410336`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A103890 (n : ℕ) : ℤ :=
  A103890.P10895498586581410336.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A103890.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A104039.P17593394278328231830

`A006093(n+1)*A008330(n+1)`
-/

namespace A104039.P17593394278328231830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) * A008330 (n + 1)

end

end A104039.P17593394278328231830

noncomputable section

/-- A104039: Number of primitive roots modulo prime(n)^2, where prime(n) is n-th prime.

Offset 1, canonical program `A104039.P17593394278328231830`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104039 (n : ℕ) : ℤ :=
  A104039.P17593394278328231830.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104039.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A104191.P16304961561341837722

`A002088(2^(n+1)-1)-A002088(2^n-1)`
-/

namespace A104191.P16304961561341837722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (2 ^ (n + 1) - 1) - A002088 (2 ^ n - 1)

end

end A104191.P16304961561341837722

noncomputable section

/-- A104191: Sum of Euler totient function between successive powers of two.

Offset 0, canonical program `A104191.P16304961561341837722`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104191 (n : ℕ) : ℤ :=
  A104191.P16304961561341837722.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104191.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A107254.P8896513998001831719

`A107252(n)*A000142(n)`
-/

namespace A107254.P8896513998001831719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107252 n * A000142 n

end

end A107254.P8896513998001831719

noncomputable section

/-- A107254: a(n) = SF(2n-1)/SF(n-1)^2 where SF = A000178.

Offset 0, canonical program `A107254.P8896513998001831719`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107254 (n : ℕ) : ℤ :=
  A107254.P8896513998001831719.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A107254.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A109395.P12004804553665674898

`(n+1)/A009195(n+1)`
-/

namespace A109395.P12004804553665674898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A009195 (n + 1) : ℚ)

end

end A109395.P12004804553665674898

noncomputable section

/-- A109395: Denominator of phi(n)/n = Product_{p|n} (1 - 1/p); phi(n)=A000010(n), the Euler totient function.

Offset 1, canonical program `A109395.P12004804553665674898`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A109395 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A109395.P12004804553665674898.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A109395.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A112491.P10615726357068052905

`(n+10)*a(n-1)+(n+9)*A112490(n+4)` with `a(0)=945`
-/

namespace A112491.P10615726357068052905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [945] fun n a =>
  (n + 10 : ℤ) * a (n - 1) + (n + 9 : ℤ) * A112490 (n + 4)

end

end A112491.P10615726357068052905

noncomputable section

/-- A112491: Sixth column of triangle A112486 used for e.g.f.s of |Stirling1|=|A008275| diagonals.

Offset 5, canonical program `A112491.P10615726357068052905`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112491 (n : ℕ) : ℤ :=
  A112491.P10615726357068052905.a (n - 5)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A112491.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A124754.P14560867097318014973

`a(floor(n/2))-A106400(n)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=0`
-/

namespace A124754.P14560867097318014973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat - A106400 n

end

end A124754.P14560867097318014973

noncomputable section

/-- A124754: Alternating sum of compositions in standard order.

Offset 0, canonical program `A124754.P14560867097318014973`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124754 (n : ℕ) : ℤ :=
  A124754.P14560867097318014973.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A124754.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A129771.P17660305195438038504

`A128309(n+1)+1`
-/

namespace A129771.P17660305195438038504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128309 (n + 1) + 1

end

end A129771.P17660305195438038504

noncomputable section

/-- A129771: Evil odd numbers.

Offset 1, canonical program `A129771.P17660305195438038504`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129771 (n : ℕ) : ℤ :=
  A129771.P17660305195438038504.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A129771.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A131871.P10104157385363952011

`A131766(n)/18`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A131871.P10104157385363952011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131766 n : ℚ) / 18

end

end A131871.P10104157385363952011

noncomputable section

/-- A131871: a(n) = A131766(n) / 18.

Offset 0, canonical program `A131871.P10104157385363952011`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131871 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A131871.P10104157385363952011.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131871.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133477.P12030713238640017958

`A073185(n+1)-1`
-/

namespace A133477.P12030713238640017958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073185 (n + 1) - 1

end

end A133477.P12030713238640017958

noncomputable section

/-- A133477: Sum of cubefree divisors of n excluding 1.

Offset 1, canonical program `A133477.P12030713238640017958`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133477 (n : ℕ) : ℤ :=
  A133477.P12030713238640017958.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133477.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133725.P6332609790966904879

`(3*A007434(n+1)-A000010(n+1))/2`
-/

namespace A133725.P6332609790966904879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A007434 (n + 1) - A000010 (n + 1) : ℚ) / 2

end

end A133725.P6332609790966904879

noncomputable section

/-- A133725: a(n) = Sum_{d|n} mu(n/d)*d*(3*d - 1)/2.

Offset 1, canonical program `A133725.P6332609790966904879`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133725 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A133725.P6332609790966904879.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133725.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A134675.P852948724655989853

`A007434(n+1)+A001065(n+1)`
-/

namespace A134675.P852948724655989853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (n + 1) + A001065 (n + 1)

end

end A134675.P852948724655989853

noncomputable section

/-- A134675: Row sums of triangle A134674.

Offset 1, canonical program `A134675.P852948724655989853`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134675 (n : ℕ) : ℤ :=
  A134675.P852948724655989853.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A134675.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A136277.P8666335175623531622

`C(A000120(n), A069010(n))`
-/

namespace A136277.P8666335175623531622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000120 n).toNat (A069010 n).toNat

end

end A136277.P8666335175623531622

noncomputable section

/-- A136277: From the binary representation of n: binomial(number of ones, number of blocks of contiguous ones).

Offset 0, canonical program `A136277.P8666335175623531622`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136277 (n : ℕ) : ℤ :=
  (A136277.P8666335175623531622.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136277.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A136363.P13840495246310185184

`A072692(n+1)-10^(n+1)*(10^(n+1)+3)/2+1`
-/

namespace A136363.P13840495246310185184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072692 (n + 1) : ℚ) - (10 ^ (n + 1) * (10 ^ (n + 1) + 3) : ℚ) / 2 + 1

end

end A136363.P13840495246310185184

noncomputable section

/-- A136363: a(n) = Sum_{ composite k, 1 <= k <= 10^n} (Sum of divisors d of k with 1 < d < k).

Offset 1, canonical program `A136363.P13840495246310185184`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136363 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A136363.P13840495246310185184.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136363.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138418.P2359058537116539460

`A138402(n+1)/2`
-/

namespace A138418.P2359058537116539460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138402 (n + 1) : ℚ) / 2

end

end A138418.P2359058537116539460

noncomputable section

/-- A138418: a(n) = ((n-th prime)^4-(n-th prime)^2)/2.

Offset 1, canonical program `A138418.P2359058537116539460`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138418 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138418.P2359058537116539460.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138418.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138419.P4878153572182925303

`A138402(n+1)/3`
-/

namespace A138419.P4878153572182925303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138402 (n + 1) : ℚ) / 3

end

end A138419.P4878153572182925303

noncomputable section

/-- A138419: a(n) = (prime(n)^4 - prime(n)^2)/3.

Offset 1, canonical program `A138419.P4878153572182925303`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138419 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138419.P4878153572182925303.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138419.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138420.P16878004512610673702

`A138402(n+1)/4`
-/

namespace A138420.P16878004512610673702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138402 (n + 1) : ℚ) / 4

end

end A138420.P16878004512610673702

noncomputable section

/-- A138420: a(n) = ((prime(n))^4-(prime(n))^2)/4.

Offset 1, canonical program `A138420.P16878004512610673702`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138420 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138420.P16878004512610673702.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138420.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138421.P8558237801673403202

`A138402(n+1)/6`
-/

namespace A138421.P8558237801673403202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138402 (n + 1) : ℚ) / 6

end

end A138421.P8558237801673403202

noncomputable section

/-- A138421: a(n) = (prime(n)^4 - prime(n)^2)/6.

Offset 1, canonical program `A138421.P8558237801673403202`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138421 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138421.P8558237801673403202.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138421.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138422.P7361952017647566611

`A138402(n+1)/12`
-/

namespace A138422.P7361952017647566611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138402 (n + 1) : ℚ) / 12

end

end A138422.P7361952017647566611

noncomputable section

/-- A138422: a(n) = (prime(n)^4 - prime(n)^2)/12.

Offset 1, canonical program `A138422.P7361952017647566611`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138422 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138422.P7361952017647566611.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138422.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A138452.P14547516998140644137

`A030078(n+1)*A006093(n+1)*A060800(n+1)/2`
-/

namespace A138452.P14547516998140644137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030078 (n + 1) * A006093 (n + 1) * A060800 (n + 1) : ℚ) / 2

end

end A138452.P14547516998140644137

noncomputable section

/-- A138452: a(n) = ((n-th prime)^6-(n-th prime)^3)/2.

Offset 1, canonical program `A138452.P14547516998140644137`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138452 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A138452.P14547516998140644137.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A138452.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139240.P18445357465252311486

`A139239(n+1)/2`
-/

namespace A139240.P18445357465252311486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139239 (n + 1) : ℚ) / 2

end

end A139240.P18445357465252311486

noncomputable section

/-- A139240: First differences of Mersenne numbers A001348, divided by 4.

Offset 1, canonical program `A139240.P18445357465252311486`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139240 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A139240.P18445357465252311486.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139240.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A140592.P9802847602468291615

`A001969(n+1)+2`
-/

namespace A140592.P9802847602468291615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1) + 2

end

end A140592.P9802847602468291615

noncomputable section

/-- A140592: a(n) = 2n if A010060(n-1) is 0, and a(n) = 2n+1 if A010060(n-1) is 1.

Offset 1, canonical program `A140592.P9802847602468291615`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140592 (n : ℕ) : ℤ :=
  A140592.P9802847602468291615.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A140592.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A156872.P4256628510160959105

`A156194(n+1)-A156199(n+1)`
-/

namespace A156872.P4256628510160959105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156194 (n + 1) - A156199 (n + 1)

end

end A156872.P4256628510160959105

noncomputable section

/-- A156872: Period 12: 1,3,-1,3,1,0,-1,-3,1,-3,-1,0 repeated.

Offset 0, canonical program `A156872.P4256628510160959105`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156872 (n : ℕ) : ℤ :=
  A156872.P4256628510160959105.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A156872.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A159913.P7024736967465711485

`A038573(2*n+1)`
-/

namespace A159913.P7024736967465711485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (2 * n + 1)

end

end A159913.P7024736967465711485

noncomputable section

/-- A159913: a(n) = 2^(A000120(n) + 1) - 1, where A000120(n) = number of nonzero bits in n.

Offset 0, canonical program `A159913.P7024736967465711485`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A159913 (n : ℕ) : ℤ :=
  A159913.P7024736967465711485.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A159913.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A160745.P15092458154072212321

`3*A060632(n)`
-/

namespace A160745.P15092458154072212321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A060632 n

end

end A160745.P15092458154072212321

noncomputable section

/-- A160745: First differences of A160744.

Offset 1, canonical program `A160745.P15092458154072212321`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160745 (n : ℕ) : ℤ :=
  A160745.P15092458154072212321.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160745.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A161511.P16266007976091900386

`a(n-A048896(n-1))+1` with `a(0)=0`
-/

namespace A161511.P16266007976091900386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A048896 (n - 1)).toNat + 1

end

end A161511.P16266007976091900386

noncomputable section

/-- A161511: Number of 1...0 pairs in the binary representation of 2n.

Offset 0, canonical program `A161511.P16266007976091900386`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161511 (n : ℕ) : ℤ :=
  (A161511.P16266007976091900386.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161511.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A175701.P414894152738446073

`(n+1)*A062981(n+1)`
-/

namespace A175701.P414894152738446073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A062981 (n + 1)

end

end A175701.P414894152738446073

noncomputable section

/-- A175701: a(n) = n ^ (phi(n)+1), phi(n) = A000010(n) = Euler totient function.

Offset 1, canonical program `A175701.P414894152738446073`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A175701 (n : ℕ) : ℤ :=
  A175701.P414894152738446073.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A175701.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A101279.P13195292340329059168

`A025480(n)+A036987(n)`
-/

namespace A101279.P13195292340329059168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n + A036987 n

end

end A101279.P13195292340329059168

noncomputable section

/-- A101279: a(1) = 1; a(2k) = a(k), a(2k+1) = k.

Offset 1, canonical program `A101279.P13195292340329059168`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101279 (n : ℕ) : ℤ :=
  A101279.P13195292340329059168.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A101279.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A102731.P15648990086754285571

`A102656(n+1)-2`
-/

namespace A102731.P15648990086754285571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102656 (n + 1) - 2

end

end A102731.P15648990086754285571

noncomputable section

/-- A102731: Numbers k such that 11*k + 23 is prime.

Offset 1, canonical program `A102731.P15648990086754285571`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102731 (n : ℕ) : ℤ :=
  A102731.P15648990086754285571.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102731.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A104190.P13305366304182322296

`A099825(n+1)-A099825(n)-(A033844(n+1)-A033844(n))`
-/

namespace A104190.P13305366304182322296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099825 (n + 1) - A099825 n - (A033844 (n + 1) - A033844 n)

end

end A104190.P13305366304182322296

noncomputable section

/-- A104190: Sums of primes between successive powers of two.

Offset 0, canonical program `A104190.P13305366304182322296`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104190 (n : ℕ) : ℤ :=
  A104190.P13305366304182322296.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A104190.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A105500.P10829818513304664875

`A246960(n)+1`
-/

namespace A105500.P10829818513304664875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246960 n + 1

end

end A105500.P10829818513304664875

noncomputable section

/-- A105500: Trajectory of 1 under the morphism 1->{1,2}, 2->{3,2}, 3->{3,4}, 4->{1,4}.

Offset 0, canonical program `A105500.P10829818513304664875`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A105500 (n : ℕ) : ℤ :=
  A105500.P10829818513304664875.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A105500.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A131436.P15112547624394738453

`2*A059268(n)-A059268(n+1)`
-/

namespace A131436.P15112547624394738453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059268 n - A059268 (n + 1)

end

end A131436.P15112547624394738453

noncomputable section

/-- A131436: Triangle read by rows, (n-1) zeros followed by 2^n - 1.

Offset 1, canonical program `A131436.P15112547624394738453`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131436 (n : ℕ) : ℤ :=
  A131436.P15112547624394738453.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A131436.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A136494.P13295662232037157937

`A093659(n)*A139329(n)`
-/

namespace A136494.P13295662232037157937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093659 n * A139329 n

end

end A136494.P13295662232037157937

noncomputable section

/-- A136494: Number of permutation symmetries in the binary expansion of n.

Offset 0, canonical program `A136494.P13295662232037157937`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136494 (n : ℕ) : ℤ :=
  A136494.P13295662232037157937.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A136494.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A139102.P10379063909804235442

`A139104(n+1)/2`
-/

namespace A139102.P10379063909804235442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139104 (n + 1) : ℚ) / 2

end

end A139102.P10379063909804235442

noncomputable section

/-- A139102: Numbers whose binary representation shows the distribution of prime numbers up to the n-th prime minus 1, using "0" for primes and "1" for nonprime numbers.

Offset 1, canonical program `A139102.P10379063909804235442`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139102 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A139102.P10379063909804235442.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A139102.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A145781.P1579033228104042900

`A216144(n+1)²-A002110(n+1)`
-/

namespace A145781.P1579033228104042900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216144 (n + 1) ^ 2 - A002110 (n + 1)

end

end A145781.P1579033228104042900

noncomputable section

/-- A145781: Least m >= 0 which when added to primorial(n) yields a square.

Offset 1, canonical program `A145781.P1579033228104042900`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145781 (n : ℕ) : ℤ :=
  A145781.P1579033228104042900.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A145781.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A160467.P4224605916113656247

`(1+A140670(n+1))/2`
-/

namespace A160467.P4224605916113656247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A140670 (n + 1) : ℚ) / 2

end

end A160467.P4224605916113656247

noncomputable section

/-- A160467: a(n) = 1 if n is odd; otherwise, a(n) = 2^(k-1) where 2^k is the largest power of 2 that divides n.

Offset 1, canonical program `A160467.P4224605916113656247`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160467 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160467.P4224605916113656247.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A160467.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A162642.P6212984874729219521

`A001221(n+1)-A162641(n+1)`
-/

namespace A162642.P6212984874729219521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A162641 (n + 1)

end

end A162642.P6212984874729219521

noncomputable section

/-- A162642: Number of odd exponents in the canonical prime factorization of n.

Offset 1, canonical program `A162642.P6212984874729219521`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162642 (n : ℕ) : ℤ :=
  A162642.P6212984874729219521.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A162642.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A163167.P16243496880315818611

`A289627(A000010(n+1))`
-/

namespace A163167.P16243496880315818611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289627 (A000010 (n + 1)).toNat

end

end A163167.P16243496880315818611

noncomputable section

/-- A163167: a(n) = sum_{d | phi(n)} mu( phi(d) ) * phi(n)/d, where phi = A000010.

Offset 1, canonical program `A163167.P16243496880315818611`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163167 (n : ℕ) : ℤ :=
  A163167.P16243496880315818611.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A163167.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A174883.P7247587892834711161

`A000045(n+1)/A060865(n+1)`
-/

namespace A174883.P7247587892834711161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) / (A060865 (n + 1) : ℚ)

end

end A174883.P7247587892834711161

noncomputable section

/-- A174883: Largest odd divisors of Fibonacci numbers.

Offset 1, canonical program `A174883.P7247587892834711161`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174883 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A174883.P7247587892834711161.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A174883.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A175455.P17277564749251597446

`A025529(n+1)*A003418(n+1)`
-/

namespace A175455.P17277564749251597446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025529 (n + 1) * A003418 (n + 1)

end

end A175455.P17277564749251597446

noncomputable section

/-- A175455: a(n) = H(n) * (lcm(1,2,...,n))^2, where H(n) = harmonic numbers (1/1 + 1/2 + ... + 1/n).

Offset 1, canonical program `A175455.P17277564749251597446`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A175455 (n : ℕ) : ℤ :=
  A175455.P17277564749251597446.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A175455.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A177082.P1291897975373638475

`2*(n+1)*A071148(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A177082.P1291897975373638475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A071148 (n + 1)

end

end A177082.P1291897975373638475

noncomputable section

/-- A177082: a(n) = 2*n*A071148(n).

Offset 1, canonical program `A177082.P1291897975373638475`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A177082 (n : ℕ) : ℤ :=
  A177082.P1291897975373638475.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A177082.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A177687.P13636215687742854353

`A178244(A000040(n+1))`
-/

namespace A177687.P13636215687742854353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178244 (A000040 (n + 1)).toNat

end

end A177687.P13636215687742854353

noncomputable section

/-- A177687: Number of distinct transpositions of digits (zeros and units) in n-th prime written in base 2.

Offset 1, canonical program `A177687.P13636215687742854353`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A177687 (n : ℕ) : ℤ :=
  A177687.P13636215687742854353.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A177687.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A085058.P14130226451424256143

`A001511(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A085058.P14130226451424256143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) + 1

end

end A085058.P14130226451424256143

noncomputable section

/-- A085058: a(n) = A001511(n+1) + 1.

Offset 0, canonical program `A085058.P14130226451424256143`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001511(n+1)+1` (program `A085058.P14130226451424256143`, by `A085058.P14130226451424256143.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A085058 (n : ℕ) : ℤ :=
  A085058.P14130226451424256143.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001511(n+1)+1` (program `A085058.P14130226451424256143`, by `A085058.P14130226451424256143.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A085058.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A094290.P11263062616059200680

`A000040(A001511(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A094290.P11263062616059200680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A001511 (n + 1)).toNat

end

end A094290.P11263062616059200680

noncomputable section

/-- A094290: a(n) = prime(A001511(n)), where A001511 is one more than the 2-adic valuation of n.

Offset 1, canonical program `A094290.P11263062616059200680`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A001511(n+1))` (program `A094290.P11263062616059200680`, by `A094290.P11263062616059200680.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A094290 (n : ℕ) : ℤ :=
  A094290.P11263062616059200680.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A001511(n+1))` (program `A094290.P11263062616059200680`, by `A094290.P11263062616059200680.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A094290.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A102421.P2977344612338206016

`A337349(2*n+1)`
-/

namespace A102421.P2977344612338206016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337349 (2 * n + 1)

end

end A102421.P2977344612338206016

noncomputable section

/-- A102421: To get a(n), start with 2n+1, multiply by 3 and add 1 and divide out any power of 2; then multiply by 3 and subtract 1 and divide out any power of 2.

Offset 0, canonical program `A102421.P2977344612338206016`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102421 (n : ℕ) : ℤ :=
  A102421.P2977344612338206016.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A102421.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A115364.P11989985913028206529

`A000217(A001511(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A115364.P11989985913028206529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A001511 (n + 1)).toNat

end

end A115364.P11989985913028206529

noncomputable section

/-- A115364: a(n) = A000217(A001511(n)), where A001511 is one more than the 2-adic valuation of n, and A000217(n) is the n-th triangular number, binomial(n+1, 2).

Offset 1, canonical program `A115364.P11989985913028206529`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000217(A001511(n+1))` (program `A115364.P11989985913028206529`, by `A115364.P11989985913028206529.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A115364 (n : ℕ) : ℤ :=
  A115364.P11989985913028206529.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000217(A001511(n+1))` (program `A115364.P11989985913028206529`, by `A115364.P11989985913028206529.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A115364.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A119387.P13172798002277399247

`A070939(n+1)-A001511(n+1)`
-/

namespace A119387.P13172798002277399247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1) - A001511 (n + 1)

end

end A119387.P13172798002277399247

noncomputable section

/-- A119387: a(n) is the number of binary digits (1's and nonleading 0's) which remain unchanged in their positions when n and (n+1) are written in binary.

Offset 0, canonical program `A119387.P13172798002277399247`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119387 (n : ℕ) : ℤ :=
  A119387.P13172798002277399247.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A119387.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A127625.P15969848996839521754

`C(row(n), col(n))*A001511(col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A127625.P15969848996839521754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) * A001511 (SequenceMachineLib.triCol n + 1)

end

end A127625.P15969848996839521754

noncomputable section

/-- A127625: Triangle T(n,k) = binomial(n-1,k-1)*A001511(k), 1<=k<=n, read by rows.

Offset 1, canonical program `A127625.P15969848996839521754`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n), col(n))*A001511(col(n)+1)` (program `A127625.P15969848996839521754`, by `A127625.P15969848996839521754.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A127625 (n : ℕ) : ℤ :=
  A127625.P15969848996839521754.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(row(n), col(n))*A001511(col(n)+1)` (program `A127625.P15969848996839521754`, by `A127625.P15969848996839521754.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A127625.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A133525.P8571172351566193877

`A133530(n+1)+A030078(n+4)`
-/

namespace A133525.P8571172351566193877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133530 (n + 1) + A030078 (n + 4)

end

end A133525.P8571172351566193877

noncomputable section

/-- A133525: Sum of third powers of four consecutive primes.

Offset 1, canonical program `A133525.P8571172351566193877`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133525 (n : ℕ) : ℤ :=
  A133525.P8571172351566193877.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133525.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133526.P8358073913299201745

`A133531(n+1)+A030514(n+4)`
-/

namespace A133526.P8358073913299201745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133531 (n + 1) + A030514 (n + 4)

end

end A133526.P8358073913299201745

noncomputable section

/-- A133526: Sum of fourth powers of four consecutive primes.

Offset 1, canonical program `A133526.P8358073913299201745`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133526 (n : ℕ) : ℤ :=
  A133526.P8358073913299201745.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133526.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133527.P1112467787998249490

`A133532(n+1)+A050997(n+4)`
-/

namespace A133527.P1112467787998249490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133532 (n + 1) + A050997 (n + 4)

end

end A133527.P1112467787998249490

noncomputable section

/-- A133527: Sum of fifth powers of four consecutive primes.

Offset 1, canonical program `A133527.P1112467787998249490`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133527 (n : ℕ) : ℤ :=
  A133527.P1112467787998249490.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133527.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A133528.P15802330686603295123

`A133533(n+1)+A030516(n+4)`
-/

namespace A133528.P15802330686603295123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133533 (n + 1) + A030516 (n + 4)

end

end A133528.P15802330686603295123

noncomputable section

/-- A133528: Sum of sixth powers of four consecutive primes.

Offset 1, canonical program `A133528.P15802330686603295123`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133528 (n : ℕ) : ℤ :=
  A133528.P15802330686603295123.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A133528.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A164677.P6354248361395124461

`A034947(n+1)*A001511(n+1)`
-/

namespace A164677.P6354248361395124461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A001511 (n + 1)

end

end A164677.P6354248361395124461

noncomputable section

/-- A164677: For a binary reflected Gray code, the (Hamming/Euclidean) distance between 2 subsequent points x and y is 1, say in coordinate k. If y has a 1 in coordinate k and x has a 0, than (x,y) is indicated by k, if it is the other way around, (x,y) is indicated by -k. The sequence has a fractal character such that G(d+1) = G(d) d+1 R(G(d)) where R(G(d)) alters d --> -d and leaves all other numbers invariant.

Offset 1, canonical program `A164677.P6354248361395124461`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A164677 (n : ℕ) : ℤ :=
  A164677.P6354248361395124461.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A164677.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A165725.P14061313058113490236

`(n+1)/A355582(n+1)`
-/

namespace A165725.P14061313058113490236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A355582 (n + 1) : ℚ)

end

end A165725.P14061313058113490236

noncomputable section

/-- A165725: Largest divisor of n coprime to 30. I.e., a(n) = max { k | gcd(n, k) = k and gcd(k, 30) = 1 }.

Offset 1, canonical program `A165725.P14061313058113490236`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165725 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A165725.P14061313058113490236.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A165725.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A083567.P14460311508063659607

`eq[A000120(n+1), A232243(n+1)]+1`
-/

namespace A083567.P14460311508063659607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232243 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A083567.P14460311508063659607

noncomputable section

/-- A083567: Let B(k) be the number of binary digits in k equal to 1. This is the sequence of positive integers k such that 2B(k)=B(k^2).

Offset 1, canonical program `A083567.P14460311508063659607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1118 terms. -/
def A083567 (n : ℕ) : ℤ :=
  (A083567.P14460311508063659607.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1118 terms. -/
def A083567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083651.P4235126305781789106

`C(A003056(n), A059268(n))%2`
-/

namespace A083651.P4235126305781789106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A059268 n).toNat % 2

end

end A083651.P4235126305781789106

noncomputable section

/-- A083651: Triangular array, read by rows: T(n,k) = k-th bit in binary representation of n (0<=k<=n).

Offset 0, canonical program `A083651.P4235126305781789106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083651 (n : ℕ) : ℤ :=
  (A083651.P4235126305781789106.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083922.P13071502860721527938

`∑[A083921(n+1)]`
-/

namespace A083922.P13071502860721527938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083922.P13071502860721527938

noncomputable section

/-- A083922: Partial sums of A083921.

Offset 1, canonical program `A083922.P13071502860721527938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083922 (n : ℕ) : ℤ :=
  A083922.P13071502860721527938.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084820.P7694671206461547684

`lt[A000203(n+1), A121048(n+1)]+1`
-/

namespace A084820.P7694671206461547684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121048 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A084820.P7694671206461547684

noncomputable section

/-- A084820: Numbers n such that n, sigma(n) and phi(n) form an integer triangle, where sigma=A000203 is the divisor sum and phi=A000010 the totient.

Offset 1, canonical program `A084820.P7694671206461547684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4514 terms. -/
def A084820 (n : ℕ) : ℤ :=
  (A084820.P7694671206461547684.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4514 terms. -/
def A084820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085297.P10081021779170976826

`A001285(round(n/3))`
-/

namespace A085297.P10081021779170976826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (SequenceMachineLib.roundAway ((n : ℚ) / 3)).toNat

end

end A085297.P10081021779170976826

noncomputable section

/-- A085297: Nonzero residues of Catalan sequence modulo 3; related to the Thue-Morse sequence (A001285).

Offset 1, canonical program `A085297.P10081021779170976826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3072 terms. -/
def A085297 (n : ℕ) : ℤ :=
  A085297.P10081021779170976826.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3072 terms. -/
def A085297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085413.P14024777601885863617

`p?[floor(A077652(n+1)/10)]`
-/

namespace A085413.P14024777601885863617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077652 (n + 1) : ℚ) / 10⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A085413.P14024777601885863617

noncomputable section

/-- A085413: Prime such that concatenation of it and its first digit is prime.

Offset 1, canonical program `A085413.P14024777601885863617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1023 terms. -/
def A085413 (n : ℕ) : ℤ :=
  A085413.P14024777601885863617.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1023 terms. -/
def A085413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085765.P11713092919206785269

`a(n-1)+a(A025480(n))` with `a(0)=1`
-/

namespace A085765.P11713092919206785269
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (A025480 n).toNat

end

end A085765.P11713092919206785269

noncomputable section

/-- A085765: Partial sums and bisection of A086450.

Offset 0, canonical program `A085765.P11713092919206785269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085765 (n : ℕ) : ℤ :=
  (A085765.P11713092919206785269.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085860.P17709780043344454738

`∑{digits}[A000045(n), A293162(#+1)]`
-/

namespace A085860.P17709780043344454738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A293162 (x + 1)).sum

end

end A085860.P17709780043344454738

noncomputable section

/-- A085860: Number of 6's in decimal expansion of Fibonacci(n).

Offset 0, canonical program `A085860.P17709780043344454738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085860 (n : ℕ) : ℤ :=
  A085860.P17709780043344454738.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085861.P2818835720903400278

`∑{digits}[A000045(n), A293162(#)]`
-/

namespace A085861.P2818835720903400278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A293162 x).sum

end

end A085861.P2818835720903400278

noncomputable section

/-- A085861: Number of 7's in decimal expansion of Fibonacci(n).

Offset 0, canonical program `A085861.P2818835720903400278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085861 (n : ℕ) : ℤ :=
  A085861.P2818835720903400278.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086016.P424081892112326700

`∑{digits}[n², A054438(#)]`
-/

namespace A086016.P424081892112326700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A054438 x).sum

end

end A086016.P424081892112326700

noncomputable section

/-- A086016: Number of 8's in decimal expansion of n^2.

Offset 0, canonical program `A086016.P424081892112326700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086016 (n : ℕ) : ℤ :=
  A086016.P424081892112326700.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086823.P4348796408001696709

`ceil(-(A086831(n+1)/2))`
-/

namespace A086823.P4348796408001696709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈-((A086831 (n + 1) : ℚ) / 2)⌉

end

end A086823.P4348796408001696709

noncomputable section

/-- A086823: Coefficient of x^2 in the n-th cyclotomic polynomial. (The same as the coefficient of x^(phi(n)-2) ).

Offset 1, canonical program `A086823.P4348796408001696709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086823 (n : ℕ) : ℤ :=
  A086823.P4348796408001696709.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087116.P11350810953562711327

`A069010(n)-Δ[ceil(abs((1-n)/2))]`
-/

namespace A087116.P11350810953562711327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n - (f1 (n + 1) - f1 n)

end

end A087116.P11350810953562711327

noncomputable section

/-- A087116: Number of maximal groups of consecutive zeros in binary representation of n.

Offset 0, canonical program `A087116.P11350810953562711327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087116 (n : ℕ) : ℤ :=
  A087116.P11350810953562711327.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087247.P1816243731063758448

`filter[A087246(n+1), A005171(#)]`
-/

namespace A087247.P1816243731063758448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A087247.P1816243731063758448

noncomputable section

/-- A087247: Squarefree deficient nonprime numbers.

Offset 1, canonical program `A087247.P1816243731063758448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7929 terms. -/
def A087247 (n : ℕ) : ℤ :=
  A087247.P1816243731063758448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7929 terms. -/
def A087247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087680.P10355844668314196368

`A023202(n+1)+4`
-/

namespace A087680.P10355844668314196368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023202 (n + 1) + 4

end

end A087680.P10355844668314196368

noncomputable section

/-- A087680: Numbers n such that n + 4 and n - 4 are both prime.

Offset 1, canonical program `A087680.P10355844668314196368`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023202, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087680 (n : ℕ) : ℤ :=
  A087680.P10355844668314196368.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023202, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087680.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A088232.P18376775273542459675

`lt[A354099(n+1), 1]+1`
-/

namespace A088232.P18376775273542459675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354099 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A088232.P18376775273542459675

noncomputable section

/-- A088232: Numbers k such that 3 does not divide phi(k).

Offset 1, canonical program `A088232.P18376775273542459675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088232 (n : ℕ) : ℤ :=
  (A088232.P18376775273542459675.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088512.P15945128481436275325

`floor(A038573(n)/2)`
-/

namespace A088512.P15945128481436275325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A038573 n : ℚ) / 2⌋

end

end A088512.P15945128481436275325

noncomputable section

/-- A088512: Number of partitions of n into two parts whose xor-sum is n.

Offset 0, canonical program `A088512.P15945128481436275325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088512 (n : ℕ) : ℤ :=
  A088512.P15945128481436275325.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089118.P9208626228526382448

`A074938(n+1)-(A010059(n+1)+1)`
-/

namespace A089118.P9208626228526382448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074938 (n + 1) - (A010059 (n + 1) + 1)

end

end A089118.P9208626228526382448

noncomputable section

/-- A089118: Nonnegative numbers in (3*A005836 - 1) [A005836 are the numbers with base representation containing no 2].

Offset 1, canonical program `A089118.P9208626228526382448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089118 (n : ℕ) : ℤ :=
  A089118.P9208626228526382448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089217.P8919220155031244683

`A087915(n+1)+A089193(n+1)`
-/

namespace A089217.P8919220155031244683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087915 (n + 1) + A089193 (n + 1)

end

end A089217.P8919220155031244683

noncomputable section

/-- A089217: n-2 is a prime of the form 4*k+3.

Offset 1, canonical program `A089217.P8919220155031244683`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087915, A089193, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A089217 (n : ℕ) : ℤ :=
  A089217.P8919220155031244683.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087915, A089193, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A089217.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089257.P243562782731200786

`A089193(n+1)-1`
-/

namespace A089257.P243562782731200786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089193 (n + 1) - 1

end

end A089257.P243562782731200786

noncomputable section

/-- A089257: Even numbers n such that 2n-5 is a prime of the form 4k+3.

Offset 1, canonical program `A089257.P243562782731200786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089257 (n : ℕ) : ℤ :=
  A089257.P243562782731200786.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089313.P1141171356323381310

`2^A089310(n)-1`
-/

namespace A089313.P1141171356323381310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A089310 n : ℤ) - 1

end

end A089313.P1141171356323381310

noncomputable section

/-- A089313: Write n in binary; a(n) = number represented by second block of 1's from the right.

Offset 0, canonical program `A089313.P1141171356323381310`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089310, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089313 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A089313.P1141171356323381310.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089310, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089313.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A089633.P17564526881393068107

`floor(A030130(n+1)/2)`
-/

namespace A089633.P17564526881393068107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A030130 (n + 1) : ℚ) / 2⌋

end

end A089633.P17564526881393068107

noncomputable section

/-- A089633: Numbers having no more than one 0 in their binary representation.

Offset 0, canonical program `A089633.P17564526881393068107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089633 (n : ℕ) : ℤ :=
  A089633.P17564526881393068107.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A089633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091822.P18176888535839854979

`∑[A076826(ceil(n/2))]-n`
-/

namespace A091822.P18176888535839854979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076826 ⌈(n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A091822.P18176888535839854979

noncomputable section

/-- A091822: a(n)=2*sum(k=0,n,sum(i=0,k,sum(j=0,i, A010060(j))))-(1/6)*(n^3+6*n^2+11*n-6).

Offset 1, canonical program `A091822.P18176888535839854979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A091822 (n : ℕ) : ℤ :=
  A091822.P18176888535839854979.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A091822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091949.P5047733930992451112

`abs(Δ[A001285(A212831(n))])`
-/

namespace A091949.P5047733930992451112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A212831 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A091949.P5047733930992451112

noncomputable section

/-- A091949: a(n) = A087659(n) mod 2.

Offset 0, canonical program `A091949.P5047733930992451112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091949 (n : ℕ) : ℤ :=
  A091949.P5047733930992451112.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092131.P9669914762726222244

`A007920(A000079(n+1))`
-/

namespace A092131.P9669914762726222244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A000079 (n + 1)).toNat

end

end A092131.P9669914762726222244

noncomputable section

/-- A092131: Distance from 2^n to the next prime.

Offset 1, canonical program `A092131.P9669914762726222244`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007920, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A092131 (n : ℕ) : ℤ :=
  A092131.P9669914762726222244.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007920, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A092131.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A092243.P77833294890424511

`∑[-A079054(abs(1-n)+2)]`
-/

namespace A092243.P77833294890424511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A079054 (|1 - (n : ℤ)| + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092243.P77833294890424511

noncomputable section

/-- A092243: Score at stage n in "tug of war" between prime gap increases vs. prime gap decreases: start with score = 0 at n = 1 and at stage n = k > 1, increase (resp. decrease) the score by 1 if the k-th prime gap is greater (resp. less) than the previous prime gap.

Offset 1, canonical program `A092243.P77833294890424511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092243 (n : ℕ) : ℤ :=
  A092243.P77833294890424511.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092505.P14837175268537545743

`gcd(A048896(n), 2*(n+1))`
-/

namespace A092505.P14837175268537545743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048896 n) (2 * (n + 1) : ℤ)

end

end A092505.P14837175268537545743

noncomputable section

/-- A092505: a(n) = A002430(n) / A046990(n).

Offset 1, canonical program `A092505.P14837175268537545743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092505 (n : ℕ) : ℤ :=
  (A092505.P14837175268537545743.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094694.P14278296386582266715

`lt[A232243(n), 0]`
-/

namespace A094694.P14278296386582266715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232243 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A094694.P14278296386582266715

noncomputable section

/-- A094694: Numbers having in binary representation more 1s than their squares.

Offset 1, canonical program `A094694.P14278296386582266715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A094694 (n : ℕ) : ℤ :=
  (A094694.P14278296386582266715.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A094694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A094695.P15361647262700553161

`lt[0, A232243(n)]`
-/

namespace A094695.P15361647262700553161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232243 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A094695.P15361647262700553161

noncomputable section

/-- A094695: Numbers having in binary representation fewer ones than in their squares.

Offset 1, canonical program `A094695.P15361647262700553161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9318 terms. -/
def A094695 (n : ℕ) : ℤ :=
  (A094695.P15361647262700553161.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9318 terms. -/
def A094695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095072.P9947537710572752630

`A000040(eq[A014499(n+1)+1, A035103(n+1)]+1)`
-/

namespace A095072.P9947537710572752630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014499 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035103 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A095072.P9947537710572752630

noncomputable section

/-- A095072: Primes in whose binary expansion the number of 0-bits is one more than the number of 1-bits.

Offset 1, canonical program `A095072.P9947537710572752630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1103 terms. -/
def A095072 (n : ℕ) : ℤ :=
  A095072.P9947537710572752630.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1103 terms. -/
def A095072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095277.P5907375442901881161

`(A091236(n+1)-3)/4`
-/

namespace A095277.P5907375442901881161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091236 (n + 1) - 3 : ℚ) / 4

end

end A095277.P5907375442901881161

noncomputable section

/-- A095277: Numbers k such that 4*k + 3 is composite.

Offset 1, canonical program `A095277.P5907375442901881161`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091236, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095277 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A095277.P5907375442901881161.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091236, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A095277.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A096279.P4669439385531479961

`A096278(n+1)+A096278(n+2)`
-/

namespace A096279.P4669439385531479961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096278 (n + 1) + A096278 (n + 2)

end

end A096279.P4669439385531479961

noncomputable section

/-- A096279: Sums of successive sums of successive sums of successive sums of successive primes.

Offset 1, canonical program `A096279.P4669439385531479961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A096279 (n : ℕ) : ℤ :=
  A096279.P4669439385531479961.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A096279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096617.P17292615775465208619

`A025529(n+1)/A002944(n+1)*A027611(n+1)`
-/

namespace A096617.P17292615775465208619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025529 (n + 1) : ℚ) / (A002944 (n + 1) : ℚ) * (A027611 (n + 1) : ℚ)

end

end A096617.P17292615775465208619

noncomputable section

/-- A096617: Numerator of n*HarmonicNumber(n).

Offset 1, canonical program `A096617.P17292615775465208619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A096617 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A096617.P17292615775465208619.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A096617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096620.P12757446567571572911

`A093419(A028310(n))`
-/

namespace A096620.P12757446567571572911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093419 (A028310 n).toNat

end

end A096620.P12757446567571572911

noncomputable section

/-- A096620: Denominator of -3*n + 2*(1+n)*HarmonicNumber(n).

Offset 0, canonical program `A096620.P12757446567571572911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A096620 (n : ℕ) : ℤ :=
  A096620.P12757446567571572911.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A096620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097338.P887064449779485792

`A097069(n+1)+1`
-/

namespace A097338.P887064449779485792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097069 (n + 1) + 1

end

end A097338.P887064449779485792

noncomputable section

/-- A097338: Positive integers n such that 2n-11 is prime.

Offset 1, canonical program `A097338.P887064449779485792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097338 (n : ℕ) : ℤ :=
  A097338.P887064449779485792.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097380.P15856719573966793796

`eq[1, A001222(A097377(n+1))]+1`
-/

namespace A097380.P15856719573966793796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A097377 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A097380.P15856719573966793796

noncomputable section

/-- A097380: Numbers m such that 1+CubeFreeKernel(m) is prime.

Offset 1, canonical program `A097380.P15856719573966793796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1352 terms. -/
def A097380 (n : ℕ) : ℤ :=
  (A097380.P15856719573966793796.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1352 terms. -/
def A097380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097453.P1775989512565720974

`p?[Δ[A071411(n+1)]]`
-/

namespace A097453.P1775989512565720974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071411 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097453.P1775989512565720974

noncomputable section

/-- A097453: Primes in A014237 in the order of their appearance.

Offset 1, canonical program `A097453.P1775989512565720974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1133 terms. -/
def A097453 (n : ℕ) : ℤ :=
  A097453.P1775989512565720974.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1133 terms. -/
def A097453.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097884.P18184592152229519995

`Δ[A097605(n+1)]`
-/

namespace A097884.P18184592152229519995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097884.P18184592152229519995

noncomputable section

/-- A097884: First differences of A097605 (phi(n) divides n^2 - 1).

Offset 1, canonical program `A097884.P18184592152229519995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A097884 (n : ℕ) : ℤ :=
  A097884.P18184592152229519995.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A097884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098913.P8033623340235312426

`A008965(2*(n+2))-2^(n+2)`
-/

namespace A098913.P8033623340235312426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008965 (2 * (n + 2)) - (2 ^ (n + 2) : ℤ)

end

end A098913.P8033623340235312426

noncomputable section

/-- A098913: Number of different ways angles from Pi/n to (n-1)Pi/n can tile around a vertex, where rotations of an angle sequence are not counted, but reflections that are different are counted.

Offset 2, canonical program `A098913.P8033623340235312426`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008965, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098913 (n : ℕ) : ℤ :=
  A098913.P8033623340235312426.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008965, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A098913.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A099102.P10776649680953999616

`lt[A020338(n+1)/(n+2), A000203(n+1)]+1`
-/

namespace A099102.P10776649680953999616
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020338 (n + 1) : ℚ) / (n + 2 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A099102.P10776649680953999616

noncomputable section

/-- A099102: Natural numbers n with fewer digits than sigma(n).

Offset 1, canonical program `A099102.P10776649680953999616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3647 terms. -/
def A099102 (n : ℕ) : ℤ :=
  (A099102.P10776649680953999616.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3647 terms. -/
def A099102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099795.P8359144970959057964

`A038610(A000040(n+1))`
-/

namespace A099795.P8359144970959057964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038610 (A000040 (n + 1)).toNat

end

end A099795.P8359144970959057964

noncomputable section

/-- A099795: Least common multiple of 1, 2, 3, ..., prime(n)-1.

Offset 1, canonical program `A099795.P8359144970959057964`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038610, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099795 (n : ℕ) : ℤ :=
  A099795.P8359144970959057964.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038610, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A099795.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100537.P6243937713485138238

`A071724(A025581(n))`
-/

namespace A100537.P6243937713485138238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 (A025581 n).toNat

end

end A100537.P6243937713485138238

noncomputable section

/-- A100537: Triangle read by rows: T(n,k) is the number of Dyck n-paths whose first descent has length k.

Offset 1, canonical program `A100537.P6243937713485138238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100537 (n : ℕ) : ℤ :=
  A100537.P6243937713485138238.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101565.P1735292411759893725

`∑{d}[n+1, A106400(1-#+n)]`
-/

namespace A101565.P1735292411759893725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A106400 (1 - (d : ℤ) + (n : ℤ)).toNat

end

end A101565.P1735292411759893725

noncomputable section

/-- A101565: a(n) = Sum_{k=0..n} (-1)^A010060(n-k)*[(n+1) mod (k+1) = 0], where [] denotes the Iverson bracket.

Offset 0, canonical program `A101565.P1735292411759893725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101565 (n : ℕ) : ℤ :=
  A101565.P1735292411759893725.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101608.P15445479744008623992

`(Δ[A118827(n+1)]+n+3)%3+1`
-/

namespace A101608.P15445479744008623992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n + (n + 3 : ℤ)) 3 + 1

end

end A101608.P15445479744008623992

noncomputable section

/-- A101608: Solution to Tower of Hanoi puzzle encoded in pairs with the moves (1,2),(2,3),(3,1),(2,1),(3,2),(1,3). The disks are moved from peg 1 to 2. For a tower of k disks use the first 2^k-1 number pairs.

Offset 1, canonical program `A101608.P15445479744008623992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101608 (n : ℕ) : ℤ :=
  A101608.P15445479744008623992.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101656.P2452111853965697328

`a(n-1)*a(A071412(n+1)%2)` with `a(0)=1, a(1)=2`
-/

namespace A101656.P2452111853965697328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) * a (Int.tmod (A071412 (n + 1)) 2).toNat

end

end A101656.P2452111853965697328

noncomputable section

/-- A101656: a(n)=Product{k=0..n, 1+0^A101650(k)}/2.

Offset 0, canonical program `A101656.P2452111853965697328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 896 terms. -/
def A101656 (n : ℕ) : ℤ :=
  (A101656.P2452111853965697328.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 896 terms. -/
def A101656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101657.P2248602799950987862

`∏[A000040(a(A101650(n)))]` with `a(0)=1`
-/

namespace A101657.P2248602799950987862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000040 (f1 (A101650 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A101657.P2248602799950987862

noncomputable section

/-- A101657: a(n)=Product{k=0..n, 1+2^A101650(k)}/2.

Offset 0, canonical program `A101657.P2248602799950987862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A101657 (n : ℕ) : ℤ :=
  A101657.P2248602799950987862.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A101657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101658.P12420169299485616279

`∏[A000123(a(A101650(n)))]` with `a(0)=1`
-/

namespace A101658.P12420169299485616279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000123 (f1 (A101650 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A101658.P12420169299485616279

noncomputable section

/-- A101658: a(n)=Product{k=0..n, 1+3^A101650(k)}/2.

Offset 0, canonical program `A101658.P12420169299485616279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A101658 (n : ℕ) : ℤ :=
  A101658.P12420169299485616279.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A101658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102396.P11203045017586188520

`ceil(A038573(n)/3)`
-/

namespace A102396.P11203045017586188520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A038573 n : ℚ) / 3⌉

end

end A102396.P11203045017586188520

noncomputable section

/-- A102396: A mod 2 related Jacobsthal sequence.

Offset 0, canonical program `A102396.P11203045017586188520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102396 (n : ℕ) : ℤ :=
  A102396.P11203045017586188520.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102397.P15234207466118283205

`A010059(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A102397.P15234207466118283205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010059 n + 10 * a (n - 1)

end

end A102397.P15234207466118283205

noncomputable section

/-- A102397: a(n) = concatenation of first n elements of Thue-Morse sequence A010059.

Offset 0, canonical program `A102397.P15234207466118283205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A102397 (n : ℕ) : ℤ :=
  A102397.P15234207466118283205.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A102397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102566.P5376165484103837869

`A035103(n+1)+1`
-/

namespace A102566.P5376165484103837869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035103 (n + 1) + 1

end

end A102566.P5376165484103837869

noncomputable section

/-- A102566: a(n) = {minimal k such that f^k(prime(n)) = 1} where f(m) = (m+1)/2^r, 2^r is the highest power of two dividing m+1.

Offset 1, canonical program `A102566.P5376165484103837869`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A102566 (n : ℕ) : ℤ :=
  A102566.P5376165484103837869.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A102566.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A102655.P10974709254634012816

`record[A025480(A034963(n+1)+1)]`
-/

namespace A102655.P10974709254634012816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A034963 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A102655.P10974709254634012816

noncomputable section

/-- A102655: Numbers that are the arithmetic mean of four successive primes.

Offset 1, canonical program `A102655.P10974709254634012816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A102655 (n : ℕ) : ℤ :=
  A102655.P10974709254634012816.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A102655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102928.P4713113639802046422

`lcm(A025529(n+1), A081528(n+1))/A025529(n+1)`
-/

namespace A102928.P4713113639802046422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A025529 (n + 1)) (A081528 (n + 1)) : ℚ) / (A025529 (n + 1) : ℚ)

end

end A102928.P4713113639802046422

noncomputable section

/-- A102928: Numerator of the harmonic mean of the first n positive integers.

Offset 1, canonical program `A102928.P4713113639802046422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A102928 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A102928.P4713113639802046422.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A102928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103195.P3143409800343449666

`A032609(p?[A172367(n+1)])`
-/

namespace A103195.P3143409800343449666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032609 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A103195.P3143409800343449666

noncomputable section

/-- A103195: Concatenations of pairs of primes that differ by four.

Offset 1, canonical program `A103195.P3143409800343449666`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. -/
def A103195 (n : ℕ) : ℤ :=
  A103195.P3143409800343449666.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. -/
def A103195.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103206.P12256107844187718994

`A032611(p?[A015914(n+1)])`
-/

namespace A103206.P12256107844187718994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032611 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A103206.P12256107844187718994

noncomputable section

/-- A103206: Concatenations of pairs of primes that differ by 6.

Offset 0, canonical program `A103206.P12256107844187718994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 411 terms. -/
def A103206 (n : ℕ) : ℤ :=
  A103206.P12256107844187718994.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 411 terms. -/
def A103206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104082.P7641445042095551914

`A104080(2*n)`
-/

namespace A104082.P7641445042095551914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104080 (2 * n)

end

end A104082.P7641445042095551914

noncomputable section

/-- A104082: Smallest prime >= 4^n.

Offset 0, canonical program `A104082.P7641445042095551914`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104080, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104082 (n : ℕ) : ℤ :=
  A104082.P7641445042095551914.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104080, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104082.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A104105.P2847982210101266645

`A010059(or(n, n+9))`
-/

namespace A104105.P2847982210101266645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (Nat.lor n (n + 9))

end

end A104105.P2847982210101266645

noncomputable section

/-- A104105: a(1) = 1, if A(k) = sequence of first 2^k -1 terms and if B(k) is A(k) with 0's and 1's exchanged, then A(k+1) = A(k),1,B(k) if a(k) = 0, A(k+1) = A(k),0,B(k) if a(k) = 1.

Offset 1, canonical program `A104105.P2847982210101266645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A104105 (n : ℕ) : ℤ :=
  A104105.P2847982210101266645.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A104105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104718.P15020295822495092492

`A032613(A023202(n+1))`
-/

namespace A104718.P15020295822495092492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032613 (A023202 (n + 1)).toNat

end

end A104718.P15020295822495092492

noncomputable section

/-- A104718: Concatenations of pairs of primes that differ by 8.

Offset 1, canonical program `A104718.P15020295822495092492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A104718 (n : ℕ) : ℤ :=
  A104718.P15020295822495092492.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A104718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105062.P5922688254969693888

`A240857(∑[n])+1`
-/

namespace A105062.P5922688254969693888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240857 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A105062.P5922688254969693888

noncomputable section

/-- A105062: Triangle read by rows, based on the morphism f: 1->2, 2->3, 3->4, 4->5, 5->6, 6->{6,6,10,7}, 7->8, 8->9, 9->10, 10->11, 11->12, 12->{12,12,5,1}. First row is 1. If current row is a,b,c,..., then the next row is a,b,c,...,f(a),f(b),f(c),...

Offset 1, canonical program `A105062.P5922688254969693888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A105062 (n : ℕ) : ℤ :=
  A105062.P5922688254969693888.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. -/
def A105062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105783.P9077009907461393133

`∑{e}[A132995(n+1), #]`
-/

namespace A105783.P9077009907461393133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132995 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A105783.P9077009907461393133

noncomputable section

/-- A105783: Number of terms among the first n primes that are divisors of the sum of the first n primes.

Offset 1, canonical program `A105783.P9077009907461393133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 549 terms. -/
def A105783 (n : ℕ) : ℤ :=
  (A105783.P9077009907461393133.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 549 terms. -/
def A105783.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106087.P13902758896492303522

`∩[A023215(n+1), A023224(n+1)]`
-/

namespace A106087.P13902758896492303522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106087.P13902758896492303522

noncomputable section

/-- A106087: Primes p such that 7*p+4 and 4*p+7 are primes.

Offset 1, canonical program `A106087.P13902758896492303522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2056 terms. -/
def A106087 (n : ℕ) : ℤ :=
  (A106087.P13902758896492303522.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2056 terms. -/
def A106087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106181.P18239189246069917284

`Δ[A105523(n)]*A062157(n)`
-/

namespace A106181.P18239189246069917284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A062157 n

end

end A106181.P18239189246069917284

noncomputable section

/-- A106181: Expansion of c(-x^2)(1+2x-sqrt(1+4x^2))/2, c(x) the g.f. of A000108.

Offset 0, canonical program `A106181.P18239189246069917284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A106181 (n : ℕ) : ℤ :=
  A106181.P18239189246069917284.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A106181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106365.P1754909470558632243

`A306896(A254667(n+1))/A254667(n+1)`
-/

namespace A106365.P1754909470558632243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306896 (A254667 (n + 1)).toNat : ℚ) / (A254667 (n + 1) : ℚ)

end

end A106365.P1754909470558632243

noncomputable section

/-- A106365: Number of necklaces with n beads of 3 colors, no 2 adjacent beads the same color.

Offset 1, canonical program `A106365.P1754909470558632243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A106365 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A106365.P1754909470558632243.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A106365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106642.P1022139350271527584

`A273149(2*xor(n, 2*n))`
-/

namespace A106642.P1022139350271527584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273149 (2 * Nat.xor n (2 * n))

end

end A106642.P1022139350271527584

noncomputable section

/-- A106642: A four-symbol four-at-a-time substitution with an ordering change: q=1.

Offset 0, canonical program `A106642.P1022139350271527584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A106642 (n : ℕ) : ℤ :=
  A106642.P1022139350271527584.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A106642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107473.P616088054207537606

`lcm(n+1, A121048(n+1))/(n+1)`
-/

namespace A107473.P616088054207537606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A121048 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A107473.P616088054207537606

noncomputable section

/-- A107473: Sum of numerator and denominator of Product_{p|n, p prime} (1 - 1/p).

Offset 1, canonical program `A107473.P616088054207537606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107473 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A107473.P616088054207537606.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107599.P7799038033738361722

`1-A079054(n+2)`
-/

namespace A107599.P7799038033738361722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A079054 (n + 2)

end

end A107599.P7799038033738361722

noncomputable section

/-- A107599: a(n) = 0,1,2 (resp.) if (1/2)[prime(n-1)+prime(n+1)] is less than, equal to or greater than prime(n) (resp.).

Offset 2, canonical program `A107599.P7799038033738361722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A107599 (n : ℕ) : ℤ :=
  A107599.P7799038033738361722.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A107599.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108415.P14242309755812235254

`A079054(n+2)+2`
-/

namespace A108415.P14242309755812235254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079054 (n + 2) + 2

end

end A108415.P14242309755812235254

noncomputable section

/-- A108415: a(n) = 1, 2 or 3 (resp.) if prime(n) is weak, balanced or strong (resp.).

Offset 2, canonical program `A108415.P14242309755812235254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A108415 (n : ℕ) : ℤ :=
  A108415.P14242309755812235254.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A108415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108562.P17517280457270217684

`p?[∑[A046930(n+1)]+1]`
-/

namespace A108562.P17517280457270217684
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046930 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A108562.P17517280457270217684

noncomputable section

/-- A108562: Primes of the form prime(n) + prime(n+1) - 2n - 1.

Offset 1, canonical program `A108562.P17517280457270217684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1853 terms. -/
def A108562 (n : ℕ) : ℤ :=
  A108562.P17517280457270217684.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1853 terms. -/
def A108562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108747.P16108472885053491195

`2*A033184(n+1)*A059268(n)`
-/

namespace A108747.P16108472885053491195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A033184 (n + 1) * A059268 n)

end

end A108747.P16108472885053491195

noncomputable section

/-- A108747: Triangle read by rows: T(n,k) is the number of Grand Dyck paths of semilength n and having k returns to the x-axis.

Offset 1, canonical program `A108747.P16108472885053491195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108747 (n : ℕ) : ℤ :=
  A108747.P16108472885053491195.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108891.P13145982626220212631

`2*A059268(n)*A104219(n)`
-/

namespace A108891.P13145982626220212631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A059268 n * A104219 n)

end

end A108891.P13145982626220212631

noncomputable section

/-- A108891: Triangle read by rows: T(n,k) = number of Schroeder (or royal) n-paths (A006318) containing k returns to the diagonal y=x. (A northeast step lying on y=x contributes a return.)

Offset 1, canonical program `A108891.P13145982626220212631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9180 terms. -/
def A108891 (n : ℕ) : ℤ :=
  A108891.P13145982626220212631.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9180 terms. -/
def A108891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109535.P2599924658879857923

`2*n-a(A025480(n-1))` with `a(0)=1`
-/

namespace A109535.P2599924658879857923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n : ℤ) - a (A025480 (n - 1)).toNat

end

end A109535.P2599924658879857923

noncomputable section

/-- A109535: a(0) = 1, a(n) = n+a(floor(n/2)) if n mod 2 = 0, a(n) = 2n-a(floor((n-1)/2)) if n mod 2 = 1.

Offset 0, canonical program `A109535.P2599924658879857923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109535 (n : ℕ) : ℤ :=
  A109535.P2599924658879857923.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109724.P13324119024672289363

`∑[A109725(n)]-A109725(n)`
-/

namespace A109724.P13324119024672289363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A109725 n

end

end A109724.P13324119024672289363

noncomputable section

/-- A109724: Sum of the first n^2 primes.

Offset 0, canonical program `A109724.P13324119024672289363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109724 (n : ℕ) : ℤ :=
  A109724.P13324119024672289363.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A109724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110009.P234597410290863382

`A110005(A116966(n))`
-/

namespace A110009.P234597410290863382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110005 (A116966 n).toNat

end

end A110009.P234597410290863382

noncomputable section

/-- A110009: n followed by n^4 followed by n^2 followed by n^3.

Offset 1, canonical program `A110009.P234597410290863382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110009 (n : ℕ) : ℤ :=
  A110009.P234597410290863382.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110622.P18117295011988336150

`A110005(A014681(n+1))`
-/

namespace A110622.P18117295011988336150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110005 (A014681 (n + 1)).toNat

end

end A110622.P18117295011988336150

noncomputable section

/-- A110622: n^2 followed by n followed by n^3 followed by n^4.

Offset 1, canonical program `A110622.P18117295011988336150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110622 (n : ℕ) : ℤ :=
  A110622.P18117295011988336150.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110652.P17500157700385887911

`A110651(A116966(n))`
-/

namespace A110652.P17500157700385887911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110651 (A116966 n).toNat

end

end A110652.P17500157700385887911

noncomputable section

/-- A110652: n^2 followed by n^3 followed by n^4 followed by n.

Offset 1, canonical program `A110652.P17500157700385887911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110652 (n : ℕ) : ℤ :=
  A110652.P17500157700385887911.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110652.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110663.P10056523750472709388

`A002088(A002024(n+1))-A002088(A002262(n))`
-/

namespace A110663.P10056523750472709388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (A002024 (n + 1)).toNat - A002088 (A002262 n).toNat

end

end A110663.P10056523750472709388

noncomputable section

/-- A110663: Triangle read by rows: T(n,k) = Sum_{j=k..n} phi(j) (1<=k<=n), where phi is Euler's totient function.

Offset 1, canonical program `A110663.P10056523750472709388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A110663 (n : ℕ) : ℤ :=
  A110663.P10056523750472709388.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A110663.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111409.P14392495408672039637

`1-Δ[A219029(A028310(n))]`
-/

namespace A111409.P14392495408672039637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219029 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A111409.P14392495408672039637

noncomputable section

/-- A111409: a(n) = f(f(n+1)) - f(f(n)), where f(0)=0, and for m>0, f(m) = phi(m) = A000010(m).

Offset 0, canonical program `A111409.P14392495408672039637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111409 (n : ℕ) : ℤ :=
  A111409.P14392495408672039637.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112270.P2426147511943281131

`A007504(A103208(n+1))/3`
-/

namespace A112270.P2426147511943281131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (A103208 (n + 1)).toNat : ℚ) / 3

end

end A112270.P2426147511943281131

noncomputable section

/-- A112270: One third of the sum of the first n primes, when an integer.

Offset 1, canonical program `A112270.P2426147511943281131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A112270 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A112270.P2426147511943281131.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A112270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112271.P15116177394105532634

`A007504(A111319(n+1))/5`
-/

namespace A112271.P15116177394105532634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (A111319 (n + 1)).toNat : ℚ) / 5

end

end A112271.P15116177394105532634

noncomputable section

/-- A112271: One fifth of the sum of the first n primes, when an integer.

Offset 1, canonical program `A112271.P15116177394105532634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A112271 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A112271.P15116177394105532634.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A112271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112272.P10778085801830275971

`ceil(A007504(A111321(-xor(n, -1)))/7)`
-/

namespace A112272.P10778085801830275971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007504 (A111321 (-Int.xor (n : ℤ) (-1)).toNat).toNat : ℚ) / 7⌉

end

end A112272.P10778085801830275971

noncomputable section

/-- A112272: One seventh of the sum of the first n primes, when an integer.

Offset 1, canonical program `A112272.P10778085801830275971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A112272 (n : ℕ) : ℤ :=
  A112272.P10778085801830275971.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A112272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112988.P2584169627832420674

`A006005(n+1)+A077150(A006005(n+1))+1`
-/

namespace A112988.P2584169627832420674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1) + (A077150 (A006005 (n + 1)).toNat + 1)

end

end A112988.P2584169627832420674

noncomputable section

/-- A112988: Position of n-th prime in A089088.

Offset 1, canonical program `A112988.P2584169627832420674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A112988 (n : ℕ) : ℤ :=
  A112988.P2584169627832420674.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A112988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113601.P12275914542053684162

`p?[floor(A142399(n+1)/4)]`
-/

namespace A113601.P12275914542053684162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A142399 (n + 1) : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113601.P12275914542053684162

noncomputable section

/-- A113601: Intersection of A002144 and A005098.

Offset 1, canonical program `A113601.P12275914542053684162`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2220 terms. -/
def A113601 (n : ℕ) : ℤ :=
  A113601.P12275914542053684162.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2220 terms. -/
def A113601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113697.P8951298962785350853

`floor(A032607(n+1)/(n+2))`
-/

namespace A113697.P8951298962785350853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A032607 (n + 1) : ℚ) / (n + 2 : ℚ)⌋

end

end A113697.P8951298962785350853

noncomputable section

/-- A113697: Floor[n concatenated with n+2 divided by n+1].

Offset 1, canonical program `A113697.P8951298962785350853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113697 (n : ℕ) : ℤ :=
  A113697.P8951298962785350853.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115068.P17894343994682237628

`A059268(A061579(n))*A074909(n)`
-/

namespace A115068.P17894343994682237628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A061579 n).toNat * A074909 n

end

end A115068.P17894343994682237628

noncomputable section

/-- A115068: Triangle read by rows: T(n,k) = number of elements in the Coxeter group D_n with descent set contained in {s_k}, for 0<=k<=n-1.

Offset 1, canonical program `A115068.P17894343994682237628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115068 (n : ℕ) : ℤ :=
  A115068.P17894343994682237628.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115126.P18305659817422248974

`A030237(char[comp[∑[n-1]]]+n+1)`
-/

namespace A115126.P18305659817422248974
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030237 ((if ∃ j, f1 j = n then 1 else 0) + (n + 1))

end

end A115126.P18305659817422248974

noncomputable section

/-- A115126: First (k=1) triangle of numbers related to totally asymmetric exclusion process (case alpha=1, beta=1).

Offset 1, canonical program `A115126.P18305659817422248974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115126 (n : ℕ) : ℤ :=
  A115126.P18305659817422248974.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115134.P11426993813072874618

`A000245(n+3)+∑[A071724(n)]`
-/

namespace A115134.P11426993813072874618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A115134.P11426993813072874618

noncomputable section

/-- A115134: Third diagonal sequence of triangle A115127.

Offset 4, canonical program `A115134.P11426993813072874618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A115134 (n : ℕ) : ℤ :=
  A115134.P11426993813072874618.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A115134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115516.P12830131458116103900

`A000045(and(48, A037861(n)))%5`
-/

namespace A115516.P12830131458116103900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (Int.land 48 (A037861 n)).toNat) 5

end

end A115516.P12830131458116103900

noncomputable section

/-- A115516: The mode of the bits of n (using 0 if bimodal).

Offset 0, canonical program `A115516.P12830131458116103900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115516 (n : ℕ) : ℤ :=
  A115516.P12830131458116103900.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115517.P313347450505954263

`A000032(ceil(A037861(n)/(n+2)))-1`
-/

namespace A115517.P313347450505954263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ⌈(A037861 n : ℚ) / (n + 2 : ℚ)⌉.toNat - 1

end

end A115517.P313347450505954263

noncomputable section

/-- A115517: The mode of the bits of n (using 1 if bimodal).

Offset 0, canonical program `A115517.P313347450505954263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115517 (n : ℕ) : ℤ :=
  A115517.P313347450505954263.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115732.P15439679274567884474

`A000040(∑[char[A112997(n+1)]]+1)`
-/

namespace A115732.P15439679274567884474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112997 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A115732.P15439679274567884474

noncomputable section

/-- A115732: n-th prime prime(n) repeated (prime(n)-n) times.

Offset 1, canonical program `A115732.P15439679274567884474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115732 (n : ℕ) : ℤ :=
  A115732.P15439679274567884474.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116001.P13832285988926112300

`eq[2, A001222(A051612(n+2))]+2`
-/

namespace A116001.P13832285988926112300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A051612 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A116001.P13832285988926112300

noncomputable section

/-- A116001: sigma(n) - phi(n) gives a semiprime (A001358).

Offset 1, canonical program `A116001.P13832285988926112300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 397 terms. -/
def A116001 (n : ℕ) : ℤ :=
  (A116001.P13832285988926112300.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 397 terms. -/
def A116001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116035.P8183643849721833258

`eq[1, A001222(A065387(n+1)+n+1)]+1`
-/

namespace A116035.P8183643849721833258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A065387 (n + 1) + (n : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A116035.P8183643849721833258

noncomputable section

/-- A116035: Numbers k such that k + phi(k) + sigma(k) is a prime.

Offset 1, canonical program `A116035.P8183643849721833258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 927 terms. -/
def A116035 (n : ℕ) : ℤ :=
  (A116035.P8183643849721833258.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 927 terms. -/
def A116035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117567.P12108434008989334567

`floor(sqrt(A116948(n)))`
-/

namespace A117567.P12108434008989334567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A116948 n)

end

end A117567.P12108434008989334567

noncomputable section

/-- A117567: Riordan array ((1+x^2)/(1-x^3),x).

Offset 0, canonical program `A117567.P12108434008989334567`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117567 (n : ℕ) : ℤ :=
  A117567.P12108434008989334567.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117891.P16841022737502782817

`∩[A049445(n+1), A117890(n+1)]`
-/

namespace A117891.P16841022737502782817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049445 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A117891.P16841022737502782817

noncomputable section

/-- A117891: Numbers k such that both the number of non-leading 0's in the binary representation of k and the number of 1's in the binary representation of k divide k.

Offset 1, canonical program `A117891.P16841022737502782817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3058 terms. -/
def A117891 (n : ℕ) : ℤ :=
  (A117891.P16841022737502782817.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3058 terms. -/
def A117891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118310.P4781483978204000189

`gcd(n+1, A073425(n))`
-/

namespace A118310.P4781483978204000189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A073425 n)

end

end A118310.P4781483978204000189

noncomputable section

/-- A118310: a(n) = gcd(n,m(n)), where m(n) is the n-th nonprime positive integer (1 or composite).

Offset 1, canonical program `A118310.P4781483978204000189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118310 (n : ℕ) : ℤ :=
  (A118310.P4781483978204000189.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118381.P10574708668957501424

`A060818(n+1)*A060828(n+1)`
-/

namespace A118381.P10574708668957501424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060818 (n + 1) * A060828 (n + 1)

end

end A118381.P10574708668957501424

noncomputable section

/-- A118381: Largest 3-smooth number dividing n!.

Offset 1, canonical program `A118381.P10574708668957501424`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060828, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118381 (n : ℕ) : ℤ :=
  A118381.P10574708668957501424.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060828, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A118381.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A118821.P17852525243944256104

`1-A001057(A135481(n)+2)`
-/

namespace A118821.P17852525243944256104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001057 (A135481 n + 2).toNat

end

end A118821.P17852525243944256104

noncomputable section

/-- A118821: 2-adic continued fraction of zero, where a(n) = 2 if n is odd, -A006519(n/2) otherwise.

Offset 1, canonical program `A118821.P17852525243944256104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118821 (n : ℕ) : ℤ :=
  A118821.P17852525243944256104.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118950.P7310832611478025886

`comp[A084984(n+1)]`
-/

namespace A118950.P7310832611478025886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A118950.P7310832611478025886

noncomputable section

/-- A118950: Numbers containing at least one prime digit.

Offset 1, canonical program `A118950.P7310832611478025886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118950 (n : ℕ) : ℤ :=
  (A118950.P7310832611478025886.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119251.P15176294576861690878

`eq[1, A056169(n+1)]+1`
-/

namespace A119251.P15176294576861690878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A119251.P15176294576861690878

noncomputable section

/-- A119251: Positive integers each with exactly 1 unitary prime divisor (i.e., n is included if and only if A056169(n) = 1).

Offset 1, canonical program `A119251.P15176294576861690878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2956 terms. -/
def A119251 (n : ℕ) : ℤ :=
  (A119251.P15176294576861690878.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2956 terms. -/
def A119251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119432.P2492859987505692241

`lt[1, A062356(n+1)]+1`
-/

namespace A119432.P2492859987505692241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062356 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A119432.P2492859987505692241

noncomputable section

/-- A119432: Numbers k such that 2*phi(k) <= k.

Offset 1, canonical program `A119432.P2492859987505692241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5109 terms. -/
def A119432 (n : ℕ) : ℤ :=
  (A119432.P2492859987505692241.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5109 terms. -/
def A119432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120427.P17896066987903461565

`4*A020888(n+1)`
-/

namespace A120427.P17896066987903461565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A020888 (n + 1)

end

end A120427.P17896066987903461565

noncomputable section

/-- A120427: For each y >= 1 there are only finitely many values of x >= 1 such that x-y and x+y are both squares; list all such pairs (x,y) with gcd(x,y) = 1 ordered by values of y; sequence gives y values.

Offset 1, canonical program `A120427.P17896066987903461565`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020888, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120427 (n : ℕ) : ℤ :=
  A120427.P17896066987903461565.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020888, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A120427.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A120778.P3390227642440229667

`A046161(n+1)-A001790(n+1)`
-/

namespace A120778.P3390227642440229667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 (n + 1) - A001790 (n + 1)

end

end A120778.P3390227642440229667

noncomputable section

/-- A120778: Numerators of partial sums of Catalan numbers scaled by powers of 1/4.

Offset 0, canonical program `A120778.P3390227642440229667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A120778 (n : ℕ) : ℤ :=
  A120778.P3390227642440229667.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A120778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121519.P18252372970156583767

`record[A008330(n+1)]`
-/

namespace A121519.P18252372970156583767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121519.P18252372970156583767

noncomputable section

/-- A121519: Number of primitive roots of prime A103203(n).

Offset 1, canonical program `A121519.P18252372970156583767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1392 terms. -/
def A121519 (n : ℕ) : ℤ :=
  A121519.P18252372970156583767.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1392 terms. -/
def A121519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121684.P14387965251010562134

`∪[A065966(n+1), A078779(n+1)]`
-/

namespace A121684.P14387965251010562134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A121684.P14387965251010562134

noncomputable section

/-- A121684: Union of {8, 9, 18}, S, 2S and 4S, where S = odd squarefree numbers (A056911).

Offset 1, canonical program `A121684.P14387965251010562134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121684 (n : ℕ) : ℤ :=
  (A121684.P14387965251010562134.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121755.P15793867916644543395

`A007504(n+1)/A132995(n+1)`
-/

namespace A121755.P15793867916644543395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) : ℚ) / (A132995 (n + 1) : ℚ)

end

end A121755.P15793867916644543395

noncomputable section

/-- A121755: Numerator of Sum/Product of first n primes = Numerator[ A007504[n] / A002110[n] ].

Offset 1, canonical program `A121755.P15793867916644543395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121755 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A121755.P15793867916644543395.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122256.P3316348703661489538

`∑[A122255(n+1)]`
-/

namespace A122256.P3316348703661489538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122256.P3316348703661489538

noncomputable section

/-- A122256: Number of numbers <= n with 3-smooth Euler's totient (A000010).

Offset 1, canonical program `A122256.P3316348703661489538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122256 (n : ℕ) : ℤ :=
  A122256.P3316348703661489538.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122257.P4437493794124437711

`A010051(n+1)*A122255(n+1)`
-/

namespace A122257.P4437493794124437711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A122255 (n + 1)

end

end A122257.P4437493794124437711

noncomputable section

/-- A122257: Characteristic function of Pierpont primes (A005109).

Offset 1, canonical program `A122257.P4437493794124437711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122257 (n : ℕ) : ℤ :=
  A122257.P4437493794124437711.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122261.P6538206010001195725

`A122255(∏{p}[n+1, #])`
-/

namespace A122261.P6538206010001195725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122255 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A122261.P6538206010001195725

noncomputable section

/-- A122261: Characteristic function of numbers having only factors that are Pierpont primes.

Offset 1, canonical program `A122261.P6538206010001195725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122261 (n : ℕ) : ℤ :=
  A122261.P6538206010001195725.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123254.P11852088643476700636

`(-1)^col(n)*A105523(row(n))*C(row(n), col(n))`
-/

namespace A123254.P11852088643476700636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.triCol n * A105523 (SequenceMachineLib.triRow n) * (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ)

end

end A123254.P11852088643476700636

noncomputable section

/-- A123254: Triangle T(n,k), 0<=k<=n, read by rows given by [ -1,1,-1,1,-1,1,-1,1,-1,1,...] DELTA [1,-1,1,-1,1,-1,1,-1,1,-1,...] where DELTA is the operator defined in A084938.

Offset 0, canonical program `A123254.P11852088643476700636`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123254 (n : ℕ) : ℤ :=
  A123254.P11852088643476700636.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105523, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123254.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A123707.P12126468004863991091

`(A231821(n+1)-3+2^n-A178472(n+1))/2`
-/

namespace A123707.P12126468004863991091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231821 (n + 1) - 3 + ((2 ^ n : ℤ) - A178472 (n + 1)) : ℚ) / 2

end

end A123707.P12126468004863991091

noncomputable section

/-- A123707: a(n) = Sum_{k=1..n} A123706(n,k)*2^(k-1).

Offset 1, canonical program `A123707.P12126468004863991091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A123707 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A123707.P12126468004863991091.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A123707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124478.P5037515413752499409

`ceil(A240568(n+1)/(n+1))`
-/

namespace A124478.P5037515413752499409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A240568 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A124478.P5037515413752499409

noncomputable section

/-- A124478: a(n) = prime(n) - floor((2/n)*Sum_{i=1..n} prime(i)).

Offset 1, canonical program `A124478.P5037515413752499409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124478 (n : ℕ) : ℤ :=
  A124478.P5037515413752499409.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124815.P7342009755196343803

`∑{d}[n+1, A080512(#)*A091338((n+1)/#)]`
-/

namespace A124815.P7342009755196343803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A080512 d * A091338 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A124815.P7342009755196343803

noncomputable section

/-- A124815: Expansion of q * psi(q)^2 * psi(-q^3)^2 * phi(-q^6) / phi(-q^2) in powers of q where phi(), psi() are Ramanujan theta functions.

Offset 1, canonical program `A124815.P7342009755196343803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124815 (n : ℕ) : ℤ :=
  A124815.P7342009755196343803.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A124815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125494.P18071949956906500659

`filter[A001969(n+2), A066247(#)]`
-/

namespace A125494.P18071949956906500659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A125494.P18071949956906500659

noncomputable section

/-- A125494: Composite evil numbers.

Offset 1, canonical program `A125494.P18071949956906500659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9020 terms. -/
def A125494 (n : ℕ) : ℤ :=
  A125494.P18071949956906500659.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9020 terms. -/
def A125494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125497.P11464506834730115885

`A000578(eq[0, A365089(n)])`
-/

namespace A125497.P11464506834730115885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125497.P11464506834730115885

noncomputable section

/-- A125497: Evil cubes.

Offset 1, canonical program `A125497.P11464506834730115885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5052 terms. -/
def A125497 (n : ℕ) : ℤ :=
  A125497.P11464506834730115885.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5052 terms. -/
def A125497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125553.P12175399792227395879

`2*A059268(n)*A130534(n)`
-/

namespace A125553.P12175399792227395879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A059268 n * A130534 n)

end

end A125553.P12175399792227395879

noncomputable section

/-- A125553: Triangle read by rows: T(n,k) = S1(n,k)*2^k, where S1(n,k) is an unsigned Stirling number of the first kind (cf. A008275) (n >= 1, 1 <= k <= n).

Offset 1, canonical program `A125553.P12175399792227395879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2417 terms. -/
def A125553 (n : ℕ) : ℤ :=
  A125553.P12175399792227395879.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2417 terms. -/
def A125553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125562.P4991088652026869533

`A147610(A065361(n)+2)`
-/

namespace A125562.P4991088652026869533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147610 (A065361 n + 2).toNat

end

end A125562.P4991088652026869533

noncomputable section

/-- A125562: a(n) = denominator of (2n + 1)!/3^n.

Offset 0, canonical program `A125562.P4991088652026869533`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125562 (n : ℕ) : ℤ :=
  A125562.P4991088652026869533.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126064.P1560116210223187894

`A059268(n)*A094587(n)`
-/

namespace A126064.P1560116210223187894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A094587 n

end

end A126064.P1560116210223187894

noncomputable section

/-- A126064: Triangle read by rows, obtained by multiplying columns of triangle in A094587 by 1,2,4,8,16,... respectively.

Offset 0, canonical program `A126064.P1560116210223187894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A126064 (n : ℕ) : ℤ :=
  A126064.P1560116210223187894.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A126064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126083.P11057915756448127103

`(A025529(n+1)/gcd(A003418(n), A025529(n+1)))%(n+1)`
-/

namespace A126083.P11057915756448127103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A025529 (n + 1) : ℚ) / (Int.gcd (A003418 n) (A025529 (n + 1)) : ℚ))) (n + 1 : ℤ)

end

end A126083.P11057915756448127103

noncomputable section

/-- A126083: a(n) = numerator of H(n) taken mod n, where H(n) = Sum_{k=1..n} 1/k is the n-th harmonic number.

Offset 1, canonical program `A126083.P11057915756448127103`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A126083 (n : ℕ) : ℤ :=
  A126083.P11057915756448127103.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A126083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127192.P13574579328313795514

`A029935(A010766(n+1))*A051731(n+1)`
-/

namespace A127192.P13574579328313795514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029935 (A010766 (n + 1)).toNat * A051731 (n + 1)

end

end A127192.P13574579328313795514

noncomputable section

/-- A127192: Triangle read by rows: square of A054523.

Offset 1, canonical program `A127192.P13574579328313795514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127192 (n : ℕ) : ℤ :=
  A127192.P13574579328313795514.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127327.P1609288249831228995

`A127321(n)-A127322(n)`
-/

namespace A127327.P1609288249831228995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 n - A127322 n

end

end A127327.P1609288249831228995

noncomputable section

/-- A127327: Hypertetrahedron with T(W,X,Y,Z) = W - X.

Offset 0, canonical program `A127327.P1609288249831228995`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127322, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127327 (n : ℕ) : ℤ :=
  A127327.P1609288249831228995.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A127322, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A127327.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A127334.P6228238072744643247

`A127333(n+2)+A000040(n+1)`
-/

namespace A127334.P6228238072744643247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127333 (n + 2) + A000040 (n + 1)

end

end A127334.P6228238072744643247

noncomputable section

/-- A127334: Numbers that are the sum of 7 consecutive primes.

Offset 1, canonical program `A127334.P6228238072744643247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A127334 (n : ℕ) : ℤ :=
  A127334.P6228238072744643247.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A127334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127626.P10622249536812093687

`∑{d}[A127093(n+1), A029935(#)]`
-/

namespace A127626.P10622249536812093687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A029935 d

end

end A127626.P10622249536812093687

noncomputable section

/-- A127626: Triangle T(n,k) = A018804(k) if k|n, else T(n,k)=0.

Offset 1, canonical program `A127626.P10622249536812093687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127626 (n : ℕ) : ℤ :=
  A127626.P10622249536812093687.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127718.P10724454338439117394

`A002260(n+1)*A055248(n)`
-/

namespace A127718.P10724454338439117394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A055248 n

end

end A127718.P10724454338439117394

noncomputable section

/-- A127718: A007318 * A002260 as infinite lower triangular matrices; A002260 = [1; 1,2; 1,2,3; ...].

Offset 1, canonical program `A127718.P10724454338439117394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127718 (n : ℕ) : ℤ :=
  A127718.P10724454338439117394.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127733.P16638818104099670368

`A127648(n)^2`
-/

namespace A127733.P16638818104099670368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 n ^ 2

end

end A127733.P16638818104099670368

noncomputable section

/-- A127733: Triangle read by rows: n-th row is n^2 preceded by (n-1) zeros.

Offset 1, canonical program `A127733.P16638818104099670368`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127733 (n : ℕ) : ℤ :=
  A127733.P16638818104099670368.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127774.P7439703218120216971

`C(A127648(n)+2, 3)`
-/

namespace A127774.P7439703218120216971
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A127648 n + 2).toNat 3

end

end A127774.P7439703218120216971

noncomputable section

/-- A127774: Triangle read by rows: row n consists of n-1 zeros followed by A000292(n).

Offset 1, canonical program `A127774.P7439703218120216971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127774 (n : ℕ) : ℤ :=
  (A127774.P7439703218120216971.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128060.P14869908255004425999

`2*n-A128059(n)`
-/

namespace A128060.P14869908255004425999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A128059 n

end

end A128060.P14869908255004425999

noncomputable section

/-- A128060: a(n) = 2*n - numerator((2*n-1)^2/(2*(2*n)!)).

Offset 0, canonical program `A128060.P14869908255004425999`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A128059, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128060 (n : ℕ) : ℤ :=
  A128060.P14869908255004425999.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A128059, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A128060.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A128138.P1103581948211264897

`val(A099627(n)+1, 2)`
-/

namespace A128138.P1103581948211264897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A099627 n + 1).toNat 2

end

end A128138.P1103581948211264897

noncomputable section

/-- A128138: A000012 * A128132.

Offset 1, canonical program `A128138.P1103581948211264897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128138 (n : ℕ) : ℤ :=
  (A128138.P1103581948211264897.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128138.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128245.P15864719787506353209

`A002264(p?[A101203(n+5)-A101203(n+1)])-1`
-/

namespace A128245.P15864719787506353209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 (n + 5) - A101203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A128245.P15864719787506353209

noncomputable section

/-- A128245: Smallest of three consecutive composite numbers whose sum is prime.

Offset 1, canonical program `A128245.P15864719787506353209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 253 terms. -/
def A128245 (n : ℕ) : ℤ :=
  A128245.P15864719787506353209.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 253 terms. -/
def A128245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128407.P15216900642853578067

`∑{d}[A127648(n), A007427(#)]`
-/

namespace A128407.P15216900642853578067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007427 d

end

end A128407.P15216900642853578067

noncomputable section

/-- A128407: Triangle read by rows: T(n,n) = mobius(n) on the diagonal, zero elsewhere.

Offset 1, canonical program `A128407.P15216900642853578067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128407 (n : ℕ) : ℤ :=
  A128407.P15216900642853578067.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128407.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128432.P3443979121522389698

`∑{d}[A127449(n+1), A007427(#)]`
-/

namespace A128432.P3443979121522389698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127449 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007427 d

end

end A128432.P3443979121522389698

noncomputable section

/-- A128432: Triangle read by rows: A128407 * A054521.

Offset 1, canonical program `A128432.P3443979121522389698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128432 (n : ℕ) : ℤ :=
  A128432.P3443979121522389698.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128489.P16282095299326048073

`C(A050206(n+2), 2)`
-/

namespace A128489.P16282095299326048073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A050206 (n + 2)).toNat 2

end

end A128489.P16282095299326048073

noncomputable section

/-- A128489: Triangle read by rows: A000012 * A126988 as infinite lower triangular matrices.

Offset 1, canonical program `A128489.P16282095299326048073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128489 (n : ℕ) : ℤ :=
  (A128489.P16282095299326048073.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128489.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128540.P17841008741763583237

`A000045(abs(Δ[A127648(n)]))`
-/

namespace A128540.P17841008741763583237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |f1 (n + 1) - f1 n|.toNat

end

end A128540.P17841008741763583237

noncomputable section

/-- A128540: Triangle A127647 * A097806, read by rows.

Offset 1, canonical program `A128540.P17841008741763583237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128540 (n : ℕ) : ℤ :=
  A128540.P17841008741763583237.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128853.P13378743803710917072

`A034444(n+1)/A034444(A009195(n+1))`
-/

namespace A128853.P13378743803710917072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034444 (n + 1) : ℚ) / (A034444 (A009195 (n + 1)).toNat : ℚ)

end

end A128853.P13378743803710917072

noncomputable section

/-- A128853: a(n) is the number of positive divisors of n which are coprime to phi(n) = A000010(n).

Offset 1, canonical program `A128853.P13378743803710917072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128853 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A128853.P13378743803710917072.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129110.P13788463784851798208

`A105523(n+2)+1`
-/

namespace A129110.P13788463784851798208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105523 (n + 2) + 1

end

end A129110.P13788463784851798208

noncomputable section

/-- A129110: A transformation of the Catalan sequence.

Offset 0, canonical program `A129110.P13788463784851798208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 344 terms. -/
def A129110 (n : ℕ) : ℤ :=
  A129110.P13788463784851798208.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 344 terms. -/
def A129110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129169.P1929904711446876169

`A122737(n+2)%A033321(n+1)`
-/

namespace A129169.P1929904711446876169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122737 (n + 2)) (A033321 (n + 1))

end

end A129169.P1929904711446876169

noncomputable section

/-- A129169: Number of UU's starting at level 0 in all skew Dyck paths of semilength n.

Offset 0, canonical program `A129169.P1929904711446876169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A129169 (n : ℕ) : ℤ :=
  A129169.P1929904711446876169.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A129169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129264.P6596499237645719087

`A029837(A050206(n+2))`
-/

namespace A129264.P6596499237645719087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A050206 (n + 2)).toNat

end

end A129264.P6596499237645719087

noncomputable section

/-- A129264: Triangle read by rows: A000012 * A115361 as infinite lower triangular matrices.

Offset 1, canonical program `A129264.P6596499237645719087`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129264 (n : ℕ) : ℤ :=
  A129264.P6596499237645719087.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129368.P2039354540942189590

`record[Δ[A100066(A026741(n))]]`
-/

namespace A129368.P2039354540942189590
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100066 (A026741 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A129368.P2039354540942189590

noncomputable section

/-- A129368: a(n) = Sum_{k=floor((n+1)/2)..n} binomial(2*k,k).

Offset 0, canonical program `A129368.P2039354540942189590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A129368 (n : ℕ) : ℤ :=
  A129368.P2039354540942189590.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A129368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130054.P881181456311237944

`∑{d}[n+1, A038712(#)*A117212((n+1)/#)]`
-/

namespace A130054.P881181456311237944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038712 d * A117212 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A130054.P881181456311237944

noncomputable section

/-- A130054: Inverse Moebius transform of A023900.

Offset 1, canonical program `A130054.P881181456311237944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130054 (n : ℕ) : ℤ :=
  A130054.P881181456311237944.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130127.P7684455108122293938

`A059268(n)*A115514(n+1)`
-/

namespace A130127.P7684455108122293938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A115514 (n + 1)

end

end A130127.P7684455108122293938

noncomputable section

/-- A130127: Triangle defined by A000012 * A130125, read by rows.

Offset 1, canonical program `A130127.P7684455108122293938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130127 (n : ℕ) : ℤ :=
  A130127.P7684455108122293938.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130160.P15806770847118490500

`A051731(n+1)*A130159(A002260(n+1))`
-/

namespace A130160.P15806770847118490500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A130159 (A002260 (n + 1)).toNat

end

end A130160.P15806770847118490500

noncomputable section

/-- A130160: A051731 * A130159 as a diagonalized matrix.

Offset 1, canonical program `A130160.P15806770847118490500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130160 (n : ℕ) : ℤ :=
  A130160.P15806770847118490500.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130197.P1298093891695330778

`2*A055248(n)-A135278(n)`
-/

namespace A130197.P1298093891695330778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055248 n - A135278 n

end

end A130197.P1298093891695330778

noncomputable section

/-- A130197: Binomial transform of A130196.

Offset 1, canonical program `A130197.P1298093891695330778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130197 (n : ℕ) : ℤ :=
  A130197.P1298093891695330778.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130202.P17992186468874660654

`A000217(eq[0, A228039(2*n+1)])`
-/

namespace A130202.P17992186468874660654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228039 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A130202.P17992186468874660654

noncomputable section

/-- A130202: Odious triangular numbers.

Offset 1, canonical program `A130202.P17992186468874660654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130202 (n : ℕ) : ℤ :=
  A130202.P17992186468874660654.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130207.P2831721020535577098

`A023531(n)*A078401(n+1)`
-/

namespace A130207.P2831721020535577098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A078401 (n + 1)

end

end A130207.P2831721020535577098

noncomputable section

/-- A130207: Diagonalized matrix of A000010, Euler totient function phi.

Offset 1, canonical program `A130207.P2831721020535577098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130207 (n : ℕ) : ℤ :=
  A130207.P2831721020535577098.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130208.P15493622475398037908

`∑{d}[A127648(n), #]`
-/

namespace A130208.P15493622475398037908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A130208.P15493622475398037908

noncomputable section

/-- A130208: Diagonalized matrix of A000203, sigma(n).

Offset 1, canonical program `A130208.P15493622475398037908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130208 (n : ℕ) : ℤ :=
  (A130208.P15493622475398037908.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130212.P13341498629550544317

`A010766(n+1)*A054526(n+1)`
-/

namespace A130212.P13341498629550544317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A054526 (n + 1)

end

end A130212.P13341498629550544317

noncomputable section

/-- A130212: T(k, n) = sum_(1 <= j <= k) [j | k] j mu(k / j) floor(n / k), triangle read by rows.

Offset 1, canonical program `A130212.P13341498629550544317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130212 (n : ℕ) : ℤ :=
  A130212.P13341498629550544317.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130265.P7668724315621306673

`A055248(n)+A103406(n)-A007318(n)`
-/

namespace A130265.P7668724315621306673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n + (A103406 n - A007318 n)

end

end A130265.P7668724315621306673

noncomputable section

/-- A130265: Triangle read by rows: matrix product A007318 * A051340.

Offset 0, canonical program `A130265.P7668724315621306673`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130265 (n : ℕ) : ℤ :=
  A130265.P7668724315621306673.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130296.P7958133824011622237

`val(A099627(n), 2)+1`
-/

namespace A130296.P7958133824011622237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A099627 n).toNat 2 + 1

end

end A130296.P7958133824011622237

noncomputable section

/-- A130296: Triangle read by rows: T[i,1]=i, T[i,j]=1 for 1 < j <= i = 1,2,3,...

Offset 1, canonical program `A130296.P7958133824011622237`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130296 (n : ℕ) : ℤ :=
  (A130296.P7958133824011622237.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130296.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130304.P3347931568843992111

`A104568(n)%2`
-/

namespace A130304.P3347931568843992111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104568 n) 2

end

end A130304.P3347931568843992111

noncomputable section

/-- A130304: Triangle, (1,1,0,0,1,1,0,0,...) in every column.

Offset 1, canonical program `A130304.P3347931568843992111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130304 (n : ℕ) : ℤ :=
  A130304.P3347931568843992111.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130324.P11583610858760618975

`(A140513(n)-A059268(n))*A059268(n)`
-/

namespace A130324.P11583610858760618975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A140513 n - A059268 n) * A059268 n

end

end A130324.P11583610858760618975

noncomputable section

/-- A130324: A059268^2.

Offset 0, canonical program `A130324.P11583610858760618975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130324 (n : ℕ) : ℤ :=
  A130324.P11583610858760618975.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130459.P11704629280460871813

`2*A130453(n+1)-A059268(n)`
-/

namespace A130459.P11704629280460871813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130453 (n + 1) - A059268 n

end

end A130459.P11704629280460871813

noncomputable section

/-- A130459: A059268 * A097806.

Offset 1, canonical program `A130459.P11704629280460871813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130459 (n : ℕ) : ℤ :=
  A130459.P11704629280460871813.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130460.P15106625908008159160

`A127648(A083920(n))`
-/

namespace A130460.P15106625908008159160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 (A083920 n).toNat

end

end A130460.P15106625908008159160

noncomputable section

/-- A130460: Infinite lower triangular matrix,(1,0,0,0,...) in the main diagonal and (1,2,3,...) in the subdiagonal.

Offset 1, canonical program `A130460.P15106625908008159160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130460 (n : ℕ) : ℤ :=
  A130460.P15106625908008159160.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130973.P2346010488408842124

`A048614(lt[1, A048614(n+1)+1]+1)`
-/

namespace A130973.P2346010488408842124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048614 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048614 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A130973.P2346010488408842124

noncomputable section

/-- A130973: Number of primes between successive pairs of twin primes, for a(n) > 0.

Offset 1, canonical program `A130973.P2346010488408842124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8924 terms. -/
def A130973 (n : ℕ) : ℤ :=
  A130973.P2346010488408842124.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8924 terms. -/
def A130973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131094.P16883013186837200310

`A126646(A123578(n))+floor(A059268(n)/2)+1`
-/

namespace A131094.P16883013186837200310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (A123578 n).toNat + ⌊(A059268 n : ℚ) / 2⌋ + 1

end

end A131094.P16883013186837200310

noncomputable section

/-- A131094: Triangle where n-th row contains the smallest n positive integers (listed in order) with exactly n nonleading 0's in their binary representations.

Offset 1, canonical program `A131094.P16883013186837200310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. -/
def A131094 (n : ℕ) : ℤ :=
  A131094.P16883013186837200310.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. -/
def A131094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131307.P11707046731788450443

`2*A128221(n+1)+A025581(n)-1`
-/

namespace A131307.P11707046731788450443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128221 (n + 1) + (A025581 n - 1)

end

end A131307.P11707046731788450443

noncomputable section

/-- A131307: (A127701 * A000012 + A000012(signed) * A127701) - A000012.

Offset 1, canonical program `A131307.P11707046731788450443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131307 (n : ℕ) : ℤ :=
  A131307.P11707046731788450443.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131415.P7466821744159895081

`A051597(n)+A055248(n)-A074909(n)`
-/

namespace A131415.P7466821744159895081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n + (A055248 n - A074909 n)

end

end A131415.P7466821744159895081

noncomputable section

/-- A131415: (A007318 * A000012) + (A000012 * A007318) - A007318.

Offset 0, canonical program `A131415.P7466821744159895081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131415 (n : ℕ) : ℤ :=
  A131415.P7466821744159895081.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131437.P3175007424412188088

`2*A099627(n)-1`
-/

namespace A131437.P3175007424412188088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099627 n - 1

end

end A131437.P3175007424412188088

noncomputable section

/-- A131437: (A000012 * A131436) + (A131436 * A000012) - A000012.

Offset 1, canonical program `A131437.P3175007424412188088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131437 (n : ℕ) : ℤ :=
  A131437.P3175007424412188088.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131686.P9344451036206820720

`A133524(n+2)+A001248(n+1)`
-/

namespace A131686.P9344451036206820720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133524 (n + 2) + A001248 (n + 1)

end

end A131686.P9344451036206820720

noncomputable section

/-- A131686: Sum of squares of five consecutive primes.

Offset 1, canonical program `A131686.P9344451036206820720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A131686 (n : ℕ) : ℤ :=
  A131686.P9344451036206820720.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A131686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131816.P3689264983321174764

`A059268(n)+A130321(n)-1`
-/

namespace A131816.P3689264983321174764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n + (A130321 n - 1)

end

end A131816.P3689264983321174764

noncomputable section

/-- A131816: Triangle read by rows: A130321 + A059268 - A000012 as infinite lower triangular matrices, where A130321 = (1; 2,1; 4,2,1; ...), A059268 = (1; 1,2; 1,2,4; ...) and A000012 = (1; 1,1; 1,1,1; ...).

Offset 0, canonical program `A131816.P3689264983321174764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131816 (n : ℕ) : ℤ :=
  A131816.P3689264983321174764.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131947.P4717626785366615297

`(-1)^n*A113262(n+1)`
-/

namespace A131947.P4717626785366615297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A113262 (n + 1)

end

end A131947.P4717626785366615297

noncomputable section

/-- A131947: Expansion of (1 - (phi(-q) * phi(-q^3))^2)/4 in powers of q where phi() is a Ramanujan theta function.

Offset 1, canonical program `A131947.P4717626785366615297`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113262, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131947 (n : ℕ) : ℤ :=
  A131947.P4717626785366615297.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113262, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131947.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A132110.P9059509720305907983

`A059268(n)+A014473(n)`
-/

namespace A132110.P9059509720305907983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n + A014473 n

end

end A132110.P9059509720305907983

noncomputable section

/-- A132110: A007318 + A059268 - A000012 as infinite lower triangular matrices.

Offset 0, canonical program `A132110.P9059509720305907983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132110 (n : ℕ) : ℤ :=
  A132110.P9059509720305907983.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132681.P1020153752142941773

`A127648(n+1)`
-/

namespace A132681.P1020153752142941773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 (n + 1)

end

end A132681.P1020153752142941773

noncomputable section

/-- A132681: Infinitesimal generator matrix for a diagonally-shifted Pascal matrix, binomial(n+m,k+m), for m=1, related to Laguerre(n,x,m).

Offset 0, canonical program `A132681.P1020153752142941773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132681 (n : ℕ) : ℤ :=
  A132681.P1020153752142941773.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132710.P8241110843192259271

`2*C(A127648(n+1), 2)`
-/

namespace A132710.P8241110843192259271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A127648 (n + 1)).toNat 2

end

end A132710.P8241110843192259271

noncomputable section

/-- A132710: Infinitesimal generator for a diagonally-shifted Lah matrix, unsigned A105278, related to n! Laguerre(n,-x,1).

Offset 0, canonical program `A132710.P8241110843192259271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132710 (n : ℕ) : ℤ :=
  (A132710.P8241110843192259271.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132918.P11162049490608784263

`A127648(n)%2`
-/

namespace A132918.P11162049490608784263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127648 n) 2

end

end A132918.P11162049490608784263

noncomputable section

/-- A132918: Identity matrix with interpolated zeros.

Offset 1, canonical program `A132918.P11162049490608784263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132918 (n : ℕ) : ℤ :=
  A132918.P11162049490608784263.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133079.P11579559650557007468

`(-1)^n*A116916(n)`
-/

namespace A133079.P11579559650557007468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A116916 n

end

end A133079.P11579559650557007468

noncomputable section

/-- A133079: Expansion of f(x)^3 - 3 * x * f(x^9)^3 in powers of x^3 where f() is a Ramanujan theta function.

Offset 0, canonical program `A133079.P11579559650557007468`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A116916, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133079 (n : ℕ) : ℤ :=
  A133079.P11579559650557007468.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A116916, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A133079.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A133083.P3500506741540918001

`A059268(n+1)%3`
-/

namespace A133083.P3500506741540918001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059268 (n + 1)) 3

end

end A133083.P3500506741540918001

noncomputable section

/-- A133083: A000012 * A133080.

Offset 1, canonical program `A133083.P3500506741540918001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133083 (n : ℕ) : ℤ :=
  A133083.P3500506741540918001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133520.P6252828111992592762

`A053786(A000040(n+1))%A001248(n+1)`
-/

namespace A133520.P6252828111992592762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053786 (A000040 (n + 1)).toNat) (A001248 (n + 1))

end

end A133520.P6252828111992592762

noncomputable section

/-- A133520: Smallest k such that p(n)^4 + k is prime where p(n) is the n-th prime.

Offset 1, canonical program `A133520.P6252828111992592762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A133520 (n : ℕ) : ℤ :=
  A133520.P6252828111992592762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A133520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133610.P10004266105813786459

`∑[A053616(n)]`
-/

namespace A133610.P10004266105813786459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133610.P10004266105813786459

noncomputable section

/-- A133610: Partial sums of pyramidal sequence A053616.

Offset 0, canonical program `A133610.P10004266105813786459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133610 (n : ℕ) : ℤ :=
  A133610.P10004266105813786459.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134231.P5158807517234732924

`A134226(n+1)+A114327(n)`
-/

namespace A134231.P5158807517234732924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134226 (n + 1) + A114327 n

end

end A134231.P5158807517234732924

noncomputable section

/-- A134231: Triangle T(n, k) = n -k +1 with T(n, n-1) = 2*n-1 and T(n, n) = 1, read by rows.

Offset 1, canonical program `A134231.P5158807517234732924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134231 (n : ℕ) : ℤ :=
  A134231.P5158807517234732924.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134517.P14780992275921397288

`A183010(A131210(n+1))`
-/

namespace A134517.P14780992275921397288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183010 (A131210 (n + 1)).toNat

end

end A134517.P14780992275921397288

noncomputable section

/-- A134517: Primes of the form 24*k - 1.

Offset 1, canonical program `A134517.P14780992275921397288`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131210, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134517 (n : ℕ) : ℤ :=
  A134517.P14780992275921397288.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131210, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134517.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134577.P17996659558019461021

`A002260(n+1)*A127170(n+1)`
-/

namespace A134577.P17996659558019461021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A127170 (n + 1)

end

end A134577.P17996659558019461021

noncomputable section

/-- A134577: Triangle read by rows: T(n,k) = tau(n/k)*k if k divides n, T(n,k) = 0 otherwise, where tau = A000005.

Offset 1, canonical program `A134577.P17996659558019461021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A134577 (n : ℕ) : ℤ :=
  A134577.P17996659558019461021.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A134577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135013.P10871851765425093599

`∑[2*A025480(n)+1]`
-/

namespace A135013.P10871851765425093599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025480 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135013.P10871851765425093599

noncomputable section

/-- A135013: Partial sums of A000265.

Offset 1, canonical program `A135013.P10871851765425093599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135013 (n : ℕ) : ℤ :=
  A135013.P10871851765425093599.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135224.P16771129364297537144

`A073424(n)+A055248(n)`
-/

namespace A135224.P16771129364297537144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n + A055248 n

end

end A135224.P16771129364297537144

noncomputable section

/-- A135224: Triangle A103451 * A007318 * A000012, read by rows. T(n, k) for 0 <= k <= n.

Offset 0, canonical program `A135224.P16771129364297537144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135224 (n : ℕ) : ℤ :=
  A135224.P16771129364297537144.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135224.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135226.P11438623629144137933

`A029655(A056943(n))`
-/

namespace A135226.P11438623629144137933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029655 (A056943 n).toNat

end

end A135226.P11438623629144137933

noncomputable section

/-- A135226: Triangle A135225 + A007318 - A103451, read by rows.

Offset 0, canonical program `A135226.P11438623629144137933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135226 (n : ℕ) : ℤ :=
  A135226.P11438623629144137933.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135585.P10586276068203702289

`∑[A135133(n)]`
-/

namespace A135585.P10586276068203702289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135585.P10586276068203702289

noncomputable section

/-- A135585: a(n) = Sum_{i=1..n} (floor(S2(i)/3) mod 2), where S2(i) = A000120(i).

Offset 0, canonical program `A135585.P10586276068203702289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135585 (n : ℕ) : ℤ :=
  A135585.P10586276068203702289.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136318.P1305045410731253751

`A098354(n+1)+A059268(n)`
-/

namespace A136318.P1305045410731253751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098354 (n + 1) + A059268 n

end

end A136318.P1305045410731253751

noncomputable section

/-- A136318: Integers whose binary representation contains exactly two 1s, the 1s not being adjacent.

Offset 1, canonical program `A136318.P1305045410731253751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136318 (n : ℕ) : ℤ :=
  A136318.P1305045410731253751.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136694.P15990081866710796202

`A277545(n*a(n-1))` with `a(0)=1`
-/

namespace A136694.P15990081866710796202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A277545 ((n : ℤ) * a (n - 1)).toNat

end

end A136694.P15990081866710796202

noncomputable section

/-- A136694: Final nonzero digit of n! in base 7.

Offset 0, canonical program `A136694.P15990081866710796202`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1676 terms. -/
def A136694 (n : ℕ) : ℤ :=
  A136694.P15990081866710796202.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1676 terms. -/
def A136694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136702.P11278385412180144797

`A248766(floor(sqrt(n²+1)))%16`
-/

namespace A136702.P11278385412180144797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248766 (Nat.sqrt (n ^ 2 + 1))) 16

end

end A136702.P11278385412180144797

noncomputable section

/-- A136702: Final nonzero digit of n! in base 16.

Offset 0, canonical program `A136702.P11278385412180144797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 183 terms. -/
def A136702 (n : ℕ) : ℤ :=
  A136702.P11278385412180144797.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 183 terms. -/
def A136702.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137148.P10281140447083490938

`A002618(A018252(n+1))`
-/

namespace A137148.P10281140447083490938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002618 (A018252 (n + 1)).toNat

end

end A137148.P10281140447083490938

noncomputable section

/-- A137148: a(n) = k*phi(k), where k is the n-th nonprime number.

Offset 1, canonical program `A137148.P10281140447083490938`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137148 (n : ℕ) : ℤ :=
  A137148.P10281140447083490938.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137148.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A137821.P1223763434249241311

`A107755(n+1)/2`
-/

namespace A137821.P1223763434249241311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107755 (n + 1) : ℚ) / 2

end

end A137821.P1223763434249241311

noncomputable section

/-- A137821: Numbers k such that Sum_{j=1..2k} Catalan(j) == 0 (mod 3).

Offset 1, canonical program `A137821.P1223763434249241311`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107755, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137821 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A137821.P1223763434249241311.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107755, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137821.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138033.P11625881484895560442

`floor(A014701(n+2)/2)`
-/

namespace A138033.P11625881484895560442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014701 (n + 2) : ℚ) / 2⌋

end

end A138033.P11625881484895560442

noncomputable section

/-- A138033: a(n) = max_{ 1 <= i <= n-1 } min{ wt(i), wt(n-i) }, where wt() = A000120() is the binary weight function; a(1) = 0 by convention.

Offset 1, canonical program `A138033.P11625881484895560442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A138033 (n : ℕ) : ℤ :=
  A138033.P11625881484895560442.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A138033.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138139.P8390411299693681906

`A005145(A106255(n+1))`
-/

namespace A138139.P8390411299693681906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (A106255 (n + 1)).toNat

end

end A138139.P8390411299693681906

noncomputable section

/-- A138139: Triangle read by rows: row n contains n terms and each column lists the prime numbers A000040.

Offset 1, canonical program `A138139.P8390411299693681906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138139 (n : ℕ) : ℤ :=
  A138139.P8390411299693681906.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138349.P13572013119910435224

`A126120(n)*A126120(n+4)-A126120(n+2)²`
-/

namespace A138349.P13572013119910435224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n * A126120 (n + 4) - A126120 (n + 2) ^ 2

end

end A138349.P13572013119910435224

noncomputable section

/-- A138349: Moment sequence of tr(A) in USp(4).

Offset 0, canonical program `A138349.P13572013119910435224`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126120, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138349 (n : ℕ) : ℤ :=
  A138349.P13572013119910435224.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126120, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138349.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138450.P12019756699312526863

`A138447(n+1)-A122220(n+1)`
-/

namespace A138450.P12019756699312526863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138447 (n + 1) - A122220 (n + 1)

end

end A138450.P12019756699312526863

noncomputable section

/-- A138450: a(n) = ((n-th prime)^6-(n-th prime)^2)/30.

Offset 1, canonical program `A138450.P12019756699312526863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138450 (n : ℕ) : ℤ :=
  A138450.P12019756699312526863.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138686.P6359265090745063621

`p?[A138685(n+1)]`
-/

namespace A138686.P6359265090745063621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138686.P6359265090745063621

noncomputable section

/-- A138686: Primes in A138685.

Offset 1, canonical program `A138686.P6359265090745063621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1626 terms. -/
def A138686 (n : ℕ) : ℤ :=
  A138686.P6359265090745063621.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1626 terms. -/
def A138686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138754.P5480235727800616661

`A000720(A138751(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A138754.P5480235727800616661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A138751 (n + 1)).toNat

end

end A138754.P5480235727800616661

noncomputable section

/-- A138754: a(n) = PrimePi(A138751(n)) - a variation of the Collatz (3n+1) map.

Offset 1, canonical program `A138754.P5480235727800616661`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138751, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138754 (n : ℕ) : ℤ :=
  A138754.P5480235727800616661.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138751, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138754.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138972.P14593272602870209204

`A138968(n+1)-1`
-/

namespace A138972.P14593272602870209204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138968 (n + 1) - 1

end

end A138972.P14593272602870209204

noncomputable section

/-- A138972: Positions of the primes congruent to 1 mod 6 when all primes except 2 and 3 are listed in order.

Offset 1, canonical program `A138972.P14593272602870209204`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138972 (n : ℕ) : ℤ :=
  A138972.P14593272602870209204.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138968, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138972.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139040.P11713275014664133717

`A000930(A077605(n+1)+A053616(n))`
-/

namespace A139040.P11713275014664133717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (A077605 (n + 1) + A053616 n).toNat

end

end A139040.P11713275014664133717

noncomputable section

/-- A139040: Triangle read by rows: each row is an initial segment of the terms of A000930 followed by its reflection.

Offset 1, canonical program `A139040.P11713275014664133717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A139040 (n : ℕ) : ℤ :=
  A139040.P11713275014664133717.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A139040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139313.P11049644309343226709

`A000040(1+A064149(n+1))`
-/

namespace A139313.P11049644309343226709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (1 + A064149 (n + 1)).toNat

end

end A139313.P11049644309343226709

noncomputable section

/-- A139313: Primes prime(k) such that -prime(k-1) + 3*prime(k) - 3*prime(k+1) + prime(k+2) = 0.

Offset 1, canonical program `A139313.P11049644309343226709`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064149, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139313 (n : ℕ) : ℤ :=
  A139313.P11049644309343226709.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064149, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139313.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139402.P1211866769529008911

`∩[A023228(n+1), A023229(n+1)]`
-/

namespace A139402.P1211866769529008911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139402.P1211866769529008911

noncomputable section

/-- A139402: Prime numbers k such that 8*k+1 and 8*k+3 are also primes.

Offset 1, canonical program `A139402.P1211866769529008911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 781 terms. -/
def A139402 (n : ℕ) : ℤ :=
  (A139402.P1211866769529008911.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 781 terms. -/
def A139402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139555.P14310044146815000922

`A073093(A038610(n+1))`
-/

namespace A139555.P14310044146815000922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (A038610 (n + 1)).toNat

end

end A139555.P14310044146815000922

noncomputable section

/-- A139555: a(n) = number of prime-powers (including 1) that each are <= n and are coprime to n.

Offset 1, canonical program `A139555.P14310044146815000922`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038610, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139555 (n : ℕ) : ℤ :=
  A139555.P14310044146815000922.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038610, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A139555.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139836.P17757306842670462418

`∩[A106935(n+1), A122869(n+1)]`
-/

namespace A139836.P17757306842670462418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139836.P17757306842670462418

noncomputable section

/-- A139836: Primes of the form 10x^2+10xy+11y^2.

Offset 1, canonical program `A139836.P17757306842670462418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4965 terms. -/
def A139836 (n : ℕ) : ℤ :=
  (A139836.P17757306842670462418.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4965 terms. -/
def A139836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139945.P12251791057180537189

`∩[A106935(n+1), A139492(n+1)]`
-/

namespace A139945.P12251791057180537189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139945.P12251791057180537189

noncomputable section

/-- A139945: Primes of the form 7x^2+51y^2.

Offset 1, canonical program `A139945.P12251791057180537189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2497 terms. -/
def A139945 (n : ℕ) : ℤ :=
  (A139945.P12251791057180537189.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2497 terms. -/
def A139945.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139962.P16591384432573993768

`∩[A106935(n+1), A130063(n+1)]`
-/

namespace A139962.P16591384432573993768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139962.P16591384432573993768

noncomputable section

/-- A139962: Primes of the form 23x^2+22xy+23y^2.

Offset 1, canonical program `A139962.P16591384432573993768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2514 terms. -/
def A139962 (n : ℕ) : ℤ :=
  (A139962.P16591384432573993768.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2514 terms. -/
def A139962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139988.P11809578982701821905

`∩[A139844(n+1), A139858(n+1)]`
-/

namespace A139988.P11809578982701821905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139988.P11809578982701821905

noncomputable section

/-- A139988: Primes of the form 8x^2+105y^2.

Offset 1, canonical program `A139988.P11809578982701821905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4978 terms. -/
def A139988 (n : ℕ) : ℤ :=
  (A139988.P11809578982701821905.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4978 terms. -/
def A139988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140193.P1932437245816314854

`A140191(and(n, -2))`
-/

namespace A140193.P1932437245816314854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140191 (Int.land (n : ℤ) (-2)).toNat

end

end A140193.P1932437245816314854

noncomputable section

/-- A140193: Same as A140191 except here e=6.

Offset 0, canonical program `A140193.P1932437245816314854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3001 terms. -/
def A140193 (n : ℕ) : ℤ :=
  A140193.P1932437245816314854.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3001 terms. -/
def A140193.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140531.P3500918698213880928

`floor(A059268(n)/2)`
-/

namespace A140531.P3500918698213880928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A059268 n : ℚ) / 2⌋

end

end A140531.P3500918698213880928

noncomputable section

/-- A140531: Concatenate subsequences 0, 1, 2, 4, ..., 2^k.

Offset 0, canonical program `A140531.P3500918698213880928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140531 (n : ℕ) : ℤ :=
  A140531.P3500918698213880928.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142075.P2279507341260784553

`A008292(n+1)*A059268(n)`
-/

namespace A142075.P2279507341260784553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) * A059268 n

end

end A142075.P2279507341260784553

noncomputable section

/-- A142075: Triangle T(n, k) = 2^(k-1) * E(n, k-1) where E(n,k) are the Eulerian numbers A173018, read by rows.

Offset 1, canonical program `A142075.P2279507341260784553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2113 terms. -/
def A142075 (n : ℕ) : ℤ :=
  A142075.P2279507341260784553.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2113 terms. -/
def A142075.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A142242.P4378309256295079438

`2-xor(1, A038573(n))`
-/

namespace A142242.P4378309256295079438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (A038573 n)

end

end A142242.P4378309256295079438

noncomputable section

/-- A142242: Row sums of A143200.

Offset 0, canonical program `A142242.P4378309256295079438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1360 terms. -/
def A142242 (n : ℕ) : ℤ :=
  A142242.P4378309256295079438.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1360 terms. -/
def A142242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143311.P1988251396051349915

`lcm(A118013(n+1), A129555(n))`
-/

namespace A143311.P1988251396051349915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A118013 (n + 1)) (A129555 n)

end

end A143311.P1988251396051349915

noncomputable section

/-- A143311: Triangle read by rows, A127648 * A126988; 1<=k<=n.

Offset 1, canonical program `A143311.P1988251396051349915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143311 (n : ℕ) : ℤ :=
  (A143311.P1988251396051349915.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143352.P578810991757619496

`A054524(n+1)*A127170(n+1)`
-/

namespace A143352.P578810991757619496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054524 (n + 1) * A127170 (n + 1)

end

end A143352.P578810991757619496

noncomputable section

/-- A143352: Triangle read by rows, A051731 * A054524 = (A051731)^2 * A128407; 1<=k<=n.

Offset 1, canonical program `A143352.P578810991757619496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143352 (n : ℕ) : ℤ :=
  A143352.P578810991757619496.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143425.P2017308752457203601

`and(A046143(n+1), A059268(n))`
-/

namespace A143425.P2017308752457203601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046143 (n + 1)) (A059268 n)

end

end A143425.P2017308752457203601

noncomputable section

/-- A143425: Triangle read by rows A051731 * A130123, 1<=k<=n.

Offset 1, canonical program `A143425.P2017308752457203601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143425 (n : ℕ) : ℤ :=
  A143425.P2017308752457203601.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143446.P7297161826852171778

`A059268(n)*A134541(n+1)`
-/

namespace A143446.P7297161826852171778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A134541 (n + 1)

end

end A143446.P7297161826852171778

noncomputable section

/-- A143446: Triangle read by rows: A000012 * A143424.

Offset 1, canonical program `A143446.P7297161826852171778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143446 (n : ℕ) : ℤ :=
  A143446.P7297161826852171778.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143467.P10375842645312805045

`A054524(n+1)*A143315(n+1)`
-/

namespace A143467.P10375842645312805045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054524 (n + 1) * A143315 (n + 1)

end

end A143467.P10375842645312805045

noncomputable section

/-- A143467: Triangle read by rows, A143315 * A128407, 1<=k<=n.

Offset 1, canonical program `A143467.P10375842645312805045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143467 (n : ℕ) : ℤ :=
  A143467.P10375842645312805045.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143596.P3332067871505162553

`A034877(A161983(n))`
-/

namespace A143596.P3332067871505162553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034877 (A161983 n).toNat

end

end A143596.P3332067871505162553

noncomputable section

/-- A143596: Triangle read by rows: T(n,k) is the coefficient of x^k in p(x,n) = ((x + 1)^(2*n) - (x^2 + 1)^n)/(2*x), 0 <= k <= 2*n-1.

Offset 1, canonical program `A143596.P3332067871505162553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A143596 (n : ℕ) : ℤ :=
  A143596.P3332067871505162553.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A143596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143814.P4129932359816056538

`A120070(3-A127648(n)+n)`
-/

namespace A143814.P4129932359816056538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (3 - A127648 n + (n : ℤ)).toNat

end

end A143814.P4129932359816056538

noncomputable section

/-- A143814: Triangle T(n,m) read along rows: T(n,m) = n^2 - (m+1)^2 for 1<=m<n-1, T(n,n-1) = n^2-1.

Offset 2, canonical program `A143814.P4129932359816056538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143814 (n : ℕ) : ℤ :=
  A143814.P4129932359816056538.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143903.P8390654288726678182

`eq[n+1, lcm(n+1, A037861(n+1))]+1`
-/

namespace A143903.P8390654288726678182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A037861 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A143903.P8390654288726678182

noncomputable section

/-- A143903: A positive integer k is included if |(number of 0's in binary k) - (number of 1's in binary k)| divides k.

Offset 1, canonical program `A143903.P8390654288726678182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4474 terms. -/
def A143903 (n : ℕ) : ℤ :=
  (A143903.P8390654288726678182.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4474 terms. -/
def A143903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143956.P16519828096933120938

`A131413(n)-A134403(n)`
-/

namespace A143956.P16519828096933120938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131413 n - A134403 n

end

end A143956.P16519828096933120938

noncomputable section

/-- A143956: Triangle read by rows, A000012 * A136521 * A000012; 1<=k<=n.

Offset 1, canonical program `A143956.P16519828096933120938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143956 (n : ℕ) : ℤ :=
  A143956.P16519828096933120938.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143973.P9186749906629124843

`Δ[lt[0, A354099(n+1)]]`
-/

namespace A143973.P9186749906629124843
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354099 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A143973.P9186749906629124843

noncomputable section

/-- A143973: Distances between multiples of 3 in A000010.

Offset 1, canonical program `A143973.P9186749906629124843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A143973 (n : ℕ) : ℤ :=
  A143973.P9186749906629124843.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A143973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144333.P2564093978440185654

`A055248(n)*A144328(n+1)`
-/

namespace A144333.P2564093978440185654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n * A144328 (n + 1)

end

end A144333.P2564093978440185654

noncomputable section

/-- A144333: Triangle read by rows, A007318 * A144328.

Offset 1, canonical program `A144333.P2564093978440185654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144333 (n : ℕ) : ℤ :=
  A144333.P2564093978440185654.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144334.P8719362573491474286

`A144328(n+1)*A144330(n)`
-/

namespace A144334.P8719362573491474286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) * A144330 n

end

end A144334.P8719362573491474286

noncomputable section

/-- A144334: Triangle read by rows, A144328^2.

Offset 1, canonical program `A144334.P8719362573491474286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144334 (n : ℕ) : ℤ :=
  A144334.P8719362573491474286.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144419.P7004838141369626204

`p?[Δ[A135267(n+1)]]`
-/

namespace A144419.P7004838141369626204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135267 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144419.P7004838141369626204

noncomputable section

/-- A144419: Primes of the form prime(k) - 2*k (terms can be repeated).

Offset 1, canonical program `A144419.P7004838141369626204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1943 terms. -/
def A144419 (n : ℕ) : ℤ :=
  A144419.P7004838141369626204.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1943 terms. -/
def A144419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144515.P918910334272225371

`ceil(A127170(n+1)/A007318(n))`
-/

namespace A144515.P918910334272225371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A127170 (n + 1) : ℚ) / (A007318 n : ℚ)⌉

end

end A144515.P918910334272225371

noncomputable section

/-- A144515: Triangle read by rows: A051731 * A103451.

Offset 0, canonical program `A144515.P918910334272225371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144515 (n : ℕ) : ℤ :=
  A144515.P918910334272225371.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145099.P2105751496265712381

`C(2, A135975(n+1))`
-/

namespace A145099.P2105751496265712381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A135975 (n + 1)).toNat

end

end A145099.P2105751496265712381

noncomputable section

/-- A145099: a(n) = 1 if the largest proper divisor of Mersenne composite A145097(n) is prime and a(n) = 0 in opposite case.

Offset 1, canonical program `A145099.P2105751496265712381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 183 terms. -/
def A145099 (n : ℕ) : ℤ :=
  (A145099.P2105751496265712381.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 183 terms. -/
def A145099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145190.P17626600670453877125

`lt[A217863(n+1)%(n+1), 1]+1`
-/

namespace A145190.P17626600670453877125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217863 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A145190.P17626600670453877125

noncomputable section

/-- A145190: Numbers k such that phi(1)*phi(2)*...*phi(k) / k is an integer, where phi(k) is the totient function (A000010).

Offset 1, canonical program `A145190.P17626600670453877125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A145190 (n : ℕ) : ℤ :=
  (A145190.P17626600670453877125.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A145190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145378.P6152489767625416770

`∑{d}[n+1, A113184(#)]`
-/

namespace A145378.P6152489767625416770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A113184 d

end

end A145378.P6152489767625416770

noncomputable section

/-- A145378: a(n) = Sum_{d|n} sigma(d) - 2*Sum_{2c|n} sigma(c) + 4*Sum_{4b|n} sigma(b).

Offset 1, canonical program `A145378.P6152489767625416770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145378 (n : ℕ) : ℤ :=
  A145378.P6152489767625416770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A145378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145541.P1388174157055416916

`eq[A000120(n+1), A056169(n+1)]+1`
-/

namespace A145541.P1388174157055416916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A145541.P1388174157055416916

noncomputable section

/-- A145541: A positive integer k is included if (the number of 1's in the binary representation of k) = (the number of exponents equal to 1 in the prime factorization of k).

Offset 1, canonical program `A145541.P1388174157055416916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A145541 (n : ℕ) : ℤ :=
  (A145541.P1388174157055416916.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A145541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145609.P11425567724915738602

`A025529(2*(n+1))/gcd(A003418(n+1), A025529(2*(n+1)))`
-/

namespace A145609.P11425567724915738602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025529 (2 * (n + 1)) : ℚ) / (Int.gcd (A003418 (n + 1)) (A025529 (2 * (n + 1))) : ℚ)

end

end A145609.P11425567724915738602

noncomputable section

/-- A145609: Numerator of the polynomial A_l(x) = sum_{d=1..l-1} x^(l-d)/d for index l=2n+1 evaluated at x=1.

Offset 1, canonical program `A145609.P11425567724915738602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A145609 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A145609.P11425567724915738602.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A145609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145645.P239735135967047320

`eq[A000120(n), A037861(n)]`
-/

namespace A145645.P239735135967047320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145645.P239735135967047320

noncomputable section

/-- A145645: Numbers k such that (binary weight of k)/(length of binary representation of k) equals 1/3.

Offset 1, canonical program `A145645.P239735135967047320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A145645 (n : ℕ) : ℤ :=
  (A145645.P239735135967047320.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A145645.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145985.P3219078844094124658

`p?[A160668(n+1)]`
-/

namespace A145985.P3219078844094124658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145985.P3219078844094124658

noncomputable section

/-- A145985: Primes resulting from subtracting primes from 10^n in order (see Comments for precise definition).

Offset 1, canonical program `A145985.P3219078844094124658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1775 terms. -/
def A145985 (n : ℕ) : ℤ :=
  A145985.P3219078844094124658.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1775 terms. -/
def A145985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147760.P15763218434351887986

`(n+2)*A060818(n+1)-1`
-/

namespace A147760.P15763218434351887986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A060818 (n + 1) - 1

end

end A147760.P15763218434351887986

noncomputable section

/-- A147760: a(n) is the smallest positive integer m with exactly n ones in its binary representation and with n represented in binary as a substring of the binary representation of m.

Offset 1, canonical program `A147760.P15763218434351887986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. -/
def A147760 (n : ℕ) : ℤ :=
  A147760.P15763218434351887986.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. -/
def A147760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147992.P5768023493417768980

`∑[∑{d}[A135517(n), #²]]+n`
-/

namespace A147992.P5768023493417768980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135517 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A147992.P5768023493417768980

noncomputable section

/-- A147992: Sequence S such that 1 is in S and if x is in S, then 4x-1 and 4x+1 are in S.

Offset 1, canonical program `A147992.P5768023493417768980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147992 (n : ℕ) : ℤ :=
  (A147992.P5768023493417768980.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151566.P2662618975660010276

`∑[A060632(n)]-A060632(n)`
-/

namespace A151566.P2662618975660010276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A060632 n

end

end A151566.P2662618975660010276

noncomputable section

/-- A151566: Leftist toothpicks (see Comments for definition).

Offset 0, canonical program `A151566.P2662618975660010276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151566 (n : ℕ) : ℤ :=
  A151566.P2662618975660010276.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151673.P12118802834766587725

`A151669(n)²`
-/

namespace A151673.P12118802834766587725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151669 n ^ 2

end

end A151673.P12118802834766587725

noncomputable section

/-- A151673: G.f.: Product_{k>=0} (1 + 4*x^(4^k)).

Offset 0, canonical program `A151673.P12118802834766587725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151673 (n : ℕ) : ℤ :=
  A151673.P12118802834766587725.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151738.P8616112178150566337

`p?[A053767(n+9)-A053767(n)]`
-/

namespace A151738.P8616112178150566337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (n + 9) - A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A151738.P8616112178150566337

noncomputable section

/-- A151738: Primes which are the sum of nine consecutive composite numbers.

Offset 1, canonical program `A151738.P8616112178150566337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. -/
def A151738 (n : ℕ) : ℤ :=
  A151738.P8616112178150566337.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. -/
def A151738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151783.P15926003244653498625

`A048896(n)²`
-/

namespace A151783.P15926003244653498625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n ^ 2

end

end A151783.P15926003244653498625

noncomputable section

/-- A151783: a(n) = 4^(wt(n) - 1) where wt(n) = A000120(n).

Offset 1, canonical program `A151783.P15926003244653498625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151783 (n : ℕ) : ℤ :=
  A151783.P15926003244653498625.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151783.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151787.P3022189616092416365

`floor(A160713(n)/2)`
-/

namespace A151787.P3022189616092416365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A160713 n : ℚ) / 2⌋

end

end A151787.P3022189616092416365

noncomputable section

/-- A151787: a(1)=1; for n > 1, a(n)=3*2^{wt(n-1)-1}.

Offset 1, canonical program `A151787.P3022189616092416365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151787 (n : ℕ) : ℤ :=
  A151787.P3022189616092416365.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151998.P17606877049655075883

`(A000051(n)-A008965(n+2))/2`
-/

namespace A151998.P17606877049655075883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000051 n - A008965 (n + 2) : ℚ) / 2

end

end A151998.P17606877049655075883

noncomputable section

/-- A151998: Directed genus of the binary de Bruijn graph D_n.

Offset 0, canonical program `A151998.P17606877049655075883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A151998 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A151998.P17606877049655075883.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A151998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152061.P18211087173108762366

`2*A178472((2*n)%(n+1)+1)`
-/

namespace A152061.P18211087173108762366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A178472 (2 * n % (n + 1) + 1)

end

end A152061.P18211087173108762366

noncomputable section

/-- A152061: Counts of unique periodic binary strings of length n.

Offset 0, canonical program `A152061.P18211087173108762366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A152061 (n : ℕ) : ℤ :=
  A152061.P18211087173108762366.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A152061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152724.P5282381026792283561

`A070939(n+1)-A152723(n+1)`
-/

namespace A152724.P5282381026792283561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1) - A152723 (n + 1)

end

end A152724.P5282381026792283561

noncomputable section

/-- A152724: In binary, count of most frequent bit of n.

Offset 1, canonical program `A152724.P5282381026792283561`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152723, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152724 (n : ℕ) : ℤ :=
  A152724.P5282381026792283561.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A152723, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A152724.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A153039.P14190860570720615012

`A053726(n+1)+3`
-/

namespace A153039.P14190860570720615012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053726 (n + 1) + 3

end

end A153039.P14190860570720615012

noncomputable section

/-- A153039: Numbers k such that 2*k-7 is composite.

Offset 1, canonical program `A153039.P14190860570720615012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153039 (n : ℕ) : ℤ :=
  A153039.P14190860570720615012.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153040.P8115147575926402282

`A053726(n+1)+2`
-/

namespace A153040.P8115147575926402282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053726 (n + 1) + 2

end

end A153040.P8115147575926402282

noncomputable section

/-- A153040: Numbers n>3 such that 2*n-5 is not a prime.

Offset 1, canonical program `A153040.P8115147575926402282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153040 (n : ℕ) : ℤ :=
  A153040.P8115147575926402282.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153049.P7296181475207406392

`A153044(n+1)+2`
-/

namespace A153049.P7296181475207406392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153044 (n + 1) + 2

end

end A153049.P7296181475207406392

noncomputable section

/-- A153049: Numbers n such that 2*n - 13 is not a prime.

Offset 1, canonical program `A153049.P7296181475207406392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153049 (n : ℕ) : ℤ :=
  A153049.P7296181475207406392.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153639.P65248954018329175

`1-A153638(n)`
-/

namespace A153639.P65248954018329175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A153638 n

end

end A153639.P65248954018329175

noncomputable section

/-- A153639: Evilness of triangular numbers.

Offset 0, canonical program `A153639.P65248954018329175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153639 (n : ℕ) : ℤ :=
  A153639.P65248954018329175.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153769.P8015632483883398881

`record[A025480(A004525(A153044(n+1)))]`
-/

namespace A153769.P8015632483883398881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A004525 (A153044 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153769.P8015632483883398881

noncomputable section

/-- A153769: Numbers n such that 8n-9 is not prime.

Offset 1, canonical program `A153769.P8015632483883398881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A153769 (n : ℕ) : ℤ :=
  A153769.P8015632483883398881.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A153769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154270.P1666546014377292846

`p?[floor(A020338(n+8)/10)]`
-/

namespace A154270.P1666546014377292846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A020338 (n + 8) : ℚ) / 10⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154270.P1666546014377292846

noncomputable section

/-- A154270: Primes of the form XYX, where Y is a single digit.

Offset 1, canonical program `A154270.P1666546014377292846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A154270 (n : ℕ) : ℤ :=
  A154270.P1666546014377292846.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A154270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154313.P14837244992857068618

`record[(n+1)/A048896(A090431(n+1)²)²]`
-/

namespace A154313.P14837244992857068618
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A048896 (A090431 (n + 1) ^ 2).toNat ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154313.P14837244992857068618

noncomputable section

/-- A154313: Numbers n such that abs(A007605(n) - A007953(n)) < 2.

Offset 1, canonical program `A154313.P14837244992857068618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1268 terms. -/
def A154313 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A154313.P14837244992857068618.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1268 terms. -/
def A154313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154353.P10608850545341472084

`(A014449(n+2)-A014719(n+3))/2`
-/

namespace A154353.P10608850545341472084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014449 (n + 2) - A014719 (n + 3) : ℚ) / 2

end

end A154353.P10608850545341472084

noncomputable section

/-- A154353: Triangle T(n,m) read by rows: T(n,m) = ( Eulerian(n,m) - Binomial(n,m)^2 )/2, n >= 4, 2 <= m = <= n-1.

Offset 4, canonical program `A154353.P10608850545341472084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1325 terms. -/
def A154353 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A154353.P10608850545341472084.a (n - 4))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1325 terms. -/
def A154353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154385.P5436406511082933659

`p?[A085557(n+1)]`
-/

namespace A154385.P5436406511082933659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154385.P5436406511082933659

noncomputable section

/-- A154385: Primes such that number of prime digits > number of nonprime digits.

Offset 1, canonical program `A154385.P5436406511082933659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A154385 (n : ℕ) : ℤ :=
  A154385.P5436406511082933659.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A154385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154386.P1065246102071994156

`p?[A085558(n+1)]`
-/

namespace A154386.P1065246102071994156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154386.P1065246102071994156

noncomputable section

/-- A154386: Primes such that number of prime digits < number of nonprime digits.

Offset 1, canonical program `A154386.P1065246102071994156`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1063 terms. -/
def A154386 (n : ℕ) : ℤ :=
  A154386.P1065246102071994156.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1063 terms. -/
def A154386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154916.P7531583122668396810

`A154844(n)/A154843(n)*A154914(n)`
-/

namespace A154916.P7531583122668396810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154844 n : ℚ) / (A154843 n : ℚ) * (A154914 n : ℚ)

end

end A154916.P7531583122668396810

noncomputable section

/-- A154916: Triangle T(n,m,p,q) = (p^(n-k)*q^k + p^k*q^(n-k))*(StirlingS2(n, k) + StirlingS2(n, n-k)) with p=2 and q=3, read by rows.

Offset 0, canonical program `A154916.P7531583122668396810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1598 terms. -/
def A154916 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A154916.P7531583122668396810.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1598 terms. -/
def A154916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A154957.P3447130498153354160

`A106314(n+1)%2`
-/

namespace A154957.P3447130498153354160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106314 (n + 1)) 2

end

end A154957.P3447130498153354160

noncomputable section

/-- A154957: A symmetric (0,1)-triangle.

Offset 0, canonical program `A154957.P3447130498153354160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154957 (n : ℕ) : ℤ :=
  A154957.P3447130498153354160.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154957.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155029.P670373944836976515

`1-C(A114002(n), 2)`
-/

namespace A155029.P670373944836976515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose (A114002 n).toNat 2 : ℤ)

end

end A155029.P670373944836976515

noncomputable section

/-- A155029: Complement to A051731 with the identity matrix A023531 included.

Offset 1, canonical program `A155029.P670373944836976515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A155029 (n : ℕ) : ℤ :=
  A155029.P670373944836976515.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A155029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155723.P13840957345735942896

`A153053(n+1)-1`
-/

namespace A155723.P13840957345735942896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153053 (n + 1) - 1

end

end A155723.P13840957345735942896

noncomputable section

/-- A155723: Numbers k such that 2*k + 9 is not prime.

Offset 1, canonical program `A155723.P13840957345735942896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155723 (n : ℕ) : ℤ :=
  A155723.P13840957345735942896.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A155723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A155989.P8151914157851154812

`A000040(A092620(n+1))`
-/

namespace A155989.P8151914157851154812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A092620 (n + 1)).toNat

end

end A155989.P8151914157851154812

noncomputable section

/-- A155989: List of numbers prime(k) as k runs through the numbers with a single prime digit.

Offset 1, canonical program `A155989.P8151914157851154812`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092620, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A155989 (n : ℕ) : ℤ :=
  A155989.P8151914157851154812.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092620, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A155989.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A156343.P612256446000310729

`p?[A085556(n+1)]`
-/

namespace A156343.P612256446000310729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085556 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156343.P612256446000310729

noncomputable section

/-- A156343: Primes with equal number of prime and nonprime digits.

Offset 1, canonical program `A156343.P612256446000310729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1037 terms. -/
def A156343 (n : ℕ) : ℤ :=
  A156343.P612256446000310729.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1037 terms. -/
def A156343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156549.P5463997211392600684

`∑[and(2, A002522(A035103(n+1)))-1]`
-/

namespace A156549.P5463997211392600684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A002522 (A035103 (n + 1)).toNat) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156549.P5463997211392600684

noncomputable section

/-- A156549: Race between primes having an odd/even number of zeros in their binary representation.

Offset 1, canonical program `A156549.P5463997211392600684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156549 (n : ℕ) : ℤ :=
  A156549.P5463997211392600684.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156578.P4649527317743523446

`Δ[-A145677(n+2)]`
-/

namespace A156578.P4649527317743523446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A145677 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156578.P4649527317743523446

noncomputable section

/-- A156578: Triangle of coefficients of 1 - (n+1)*x^n + n*x^(n+1), read by rows.

Offset 0, canonical program `A156578.P4649527317743523446`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1376 terms. -/
def A156578 (n : ℕ) : ℤ :=
  A156578.P4649527317743523446.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1376 terms. -/
def A156578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156607.P10129258563701118720

`∑{digits}[A000040(n+1), A101660(2*#²-#)]`
-/

namespace A156607.P10129258563701118720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A101660 (2 * x ^ 2 - x)).sum

end

end A156607.P10129258563701118720

noncomputable section

/-- A156607: a(n) = number of odd decimal digits of n-th prime + number of prime decimal digits of n-th prime.

Offset 1, canonical program `A156607.P10129258563701118720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A156607 (n : ℕ) : ℤ :=
  A156607.P10129258563701118720.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A156607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156611.P13062868264229254532

`A151800(a(n-1)+2*n-1)` with `a(0)=2`
-/

namespace A156611.P13062868264229254532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (a (n - 1) + ((2 * n : ℤ) - 1)).toNat

end

end A156611.P13062868264229254532

noncomputable section

/-- A156611: a(1) = 2, a(n+1) is smallest prime >= a(n)+2*n.

Offset 1, canonical program `A156611.P13062868264229254532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 313 terms. -/
def A156611 (n : ℕ) : ℤ :=
  A156611.P13062868264229254532.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 313 terms. -/
def A156611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156828.P15006888903266838988

`A151800(a(n-1)+3)` with `a(0)=2`
-/

namespace A156828.P15006888903266838988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (a (n - 1) + 3).toNat

end

end A156828.P15006888903266838988

noncomputable section

/-- A156828: a(1) = 2. a(n) = the smallest prime >= a(n-1) + 4.

Offset 1, canonical program `A156828.P15006888903266838988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8369 terms. -/
def A156828 (n : ℕ) : ℤ :=
  A156828.P15006888903266838988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8369 terms. -/
def A156828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156830.P6923617895616605751

`A151800(A001223(n)+a(n-1))` with `a(0)=2`
-/

namespace A156830.P6923617895616605751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (A001223 n + a (n - 1)).toNat

end

end A156830.P6923617895616605751

noncomputable section

/-- A156830: a(1) = 2. For n >= 2, a(n) = the smallest prime > a(n-1) + p(n) - p(n-1), where p(n) is the n-th prime.

Offset 1, canonical program `A156830.P6923617895616605751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A156830 (n : ℕ) : ℤ :=
  A156830.P6923617895616605751.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A156830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156976.P13794294361678853622

`∩[A023173(n+1), A092626(n+1)]`
-/

namespace A156976.P13794294361678853622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156976.P13794294361678853622

noncomputable section

/-- A156976: Primes whose last digit is not a prime but all the other digits are primes.

Offset 1, canonical program `A156976.P13794294361678853622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. -/
def A156976 (n : ℕ) : ℤ :=
  (A156976.P13794294361678853622.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. -/
def A156976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157361.P10027409474950020482

`A051731(n+1)*A114810(A002260(n+1))`
-/

namespace A157361.P10027409474950020482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A114810 (A002260 (n + 1)).toNat

end

end A157361.P10027409474950020482

noncomputable section

/-- A157361: Triangle read by rows, A051731 * (A114810 * 0^(n-k)).

Offset 1, canonical program `A157361.P10027409474950020482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157361 (n : ℕ) : ℤ :=
  A157361.P10027409474950020482.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157512.P12851112804959864328

`and(-2, ∑[A157502(n+1)])`
-/

namespace A157512.P12851112804959864328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A157512.P12851112804959864328

noncomputable section

/-- A157512: Partial sums of A157502.

Offset 1, canonical program `A157512.P12851112804959864328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157512 (n : ℕ) : ℤ :=
  A157512.P12851112804959864328.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157522.P11153422520438621454

`A053616(A143182(n)+A127739(n+1))`
-/

namespace A157522.P11153422520438621454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 (A143182 n + A127739 (n + 1)).toNat

end

end A157522.P11153422520438621454

noncomputable section

/-- A157522: Triangle T(n, k) = f(n, k) + f(n, n-k) - 1, where f(n, k) = k if k <= floor(n/4), floor(n/2) - k if floor(n/4) < k <= floor(n/2), k - floor(n/2) if floor(n/2) < k <= floor(3*n/4), otherwise n-k, read by rows.

Offset 0, canonical program `A157522.P11153422520438621454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A157522 (n : ℕ) : ℤ :=
  A157522.P11153422520438621454.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A157522.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157636.P9007390473919086256

`ceil(A157635(n)/2)`
-/

namespace A157636.P9007390473919086256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A157635 n : ℚ) / 2⌉

end

end A157636.P9007390473919086256

noncomputable section

/-- A157636: Triangle read by rows: T(n, k) = 1 if k=0 or k=n, otherwise = n*k*(n-k)/2.

Offset 0, canonical program `A157636.P9007390473919086256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157636 (n : ℕ) : ℤ :=
  A157636.P9007390473919086256.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A157636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157901.P13269752173254949318

`ceil(A059268(n)/2*A105438(n))`
-/

namespace A157901.P13269752173254949318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A059268 n : ℚ) / 2 * (A105438 n : ℚ)⌉

end

end A157901.P13269752173254949318

noncomputable section

/-- A157901: Triangle read by rows: A000012 * A157898.

Offset 0, canonical program `A157901.P13269752173254949318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A157901 (n : ℕ) : ℤ :=
  A157901.P13269752173254949318.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A157901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158021.P9448806863383179494

`∩[A065966(n+1), A158017(n+1)]`
-/

namespace A158021.P9448806863383179494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158021.P9448806863383179494

noncomputable section

/-- A158021: Primes such that p, 10*p-1 and (p-1)/2 are all prime.

Offset 1, canonical program `A158021.P9448806863383179494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1036 terms. -/
def A158021 (n : ℕ) : ℤ :=
  (A158021.P9448806863383179494.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1036 terms. -/
def A158021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158055.P15997520740979597074

`A151800(A000030(a(n-1))*A028310(n))` with `a(0)=2`
-/

namespace A158055.P15997520740979597074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (A000030 (a (n - 1)).toNat * A028310 n).toNat

end

end A158055.P15997520740979597074

noncomputable section

/-- A158055: a(1)=2, a(n+1) is the smallest prime > n*first digit of a(n).

Offset 1, canonical program `A158055.P15997520740979597074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2003 terms. -/
def A158055 (n : ℕ) : ℤ :=
  A158055.P15997520740979597074.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2003 terms. -/
def A158055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159638.P8621361562681332473

`1-A159637(n)`
-/

namespace A159638.P8621361562681332473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A159637 n

end

end A159638.P8621361562681332473

noncomputable section

/-- A159638: Start with [1] and repeatedly apply the map 0 -> [01/10], 1 -> [10/01].

Offset 0, canonical program `A159638.P8621361562681332473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159638 (n : ℕ) : ℤ :=
  A159638.P8621361562681332473.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160020.P17457078898098785969

`A048967(n)²+A102376(n)-A048967(n)`
-/

namespace A160020.P17457078898098785969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048967 n ^ 2 + (A102376 n - A048967 n)

end

end A160020.P17457078898098785969

noncomputable section

/-- A160020: Row sums of triangle in A160019 .

Offset 0, canonical program `A160020.P17457078898098785969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A160020 (n : ℕ) : ℤ :=
  A160020.P17457078898098785969.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A160020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160597.P15569161753854345137

`(n+1)/A058663(n+2)`
-/

namespace A160597.P15569161753854345137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A058663 (n + 2) : ℚ)

end

end A160597.P15569161753854345137

noncomputable section

/-- A160597: Denominator of coresilience C(n) = (n - phi(n))/(n-1).

Offset 2, canonical program `A160597.P15569161753854345137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160597 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160597.P15569161753854345137.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160598.P7188298955133884230

`lcm(n+1, A051953(n+2))/(n+1)`
-/

namespace A160598.P7188298955133884230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A051953 (n + 2)) : ℚ) / (n + 1 : ℚ)

end

end A160598.P7188298955133884230

noncomputable section

/-- A160598: Numerator of coresilience C(n) = (n - phi(n))/(n-1).

Offset 2, canonical program `A160598.P7188298955133884230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A160598 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160598.P7188298955133884230.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A160598.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160619.P17256148265937716064

`2*A053635(n)`
-/

namespace A160619.P17256148265937716064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053635 n

end

end A160619.P17256148265937716064

noncomputable section

/-- A160619: a(n) = Sum_{d|n} phi(n/d)*2^(d+1), with a(0) = 0.

Offset 0, canonical program `A160619.P17256148265937716064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A160619 (n : ℕ) : ℤ :=
  A160619.P17256148265937716064.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A160619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160807.P7920303016798829141

`A160799(n+1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A160807.P7920303016798829141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160799 (n + 1) : ℚ) / 4

end

end A160807.P7920303016798829141

noncomputable section

/-- A160807: a(n) = A160799(n)/4.

Offset 1, canonical program `A160807.P7920303016798829141`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160799, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160807 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A160807.P7920303016798829141.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160799, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160807.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160836.P13397477465687703204

`2*A160834(n)-A160833(n)`
-/

namespace A160836.P13397477465687703204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160834 n - A160833 n

end

end A160836.P13397477465687703204

noncomputable section

/-- A160836: G.f.: (1+62*x+565*x^2+1050*x^3+485*x^4+52*x^5+x^6)/(1-x)^7.

Offset 0, canonical program `A160836.P13397477465687703204`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160836 (n : ℕ) : ℤ :=
  A160836.P13397477465687703204.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160892.P12129593318586188066

`15*A160889(n+1)`
-/

namespace A160892.P12129593318586188066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A160889 (n + 1)

end

end A160892.P12129593318586188066

noncomputable section

/-- A160892: a(n) = ((2^b-1)/phi(n))*Sum_{d|n} Moebius(n/d)*d^(b-1) for b = 4.

Offset 1, canonical program `A160892.P12129593318586188066`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160889, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160892 (n : ℕ) : ℤ :=
  A160892.P12129593318586188066.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160889, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160892.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160894.P7293678197695022492

`31*A160891(n+1)`
-/

namespace A160894.P7293678197695022492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  31 * A160891 (n + 1)

end

end A160894.P7293678197695022492

noncomputable section

/-- A160894: a(n) = ((2^b-1)/phi(n))*Sum_{d|n} Moebius(n/d)*d^(b-1) for b = 5.

Offset 1, canonical program `A160894.P7293678197695022492`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160891, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160894 (n : ℕ) : ℤ :=
  A160894.P7293678197695022492.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160891, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160894.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160896.P15933310030781691343

`63*A160893(n+1)`
-/

namespace A160896.P15933310030781691343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  63 * A160893 (n + 1)

end

end A160896.P15933310030781691343

noncomputable section

/-- A160896: a(n) = ((2^b-1)/phi(n))*Sum_{d|n} Moebius(n/d)*d^(b-1) for b = 6.

Offset 1, canonical program `A160896.P15933310030781691343`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160893, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160896 (n : ℕ) : ℤ :=
  A160896.P15933310030781691343.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160893, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160896.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160898.P5753092248200493020

`127*A160895(n+1)`
-/

namespace A160898.P5753092248200493020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  127 * A160895 (n + 1)

end

end A160898.P5753092248200493020

noncomputable section

/-- A160898: a(n) = ((2^b-1)/phi(n))*Sum_{d|n} Moebius(n/d)*d^(b-1) for b = 7.

Offset 1, canonical program `A160898.P5753092248200493020`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160895, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160898 (n : ℕ) : ℤ :=
  A160898.P5753092248200493020.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160895, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160898.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160913.P16731336130938992374

`255*A160897(n+1)`
-/

namespace A160913.P16731336130938992374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  255 * A160897 (n + 1)

end

end A160913.P16731336130938992374

noncomputable section

/-- A160913: a(n) = ((2^b-1)/phi(n))*Sum_{d|n} Moebius(n/d)*d^(b-1) for b = 8.

Offset 1, canonical program `A160913.P16731336130938992374`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160897, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160913 (n : ℕ) : ℤ :=
  A160913.P16731336130938992374.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160897, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160913.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A160956.P1802841215077054632

`511*A160908(n+1)`
-/

namespace A160956.P1802841215077054632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  511 * A160908 (n + 1)

end

end A160956.P1802841215077054632

noncomputable section

/-- A160956: a(n) = ((2^b-1)/phi(n))*Sum_{d|n} Moebius(n/d)*d^(b-1) for b = 9.

Offset 1, canonical program `A160956.P1802841215077054632`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160908, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160956 (n : ℕ) : ℤ :=
  A160956.P1802841215077054632.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160908, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160956.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161154.P13076449686572951639

`eq[1, gcd(n, A071295(n))]`
-/

namespace A161154.P13076449686572951639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A071295 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161154.P13076449686572951639

noncomputable section

/-- A161154: Positive integers n such that both {the number of (non-leading) 0's in the binary representation of n} is coprime to n and {the number of 1's in the binary representation of n} is coprime to n.

Offset 1, canonical program `A161154.P13076449686572951639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A161154 (n : ℕ) : ℤ :=
  (A161154.P13076449686572951639.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A161154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161342.P3070800095137774965

`A160428(n)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161342.P3070800095137774965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160428 n : ℚ) / 8

end

end A161342.P3070800095137774965

noncomputable section

/-- A161342: Number of "ON" cubic cells at n-th stage in simple 3-dimensional cellular automaton: a(n) = A160428(n)/8.

Offset 0, canonical program `A161342.P3070800095137774965`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160428, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161342 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A161342.P3070800095137774965.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160428, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161342.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161385.P3801833948456811551

`A161382(n+1)+1`
-/

namespace A161385.P3801833948456811551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161382 (n + 1) + 1

end

end A161385.P3801833948456811551

noncomputable section

/-- A161385: (1,2)-sequence where n-th run has length n^2.

Offset 1, canonical program `A161385.P3801833948456811551`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A161382, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161385 (n : ℕ) : ℤ :=
  A161385.P3801833948456811551.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A161382, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161385.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161639.P4052514948824096861

`eq[1, A001511(A001511(floor(n/8)+1)+1)]`
-/

namespace A161639.P4052514948824096861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A001511 (⌊(n : ℚ) / 8⌋ + 1).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161639.P4052514948824096861

noncomputable section

/-- A161639: Positions n such that A010060(n) = A010060(n+8).

Offset 1, canonical program `A161639.P4052514948824096861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161639 (n : ℕ) : ℤ :=
  (A161639.P4052514948824096861.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162419.P3264768451038245981

`∑{d}[n+1, #]*A113184(n+1)`
-/

namespace A162419.P3264768451038245981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) * A113184 (n + 1)

end

end A162419.P3264768451038245981

noncomputable section

/-- A162419: a(n) = sigma(n)*|A002129(n)| where sigma(n) = A000203(n).

Offset 1, canonical program `A162419.P3264768451038245981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162419 (n : ℕ) : ℤ :=
  A162419.P3264768451038245981.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162441.P13110107035018514604

`lcm(n+1, A001790(n+1))/(n+1)*A144396(n+1)`
-/

namespace A162441.P13110107035018514604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A001790 (n + 1)) : ℚ) / (n + 1 : ℚ) * (A144396 (n + 1) : ℚ)

end

end A162441.P13110107035018514604

noncomputable section

/-- A162441: Numerators of the column sums of the EG1 matrix coefficients.

Offset 2, canonical program `A162441.P13110107035018514604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A162441 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A162441.P13110107035018514604.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A162441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162719.P1590148191479666792

`eq[0, A037861(floor(n/(xor(n, n+1)+1)))]`
-/

namespace A162719.P1590148191479666792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A162719.P1590148191479666792

noncomputable section

/-- A162719: A positive integer n is included if n in binary contains as many 0's as the number of 1's in the binary representation of n+1, and if n in binary contains as many 1's as the number of 0's in the binary representation of n+1.

Offset 1, canonical program `A162719.P1590148191479666792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A162719 (n : ℕ) : ℤ :=
  (A162719.P1590148191479666792.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A162719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162800.P4495527545912003925

`A162345(n)+a(n-1)` with `a(0)=0`
-/

namespace A162800.P4495527545912003925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A162345 n + a (n - 1)

end

end A162800.P4495527545912003925

noncomputable section

/-- A162800: a(n) = n-th grid point that is covered by the zig-zag function for prime numbers such that the grid point is a vertex in the graph of the function.

Offset 0, canonical program `A162800.P4495527545912003925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162800 (n : ℕ) : ℤ :=
  A162800.P4495527545912003925.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164570.P17997441851036447944

`∩[A005125(n+1), A023229(n+1)]`
-/

namespace A164570.P17997441851036447944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164570.P17997441851036447944

noncomputable section

/-- A164570: Primes p such that 8*p-3 and 8*p+3 are also prime numbers.

Offset 1, canonical program `A164570.P17997441851036447944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. -/
def A164570 (n : ℕ) : ℤ :=
  (A164570.P17997441851036447944.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 250 terms. -/
def A164570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164874.P12027345168690341492

`A030130(n+2)`
-/

namespace A164874.P12027345168690341492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030130 (n + 2)

end

end A164874.P12027345168690341492

noncomputable section

/-- A164874: Triangle read by rows: T(1,1)=2; T(n,k)=2*T(n-1,k)+1, 1<=k<n; T(n,n)=2*(T(n-1,n-1)+1).

Offset 1, canonical program `A164874.P12027345168690341492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A164874 (n : ℕ) : ℤ :=
  A164874.P12027345168690341492.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A164874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164901.P6900817320331422055

`A151800(A065170(a(n-1)-2)+1)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A164901.P6900817320331422055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  A151800 (A065170 (a (n - 1) - 2).toNat + 1).toNat

end

end A164901.P6900817320331422055

noncomputable section

/-- A164901: a(1)=1, a(2) = 2. For n >=3, a(n) = the smallest integer > a(n-1) that is coprime to every sum of any two distinct earlier terms of this sequence.

Offset 1, canonical program `A164901.P6900817320331422055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 906 terms. -/
def A164901 (n : ℕ) : ℤ :=
  A164901.P6900817320331422055.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 906 terms. -/
def A164901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164921.P16552518991080890067

`A151800(a(n-1)+2)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A164921.P16552518991080890067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A151800 (a (n - 1) + 2).toNat

end

end A164921.P16552518991080890067

noncomputable section

/-- A164921: a(1)=0, a(2)=1. For n >=3, a(n) = the smallest integer > a(n-1) that is coprime to every sum of any two distinct earlier terms of this sequence.

Offset 1, canonical program `A164921.P16552518991080890067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2773 terms. -/
def A164921 (n : ℕ) : ℤ :=
  A164921.P16552518991080890067.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2773 terms. -/
def A164921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165931.P14215265576820430206

`Δ[A074693(A028310(n))]+C(2, n+2)`
-/

namespace A165931.P14215265576820430206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074693 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.choose 2 (n + 2) : ℤ)

end

end A165931.P14215265576820430206

noncomputable section

/-- A165931: a(1) = 1, for n > 1: a(n) = phi(sum of the previous terms) where phi is Euler's totient function.

Offset 1, canonical program `A165931.P14215265576820430206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 450 terms. -/
def A165931 (n : ℕ) : ℤ :=
  A165931.P14215265576820430206.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 450 terms. -/
def A165931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166251.P5903260242460627242

`A059788(eq[1, A102820(n+1)]+2)`
-/

namespace A166251.P5903260242460627242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059788 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A166251.P5903260242460627242

noncomputable section

/-- A166251: Isolated primes: Primes p such that there is no other prime in the interval [2*prevprime(p/2), 2*nextprime(p/2)].

Offset 1, canonical program `A166251.P5903260242460627242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2948 terms. -/
def A166251 (n : ℕ) : ℤ :=
  A166251.P5903260242460627242.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2948 terms. -/
def A166251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166307.P3691920292756503376

`p?[A059786(n+1)%A059788(n+2)]`
-/

namespace A166307.P3691920292756503376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059786 (n + 1)) (A059788 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A166307.P3691920292756503376

noncomputable section

/-- A166307: The smallest prime in some interval of the form (2*prime(k),2*prime(k+1)) if this interval contains at least 2 primes.

Offset 1, canonical program `A166307.P3691920292756503376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A166307 (n : ℕ) : ℤ :=
  A166307.P3691920292756503376.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A166307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166918.P4761057443469163411

`A059268(n)-A166692(n)`
-/

namespace A166918.P4761057443469163411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n - A166692 n

end

end A166918.P4761057443469163411

noncomputable section

/-- A166918: Triangle T(n,k) read by rows: T(n,0) = n mod 2. T(n,k) = 2^(k-1), 0<k<=n.

Offset 0, canonical program `A166918.P4761057443469163411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166918 (n : ℕ) : ℤ :=
  A166918.P4761057443469163411.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167230.P8002516608932621908

`5%(A093658(n+1)+1)`
-/

namespace A167230.P8002516608932621908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (A093658 (n + 1) + 1)

end

end A167230.P8002516608932621908

noncomputable section

/-- A167230: The matrix exponential of Sierpiński's triangle (A047999) scaled by exp(-1).

Offset 0, canonical program `A167230.P8002516608932621908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A167230 (n : ℕ) : ℤ :=
  A167230.P8002516608932621908.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A167230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167274.P14910815328084261160

`A101000(A166453(n))`
-/

namespace A167274.P14910815328084261160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101000 (A166453 n).toNat

end

end A167274.P14910815328084261160

noncomputable section

/-- A167274: Triangle read by rows, = 2*A047999 - A047999^(-1); = twice Sierpinski's gasket minus the inverse of Sierpinski's gasket.

Offset 0, canonical program `A167274.P14910815328084261160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167274 (n : ℕ) : ℤ :=
  A167274.P14910815328084261160.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167332.P5296278499809472685

`A061142(n+1)*A166653(n+1)`
-/

namespace A167332.P5296278499809472685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A166653 (n + 1)

end

end A167332.P5296278499809472685

noncomputable section

/-- A167332: Totally multiplicative sequence with a(p) = 2*(4*p-1) = 8*p-2 for prime p.

Offset 1, canonical program `A167332.P5296278499809472685`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166653, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167332 (n : ℕ) : ℤ :=
  A167332.P5296278499809472685.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166653, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167332.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167335.P18242751094276829899

`A061142(n+1)*A166661(n+1)`
-/

namespace A167335.P18242751094276829899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A166661 (n + 1)

end

end A167335.P18242751094276829899

noncomputable section

/-- A167335: Totally multiplicative sequence with a(p) = 2*(3p+1) = 6p+2 for prime p.

Offset 1, canonical program `A167335.P18242751094276829899`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166661, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167335 (n : ℕ) : ℤ :=
  A167335.P18242751094276829899.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166661, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167335.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167336.P8261214320383042198

`A061142(n+1)*A166662(n+1)`
-/

namespace A167336.P8261214320383042198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1) * A166662 (n + 1)

end

end A167336.P8261214320383042198

noncomputable section

/-- A167336: Totally multiplicative sequence with a(p) = 2*(4p+1) = 8p+2 for prime p.

Offset 1, canonical program `A167336.P8261214320383042198`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166662, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167336 (n : ℕ) : ℤ :=
  A167336.P8261214320383042198.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A166662, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167336.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167364.P16856278631716748876

`A164981(n+1)%A001285(A002260(n+1))`
-/

namespace A167364.P16856278631716748876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164981 (n + 1)) (A001285 (A002260 (n + 1)).toNat)

end

end A167364.P16856278631716748876

noncomputable section

/-- A167364: Triangle read by rows, A047999 * A010060 (diagonalized); as infinite lower triangular matrices.

Offset 1, canonical program `A167364.P16856278631716748876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167364 (n : ℕ) : ℤ :=
  A167364.P16856278631716748876.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167422.P17624924762505515996

`A104722(A004275(n))`
-/

namespace A167422.P17624924762505515996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104722 (A004275 n).toNat

end

end A167422.P17624924762505515996

noncomputable section

/-- A167422: Expansion of (1+x)*c(x), c(x) the g.f. of A000108.

Offset 0, canonical program `A167422.P17624924762505515996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A167422 (n : ℕ) : ℤ :=
  A167422.P17624924762505515996.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A167422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167432.P1971588945599416429

`A110510(lt[1, A002262(n)])`
-/

namespace A167432.P1971588945599416429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110510 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A167432.P1971588945599416429

noncomputable section

/-- A167432: Riordan array (c(2x)^2,xc(2x)), c(x) the g.f. of A000108.

Offset 0, canonical program `A167432.P1971588945599416429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6555 terms. -/
def A167432 (n : ℕ) : ℤ :=
  A167432.P1971588945599416429.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6555 terms. -/
def A167432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167462.P18008838724901642984

`p?[A153238(n+1)+4]`
-/

namespace A167462.P18008838724901642984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153238 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167462.P18008838724901642984

noncomputable section

/-- A167462: Primes p such that 2*p-5 is composite.

Offset 1, canonical program `A167462.P18008838724901642984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A167462 (n : ℕ) : ℤ :=
  A167462.P18008838724901642984.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A167462.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167557.P8750965983372641011

`A059268(n)*A098361(n)*A123519(n)`
-/

namespace A167557.P8750965983372641011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A098361 n * A123519 n

end

end A167557.P8750965983372641011

noncomputable section

/-- A167557: The lower left triangle of the ED1 array A167546.

Offset 1, canonical program `A167557.P8750965983372641011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A167557 (n : ℕ) : ℤ :=
  A167557.P8750965983372641011.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A167557.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167878.P4017670017708560408

`A167877(n)+n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167878.P4017670017708560408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167877 n + (n : ℤ)

end

end A167878.P4017670017708560408

noncomputable section

/-- A167878: A167877(n) + n.

Offset 0, canonical program `A167878.P4017670017708560408`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167877, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167878 (n : ℕ) : ℤ :=
  A167878.P4017670017708560408.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167877, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A167878.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A168154.P7656744219214524331

`eq[1, A001222(A095375(n+1))]+1`
-/

namespace A168154.P7656744219214524331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A095375 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A168154.P7656744219214524331

noncomputable section

/-- A168154: Numbers n such that the sum of binary digits in prime(1), ..., prime(n) is prime.

Offset 1, canonical program `A168154.P7656744219214524331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 995 terms. -/
def A168154 (n : ℕ) : ℤ :=
  (A168154.P7656744219214524331.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 995 terms. -/
def A168154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168157.P3803105065153823946

`(n+1)*A035100(n+1)-A095375(n+1)`
-/

namespace A168157.P3803105065153823946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A035100 (n + 1) - A095375 (n + 1)

end

end A168157.P3803105065153823946

noncomputable section

/-- A168157: Number of 0's in the matrix whose lines are the binary expansion of the first n primes.

Offset 1, canonical program `A168157.P3803105065153823946`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035100, A095375, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A168157 (n : ℕ) : ℤ :=
  A168157.P3803105065153823946.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035100, A095375, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A168157.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A168258.P8738172613031762915

`A115514(1-A053616(n)+n)`
-/

namespace A168258.P8738172613031762915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115514 (1 - A053616 n + (n : ℤ)).toNat

end

end A168258.P8738172613031762915

noncomputable section

/-- A168258: Triangle read by rows, A101688 * A000012 as infinite lower triangular matrices.

Offset 1, canonical program `A168258.P8738172613031762915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168258 (n : ℕ) : ℤ :=
  A168258.P8738172613031762915.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168281.P1468629803331935945

`2*A106314(n+1)`
-/

namespace A168281.P1468629803331935945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A106314 (n + 1)

end

end A168281.P1468629803331935945

noncomputable section

/-- A168281: Triangle T(n,m) = 2*(min(n - m + 1, m))^2 read by rows.

Offset 1, canonical program `A168281.P1468629803331935945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168281 (n : ℕ) : ℤ :=
  A168281.P1468629803331935945.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168518.P6554383422937222946

`2*A168517(n)-A007318(n)`
-/

namespace A168518.P6554383422937222946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168517 n - A007318 n

end

end A168518.P6554383422937222946

noncomputable section

/-- A168518: Expansion of g.f. (1/2)*( a*(1+x)^n + b*(1-x)^(n+2)*LerchPhi(x, -n-1, 1) + c*2^(n+1)*(1-x)^(n+1)*LerchPhi(x, -n, 1/2) ), where a = -4, b = 2, and c = 2, read by rows.

Offset 0, canonical program `A168518.P6554383422937222946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1916 terms. -/
def A168518 (n : ℕ) : ℤ :=
  A168518.P6554383422937222946.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1916 terms. -/
def A168518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168551.P16251001762095970515

`2*A060187(n+1)-A168517(n)`
-/

namespace A168551.P16251001762095970515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060187 (n + 1) - A168517 n

end

end A168551.P16251001762095970515

noncomputable section

/-- A168551: Expansion of g.f. (1/2)*( a*(1+x)^n + b*(1-x)^(n+2)*LerchPhi(x, -n-1, 1) + c*2^(n+1)*(1-x)^(n+1)*LerchPhi(x, -n, 1/2) ), where a = 1, b = -1, and c = 1, read by rows.

Offset 0, canonical program `A168551.P16251001762095970515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1916 terms. -/
def A168551 (n : ℕ) : ℤ :=
  A168551.P16251001762095970515.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1916 terms. -/
def A168551.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169704.P14470906211956367627

`Δ[A169703(n)]`
-/

namespace A169704.P14470906211956367627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169704.P14470906211956367627

noncomputable section

/-- A169704: First differences of A169703.

Offset 0, canonical program `A169704.P14470906211956367627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3982 terms. -/
def A169704 (n : ℕ) : ℤ :=
  A169704.P14470906211956367627.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3982 terms. -/
def A169704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A169902.P8256414419473513103

`lcm(n+2, A169900(n+1))`
-/

namespace A169902.P8256414419473513103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 2 : ℤ) (A169900 (n + 1))

end

end A169902.P8256414419473513103

noncomputable section

/-- A169902: Earliest sequence such that xy | a(x+y) and (x+y) | a(xy) for all x >= 1, y >= 1.

Offset 1, canonical program `A169902.P8256414419473513103`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. -/
def A169902 (n : ℕ) : ℤ :=
  (A169902.P8256414419473513103.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. -/
def A169902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A170949.P7834340339358711823

`A048760(n)+A004741(n+1)`
-/

namespace A170949.P7834340339358711823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 n + A004741 (n + 1)

end

end A170949.P7834340339358711823

noncomputable section

/-- A170949: "Conway's Converger": a reordering of the integers (see Comments for definition).

Offset 1, canonical program `A170949.P7834340339358711823`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A170949 (n : ℕ) : ℤ :=
  A170949.P7834340339358711823.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A170949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171233.P2556039700440970836

`A171232(n+1)+A077049(n+1)`
-/

namespace A171233.P2556039700440970836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171232 (n + 1) + A077049 (n + 1)

end

end A171233.P2556039700440970836

noncomputable section

/-- A171233: Array, T(n,k) = 2*(n/k), if n mod k = 0; otherwise, T(n,k) = 1. Read by antidiagonals.

Offset 1, canonical program `A171233.P2556039700440970836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171233 (n : ℕ) : ℤ :=
  A171233.P2556039700440970836.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171747.P2976649016609342073

`A004139(A138969(n+1))`
-/

namespace A171747.P2976649016609342073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A138969 (n + 1)).toNat

end

end A171747.P2976649016609342073

noncomputable section

/-- A171747: Smallest prime > n-th prime of the form 3*k-1.

Offset 1, canonical program `A171747.P2976649016609342073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5011 terms. -/
def A171747 (n : ℕ) : ℤ :=
  A171747.P2976649016609342073.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5011 terms. -/
def A171747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171815.P11809366983025997243

`p?[A171743(n+1)+1]-1`
-/

namespace A171815.P11809366983025997243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171743 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A171815.P11809366983025997243

noncomputable section

/-- A171815: Values of A171743 that are 1 less than a prime, listed in the order in which they appear.

Offset 1, canonical program `A171815.P11809366983025997243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2691 terms. -/
def A171815 (n : ℕ) : ℤ :=
  A171815.P11809366983025997243.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2691 terms. -/
def A171815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171900.P13555337317607652516

`Δ[A026491(C(2, n+1)+n-1)]`
-/

namespace A171900.P13555337317607652516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 ((Nat.choose 2 (n + 1) : ℤ) + ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171900.P13555337317607652516

noncomputable section

/-- A171900: Backwards van Eck transform of A010060.

Offset 1, canonical program `A171900.P13555337317607652516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A171900 (n : ℕ) : ℤ :=
  A171900.P13555337317607652516.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A171900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172064.P15345812233759413588

`Δ[A172063(n)]-A172061(n+1)`
-/

namespace A172064.P15345812233759413588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172063 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A172061 (n + 1)

end

end A172064.P15345812233759413588

noncomputable section

/-- A172064: Expansion of (2/(3*sqrt(1-4*z)-1+4*z))*((1-sqrt(1-4*z))/(2*z))^k with k=7.

Offset 0, canonical program `A172064.P15345812233759413588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A172064 (n : ℕ) : ℤ :=
  A172064.P15345812233759413588.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A172064.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172256.P3636128237648149891

`∩[A153043(n+1), A163769(n+1)]`
-/

namespace A172256.P3636128237648149891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A172256.P3636128237648149891

noncomputable section

/-- A172256: Primes p such that 2*p+-3 are both nonprimes.

Offset 1, canonical program `A172256.P3636128237648149891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 738 terms. -/
def A172256 (n : ℕ) : ℤ :=
  (A172256.P3636128237648149891.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 738 terms. -/
def A172256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172500.P16194948095997381437

`(n+1)/A109848(n+1)`
-/

namespace A172500.P16194948095997381437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A109848 (n + 1) : ℚ)

end

end A172500.P16194948095997381437

noncomputable section

/-- A172500: Numerator of fraction whose decimal representation has form 0.(n)(n)(n)...with repeating part n.

Offset 1, canonical program `A172500.P16194948095997381437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A172500 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A172500.P16194948095997381437.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A172500.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173059.P8847239120286303274

`A153143(A028310(n))+A057427(n)`
-/

namespace A173059.P8847239120286303274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153143 (A028310 n).toNat + A057427 n

end

end A173059.P8847239120286303274

noncomputable section

/-- A173059: Nonnegative numbers k such that 2*k + 17 is prime.

Offset 1, canonical program `A173059.P8847239120286303274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173059 (n : ℕ) : ℤ :=
  A173059.P8847239120286303274.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173531.P13371912172200892370

`and(n, -n)*A212988(A038573(n))`
-/

namespace A173531.P13371912172200892370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) * A212988 (A038573 n).toNat

end

end A173531.P13371912172200892370

noncomputable section

/-- A173531: a(0)=0: For n>0, a(n) = A060632(n)*A060632(n-1).

Offset 0, canonical program `A173531.P13371912172200892370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173531 (n : ℕ) : ℤ :=
  A173531.P13371912172200892370.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173868.P3619677425062889459

`A151800(A000108(n+1))`
-/

namespace A173868.P3619677425062889459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A000108 (n + 1)).toNat

end

end A173868.P3619677425062889459

noncomputable section

/-- A173868: Smallest prime > n-th Catalan number.

Offset 1, canonical program `A173868.P3619677425062889459`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173868 (n : ℕ) : ℤ :=
  A173868.P3619677425062889459.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A173868.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A173926.P11646176690681357479

`Δ[A054270(n+1)]`
-/

namespace A173926.P11646176690681357479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A173926.P11646176690681357479

noncomputable section

/-- A173926: First differences of A054270.

Offset 1, canonical program `A173926.P11646176690681357479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A173926 (n : ℕ) : ℤ :=
  A173926.P11646176690681357479.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A173926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174116.P4215392466505003891

`ceil(A173881(n)/2)`
-/

namespace A174116.P4215392466505003891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A173881 n : ℚ) / 2⌉

end

end A174116.P4215392466505003891

noncomputable section

/-- A174116: Triangle T(n, k) = (n/2)*binomial(n-1, k-1)*binomial(n-1, k) with T(n, 0) = T(n, n) = 1, read by rows.

Offset 0, canonical program `A174116.P4215392466505003891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A174116 (n : ℕ) : ℤ :=
  A174116.P4215392466505003891.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A174116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174303.P17748859711421626888

`gcd(A059268(n), A130321(n))*A008292(n+1)`
-/

namespace A174303.P17748859711421626888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A059268 n) (A130321 n) : ℤ) * A008292 (n + 1)

end

end A174303.P17748859711421626888

noncomputable section

/-- A174303: A symmetrical triangle: T(n,k) = A008292(n+1, k) * f(n,k), where f(n,k) = 2^k when floor(n/2) >= k, otherwise 2^(n-k).

Offset 0, canonical program `A174303.P17748859711421626888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2174 terms. -/
def A174303 (n : ℕ) : ℤ :=
  A174303.P17748859711421626888.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2174 terms. -/
def A174303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174321.P612213315116284694

`A000720(A151800(A016922(n)))`
-/

namespace A174321.P612213315116284694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A151800 (A016922 n).toNat).toNat

end

end A174321.P612213315116284694

noncomputable section

/-- A174321: Index of the smallest prime greater than (6n+1)^2.

Offset 0, canonical program `A174321.P612213315116284694`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A174321 (n : ℕ) : ℤ :=
  A174321.P612213315116284694.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A174321.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A175152.P2272878857478968243

`∩[A102656(n+1), A107960(n+1)]`
-/

namespace A175152.P2272878857478968243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A175152.P2272878857478968243

noncomputable section

/-- A175152: Numbers k such that 11*k-1 and 11*k+1 are twin primes.

Offset 1, canonical program `A175152.P2272878857478968243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1137 terms. -/
def A175152 (n : ℕ) : ℤ :=
  (A175152.P2272878857478968243.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1137 terms. -/
def A175152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175332.P10633603557300615745

`A130321(n)+A043569(n+1)`
-/

namespace A175332.P10633603557300615745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n + A043569 (n + 1)

end

end A175332.P10633603557300615745

noncomputable section

/-- A175332: Numbers whose binary expansion is of the form 11+0*.

Offset 1, canonical program `A175332.P10633603557300615745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175332 (n : ℕ) : ℤ :=
  A175332.P10633603557300615745.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175381.P9481108831751205089

`record[A059268(n)*A113980(A004736(n+1))]`
-/

namespace A175381.P9481108831751205089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A113980 (A004736 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A175381.P9481108831751205089

noncomputable section

/-- A175381: A positive integer k is included if all positive integers that, when written in binary, occur as substrings in binary k divide k.

Offset 1, canonical program `A175381.P9481108831751205089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5035 terms. -/
def A175381 (n : ℕ) : ℤ :=
  A175381.P9481108831751205089.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5035 terms. -/
def A175381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175742.P17751392204006132798

`eq[7, log2(A145154(n))]`
-/

namespace A175742.P17751392204006132798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A145154 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A175742.P17751392204006132798

noncomputable section

/-- A175742: Numbers with 32 divisors.

Offset 1, canonical program `A175742.P17751392204006132798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A175742 (n : ℕ) : ℤ :=
  (A175742.P17751392204006132798.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A175742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176597.P3154790645961376923

`A020338(record[p?[∏{p}[n+1, #]]])`
-/

namespace A176597.P3154790645961376923
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A176597.P3154790645961376923

noncomputable section

/-- A176597: Double primes: concatenation of the n-th prime with itself.

Offset 1, canonical program `A176597.P3154790645961376923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176597 (n : ℕ) : ℤ :=
  A176597.P3154790645961376923.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176865.P3555741230070737167

`eq[0, A007920(A055400(n))]`
-/

namespace A176865.P3555741230070737167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A055400 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176865.P3555741230070737167

noncomputable section

/-- A176865: Numbers n such that n-LargestCube is prime, (LargestCube <= n).

Offset 1, canonical program `A176865.P3555741230070737167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176865 (n : ℕ) : ℤ :=
  (A176865.P3555741230070737167.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A176865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176890.P508741093252212917

`A057427(n)-abs(A155031(n+1))`
-/

namespace A176890.P508741093252212917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - |A155031 (n + 1)|

end

end A176890.P508741093252212917

noncomputable section

/-- A176890: Triangle T(n,k) read by rows. Signed subsequence of A051731.

Offset 1, canonical program `A176890.P508741093252212917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176890 (n : ℕ) : ℤ :=
  A176890.P508741093252212917.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177017.P2945231276214916138

`p?[eq[1, A010051(A151800(n)+1+n)]]`
-/

namespace A177017.P2945231276214916138
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A151800 n + 1 + (n : ℤ)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A177017.P2945231276214916138

noncomputable section

/-- A177017: Primes prime(n) such that prime(n) + prime(n+1) + 1 is also prime.

Offset 1, canonical program `A177017.P2945231276214916138`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1258 terms. -/
def A177017 (n : ℕ) : ℤ :=
  (A177017.P2945231276214916138.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1258 terms. -/
def A177017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177424.P5885346958814520556

`A000120(C(n, 2))-A232243(n)`
-/

namespace A177424.P5885346958814520556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.choose n 2) - A232243 n

end

end A177424.P5885346958814520556

noncomputable section

/-- A177424: Exponent of the highest power of 2 dividing binomial(n^2,n).

Offset 0, canonical program `A177424.P5885346958814520556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A177424 (n : ℕ) : ℤ :=
  A177424.P5885346958814520556.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A177424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A177718.P13912368437558654364

`abs(A014499(n+1)-A035103(n+1))`
-/

namespace A177718.P13912368437558654364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014499 (n + 1) - A035103 (n + 1)|

end

end A177718.P13912368437558654364

noncomputable section

/-- A177718: a(n) = |(number of 1's in binary representation of prime(n)) - (number of 0's in binary representation of prime(n))|.

Offset 1, canonical program `A177718.P13912368437558654364`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A177718 (n : ℕ) : ℤ :=
  A177718.P13912368437558654364.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A177718.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A177754.P10245631934257037110

`∑[A047994(n+1)]`
-/

namespace A177754.P10245631934257037110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A177754.P10245631934257037110

noncomputable section

/-- A177754: Partial sums of A047994.

Offset 1, canonical program `A177754.P10245631934257037110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177754 (n : ℕ) : ℤ :=
  A177754.P10245631934257037110.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A177754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083905.P6777605636858218612

`A030300(n+1)-A065359(n+1)`
-/

namespace A083905.P6777605636858218612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030300 (n + 1) - A065359 (n + 1)

end

end A083905.P6777605636858218612

noncomputable section

/-- A083905: G.f.: 1/(1-x) * sum(k>=0, (-1)^k*x^2^(k+1)/(1+x^2^k)).

Offset 1, canonical program `A083905.P6777605636858218612`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065359, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083905 (n : ℕ) : ℤ :=
  A083905.P6777605636858218612.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065359, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083905.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A084365.P12351951049728921383

`A007947(A024619(n+1))`
-/

namespace A084365.P12351951049728921383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A024619 (n + 1)).toNat

end

end A084365.P12351951049728921383

noncomputable section

/-- A084365: Squarefree kernel of numbers that are not prime powers.

Offset 1, canonical program `A084365.P12351951049728921383`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024619, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084365 (n : ℕ) : ℤ :=
  A084365.P12351951049728921383.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024619, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084365.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A084488.P2138741234622189971

`A002145(A267098(n+1)+1)+A002144(A267097(n+1)+1)`
-/

namespace A084488.P2138741234622189971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (A267098 (n + 1) + 1).toNat + A002144 (A267097 (n + 1) + 1).toNat

end

end A084488.P2138741234622189971

noncomputable section

/-- A084488: Prime(n)+q, where q is the next prime such that q mod 4 = (prime(n)+2) mod 4.

Offset 2, canonical program `A084488.P2138741234622189971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084488 (n : ℕ) : ℤ :=
  A084488.P2138741234622189971.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084488.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084744.P4104311271369201504

`record[and(1-n, A085056(n+1))]`
-/

namespace A084744.P4104311271369201504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - (n : ℤ)) (A085056 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A084744.P4104311271369201504

noncomputable section

/-- A084744: Product of all composite numbers from 1 to the n-th nonprime number divided by product of all the prime divisors of each of those composite numbers which exceed the previously stated value.

Offset 1, canonical program `A084744.P4104311271369201504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A084744 (n : ℕ) : ℤ :=
  A084744.P4104311271369201504.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A084744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084771.P4193283616547471538

`Δ[n*A162326(n)]`
-/

namespace A084771.P4193283616547471538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A162326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A084771.P4193283616547471538

noncomputable section

/-- A084771: Coefficients of expansion of 1/sqrt(1 - 10*x + 9*x^2); also, a(n) is the central coefficient of (1 + 5*x + 4*x^2)^n.

Offset 0, canonical program `A084771.P4193283616547471538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A084771 (n : ℕ) : ℤ :=
  A084771.P4193283616547471538.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A084771.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A085414.P12443412934305902750

`∩[A077652(n+1), A227919(n+1)]`
-/

namespace A085414.P12443412934305902750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A085414.P12443412934305902750

noncomputable section

/-- A085414: Primes that are a concatenation of a prime and its first digit.

Offset 1, canonical program `A085414.P12443412934305902750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1023 terms. -/
def A085414 (n : ℕ) : ℤ :=
  (A085414.P12443412934305902750.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1023 terms. -/
def A085414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085885.P6366113576804928038

`A000010(A056813((n+1)²))+A000010(A175851(n+1))`
-/

namespace A085885.P6366113576804928038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A056813 ((n + 1) ^ 2)).toNat + A000010 (A175851 (n + 1)).toNat

end

end A085885.P6366113576804928038

noncomputable section

/-- A085885: Let r and s be such that r + s = n; a(n) = maximum value of phi(r) + phi(s).

Offset 2, canonical program `A085885.P6366113576804928038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A085885 (n : ℕ) : ℤ :=
  A085885.P6366113576804928038.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A085885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086175.P1759872831510591632

`eq[2, A107060(n+1)]+1`
-/

namespace A086175.P1759872831510591632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107060 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A086175.P1759872831510591632

noncomputable section

/-- A086175: Numbers n such that n*prime(n)-2 is prime.

Offset 1, canonical program `A086175.P1759872831510591632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 542 terms. -/
def A086175 (n : ℕ) : ℤ :=
  (A086175.P1759872831510591632.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 542 terms. -/
def A086175.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A086222.P1188365077820885668`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086165, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086222 (n : ℕ) : ℤ :=
  A086222.P1188365077820885668.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086165, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086222.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A086456.P993740706458250984

`xor(A063524(n), A085403(n))`
-/

namespace A086456.P993740706458250984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A085403 n)

end

end A086456.P993740706458250984

noncomputable section

/-- A086456: Expansion of (1 + x + sqrt(1 - 6*x + x^2))/2 in powers of x.

Offset 0, canonical program `A086456.P993740706458250984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A086456 (n : ℕ) : ℤ :=
  A086456.P993740706458250984.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A086456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087010.P3140519343605400597

`A066339(2*(n+1))-A066339(A028310(n))`
-/

namespace A087010.P3140519343605400597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 (2 * (n + 1)) - A066339 (A028310 n).toNat

end

end A087010.P3140519343605400597

noncomputable section

/-- A087010: Number of primes of form 4*k+1 between n and 2n (inclusive).

Offset 1, canonical program `A087010.P3140519343605400597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A087010 (n : ℕ) : ℤ :=
  A087010.P3140519343605400597.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A087010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087030.P1288497495494676247

`2*A151800(n+1)-(n+1)`
-/

namespace A087030.P1288497495494676247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151800 (n + 1) - (n + 1 : ℤ)

end

end A087030.P1288497495494676247

noncomputable section

/-- A087030: n "reflected" in the next prime: a(n)=2p-n, p is smallest prime > n.

Offset 1, canonical program `A087030.P1288497495494676247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087030 (n : ℕ) : ℤ :=
  A087030.P1288497495494676247.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087032.P929361503282917607

`A010051(2*A151800(n+1)-(n+1))`
-/

namespace A087032.P929361503282917607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * A151800 (n + 1) - (n + 1 : ℤ)).toNat

end

end A087032.P929361503282917607

noncomputable section

/-- A087032: a(n) = 1 if 2*A151800(n) - n is prime, otherwise 0, where A151800(n) is the smallest prime > n.

Offset 1, canonical program `A087032.P929361503282917607`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087032 (n : ℕ) : ℤ :=
  A087032.P929361503282917607.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087032.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A087165.P6335515186169840550

`4+A244041(4*n)-A244041(4*(n+1))`
-/

namespace A087165.P6335515186169840550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 + A244041 (4 * n) - A244041 (4 * (n + 1))

end

end A087165.P6335515186169840550

noncomputable section

/-- A087165: a(n)=1 when n == 1 (mod 4), otherwise a(n) = a(n - ceiling(n/4)) + 1. Removing all the 1's results in the original sequence with every term incremented by 1.

Offset 1, canonical program `A087165.P6335515186169840550`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A244041, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087165 (n : ℕ) : ℤ :=
  A087165.P6335515186169840550.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A244041, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087165.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A087461.P9410711582706575708

`A089253(n+1)+A089038(2*(n+1))`
-/

namespace A087461.P9410711582706575708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1) + A089038 (2 * (n + 1))

end

end A087461.P9410711582706575708

noncomputable section

/-- A087461: Arithmetic mean of n-th and 2n-th primes.

Offset 2, canonical program `A087461.P9410711582706575708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A087461 (n : ℕ) : ℤ :=
  A087461.P9410711582706575708.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A087461.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087693.P16308165039062413688

`p?[A054723(n+1)+2]-2`
-/

namespace A087693.P16308165039062413688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A087693.P16308165039062413688

noncomputable section

/-- A087693: Lesser twin prime p such that 2^p-1 is composite.

Offset 0, canonical program `A087693.P16308165039062413688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1268 terms. -/
def A087693 (n : ℕ) : ℤ :=
  A087693.P16308165039062413688.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1268 terms. -/
def A087693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087699.P13314073770453062209

`p?[A054723(n+1)-2]+2`
-/

namespace A087699.P13314073770453062209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A087699.P13314073770453062209

noncomputable section

/-- A087699: Greater twin prime p such that 2^p-1 is composite.

Offset 0, canonical program `A087699.P13314073770453062209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 421 terms. -/
def A087699 (n : ℕ) : ℤ :=
  A087699.P13314073770453062209.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 421 terms. -/
def A087699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087781.P18092569315473088163

`∑{d}[n+1, A035187(#)*A271102((n+1)/#)]`
-/

namespace A087781.P18092569315473088163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035187 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A087781.P18092569315473088163

noncomputable section

/-- A087781: Number of non-congruent solutions to x^2 - x - 1 == 0 mod n.

Offset 1, canonical program `A087781.P18092569315473088163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087781 (n : ℕ) : ℤ :=
  A087781.P18092569315473088163.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089164.P3023028978158092198

`A002002(n+1)+2*A026002(n+1)`
-/

namespace A089164.P3023028978158092198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 (n + 1) + 2 * A026002 (n + 1)

end

end A089164.P3023028978158092198

noncomputable section

/-- A089164: Number of steps in all Schroeder paths (i.e., consisting of steps U=(1,1), D=(1,-1),H=(2,0) and never going below the x-axis) from (0,0) to (2n,0).

Offset 1, canonical program `A089164.P3023028978158092198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A089164 (n : ℕ) : ℤ :=
  A089164.P3023028978158092198.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A089164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089186.P2318256457982008999

`A178914(n+1)`
-/

namespace A089186.P2318256457982008999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178914 (n + 1)

end

end A089186.P2318256457982008999

noncomputable section

/-- A089186: Decreases from 9 * 10^k down to 1, restarting at 9 * 10^(k+1).

Offset 1, canonical program `A089186.P2318256457982008999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A089186 (n : ℕ) : ℤ :=
  A089186.P2318256457982008999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A089186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089311.P16370938375623616626

`A089310(A261693(n))`
-/

namespace A089311.P16370938375623616626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089310 (A261693 n).toNat

end

end A089311.P16370938375623616626

noncomputable section

/-- A089311: Write n in binary; a(n) = number of 0's in rightmost block of zeros, after dropping any trailing 0's.

Offset 0, canonical program `A089311.P16370938375623616626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A089311 (n : ℕ) : ℤ :=
  A089311.P16370938375623616626.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A089311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089383.P16769992240081267882

`∑[A026002(n+1)]`
-/

namespace A089383.P16769992240081267882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089383.P16769992240081267882

noncomputable section

/-- A089383: Number of peaks at even level in all Schroeder paths (i.e., consisting of steps U=(1,1), D=(1,-1), H=(2,0) and never going below the axis) from (0,0) to (2n+4,0).

Offset 0, canonical program `A089383.P16769992240081267882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A089383 (n : ℕ) : ℤ :=
  A089383.P16769992240081267882.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A089383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089880.P5542344257203775530

`(A000108(n)+A089849(n))/2`
-/

namespace A089880.P5542344257203775530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n + A089849 n : ℚ) / 2

end

end A089880.P5542344257203775530

noncomputable section

/-- A089880: Number of cycles in range [A014137(n-1)..A014138(n-1)] of permutation A069772.

Offset 0, canonical program `A089880.P5542344257203775530`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089849, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089880 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A089880.P5542344257203775530.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089849, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089880.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A090192.P1518387728064855857

`A000038(n)-A105523(n)`
-/

namespace A090192.P1518387728064855857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A105523 n

end

end A090192.P1518387728064855857

noncomputable section

/-- A090192: Carlitz-Riordan q-Catalan numbers (recurrence version) for q = -1.

Offset 0, canonical program `A090192.P1518387728064855857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A090192 (n : ℕ) : ℤ :=
  A090192.P1518387728064855857.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 347 terms. -/
def A090192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090412.P5090535877680576514

`(3*a(n-1)-A105523(n))/2` with `a(0)=1`
-/

namespace A090412.P5090535877680576514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (3 * a (n - 1) - (A105523 n : ℚ)) / 2

end

end A090412.P5090535877680576514

noncomputable section

/-- A090412: A Chebyshev transform of 2^n.

Offset 0, canonical program `A090412.P5090535877680576514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. -/
def A090412 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A090412.P5090535877680576514.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. -/
def A090412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091050.P13434770891422209589

`∑{d}[n+1, A075802(#)]`
-/

namespace A091050.P13434770891422209589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A075802 d

end

end A091050.P13434770891422209589

noncomputable section

/-- A091050: Number of divisors of n that are perfect powers.

Offset 1, canonical program `A091050.P13434770891422209589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091050 (n : ℕ) : ℤ :=
  A091050.P13434770891422209589.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091051.P295852673504000466

`∑{d}[n+1, #*A075802(#)]`
-/

namespace A091051.P295852673504000466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A075802 d

end

end A091051.P295852673504000466

noncomputable section

/-- A091051: Sum of divisors of n that are perfect powers.

Offset 1, canonical program `A091051.P295852673504000466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091051 (n : ℕ) : ℤ :=
  A091051.P295852673504000466.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091154.P3915821087696335756

`A002596(n)/(2*n+1)*A056617(n)`
-/

namespace A091154.P3915821087696335756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002596 n : ℚ) / (2 * n + 1 : ℚ) * (A056617 n : ℚ)

end

end A091154.P3915821087696335756

noncomputable section

/-- A091154: Numerator of Maclaurin expansion of (t*sqrt(t^2+1) + arcsinh(t))/2, the arc length of Archimedes' spiral.

Offset 1, canonical program `A091154.P3915821087696335756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. -/
def A091154 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A091154.P3915821087696335756.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 175 terms. -/
def A091154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091300.P2475382498501044560

`6*A046954(n+1)+1`
-/

namespace A091300.P2475382498501044560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A046954 (n + 1) + 1

end

end A091300.P2475382498501044560

noncomputable section

/-- A091300: Nonprimes of the form 6k + 1.

Offset 1, canonical program `A091300.P2475382498501044560`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091300 (n : ℕ) : ℤ :=
  A091300.P2475382498501044560.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091498.P8170491020747909582

`A026812(n)+∑[A008670(n)]`
-/

namespace A091498.P8170491020747909582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008670 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026812 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091498.P8170491020747909582

noncomputable section

/-- A091498: The sixth column of triangle A091492, excluding leading zeros.

Offset 0, canonical program `A091498.P8170491020747909582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091498 (n : ℕ) : ℤ :=
  A091498.P8170491020747909582.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092256.P2919637322678996095

`2*(A138685(n+1)+3)+3`
-/

namespace A092256.P2919637322678996095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A138685 (n + 1) + 3) + 3

end

end A092256.P2919637322678996095

noncomputable section

/-- A092256: Nonprimes of form 6k+5.

Offset 1, canonical program `A092256.P2919637322678996095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092256 (n : ℕ) : ℤ :=
  A092256.P2919637322678996095.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A092256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092622.P18267383796182270712

`p?[A092624(n+1)]`
-/

namespace A092622.P18267383796182270712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092622.P18267383796182270712

noncomputable section

/-- A092622: Primes with exactly two prime digits.

Offset 1, canonical program `A092622.P18267383796182270712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1107 terms. -/
def A092622 (n : ℕ) : ℤ :=
  A092622.P18267383796182270712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1107 terms. -/
def A092622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A092843.P4025589053211159302

`∑{d}[n+1, A000010(A038566(A002088(#)))]-1`
-/

namespace A092843.P4025589053211159302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (A038566 (A002088 d).toNat).toNat - 1

end

end A092843.P4025589053211159302

noncomputable section

/-- A092843: a(n) = Sum_{k|n, k>1} phi(k-1), where phi() is the Euler phi function.

Offset 1, canonical program `A092843.P4025589053211159302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 572 terms. -/
def A092843 (n : ℕ) : ℤ :=
  A092843.P4025589053211159302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 572 terms. -/
def A092843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093503.P1422518383799361702

`A151800(a(n-1)-1+n)` with `a(0)=2`
-/

namespace A093503.P1422518383799361702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A151800 (a (n - 1) - 1 + (n : ℤ)).toNat

end

end A093503.P1422518383799361702

noncomputable section

/-- A093503: a(0) = 2, a(n) = least prime >= a(n-1) + n.

Offset 0, canonical program `A093503.P1422518383799361702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. -/
def A093503 (n : ℕ) : ℤ :=
  A093503.P1422518383799361702.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. -/
def A093503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093688.P16553081961736122512

`eq[1, A227872(n+1)]+1`
-/

namespace A093688.P16553081961736122512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227872 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A093688.P16553081961736122512

noncomputable section

/-- A093688: Numbers m such that all divisors of m, excluding the divisor 1, have an even number of 1's in their binary expansions.

Offset 1, canonical program `A093688.P16553081961736122512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 800 terms. -/
def A093688 (n : ℕ) : ℤ :=
  (A093688.P16553081961736122512.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 800 terms. -/
def A093688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093819.P10904425845107863521

`A055034(A225975(n+1))`
-/

namespace A093819.P10904425845107863521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A225975 (n + 1)).toNat

end

end A093819.P10904425845107863521

noncomputable section

/-- A093819: Algebraic degree of sin(2*Pi/n).

Offset 1, canonical program `A093819.P10904425845107863521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A093819 (n : ℕ) : ℤ :=
  A093819.P10904425845107863521.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A093819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093873.P2224361996583993977

`A295515(A233279(n+1)+1)`
-/

namespace A093873.P2224361996583993977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (A233279 (n + 1) + 1).toNat

end

end A093873.P2224361996583993977

noncomputable section

/-- A093873: Numerators in Kepler's tree of harmonic fractions.

Offset 1, canonical program `A093873.P2224361996583993977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9215 terms. -/
def A093873 (n : ℕ) : ℤ :=
  A093873.P2224361996583993977.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9215 terms. -/
def A093873.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093957.P8179048002718482046

`A091799(n+1)-3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A093957.P8179048002718482046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091799 (n + 1) - 3

end

end A093957.P8179048002718482046

noncomputable section

/-- A093957: a(n) = A091799(n) - 3.

Offset 1, canonical program `A093957.P8179048002718482046`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091799, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A093957 (n : ℕ) : ℤ :=
  A093957.P8179048002718482046.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091799, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A093957.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A094112.P13916715946078502144

`A092582(C(2, n)+n)+Δ[A035214(n)]`
-/

namespace A094112.P13916715946078502144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092582 (Nat.choose 2 n + n) + (f1 (n + 1) - f1 n)

end

end A094112.P13916715946078502144

noncomputable section

/-- A094112: Triangle read by rows: T(n,k) is the number of permutations p of [n] in which the length of the longest initial segment avoiding the 123-, the 132- and the 231-pattern is equal to k.

Offset 1, canonical program `A094112.P13916715946078502144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2486 terms. -/
def A094112 (n : ℕ) : ℤ :=
  A094112.P13916715946078502144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2486 terms. -/
def A094112.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A096269.P7324626192486647762

`char[A038558(n)]+3-a(n-1)` with `a(0)=2`
-/

namespace A096269.P7324626192486647762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038558 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (3 - a (n - 1))

end

end A096269.P7324626192486647762

noncomputable section

/-- A096269: a(n) = number of distinct palindromes of length n that occur in A096268.

Offset 1, canonical program `A096269.P7324626192486647762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8833 terms. -/
def A096269 (n : ℕ) : ℤ :=
  A096269.P7324626192486647762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8833 terms. -/
def A096269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096500.P16442061898091781287

`A151800(n+2)-A151800(n+1)`
-/

namespace A096500.P16442061898091781287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (n + 2) - A151800 (n + 1)

end

end A096500.P16442061898091781287

noncomputable section

/-- A096500: Let f(n) = smallest prime > n; a(n) = f(n+1) - f(n).

Offset 1, canonical program `A096500.P16442061898091781287`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A096500 (n : ℕ) : ℤ :=
  A096500.P16442061898091781287.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A096500.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A097050.P5885192772138064070

`A151800(A000217(n))`
-/

namespace A097050.P5885192772138064070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A000217 n).toNat

end

end A097050.P5885192772138064070

noncomputable section

/-- A097050: Smallest prime > n(n+1)/2.

Offset 0, canonical program `A097050.P5885192772138064070`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097050 (n : ℕ) : ℤ :=
  A097050.P5885192772138064070.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A097050.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A097513.P517344334834478891

`A003082(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A097513.P517344334834478891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A003082 n - a (n - 3)

end

end A097513.P517344334834478891

noncomputable section

/-- A097513: Number of ways to label the vertices of the octahedron (or faces of the cube) with nonnegative integers summing to n, where labelings that differ only by rotation or reflection are considered the same.

Offset 0, canonical program `A097513.P517344334834478891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1098 terms. -/
def A097513 (n : ℕ) : ℤ :=
  A097513.P517344334834478891.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1098 terms. -/
def A097513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097610.P1461864535676650287

`A007318(n)*A126120(A025581(n))`
-/

namespace A097610.P1461864535676650287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A126120 (A025581 n).toNat

end

end A097610.P1461864535676650287

noncomputable section

/-- A097610: Triangle read by rows: T(n,k) is number of Motzkin paths of length n and having k horizontal steps.

Offset 0, canonical program `A097610.P1461864535676650287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097610 (n : ℕ) : ℤ :=
  A097610.P1461864535676650287.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098084.P2888162765627818762

`A151800(A001043(n+1)-1)-A001043(n+1)`
-/

namespace A098084.P2888162765627818762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A001043 (n + 1) - 1).toNat - A001043 (n + 1)

end

end A098084.P2888162765627818762

noncomputable section

/-- A098084: a(n) satisfies P(n) + P(n+1) + a(n) = least prime >= P(n) + P(n+1), where P(i)=i-th prime.

Offset 1, canonical program `A098084.P2888162765627818762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5132 terms. -/
def A098084 (n : ℕ) : ℤ :=
  A098084.P2888162765627818762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5132 terms. -/
def A098084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099103.P14963529761325271933

`lt[A055642(A225530(n)), A055642(n)]`
-/

namespace A099103.P14963529761325271933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A225530 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A099103.P14963529761325271933

noncomputable section

/-- A099103: Natural numbers n with more digits than Euler totient phi(n).

Offset 1, canonical program `A099103.P14963529761325271933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A099103 (n : ℕ) : ℤ :=
  (A099103.P14963529761325271933.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A099103.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A100428.P16186461630446330392

`A332875(n+1)-A100429(n+1)`
-/

namespace A100428.P16186461630446330392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332875 (n + 1) - A100429 (n + 1)

end

end A100428.P16186461630446330392

noncomputable section

/-- A100428: Bisection of Kolakoski sequence A000002.

Offset 1, canonical program `A100428.P16186461630446330392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100428 (n : ℕ) : ℤ :=
  A100428.P16186461630446330392.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100450.P9268367360250409235

`A122553(n)+4*A321879(n)`
-/

namespace A100450.P9268367360250409235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n + 4 * A321879 n

end

end A100450.P9268367360250409235

noncomputable section

/-- A100450: Number of ordered triples (i,j,k) with |i| + |j| + |k| <= n and gcd(i,j,k) <= 1.

Offset 0, canonical program `A100450.P9268367360250409235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A100450 (n : ℕ) : ℤ :=
  A100450.P9268367360250409235.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A100450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100630.P502029142886304984

`∑[gcd(A106459(n), A211370(n+1))]`
-/

namespace A100630.P502029142886304984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106459 n) (A211370 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A100630.P502029142886304984

noncomputable section

/-- A100630: Array read by antidiagonals: T(m,n) = Sum_{i=1..m} i*(n-1+i)!.

Offset 1, canonical program `A100630.P502029142886304984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2016 terms. -/
def A100630 (n : ℕ) : ℤ :=
  (A100630.P502029142886304984.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2016 terms. -/
def A100630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100744.P5655901826974364497

`A157142(n)%4*A100735(n)`
-/

namespace A100744.P5655901826974364497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157142 n) 4 * A100735 n

end

end A100744.P5655901826974364497

noncomputable section

/-- A100744: Inverse modulo 2 binomial transform of (-2)^n.

Offset 0, canonical program `A100744.P5655901826974364497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A100744 (n : ℕ) : ℤ :=
  A100744.P5655901826974364497.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A100744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100917.P8573700060762984161

`A100486(A065042(n+1))`
-/

namespace A100917.P8573700060762984161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100486 (A065042 (n + 1)).toNat

end

end A100917.P8573700060762984161

noncomputable section

/-- A100917: Primes of the form pi(n) + prime(n).

Offset 1, canonical program `A100917.P8573700060762984161`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065042, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100917 (n : ℕ) : ℤ :=
  A100917.P8573700060762984161.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065042, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100917.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A101300.P7599830743545042440

`A151800(A151800(n))`
-/

namespace A101300.P7599830743545042440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 n).toNat

end

end A101300.P7599830743545042440

noncomputable section

/-- A101300: Second-smallest prime larger than n.

Offset 0, canonical program `A101300.P7599830743545042440`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A101300 (n : ℕ) : ℤ :=
  A101300.P7599830743545042440.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A101300.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A101309.P11105508438679129334

`A014707(A166453(n))`
-/

namespace A101309.P11105508438679129334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (A166453 n).toNat

end

end A101309.P11105508438679129334

noncomputable section

/-- A101309: Matrix logarithm of A047999 (Pascal's triangle mod 2).

Offset 0, canonical program `A101309.P11105508438679129334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A101309 (n : ℕ) : ℤ :=
  A101309.P11105508438679129334.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A101309.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A101662.P7215598947080091620

`A134451(2*n)-A101674(n)`
-/

namespace A101662.P7215598947080091620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (2 * n) - A101674 n

end

end A101662.P7215598947080091620

noncomputable section

/-- A101662: Fixed point of morphism 0 -> 01, 1 -> 02, 2 -> 21.

Offset 0, canonical program `A101662.P7215598947080091620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101662 (n : ℕ) : ℤ :=
  A101662.P7215598947080091620.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101662.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101909.P4303666078231778873

`A099802(2*(n+1))-A099802(n+1)`
-/

namespace A101909.P4303666078231778873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (2 * (n + 1)) - A099802 (n + 1)

end

end A101909.P4303666078231778873

noncomputable section

/-- A101909: Number of primes between 2n and 4n.

Offset 1, canonical program `A101909.P4303666078231778873`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099802, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A101909 (n : ℕ) : ℤ :=
  A101909.P4303666078231778873.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099802, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A101909.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A102299.P678831004927681121

`∑{e}[A068780(n+1), #]`
-/

namespace A102299.P678831004927681121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068780 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A102299.P678831004927681121

noncomputable section

/-- A102299: Number of prime divisors with multiplicity of n where n and n+1 are composite or twin composite numbers.

Offset 1, canonical program `A102299.P678831004927681121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A102299 (n : ℕ) : ℤ :=
  (A102299.P678831004927681121.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A102299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102426.P776678391830445668

`A098925(abs(1-n))-A000007(n)`
-/

namespace A102426.P776678391830445668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098925 |1 - (n : ℤ)|.toNat - A000007 n

end

end A102426.P776678391830445668

noncomputable section

/-- A102426: Triangle read by rows giving coefficients of polynomials defined by F(0,x)=0, F(1,x)=1, F(n,x) = F(n-1,x) + x*F(n-2,x).

Offset 0, canonical program `A102426.P776678391830445668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102426 (n : ℕ) : ℤ :=
  A102426.P776678391830445668.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102540.P12409149115680564712

`A000040(A118499(n+1))`
-/

namespace A102540.P12409149115680564712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A118499 (n + 1)).toNat

end

end A102540.P12409149115680564712

noncomputable section

/-- A102540: Primes that are not Chen primes (see A109611).

Offset 1, canonical program `A102540.P12409149115680564712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5615 terms. -/
def A102540 (n : ℕ) : ℤ :=
  A102540.P12409149115680564712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5615 terms. -/
def A102540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102548.P7683038375054225144

`∑[A057427(A035184(n+1))]`
-/

namespace A102548.P7683038375054225144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A035184 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A102548.P7683038375054225144

noncomputable section

/-- A102548: Number of positive integers <= n that are expressible in the form u^2+v^2, with u and v integers.

Offset 1, canonical program `A102548.P7683038375054225144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102548 (n : ℕ) : ℤ :=
  A102548.P7683038375054225144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A102548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102699.P1856221950307135282

`A210736(n)+A206603(n)`
-/

namespace A102699.P1856221950307135282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 n + A206603 n

end

end A102699.P1856221950307135282

noncomputable section

/-- A102699: Number of strings of length n, using as symbols numbers from the set {1, 2, ..., n}, in which consecutive symbols differ by exactly 1.

Offset 0, canonical program `A102699.P1856221950307135282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A102699 (n : ℕ) : ℤ :=
  A102699.P1856221950307135282.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A102699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102770.P14397254692394995982

`A023515(n+3)/2`
-/

namespace A102770.P14397254692394995982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023515 (n + 3) : ℚ) / 2

end

end A102770.P14397254692394995982

noncomputable section

/-- A102770: (p*q - 1)/2 where p and q are consecutive odd primes.

Offset 1, canonical program `A102770.P14397254692394995982`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023515, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A102770 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A102770.P14397254692394995982.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023515, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A102770.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A103973.P3322991728647571882

`A060546(n)*A089849(n)`
-/

namespace A103973.P3322991728647571882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n * A089849 n

end

end A103973.P3322991728647571882

noncomputable section

/-- A103973: Expansion of (sqrt(1-8*x^2)+8*x^2+2*x-1)/(2*x*sqrt(1-8*x^2)).

Offset 0, canonical program `A103973.P3322991728647571882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 226 terms. -/
def A103973 (n : ℕ) : ℤ :=
  A103973.P3322991728647571882.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 226 terms. -/
def A103973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A103978.P10574377061937498485

`A056449(n)*A089849(n)`
-/

namespace A103978.P10574377061937498485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056449 n * A089849 n

end

end A103978.P10574377061937498485

noncomputable section

/-- A103978: Expansion of (sqrt(1-12*x^2)+12*x^2+2*x-1)/(2*x*sqrt(1-12*x^2)).

Offset 0, canonical program `A103978.P10574377061937498485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A103978 (n : ℕ) : ℤ :=
  A103978.P10574377061937498485.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A103978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104130.P14073346175180825314

`∩[A101472(n+1), A008592(n)]`
-/

namespace A104130.P14073346175180825314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A104130.P14073346175180825314

noncomputable section

/-- A104130: Numbers n such that n33 is prime and n is a multiple of ten.

Offset 1, canonical program `A104130.P14073346175180825314`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 992 terms. -/
def A104130 (n : ℕ) : ℤ :=
  (A104130.P14073346175180825314.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 992 terms. -/
def A104130.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A104481.P11972793429433204995

`A180304(n+1)/(n+1)-1`
-/

namespace A104481.P11972793429433204995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180304 (n + 1) : ℚ) / (n + 1 : ℚ) - 1

end

end A104481.P11972793429433204995

noncomputable section

/-- A104481: Bisection of A104477.

Offset 1, canonical program `A104481.P11972793429433204995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104481 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A104481.P11972793429433204995.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104481.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104626.P8849892008519993134

`record[A005248(A145677(n))+A004736(n+1)]`
-/

namespace A104626.P8849892008519993134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 (A145677 n).toNat + A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A104626.P8849892008519993134

noncomputable section

/-- A104626: Numbers having three 1's in their base-phi representation.

Offset 1, canonical program `A104626.P8849892008519993134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A104626 (n : ℕ) : ℤ :=
  A104626.P8849892008519993134.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A104626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104768.P16790131426723885557

`4*A008441(n²+1)`
-/

namespace A104768.P16790131426723885557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A008441 (n ^ 2 + 1)

end

end A104768.P16790131426723885557

noncomputable section

/-- A104768: Number of matrices G with entries in Z satisfying G^2=G+1 and having the form 2G=[1+p q-2n | q+2n 1-p].

Offset 0, canonical program `A104768.P16790131426723885557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A104768 (n : ℕ) : ℤ :=
  A104768.P16790131426723885557.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A104768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104860.P17528912676967032139

`A151800(p?[abs(xor(n, -2))]+1+n)`
-/

namespace A104860.P17528912676967032139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 + (n : ℤ)).toNat

end

end A104860.P17528912676967032139

noncomputable section

/-- A104860: Prime next to (n + n-th prime).

Offset 1, canonical program `A104860.P17528912676967032139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8818 terms. -/
def A104860 (n : ℕ) : ℤ :=
  A104860.P17528912676967032139.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8818 terms. -/
def A104860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104895.P16075429497420938870

`-A065620(n)`
-/

namespace A104895.P16075429497420938870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A065620 n

end

end A104895.P16075429497420938870

noncomputable section

/-- A104895: a(0)=0; thereafter a(2n) = -2*a(n), a(2n+1) = 2*a(n) - 1.

Offset 0, canonical program `A104895.P16075429497420938870`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065620, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104895 (n : ℕ) : ℤ :=
  A104895.P16075429497420938870.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065620, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A104895.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A105149.P9840650363083447811

`Δ[A000720(A151800(floor(n²/2)))]`
-/

namespace A105149.P9840650363083447811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A151800 ⌊(n ^ 2 : ℚ) / 2⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A105149.P9840650363083447811

noncomputable section

/-- A105149: Number of even semiprimes k such that n^2 < k <= (n+1)^2.

Offset 0, canonical program `A105149.P9840650363083447811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A105149 (n : ℕ) : ℤ :=
  A105149.P9840650363083447811.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A105149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105760.P15649417677939537676

`floor(A086304(n+1)/2)`
-/

namespace A105760.P15649417677939537676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A086304 (n + 1) : ℚ) / 2⌋

end

end A105760.P15649417677939537676

noncomputable section

/-- A105760: Nonnegative numbers k such that 2k+7 is prime.

Offset 1, canonical program `A105760.P15649417677939537676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105760 (n : ℕ) : ℤ :=
  A105760.P15649417677939537676.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105773.P5284159350981166347

`A108727(n+3)-6`
-/

namespace A105773.P5284159350981166347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108727 (n + 3) - 6

end

end A105773.P5284159350981166347

noncomputable section

/-- A105773: Numbers n such that 11*n + 97 is prime.

Offset 1, canonical program `A105773.P5284159350981166347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A105773 (n : ℕ) : ℤ :=
  A105773.P5284159350981166347.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A105773.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106069.P16981114974258630937

`∩[A023210(n+1), A023229(n+1)]`
-/

namespace A106069.P16981114974258630937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106069.P16981114974258630937

noncomputable section

/-- A106069: Primes p such that 3*p + 8 and 8*p + 3 are primes.

Offset 1, canonical program `A106069.P16981114974258630937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2637 terms. -/
def A106069 (n : ℕ) : ℤ :=
  (A106069.P16981114974258630937.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2637 terms. -/
def A106069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106079.P250417658828765197

`∩[A023219(n+1), A023221(n+1)]`
-/

namespace A106079.P250417658828765197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106079.P250417658828765197

noncomputable section

/-- A106079: Primes p such that 5*p + 6 and 6*p + 5 are primes.

Offset 1, canonical program `A106079.P250417658828765197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2671 terms. -/
def A106079 (n : ℕ) : ℤ :=
  (A106079.P250417658828765197.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2671 terms. -/
def A106079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106086.P12121000121007339975

`∩[A023206(n+1), A023223(n+1)]`
-/

namespace A106086.P12121000121007339975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106086.P12121000121007339975

noncomputable section

/-- A106086: Primes p such that 7*p + 2 and 2*p + 7 are primes.

Offset 1, canonical program `A106086.P12121000121007339975`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2061 terms. -/
def A106086 (n : ℕ) : ℤ :=
  (A106086.P12121000121007339975.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2061 terms. -/
def A106086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106836.P17238804329404313382

`A091067(n+1)+1-A060833(n+1)`
-/

namespace A106836.P17238804329404313382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091067 (n + 1) + (1 - A060833 (n + 1))

end

end A106836.P17238804329404313382

noncomputable section

/-- A106836: First differences of A060833 and (from a(2) onward) also of A091067 and A255068.

Offset 1, canonical program `A106836.P17238804329404313382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106836 (n : ℕ) : ℤ :=
  A106836.P17238804329404313382.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106838.P13945628720281591576

`8*A091067(n+1)-2`
-/

namespace A106838.P13945628720281591576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A091067 (n + 1) - 2

end

end A106838.P13945628720281591576

noncomputable section

/-- A106838: Numbers m such that m, m+1 and m+2 have odd part of the form 4*k+3.

Offset 1, canonical program `A106838.P13945628720281591576`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091067, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A106838 (n : ℕ) : ℤ :=
  A106838.P13945628720281591576.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091067, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A106838.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A107044.P8623084784960979862

`A003983(n+1)!`
-/

namespace A107044.P8623084784960979862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A003983 (n + 1)).toNat

end

end A107044.P8623084784960979862

noncomputable section

/-- A107044: A symmetric factorial triangle, read by rows: T(n,k) = min(k,n-k)!; n>=2, 1<=k<=n-1.

Offset 2, canonical program `A107044.P8623084784960979862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9660 terms. -/
def A107044 (n : ℕ) : ℤ :=
  (A107044.P8623084784960979862.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9660 terms. -/
def A107044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107758.P5135231134874170272

`∑{d}[n+1, A363289(#)]`
-/

namespace A107758.P5135231134874170272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A363289 d

end

end A107758.P5135231134874170272

noncomputable section

/-- A107758: (+2)Sigma(n): If n = Product p_i^r_i then a(n) = Product (2 + Sum p_i^s_i, s_i=1 to r_i) = Product (1 + (p_i^(r_i+1)-1)/(p_i-1)), a(1) = 1.

Offset 1, canonical program `A107758.P5135231134874170272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107758 (n : ℕ) : ℤ :=
  A107758.P5135231134874170272.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107986.P13375461098850866248

`A067774(n+1)+2`
-/

namespace A107986.P13375461098850866248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067774 (n + 1) + 2

end

end A107986.P13375461098850866248

noncomputable section

/-- A107986: Composite numbers of the form p+2 where p is prime.

Offset 1, canonical program `A107986.P13375461098850866248`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067774, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107986 (n : ℕ) : ℤ :=
  A107986.P13375461098850866248.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067774, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A107986.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A108081.P10199581490510874834

`A028329(n)-A268407(n)`
-/

namespace A108081.P10199581490510874834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028329 n - A268407 n

end

end A108081.P10199581490510874834

noncomputable section

/-- A108081: a(n) = Sum_{i=0..n} binomial(2*n-i, n+i).

Offset 0, canonical program `A108081.P10199581490510874834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A108081 (n : ℕ) : ℤ :=
  A108081.P10199581490510874834.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A108081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109262.P3635105755243385556

`A268407(n)-A081696(n)`
-/

namespace A109262.P3635105755243385556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268407 n - A081696 n

end

end A109262.P3635105755243385556

noncomputable section

/-- A109262: A Catalan transform of the Fibonacci numbers.

Offset 0, canonical program `A109262.P3635105755243385556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A109262 (n : ℕ) : ℤ :=
  A109262.P3635105755243385556.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A109262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110184.P13079875143077863507

`A001109(n)+2*A110127(n)`
-/

namespace A110184.P13079875143077863507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n + 2 * A110127 n

end

end A110184.P13079875143077863507

noncomputable section

/-- A110184: Number of (1,1)-steps on the lines y=x, y=x+1 and y=x-1 in all Delannoy paths of length n.

Offset 0, canonical program `A110184.P13079875143077863507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A110184 (n : ℕ) : ℤ :=
  A110184.P13079875143077863507.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A110184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110292.P9374144780505500195

`Δ[-(A099039(n)*A130321(n))]`
-/

namespace A110292.P9374144780505500195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A099039 n * A130321 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A110292.P9374144780505500195

noncomputable section

/-- A110292: Riordan array (1-u, u) where u=(-1 + sqrt(1+8*x))/4.

Offset 0, canonical program `A110292.P9374144780505500195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6671 terms. -/
def A110292 (n : ℕ) : ℤ :=
  A110292.P9374144780505500195.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6671 terms. -/
def A110292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110314.P17590807438528676276

`A094441(n)*A141679(n+1)`
-/

namespace A110314.P17590807438528676276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094441 n * A141679 (n + 1)

end

end A110314.P17590807438528676276

noncomputable section

/-- A110314: Inverse of number triangle related to Fibonacci numbers.

Offset 0, canonical program `A110314.P17590807438528676276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110314 (n : ℕ) : ℤ :=
  A110314.P17590807438528676276.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110952.P12434457606571142706

`A061928(n+1)+1-A144394(n+4)`
-/

namespace A110952.P12434457606571142706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061928 (n + 1) + (1 - A144394 (n + 4))

end

end A110952.P12434457606571142706

noncomputable section

/-- A110952: Triangle read by rows: T(n,k) = number of permutations of [n] where the first increasing run has length k and the last increasing run has length n-k-1, 0<k<n-1.

Offset 3, canonical program `A110952.P12434457606571142706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4753 terms. -/
def A110952 (n : ℕ) : ℤ :=
  A110952.P12434457606571142706.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4753 terms. -/
def A110952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111526.P13173134436555251813

`lcm(A105438(n), A369736(n))`
-/

namespace A111526.P13173134436555251813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A105438 n) (A369736 n)

end

end A111526.P13173134436555251813

noncomputable section

/-- A111526: Number triangle T(n,k)=C((n+k)/2,k)(n+1)(1+(-1)^(n-k))/(2(k+1)); T(n,k)=(-1)^((n-k)/2)*A053120(n+1,k+1)/2^k; Riordan array ((1+x^2)/(1-x^2)^2,x/(1-x^2)).

Offset 0, canonical program `A111526.P13173134436555251813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111526 (n : ℕ) : ℤ :=
  (A111526.P13173134436555251813.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111693.P13823889226538534485

`or(1, A007491(Δ[n²]))`
-/

namespace A111693.P13823889226538534485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A007491 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A111693.P13823889226538534485

noncomputable section

/-- A111693: a(n) = nextprime((2*n-1)^2) for n >= 2, a(1) = 3.

Offset 1, canonical program `A111693.P13823889226538534485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A111693 (n : ℕ) : ℤ :=
  A111693.P13823889226538534485.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A111693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111739.P2337404656181389244

`A151800(A272470(n+1))-A272470(n+1)`
-/

namespace A111739.P2337404656181389244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A272470 (n + 1)).toNat - A272470 (n + 1)

end

end A111739.P2337404656181389244

noncomputable section

/-- A111739: Distance between k*(n-th prime) and next prime, k=7 case.

Offset 1, canonical program `A111739.P2337404656181389244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1676 terms. -/
def A111739 (n : ℕ) : ℤ :=
  A111739.P2337404656181389244.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1676 terms. -/
def A111739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111973.P15413486378653993803

`abs(A133691(n+1))`
-/

namespace A111973.P15413486378653993803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133691 (n + 1)|

end

end A111973.P15413486378653993803

noncomputable section

/-- A111973: Expansion of ((eta(q^2)eta(q^4))^6/(eta(q)eta(q^8))^4-1)/4 in powers of q.

Offset 1, canonical program `A111973.P15413486378653993803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111973 (n : ℕ) : ℤ :=
  A111973.P15413486378653993803.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112478.P3456292499635885197

`(-1)^n*A085403(n)`
-/

namespace A112478.P3456292499635885197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A085403 n

end

end A112478.P3456292499635885197

noncomputable section

/-- A112478: Expansion of (1 + x + sqrt(1 + 6*x + x^2))/2.

Offset 0, canonical program `A112478.P3456292499635885197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A112478 (n : ℕ) : ℤ :=
  A112478.P3456292499635885197.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A112478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112552.P47081054228314261

`A030111(n+1)*A369736(n)`
-/

namespace A112552.P47081054228314261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030111 (n + 1) * A369736 n

end

end A112552.P47081054228314261

noncomputable section

/-- A112552: A modified Chebyshev transform of the second kind.

Offset 0, canonical program `A112552.P47081054228314261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112552 (n : ℕ) : ℤ :=
  A112552.P47081054228314261.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112606.P17885378761059741003

`A112604(2*n)`
-/

namespace A112606.P17885378761059741003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112604 (2 * n)

end

end A112606.P17885378761059741003

noncomputable section

/-- A112606: Number of representations of n as a sum of six times a square and a triangular number.

Offset 0, canonical program `A112606.P17885378761059741003`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112604, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112606 (n : ℕ) : ℤ :=
  A112606.P17885378761059741003.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112604, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A112606.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A112607.P8830648316655267802

`A112604(2*n+3)/2`
-/

namespace A112607.P8830648316655267802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112604 (2 * n + 3) : ℚ) / 2

end

end A112607.P8830648316655267802

noncomputable section

/-- A112607: Number of representations of n as a sum of a triangular number and twelve times a triangular number.

Offset 0, canonical program `A112607.P8830648316655267802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A112607 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A112607.P8830648316655267802.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A112607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113125.P11831813501655205056

`gcd(A127648(n), A153869(n+1))`
-/

namespace A113125.P11831813501655205056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127648 n) (A153869 (n + 1))

end

end A113125.P11831813501655205056

noncomputable section

/-- A113125: A simple tridiagonal matrix.

Offset 0, canonical program `A113125.P11831813501655205056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113125 (n : ℕ) : ℤ :=
  (A113125.P11831813501655205056.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113407.P13871132972543493262

`A008441(2*n)`
-/

namespace A113407.P13871132972543493262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 (2 * n)

end

end A113407.P13871132972543493262

noncomputable section

/-- A113407: Expansion of psi(x) * phi(x^2) in powers of x where psi(), phi() are Ramanujan theta functions.

Offset 0, canonical program `A113407.P13871132972543493262`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113407 (n : ℕ) : ℤ :=
  A113407.P13871132972543493262.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113407.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A113415.P5418094861117166692

`A349371(n+1)/A001511(n+1)`
-/

namespace A113415.P5418094861117166692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349371 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

end

end A113415.P5418094861117166692

noncomputable section

/-- A113415: Expansion of Sum_{k>0} x^k/(1-x^(2k))^2.

Offset 1, canonical program `A113415.P5418094861117166692`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349371, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113415 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A113415.P5418094861117166692.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349371, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113415.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A113486.P8546128254641026094

`A113166(n+1)-A000045(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A113486.P8546128254641026094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113166 (n + 1) - A000045 n

end

end A113486.P8546128254641026094

noncomputable section

/-- A113486: a(n) = A113166(n) - Fibonacci(n-1), where Fibonacci(n) = A000045(n).

Offset 1, canonical program `A113486.P8546128254641026094`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113166, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113486 (n : ℕ) : ℤ :=
  A113486.P8546128254641026094.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113166, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113486.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A113581.P305408065948707674

`∏{digits}[n, A113580(#)]`
-/

namespace A113581.P305408065948707674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A113580 x).prod

end

end A113581.P305408065948707674

noncomputable section

/-- A113581: Define prime(0) = 1; then a(n) = product prime(d), where d ranges over all the decimal digits of n.

Offset 0, canonical program `A113581.P305408065948707674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A113581 (n : ℕ) : ℤ :=
  A113581.P305408065948707674.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A113581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113704.P2167875100220696113

`A000007(A372727(n))`
-/

namespace A113704.P2167875100220696113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A372727 n).toNat

end

end A113704.P2167875100220696113

noncomputable section

/-- A113704: Triangle read by rows. The indicator function for divisibility.

Offset 0, canonical program `A113704.P2167875100220696113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113704 (n : ℕ) : ℤ :=
  A113704.P2167875100220696113.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114216.P17343794217474854680

`A000265(a(n-1)+sqrt(A280076(n+1)))` with `a(0)=0`
-/

namespace A114216.P17343794217474854680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000265 (SequenceMachineLib.roundAway ((a (n - 1) : ℝ) + Real.sqrt (A280076 (n + 1) : ℝ))).toNat

end

end A114216.P17343794217474854680

noncomputable section

/-- A114216: a(0)=0; thereafter a(n) = largest odd divisor of a(n-1) + prime(n).

Offset 0, canonical program `A114216.P17343794217474854680`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5167 terms. -/
def A114216 (n : ℕ) : ℤ :=
  A114216.P17343794217474854680.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5167 terms. -/
def A114216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114441.P1366112869479398456

`record[A025480(A114634(n+1))]`
-/

namespace A114441.P1366112869479398456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A114634 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A114441.P1366112869479398456

noncomputable section

/-- A114441: Indices of 3-almost prime pentagonal numbers.

Offset 1, canonical program `A114441.P1366112869479398456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 796 terms. -/
def A114441 (n : ℕ) : ℤ :=
  A114441.P1366112869479398456.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 796 terms. -/
def A114441.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A114751.P5114552108412707646

`A094727(A056011(n+1))`
-/

namespace A114751.P5114552108412707646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (A056011 (n + 1)).toNat

end

end A114751.P5114552108412707646

noncomputable section

/-- A114751: Triangle where row n contains the n consecutive numbers from n to 2n-1, in ascending order if n is odd, else in descending order; listed by rows.

Offset 1, canonical program `A114751.P5114552108412707646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114751 (n : ℕ) : ℤ :=
  A114751.P5114552108412707646.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114871.P5701746807057101

`lt[acot(1), A134269(n+1)]+1`
-/

namespace A114871.P5701746807057101
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (1 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134269 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A114871.P5701746807057101

noncomputable section

/-- A114871: Numbers of the form (p-1)p^k (where p is a prime and k>=0) in ascending order.

Offset 1, canonical program `A114871.P5701746807057101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5198 terms. -/
def A114871 (n : ℕ) : ℤ :=
  (A114871.P5701746807057101.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5198 terms. -/
def A114871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115001.P8944325379710931620

`A321879(n+4)/24`
-/

namespace A115001.P8944325379710931620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321879 (n + 4) : ℚ) / 24

end

end A115001.P8944325379710931620

noncomputable section

/-- A115001: a(n) = Sum_{k=1..n} J_2(k)/24.

Offset 4, canonical program `A115001.P8944325379710931620`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321879, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115001 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A115001.P8944325379710931620.a (n - 4))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A321879, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A115001.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A115061.P11822645177236110390

`A162345(n+1)+A000007(n)`
-/

namespace A115061.P11822645177236110390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162345 (n + 1) + A000007 n

end

end A115061.P11822645177236110390

noncomputable section

/-- A115061: a(n) is the number of occurrences of the n-th prime number in A051697.

Offset 1, canonical program `A115061.P11822645177236110390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115061 (n : ℕ) : ℤ :=
  A115061.P11822645177236110390.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A115282.P2219859297434796690

`A055264(A115281(n))`
-/

namespace A115282.P2219859297434796690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055264 (A115281 n).toNat

end

end A115282.P2219859297434796690

noncomputable section

/-- A115282: Correlation triangle for the sequence 3-2*0^n.

Offset 0, canonical program `A115282.P2219859297434796690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115282 (n : ℕ) : ℤ :=
  A115282.P2219859297434796690.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A115282.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A116974.P10406584669402570229

`record[A151800(A151800(n))-A227291(n+1)]`
-/

namespace A116974.P10406584669402570229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 n).toNat - A227291 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A116974.P10406584669402570229

noncomputable section

/-- A116974: Numbers n for which the sum of the proper divisors equals the product of the proper divisors.

Offset 1, canonical program `A116974.P10406584669402570229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9594 terms. -/
def A116974 (n : ℕ) : ℤ :=
  A116974.P10406584669402570229.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9594 terms. -/
def A116974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117184.P10036010839850409220

`gcd(A111527(A083920(n)), A111527(n))`
-/

namespace A117184.P10036010839850409220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A111527 (A083920 n).toNat) (A111527 n)

end

end A117184.P10036010839850409220

noncomputable section

/-- A117184: Riordan array ((1+x)c(x^2)/sqrt(1-4x^2),xc(x^2)), c(x) the g.f. of A000108.

Offset 0, canonical program `A117184.P10036010839850409220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117184 (n : ℕ) : ℤ :=
  (A117184.P10036010839850409220.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117372.P11884890092664752815

`(A117377(n)+A117362(n))/2`
-/

namespace A117372.P11884890092664752815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117377 n + A117362 n : ℚ) / 2

end

end A117372.P11884890092664752815

noncomputable section

/-- A117372: Riordan array (1-3x,x(1-x)).

Offset 0, canonical program `A117372.P11884890092664752815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117372 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A117372.P11884890092664752815.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117435.P11210057758145487531

`A038207(n)*A369736(n)`
-/

namespace A117435.P11210057758145487531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n * A369736 n

end

end A117435.P11210057758145487531

noncomputable section

/-- A117435: Triangle related to exp(x)*cos(2*x).

Offset 0, canonical program `A117435.P11210057758145487531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A117435 (n : ℕ) : ℤ :=
  A117435.P11210057758145487531.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A117435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117670.P8467400439163998987

`A074909(n+1)+A054143(n)-1`
-/

namespace A117670.P8467400439163998987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) + (A054143 n - 1)

end

end A117670.P8467400439163998987

noncomputable section

/-- A117670: Triangle read by rows: partial sums of the Pascal triangle minus 1.

Offset 1, canonical program `A117670.P8467400439163998987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117670 (n : ℕ) : ℤ :=
  A117670.P8467400439163998987.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117943.P17059869879955634528

`a(A025480(A131452(n)))` with `a(0)=0, a(1)=1`
-/

namespace A117943.P17059869879955634528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A025480 (A131452 n).toNat).toNat

end

end A117943.P17059869879955634528

noncomputable section

/-- A117943: a(1) = 0, a(2) = 1; a(3n) = a(n); if every third term (a(3), a(6), a(9), ...) is deleted, this gives back the original sequence.

Offset 1, canonical program `A117943.P17059869879955634528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7501 terms. -/
def A117943 (n : ℕ) : ℤ :=
  (A117943.P17059869879955634528.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7501 terms. -/
def A117943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118144.P2885920573460353147

`∑{e}[A118534(n+1), #]`
-/

namespace A118144.P2885920573460353147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118534 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A118144.P2885920573460353147

noncomputable section

/-- A118144: Numbers of prime factors of l, where l is defined in A118534.

Offset 1, canonical program `A118144.P2885920573460353147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118144 (n : ℕ) : ℤ :=
  (A118144.P2885920573460353147.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118360.P8984286927158600420

`A057889(a(n-1))+2` with `a(0)=1`
-/

namespace A118360.P8984286927158600420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A057889 (a (n - 1)).toNat + 2

end

end A118360.P8984286927158600420

noncomputable section

/-- A118360: Start with 1; repeatedly reverse the digits when the number is written in binary and add 2 to get the next term.

Offset 1, canonical program `A118360.P8984286927158600420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2979 terms. -/
def A118360 (n : ℕ) : ℤ :=
  A118360.P8984286927158600420.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2979 terms. -/
def A118360.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118753.P10937995710031611133

`A151800(4*n)`
-/

namespace A118753.P10937995710031611133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (4 * n)

end

end A118753.P10937995710031611133

noncomputable section

/-- A118753: First prime after 4n. Smallest prime >= 4*n. Bisection of A060264.

Offset 0, canonical program `A118753.P10937995710031611133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118753 (n : ℕ) : ℤ :=
  A118753.P10937995710031611133.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A118753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119257.P4892958941628964632

`A151800(a(n-1))+1-A175851(n+1)` with `a(0)=1`
-/

namespace A119257.P4892958941628964632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151800 (a (n - 1)).toNat + (1 - A175851 (n + 1))

end

end A119257.P4892958941628964632

noncomputable section

/-- A119257: A permutation of the positive integers formed by reversing the order of the composites within each run of composites (1 and primes are left alone).

Offset 1, canonical program `A119257.P4892958941628964632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119257 (n : ℕ) : ℤ :=
  A119257.P4892958941628964632.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119596.P748871429982742833

`∩[A031928(n+1), A142055(n+1)]`
-/

namespace A119596.P748871429982742833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A119596.P748871429982742833

noncomputable section

/-- A119596: Primes for which the weight as defined in A117078 is 11 and the gap as defined in A001223 is 10.

Offset 1, canonical program `A119596.P748871429982742833`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1038 terms. -/
def A119596 (n : ℕ) : ℤ :=
  (A119596.P748871429982742833.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1038 terms. -/
def A119596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119608.P13313804277254006300

`abs(A065620(A280995(n)))`
-/

namespace A119608.P13313804277254006300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A065620 (A280995 n).toNat|

end

end A119608.P13313804277254006300

noncomputable section

/-- A119608: Let b(1)=0, b(2)= 1. b(2^m +k) = (b(2^m+1-k) + b(k))/2, 1 <= k <= 2^m, m >= 0. a(n) is numerator of b(n).

Offset 1, canonical program `A119608.P13313804277254006300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119608 (n : ℕ) : ℤ :=
  A119608.P13313804277254006300.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119636.P13421198858277065567

`A068553(n+1)*A120114(n)`
-/

namespace A119636.P13421198858277065567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068553 (n + 1) * A120114 n

end

end A119636.P13421198858277065567

noncomputable section

/-- A119636: a(n) = lcm(1,...,2n+4)/((n+1)*binomial(2n+2, n+1)).

Offset 0, canonical program `A119636.P13421198858277065567`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 374 terms. -/
def A119636 (n : ℕ) : ℤ :=
  A119636.P13421198858277065567.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 374 terms. -/
def A119636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119656.P1920939192166810603

`A128059(A055670(n+1))*A128059(A072055(n+1))`
-/

namespace A119656.P1920939192166810603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 (A055670 (n + 1)).toNat * A128059 (A072055 (n + 1)).toNat

end

end A119656.P1920939192166810603

noncomputable section

/-- A119656: Denominator of BernoulliB(4*prime(n))/30.

Offset 1, canonical program `A119656.P1920939192166810603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 368 terms. -/
def A119656 (n : ℕ) : ℤ :=
  A119656.P1920939192166810603.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 368 terms. -/
def A119656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119899.P6129127652273095795

`eq[1, A353669(n+1)]+1`
-/

namespace A119899.P6129127652273095795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353669 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A119899.P6129127652273095795

noncomputable section

/-- A119899: Integers i such that bigomega(i) (A001222) and tau(i) (A000005) are both even.

Offset 1, canonical program `A119899.P6129127652273095795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119899 (n : ℕ) : ℤ :=
  (A119899.P6129127652273095795.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A119899.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A120350.P15236837773027403607

`∩[A033950(n+1), A120351(n+1)]`
-/

namespace A120350.P15236837773027403607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A120350.P15236837773027403607

noncomputable section

/-- A120350: Refactorable numbers k such that the number of odd divisors and the number of even divisors of k are both divisors of k.

Offset 1, canonical program `A120350.P15236837773027403607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 809 terms. -/
def A120350 (n : ℕ) : ℤ :=
  (A120350.P15236837773027403607.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 809 terms. -/
def A120350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120890.P8934076253784631552

`∑[2*char[∑[A024361(2*n+1)]]]+1`
-/

namespace A120890.P8934076253784631552
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A120890.P8934076253784631552

noncomputable section

/-- A120890: Ordered odd leg of primitive Pythagorean triangles.

Offset 1, canonical program `A120890.P8934076253784631552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120890 (n : ℕ) : ℤ :=
  (A120890.P8934076253784631552.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A120891.P14989150919995251867

`A024361(Δ[n²])`
-/

namespace A120891.P14989150919995251867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A120891.P14989150919995251867

noncomputable section

/-- A120891: Number of primitive Pythagorean triangles with odd leg 2n-1.

Offset 1, canonical program `A120891.P14989150919995251867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120891 (n : ℕ) : ℤ :=
  A120891.P14989150919995251867.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A120891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121363.P18122927571743324693

`A008441(n)*A049347(n)`
-/

namespace A121363.P18122927571743324693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 n * A049347 n

end

end A121363.P18122927571743324693

noncomputable section

/-- A121363: Expansion of q^(-1/4)(eta(q)*eta(q^6)*eta(q^9)/eta(q^3))^2/(eta(q^2)eta(q^18)) in powers of q.

Offset 0, canonical program `A121363.P18122927571743324693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121363 (n : ℕ) : ℤ :=
  A121363.P18122927571743324693.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121762.P7258193871153872247

`p?[A107472(n+1)-2]`
-/

namespace A121762.P7258193871153872247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107472 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A121762.P7258193871153872247

noncomputable section

/-- A121762: Single (or isolated or non-twin) primes of form 6n-1.

Offset 1, canonical program `A121762.P7258193871153872247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5029 terms. -/
def A121762 (n : ℕ) : ℤ :=
  A121762.P7258193871153872247.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5029 terms. -/
def A121762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121764.P18179720075456038304

`p?[A107472(n+1)+2]`
-/

namespace A121764.P18179720075456038304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107472 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A121764.P18179720075456038304

noncomputable section

/-- A121764: Single (or isolated or non-twin) primes of form 6n + 1.

Offset 1, canonical program `A121764.P18179720075456038304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4971 terms. -/
def A121764 (n : ℕ) : ℤ :=
  A121764.P18179720075456038304.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4971 terms. -/
def A121764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122440.P10548338091317533155

`Δ[-A099039(n)]*A130321(n)`
-/

namespace A122440.P10548338091317533155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A099039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A130321 n

end

end A122440.P10548338091317533155

noncomputable section

/-- A122440: Riordan array ((3-sqrt(1+8x))/2, (sqrt(1+8x)-1)/4).

Offset 0, canonical program `A122440.P10548338091317533155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6557 terms. -/
def A122440 (n : ℕ) : ℤ :=
  A122440.P10548338091317533155.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6557 terms. -/
def A122440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122933.P6364578972157114850

`A000720(A122516(n+1))`
-/

namespace A122933.P6364578972157114850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A122516 (n + 1)).toNat

end

end A122933.P6364578972157114850

noncomputable section

/-- A122933: a(n)-th prime is equal to the sum_{i=1..k} pi(i) for some k (cf. A000720).

Offset 1, canonical program `A122933.P6364578972157114850`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122516, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122933 (n : ℕ) : ℤ :=
  A122933.P6364578972157114850.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122516, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122933.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A123160.P8140901609317347605

`A007318(n)*A059481(n)`
-/

namespace A123160.P8140901609317347605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A059481 n

end

end A123160.P8140901609317347605

noncomputable section

/-- A123160: Triangle read by rows: T(n,k) = n!*(n+k-1)!/((n-k)!*(n-1)!*(k!)^2) for 0 <= k <= n, with T(0,0) = 1.

Offset 0, canonical program `A123160.P8140901609317347605`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A123160 (n : ℕ) : ℤ :=
  A123160.P8140901609317347605.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A123160.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A123926.P8154078832846072749

`A154282(A001749(n+1))+A065331(A179931(n+1))`
-/

namespace A123926.P8154078832846072749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154282 (A001749 (n + 1)).toNat + A065331 (A179931 (n + 1)).toNat

end

end A123926.P8154078832846072749

noncomputable section

/-- A123926: Greatest common divisor of sigma_k(n) for all k >= 1.

Offset 1, canonical program `A123926.P8154078832846072749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 367 terms. -/
def A123926 (n : ℕ) : ℤ :=
  A123926.P8154078832846072749.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 367 terms. -/
def A123926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123978.P13458837915136754456

`∩[A139405(n+1), A139407(n+1)]`
-/

namespace A123978.P13458837915136754456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123978.P13458837915136754456

noncomputable section

/-- A123978: Numbers k for which 8*k+1, 8*k+3 and 8*k+7 are primes.

Offset 1, canonical program `A123978.P13458837915136754456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 792 terms. -/
def A123978 (n : ℕ) : ℤ :=
  (A123978.P13458837915136754456.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 792 terms. -/
def A123978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124320.P4874340076457130803

`A059481(n)*A233543(n)`
-/

namespace A124320.P4874340076457130803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 n * A233543 n

end

end A124320.P4874340076457130803

noncomputable section

/-- A124320: Triangle read by rows: T(n,k) = k!*binomial(n+k-1,k) (n >= 0, 0 <= k <= n), rising factorial power, Pochhammer symbol.

Offset 0, canonical program `A124320.P4874340076457130803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1484 terms. -/
def A124320 (n : ℕ) : ℤ :=
  A124320.P4874340076457130803.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1484 terms. -/
def A124320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125079.P1710399594586959767

`A035154(2*n+1)`
-/

namespace A125079.P1710399594586959767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035154 (2 * n + 1)

end

end A125079.P1710399594586959767

noncomputable section

/-- A125079: Excess of number of divisors of 2n+1 of form 12k+1, 12k+5 over those of form 12k+7, 12k+11.

Offset 0, canonical program `A125079.P1710399594586959767`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035154, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125079 (n : ℕ) : ℤ :=
  A125079.P1710399594586959767.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035154, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A125079.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A125093.P12968392047181113007

`A054525(n+1)*A002024(n+1)`
-/

namespace A125093.P12968392047181113007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A002024 (n + 1)

end

end A125093.P12968392047181113007

noncomputable section

/-- A125093: Triangle T(n,k) = n*A054525(n,k) read by rows.

Offset 1, canonical program `A125093.P12968392047181113007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125093 (n : ℕ) : ℤ :=
  A125093.P12968392047181113007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125166.P14270815675974663489

`A090850(A279891(n)+5+n)`
-/

namespace A125166.P14270815675974663489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090850 (A279891 n + 5 + (n : ℤ)).toNat

end

end A125166.P14270815675974663489

noncomputable section

/-- A125166: Triangle R(n,k), companion to A125165, left column n^3.

Offset 0, canonical program `A125166.P14270815675974663489`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9719 terms. -/
def A125166 (n : ℕ) : ℤ :=
  A125166.P14270815675974663489.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9719 terms. -/
def A125166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125232.P7385240608015978380

`2*A125165(n)-A104712(n+2)`
-/

namespace A125232.P7385240608015978380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125165 n - A104712 (n + 2)

end

end A125232.P7385240608015978380

noncomputable section

/-- A125232: Triangle T(n,k) read by rows: the (n-k)-th term of the k-fold iterated partial sum of the pentagonal numbers.

Offset 1, canonical program `A125232.P7385240608015978380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125232 (n : ℕ) : ℤ :=
  A125232.P7385240608015978380.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A125232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126015.P8104159376082709234

`A000032(n+1)/A061447(n+1)`
-/

namespace A126015.P8104159376082709234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (n + 1) : ℚ) / (A061447 (n + 1) : ℚ)

end

end A126015.P8104159376082709234

noncomputable section

/-- A126015: Lucas numbers divided by their primitive part.

Offset 1, canonical program `A126015.P8104159376082709234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A126015 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A126015.P8104159376082709234.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A126015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A126179.P4171578271051059811

`A027465(n)*A126324(A002260(n+1))`
-/

namespace A126179.P4171578271051059811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 n * A126324 (A002260 (n + 1)).toNat

end

end A126179.P4171578271051059811

noncomputable section

/-- A126179: Triangle read by rows: T(n,k) is number of hex trees with n edges and k branches (1 <= k <= n).

Offset 1, canonical program `A126179.P4171578271051059811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126179 (n : ℕ) : ℤ :=
  A126179.P4171578271051059811.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A126179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127013.P6102010931506344879

`A010783(n+1)*A113998(n+1)`
-/

namespace A127013.P6102010931506344879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (n + 1) * A113998 (n + 1)

end

end A127013.P6102010931506344879

noncomputable section

/-- A127013: Triangle read by rows: row reversal of A126988.

Offset 1, canonical program `A127013.P6102010931506344879`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127013 (n : ℕ) : ℤ :=
  A127013.P6102010931506344879.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127094.P8507406497036937056

`A004736(n+1)*A113998(n+1)`
-/

namespace A127094.P8507406497036937056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A113998 (n + 1)

end

end A127094.P8507406497036937056

noncomputable section

/-- A127094: Triangle, reversal of A127093.

Offset 1, canonical program `A127094.P8507406497036937056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127094 (n : ℕ) : ℤ :=
  A127094.P8507406497036937056.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127168.P12510765935863555111

`A010766(n+1)*A127170(n+1)`
-/

namespace A127168.P12510765935863555111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A127170 (n + 1)

end

end A127168.P12510765935863555111

noncomputable section

/-- A127168: Triangle read by rows: square of A126988.

Offset 0, canonical program `A127168.P12510765935863555111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127168 (n : ℕ) : ℤ :=
  A127168.P12510765935863555111.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127173.P17703908866789190861

`∑{d}[A126988(n+1), A007428(#)]`
-/

namespace A127173.P17703908866789190861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007428 d

end

end A127173.P17703908866789190861

noncomputable section

/-- A127173: T(n,k) = A007427(n/k) if k divides n, T(n,k) = 0 otherwise.

Offset 1, canonical program `A127173.P17703908866789190861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A127173 (n : ℕ) : ℤ :=
  A127173.P17703908866789190861.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A127173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127423.P11921174337747013078

`record[A248378(n)^A088705(n)]`
-/

namespace A127423.P11921174337747013078
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248378 n : ℚ) ^ (A088705 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127423.P11921174337747013078

noncomputable section

/-- A127423: a(1) = 1; for n > 1, a(n) = n concatenated with n - 1.

Offset 1, canonical program `A127423.P11921174337747013078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A127423 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A127423.P11921174337747013078.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A127423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127448.P10553008276063831497

`A002260(n+1)*A054525(n+1)`
-/

namespace A127448.P10553008276063831497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A054525 (n + 1)

end

end A127448.P10553008276063831497

noncomputable section

/-- A127448: Triangle T(n,k) read by rows: matrix product A054525 * A127648.

Offset 1, canonical program `A127448.P10553008276063831497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127448 (n : ℕ) : ℤ :=
  A127448.P10553008276063831497.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127569.P10157742646930506048

`A054525(n+1)*A127570(n+1)`
-/

namespace A127569.P10157742646930506048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A127570 (n + 1)

end

end A127569.P10157742646930506048

noncomputable section

/-- A127569: Triangle read by rows: product of the Mobius matrix A054525 by the diagonal matrix diag(A000203(n)).

Offset 1, canonical program `A127569.P10157742646930506048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127569 (n : ℕ) : ℤ :=
  A127569.P10157742646930506048.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127638.P2313957262884529139

`A037126(n+1)*A054525(n+1)`
-/

namespace A127638.P2313957262884529139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1) * A054525 (n + 1)

end

end A127638.P2313957262884529139

noncomputable section

/-- A127638: A054525 * A127640, where A127640 = infinite lower triangular matrix with the sequence of primes in the main diagonal and the rest zeros.

Offset 1, canonical program `A127638.P2313957262884529139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127638 (n : ℕ) : ℤ :=
  A127638.P2313957262884529139.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128184.P251226975296983160

`gcd(A114002(n), A176702(n+1))`
-/

namespace A128184.P251226975296983160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114002 n) (A176702 (n + 1))

end

end A128184.P251226975296983160

noncomputable section

/-- A128184: A051731 * A097806.

Offset 1, canonical program `A128184.P251226975296983160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128184 (n : ℕ) : ℤ :=
  (A128184.P251226975296983160.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128431.P14264031416913626474

`∑{d}[A127368(n+1), A007427(#)]`
-/

namespace A128431.P14264031416913626474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007427 d

end

end A128431.P14264031416913626474

noncomputable section

/-- A128431: Triangle read by rows: A054521 * A128407.

Offset 1, canonical program `A128431.P14264031416913626474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128431 (n : ℕ) : ℤ :=
  A128431.P14264031416913626474.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128584.P5689279512010966890

`A127368(n+1)+A054521(n+2)-A127368(n+2)`
-/

namespace A128584.P5689279512010966890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127368 (n + 1) + (A054521 (n + 2) - A127368 (n + 2))

end

end A128584.P5689279512010966890

noncomputable section

/-- A128584: A054521 * A128064 (unsigned).

Offset 1, canonical program `A128584.P5689279512010966890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A128584 (n : ℕ) : ℤ :=
  A128584.P5689279512010966890.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A128584.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A128715.P7289910566905276765

`A103516(n)+A014473(n)`
-/

namespace A128715.P7289910566905276765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103516 n + A014473 n

end

end A128715.P7289910566905276765

noncomputable section

/-- A128715: A131830 + A103451 - A000012 as infinite lower triangular matrices.

Offset 0, canonical program `A128715.P7289910566905276765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128715 (n : ℕ) : ℤ :=
  A128715.P7289910566905276765.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129139.P5076504983765274251

`A078401(A000217(n)+A000005(n+1))`
-/

namespace A129139.P5076504983765274251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078401 (A000217 n + A000005 (n + 1)).toNat

end

end A129139.P5076504983765274251

noncomputable section

/-- A129139: a(n) = number of positive integers which are coprime to n and are <= d(n), where d(n) = A000005(n).

Offset 1, canonical program `A129139.P5076504983765274251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A129139 (n : ℕ) : ℤ :=
  A129139.P5076504983765274251.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A129139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129146.P11255753064502351239

`A065091(n+1)-A071904(n+1)`
-/

namespace A129146.P11255753064502351239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A071904 (n + 1)

end

end A129146.P11255753064502351239

noncomputable section

/-- A129146: a(n) = n-th odd prime minus n-th odd composite number.

Offset 1, canonical program `A129146.P11255753064502351239`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071904, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129146 (n : ℕ) : ℤ :=
  A129146.P11255753064502351239.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071904, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129146.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129180.P7619671228952585693

`Δ[A001108(n)-A123164(n)]`
-/

namespace A129180.P7619671228952585693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001108 n - A123164 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A129180.P7619671228952585693

noncomputable section

/-- A129180: Total area below all Schroeder paths of semilength n.

Offset 0, canonical program `A129180.P7619671228952585693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A129180 (n : ℕ) : ℤ :=
  A129180.P7619671228952585693.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A129180.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A129451.P17433401477157295441

`A129449(3*n)`
-/

namespace A129451.P17433401477157295441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129449 (3 * n)

end

end A129451.P17433401477157295441

noncomputable section

/-- A129451: Expansion of f(-x, -x^3) f(-x, x^2) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A129451.P17433401477157295441`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129449, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129451 (n : ℕ) : ℤ :=
  A129451.P17433401477157295441.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129449, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129451.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129811.P9493245702118033988

`∩[A097957(n+1), A253970(n+1)]`
-/

namespace A129811.P9493245702118033988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A129811.P9493245702118033988

noncomputable section

/-- A129811: Lesser of consecutive prime pairs whose last digits differ by 4.

Offset 2, canonical program `A129811.P9493245702118033988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 536 terms. -/
def A129811 (n : ℕ) : ℤ :=
  (A129811.P9493245702118033988.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 536 terms. -/
def A129811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130020.P3122081554648920852

`2*A059481(n)-A046899(n)`
-/

namespace A130020.P3122081554648920852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059481 n - A046899 n

end

end A130020.P3122081554648920852

noncomputable section

/-- A130020: Triangle T(n,k), 0<=k<=n, read by rows given by [1,0,0,0,0,0,0,...] DELTA [0,1,1,1,1,1,1,...] where DELTA is the operator defined in A084938 .

Offset 0, canonical program `A130020.P3122081554648920852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130020 (n : ℕ) : ℤ :=
  A130020.P3122081554648920852.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130094.P893135603483082460

`∑{d}[A127093(n+1), A007428(#)]`
-/

namespace A130094.P893135603483082460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007428 d

end

end A130094.P893135603483082460

noncomputable section

/-- A130094: A051731 * an infinite lower triangular matrix with A007427 in the main diagonal.

Offset 1, canonical program `A130094.P893135603483082460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130094 (n : ℕ) : ℤ :=
  A130094.P893135603483082460.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130246.P8954244627215801184

`A130248(n+1)-A130241(n+1)+n`
-/

namespace A130246.P8954244627215801184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130248 (n + 1) - A130241 (n + 1) + (n : ℤ)

end

end A130246.P8954244627215801184

noncomputable section

/-- A130246: Partial sums of A130245.

Offset 0, canonical program `A130246.P8954244627215801184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130246 (n : ℕ) : ℤ :=
  A130246.P8954244627215801184.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130246.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A130477.P15688843570063760663

`and(-1, A092582(A038722(n+1)))`
-/

namespace A130477.P15688843570063760663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A092582 (A038722 (n + 1)).toNat)

end

end A130477.P15688843570063760663

noncomputable section

/-- A130477: T(n,k) is the number of permutations of [n] with maximum descent k, T(n,k) for n >= 0 and 0 <= k <= n, triangle read by rows.

Offset 0, canonical program `A130477.P15688843570063760663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A130477 (n : ℕ) : ℤ :=
  A130477.P15688843570063760663.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. -/
def A130477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130911.P12693574123707460580

`∑[1-2*A200244(n+1)]`
-/

namespace A130911.P12693574123707460580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A200244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A130911.P12693574123707460580

noncomputable section

/-- A130911: a(n) is the number of primes with odd binary weight among the first n primes minus the number with an even binary weight.

Offset 1, canonical program `A130911.P12693574123707460580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130911 (n : ℕ) : ℤ :=
  A130911.P12693574123707460580.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131085.P15158434548820626258

`2*A135278(n)-A104712(n+2)`
-/

namespace A131085.P15158434548820626258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135278 n - A104712 (n + 2)

end

end A131085.P15158434548820626258

noncomputable section

/-- A131085: Triangle T(n,k) (n>=0, 0<=k<=n-1) read by rows, A007318 * A129686.

Offset 0, canonical program `A131085.P15158434548820626258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131085 (n : ℕ) : ℤ :=
  A131085.P15158434548820626258.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131088.P15408998772554303099

`lcm(2, A114002(n))-A054525(n+1)`
-/

namespace A131088.P15408998772554303099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A114002 n) : ℤ) - A054525 (n + 1)

end

end A131088.P15408998772554303099

noncomputable section

/-- A131088: 2*A051731 - A054525 as infinite lower triangular matrices.

Offset 1, canonical program `A131088.P15408998772554303099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131088 (n : ℕ) : ℤ :=
  A131088.P15408998772554303099.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131095.P8508384860694033390

`A173786(lt[n+1, A013609(n+2)])`
-/

namespace A131095.P8508384860694033390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A131095.P8508384860694033390

noncomputable section

/-- A131095: Triangle where n-th row contains the smallest n positive integers (listed in order) with exactly n nonleading 0's in their binary representations and where the smallest term in the n-th row is > that the largest term in the (n-1)th row.

Offset 1, canonical program `A131095.P8508384860694033390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. -/
def A131095 (n : ℕ) : ℤ :=
  A131095.P8508384860694033390.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. -/
def A131095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131110.P10774728730179441097

`A133567(A014132(n+2))+A098108(3*n+2)`
-/

namespace A131110.P10774728730179441097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133567 (A014132 (n + 2)).toNat + A098108 (3 * n + 2)

end

end A131110.P10774728730179441097

noncomputable section

/-- A131110: A000012 * A133084.

Offset 1, canonical program `A131110.P10774728730179441097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A131110 (n : ℕ) : ℤ :=
  A131110.P10774728730179441097.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A131110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A131203.P3578267669090281606

`A001037(2*n+1)/2`
-/

namespace A131203.P3578267669090281606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001037 (2 * n + 1) : ℚ) / 2

end

end A131203.P3578267669090281606

noncomputable section

/-- A131203: Number of cycles of length n under the mapping x -> x^2-2 modulo Fermat prime 2^(2^m)+1, where m is any fixed integer such that n divides 2^m-1.

Offset 0, canonical program `A131203.P3578267669090281606`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001037, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131203 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A131203.P3578267669090281606.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001037, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A131203.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A131414.P4412133685493980708

`A130297(n+1)+A025581(n)`
-/

namespace A131414.P4412133685493980708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130297 (n + 1) + A025581 n

end

end A131414.P4412133685493980708

noncomputable section

/-- A131414: A130302 + A130303 - A000012.

Offset 1, canonical program `A131414.P4412133685493980708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131414 (n : ℕ) : ℤ :=
  A131414.P4412133685493980708.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A131414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132004.P16065052976772229410

`(-1)^n*A035154(n+1)`
-/

namespace A132004.P16065052976772229410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A035154 (n + 1)

end

end A132004.P16065052976772229410

noncomputable section

/-- A132004: Expansion of (1 - phi(q^3) / phi(q) * phi(-q^2) * phi(-q^6)) / 2 in powers of q where phi() is a Ramanujan theta function.

Offset 1, canonical program `A132004.P16065052976772229410`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035154, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132004 (n : ℕ) : ℤ :=
  A132004.P16065052976772229410.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035154, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132004.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A132048.P7025370900978820074

`A132046(n)+A014473(n)`
-/

namespace A132048.P7025370900978820074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132046 n + A014473 n

end

end A132048.P7025370900978820074

noncomputable section

/-- A132048: 3*A007318 - A103451 - A000012.

Offset 0, canonical program `A132048.P7025370900978820074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132048 (n : ℕ) : ℤ :=
  A132048.P7025370900978820074.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132239.P15653864357621956803

`∪[A039949(n+1), A132234(n+1)]`
-/

namespace A132239.P15653864357621956803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132234 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A132239.P15653864357621956803

noncomputable section

/-- A132239: Primes congruent to {17, 19} mod 30.

Offset 1, canonical program `A132239.P15653864357621956803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132239 (n : ℕ) : ℤ :=
  (A132239.P15653864357621956803.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132351.P15635442049154509357

`1-A072292(n+1)+n`
-/

namespace A132351.P15635442049154509357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A072292 (n + 1) + (n : ℤ)

end

end A132351.P15635442049154509357

noncomputable section

/-- A132351: Partial sums of A132350.

Offset 1, canonical program `A132351.P15635442049154509357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132351 (n : ℕ) : ℤ :=
  A132351.P15635442049154509357.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132657.P7540794836136521252

`A007491(n+1)*A053001(n+2)`
-/

namespace A132657.P7540794836136521252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (n + 1) * A053001 (n + 2)

end

end A132657.P7540794836136521252

noncomputable section

/-- A132657: a(n) is the product of the least prime > n^2 and the greatest prime < (n+1)^2.

Offset 1, canonical program `A132657.P7540794836136521252`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007491, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132657 (n : ℕ) : ℤ :=
  A132657.P7540794836136521252.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007491, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A132657.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A132731.P8579366909004604972

`xor(1, A132046(n)-1)`
-/

namespace A132731.P8579366909004604972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A132046 n - 1)

end

end A132731.P8579366909004604972

noncomputable section

/-- A132731: Triangle T(n,k) = 2 * binomial(n,k) - 2 with T(n,0) = T(n,n) = 1, read by rows.

Offset 0, canonical program `A132731.P8579366909004604972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132731 (n : ℕ) : ℤ :=
  A132731.P8579366909004604972.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132735.P4142998940236059687

`floor(A132046(n)/2)+1`
-/

namespace A132735.P4142998940236059687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A132046 n : ℚ) / 2⌋ + 1

end

end A132735.P4142998940236059687

noncomputable section

/-- A132735: Triangle T(n,k) = binomial(n,k) + 1 with T(n,0) = T(n,n) = 1, read by rows.

Offset 0, canonical program `A132735.P4142998940236059687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132735 (n : ℕ) : ℤ :=
  A132735.P4142998940236059687.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132737.P15042610219091654609

`or(1, A132046(n))`
-/

namespace A132737.P15042610219091654609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A132046 n)

end

end A132737.P15042610219091654609

noncomputable section

/-- A132737: Triangle T(n,k) = 2*binomial(n,k) + 1, read by rows.

Offset 0, canonical program `A132737.P15042610219091654609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132737 (n : ℕ) : ℤ :=
  A132737.P15042610219091654609.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132781.P6106266185422034442

`lt[A342697(or(n, floor(n/2))-n), 1]`
-/

namespace A132781.P6106266185422034442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342697 (Int.lor (n : ℤ) ⌊(n : ℚ) / 2⌋ - (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A132781.P6106266185422034442

noncomputable section

/-- A132781: Numbers not containing '1010' in binary representation.

Offset 1, canonical program `A132781.P6106266185422034442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132781 (n : ℕ) : ℤ :=
  (A132781.P6106266185422034442.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132782.P11170084075801961624

`lt[0, A342697(or(n, floor(n/2))-n)]`
-/

namespace A132782.P11170084075801961624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342697 (Int.lor (n : ℤ) ⌊(n : ℚ) / 2⌋ - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A132782.P11170084075801961624

noncomputable section

/-- A132782: Numbers with at least one occurrence of '1010' in binary representation.

Offset 1, canonical program `A132782.P11170084075801961624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9727 terms. -/
def A132782 (n : ℕ) : ℤ :=
  (A132782.P11170084075801961624.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9727 terms. -/
def A132782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132814.P17727186705927492062

`A111505(n)*A205456(n+1)`
-/

namespace A132814.P17727186705927492062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111505 n * A205456 (n + 1)

end

end A132814.P17727186705927492062

noncomputable section

/-- A132814: A007318^(-1) * A132813.

Offset 0, canonical program `A132814.P17727186705927492062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132814 (n : ℕ) : ℤ :=
  A132814.P17727186705927492062.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A132814.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133607.P11961955002363008475

`A057077(A002262(n))*A103631(n)`
-/

namespace A133607.P11961955002363008475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A002262 n).toNat * A103631 n

end

end A133607.P11961955002363008475

noncomputable section

/-- A133607: Triangle read by rows: T(n, k) = qStirling2(n, k, q) for q = -1, with 0 <= k <= n.

Offset 0, canonical program `A133607.P11961955002363008475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133607 (n : ℕ) : ℤ :=
  A133607.P11961955002363008475.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A133607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134015.P8862688659031297198

`(-1)^n*A113406(n+1)`
-/

namespace A134015.P8862688659031297198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A113406 (n + 1)

end

end A134015.P8862688659031297198

noncomputable section

/-- A134015: Expansion of (1 - phi(-q) * phi(q^4)) / 2 in powers of q where phi() is a Ramanujan theta function.

Offset 1, canonical program `A134015.P8862688659031297198`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113406, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134015 (n : ℕ) : ℤ :=
  A134015.P8862688659031297198.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113406, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134015.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134310.P5762516781671223903

`A173786(n-A123578(n))-1`
-/

namespace A134310.P5762516781671223903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 ((n : ℤ) - A123578 n).toNat - 1

end

end A134310.P5762516781671223903

noncomputable section

/-- A134310: (A000012 * A134309 + A134309 * A000012) - A000012, where the sequences are interpreted as lower triangular matrices.

Offset 0, canonical program `A134310.P5762516781671223903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134310 (n : ℕ) : ℤ :=
  A134310.P5762516781671223903.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134343.P11380617863790759177

`(-1)^n*A008441(n)`
-/

namespace A134343.P11380617863790759177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A008441 n

end

end A134343.P11380617863790759177

noncomputable section

/-- A134343: Expansion of psi(-x)^2 in powers of x where psi() is a Ramanujan theta function.

Offset 0, canonical program `A134343.P11380617863790759177`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134343 (n : ℕ) : ℤ :=
  A134343.P11380617863790759177.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008441, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134343.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134452.P3090733538934837598

`A257170(A229115(n+1)-A065363(n))`
-/

namespace A134452.P3090733538934837598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257170 (A229115 (n + 1) - A065363 n).toNat

end

end A134452.P3090733538934837598

noncomputable section

/-- A134452: Balanced ternary digital root of n.

Offset 0, canonical program `A134452.P3090733538934837598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 366 terms. -/
def A134452 (n : ℕ) : ℤ :=
  A134452.P3090733538934837598.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 366 terms. -/
def A134452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134540.P11855111430007588773

`a(n-1)-A054525(n)` with `a(0)=1`
-/

namespace A134540.P11855111430007588773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A054525 n

end

end A134540.P11855111430007588773

noncomputable section

/-- A134540: Triangle read by rows: T(n,k) = Sum_{d|n, d>=k} moebius(n/d).

Offset 1, canonical program `A134540.P11855111430007588773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134540 (n : ℕ) : ℤ :=
  A134540.P11855111430007588773.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134540.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A135151.P16759562844649267622

`A135152(n+1)-A114327(n)`
-/

namespace A135151.P16759562844649267622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135152 (n + 1) - A114327 n

end

end A135151.P16759562844649267622

noncomputable section

/-- A135151: A002260 + A128174 - I, I = Identity matrix.

Offset 1, canonical program `A135151.P16759562844649267622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135151 (n : ℕ) : ℤ :=
  A135151.P16759562844649267622.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135681.P17512842736067091502

`gcd((2*A151800(n))², A062509(n+1))`
-/

namespace A135681.P17512842736067091502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * A151800 n) ^ 2) (A062509 (n + 1))

end

end A135681.P17512842736067091502

noncomputable section

/-- A135681: a(n)=n if n=prime. Otherwise, a(n)=4 if n is even and a(n)=1 if n is odd.

Offset 1, canonical program `A135681.P17512842736067091502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135681 (n : ℕ) : ℤ :=
  (A135681.P17512842736067091502.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A135681.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135776.P15334910980622929297

`eq[A000005(n+1), A390764(n)]+1`
-/

namespace A135776.P15334910980622929297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390764 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A135776.P15334910980622929297

noncomputable section

/-- A135776: Numbers having number of divisors equal to number of digits in base 6.

Offset 1, canonical program `A135776.P15334910980622929297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A135776 (n : ℕ) : ℤ :=
  (A135776.P15334910980622929297.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A135776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135972.P1109629650079835443

`A000225(comp[p?[A072226(n+1)]])`
-/

namespace A135972.P1109629650079835443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072226 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A135972.P1109629650079835443

noncomputable section

/-- A135972: Nonprime numbers of the form 2^n - 1.

Offset 1, canonical program `A135972.P1109629650079835443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 321 terms. -/
def A135972 (n : ℕ) : ℤ :=
  A135972.P1109629650079835443.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 321 terms. -/
def A135972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135980.P2150485174944039982

`A000720(A054723(n+1))`
-/

namespace A135980.P2150485174944039982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A054723 (n + 1)).toNat

end

end A135980.P2150485174944039982

noncomputable section

/-- A135980: Numbers k such that the Mersenne number 2^prime(k)-1 is composite.

Offset 1, canonical program `A135980.P2150485174944039982`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054723, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135980 (n : ℕ) : ℤ :=
  A135980.P2150485174944039982.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054723, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135980.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A136151.P15773181379420580496

`p?[A100367(n+1)-1]+1`
-/

namespace A136151.P15773181379420580496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100367 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A136151.P15773181379420580496

noncomputable section

/-- A136151: Composites n with exactly two distinct prime divisors and of the form n=1+(any prime).

Offset 1, canonical program `A136151.P15773181379420580496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A136151 (n : ℕ) : ℤ :=
  A136151.P15773181379420580496.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A136151.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A136527.P9800155338990440031

`gcd(A026239(A037126(n+1)), A111653(n+1))`
-/

namespace A136527.P9800155338990440031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026239 (A037126 (n + 1)).toNat) (A111653 (n + 1))

end

end A136527.P9800155338990440031

noncomputable section

/-- A136527: Triangle read by rows: T(n,k) = greatest common divisor of n-th and k-th composite number, 1<=k<=n.

Offset 1, canonical program `A136527.P9800155338990440031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A136527 (n : ℕ) : ℤ :=
  (A136527.P9800155338990440031.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A136527.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A137874.P2737740016701994133

`∩[A124587(n+1), A151800(A124587(n+1))]`
-/

namespace A137874.P2737740016701994133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A124587 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137874.P2737740016701994133

noncomputable section

/-- A137874: Prime numbers, isolated from neighboring primes by >14.

Offset 1, canonical program `A137874.P2737740016701994133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 382 terms. -/
def A137874 (n : ℕ) : ℤ :=
  (A137874.P2737740016701994133.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 382 terms. -/
def A137874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138070.P9399023133838687128

`A138114(A106255(n+1))`
-/

namespace A138070.P9399023133838687128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138114 (A106255 (n + 1)).toNat

end

end A138070.P9399023133838687128

noncomputable section

/-- A138070: Triangle read by rows: row n lists the successive digits of A135697(n), the palindromic number formed from the reflected decimal expansion of Pi.

Offset 1, canonical program `A138070.P9399023133838687128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138070 (n : ℕ) : ℤ :=
  A138070.P9399023133838687128.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A138070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138350.P14922345514326361988

`A126120(n)*A138364(n+1)-A138364(n)*A126120(n+1)`
-/

namespace A138350.P14922345514326361988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n * A138364 (n + 1) - A138364 n * A126120 (n + 1)

end

end A138350.P14922345514326361988

noncomputable section

/-- A138350: Moment sequence of tr(A^2) in USp(4).

Offset 0, canonical program `A138350.P14922345514326361988`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126120, A138364, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A138350 (n : ℕ) : ℤ :=
  A138350.P14922345514326361988.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126120, A138364, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A138350.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138714.P17864452907051204205

`(A098363(∑[n+3])+1)%10`
-/

namespace A138714.P17864452907051204205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098363 (∑ j ∈ Finset.range (n + 1), f1 j) + 1) 10

end

end A138714.P17864452907051204205

noncomputable section

/-- A138714: Add 1, modulo 10, to the decimal expansion of e, A001113.

Offset 1, canonical program `A138714.P17864452907051204205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A138714 (n : ℕ) : ℤ :=
  A138714.P17864452907051204205.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A138714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138745.P4107493542608592355

`(-1)^n*A125061(n)`
-/

namespace A138745.P4107493542608592355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A125061 n

end

end A138745.P4107493542608592355

noncomputable section

/-- A138745: Expansion of eta(q) * eta(q^3) * eta(q^4)^3 / (eta(q^2)^2 * eta(q^12)) in powers of q.

Offset 0, canonical program `A138745.P4107493542608592355`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A125061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138745 (n : ℕ) : ℤ :=
  A138745.P4107493542608592355.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A125061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138745.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A139355.P6748165722254672452

`(A000120(n)+abs(A065359(n)))/2`
-/

namespace A139355.P6748165722254672452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000120 n + |A065359 n| : ℚ) / 2

end

end A139355.P6748165722254672452

noncomputable section

/-- A139355: Let the binary expansion of n be n = Sum_{k} 2^{r_k}, let e(n) be the number of r_k's that are even, o(n) the number that are odd; sequence gives max{e(n), o(n)}.

Offset 0, canonical program `A139355.P6748165722254672452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139355 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A139355.P6748165722254672452.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139355.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A139665.P1560313932667054479

`∩[A139502(n+1), A139655(n+1)]`
-/

namespace A139665.P1560313932667054479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139665.P1560313932667054479

noncomputable section

/-- A139665: Primes of the form x^2 + 840*y^2.

Offset 1, canonical program `A139665.P1560313932667054479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4905 terms. -/
def A139665 (n : ℕ) : ℤ :=
  (A139665.P1560313932667054479.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4905 terms. -/
def A139665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139831.P14732116838604130436

`A107169(n+1)-C(2, n+2)`
-/

namespace A139831.P14732116838604130436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1) - (Nat.choose 2 (n + 2) : ℤ)

end

end A139831.P14732116838604130436

noncomputable section

/-- A139831: Primes of the form 2x^2+2xy+23y^2.

Offset 1, canonical program `A139831.P14732116838604130436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139831 (n : ℕ) : ℤ :=
  A139831.P14732116838604130436.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139850.P14382659560258088933

`∩[A102273(n+1), A141302(n+1)]`
-/

namespace A139850.P14382659560258088933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139850.P14382659560258088933

noncomputable section

/-- A139850: Primes of the form 11x^2 + 8xy + 11y^2.

Offset 1, canonical program `A139850.P14382659560258088933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5006 terms. -/
def A139850 (n : ℕ) : ℤ :=
  (A139850.P14382659560258088933.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5006 terms. -/
def A139850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139878.P4049860983378405462

`∩[A102273(n+1), A107148(n+1)]`
-/

namespace A139878.P4049860983378405462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139878.P4049860983378405462

noncomputable section

/-- A139878: Primes of the form 8x^2+8xy+23y^2.

Offset 1, canonical program `A139878.P4049860983378405462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A139878 (n : ℕ) : ℤ :=
  (A139878.P4049860983378405462.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5003 terms. -/
def A139878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139943.P7773536031816728990

`∩[A106935(n+1), A141160(n+1)]`
-/

namespace A139943.P7773536031816728990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139943.P7773536031816728990

noncomputable section

/-- A139943: Primes of the form 3x^2+119y^2.

Offset 1, canonical program `A139943.P7773536031816728990`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2509 terms. -/
def A139943 (n : ℕ) : ℤ :=
  (A139943.P7773536031816728990.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2509 terms. -/
def A139943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139956.P1465954480000345955

`∩[A106935(n+1), A141170(n+1)]`
-/

namespace A139956.P1465954480000345955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139956.P1465954480000345955

noncomputable section

/-- A139956: Primes of the form 3x^2+136y^2.

Offset 1, canonical program `A139956.P1465954480000345955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2521 terms. -/
def A139956 (n : ℕ) : ℤ :=
  (A139956.P1465954480000345955.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2521 terms. -/
def A139956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139995.P6653243888125786699

`∩[A139846(n+1), A139879(n+1)]`
-/

namespace A139995.P6653243888125786699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139995.P6653243888125786699

noncomputable section

/-- A139995: Primes of the form 24x^2+24xy+41y^2.

Offset 1, canonical program `A139995.P6653243888125786699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4973 terms. -/
def A139995 (n : ℕ) : ℤ :=
  (A139995.P6653243888125786699.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4973 terms. -/
def A139995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139996.P13907857736179143124

`∩[A139860(n+1), A139918(n+1)]`
-/

namespace A139996.P13907857736179143124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139996.P13907857736179143124

noncomputable section

/-- A139996: Primes of the form 28x^2+28xy+37y^2.

Offset 1, canonical program `A139996.P13907857736179143124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4977 terms. -/
def A139996 (n : ℕ) : ℤ :=
  (A139996.P13907857736179143124.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4977 terms. -/
def A139996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140013.P17814475586989594916

`∩[A107145(n+1), A139870(n+1)]`
-/

namespace A140013.P17814475586989594916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140013.P17814475586989594916

noncomputable section

/-- A140013: Primes of the form 41*x^2+38*x*y+41*y^2.

Offset 1, canonical program `A140013.P17814475586989594916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2525 terms. -/
def A140013 (n : ℕ) : ℤ :=
  (A140013.P17814475586989594916.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2525 terms. -/
def A140013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140025.P5832999856353222194

`∩[A038918(n+1), A139844(n+1)]`
-/

namespace A140025.P5832999856353222194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140025.P5832999856353222194

noncomputable section

/-- A140025: Primes of the form 30x^2+30xy+53y^2.

Offset 1, canonical program `A140025.P5832999856353222194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 639 terms. -/
def A140025 (n : ℕ) : ℤ :=
  (A140025.P5832999856353222194.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 639 terms. -/
def A140025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140254.P10954065600151529999

`∑{d}[n+1, A007427(#)*A140255((n+1)/#)]`
-/

namespace A140254.P10954065600151529999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A140255 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A140254.P10954065600151529999

noncomputable section

/-- A140254: Mobius transform of A014963.

Offset 1, canonical program `A140254.P10954065600151529999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140254 (n : ℕ) : ℤ :=
  A140254.P10954065600151529999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140254.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140617.P13437074169227290798

`∩[A168539(n+1), A102273(n+1)]`
-/

namespace A140617.P13437074169227290798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140617.P13437074169227290798

noncomputable section

/-- A140617: Primes of the form 11x^2+8xy+32y^2.

Offset 1, canonical program `A140617.P13437074169227290798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4997 terms. -/
def A140617 (n : ℕ) : ℤ :=
  (A140617.P13437074169227290798.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4997 terms. -/
def A140617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140841.P8028280117442468543

`∩[A030431(n+1), A140536(n+1)]`
-/

namespace A140841.P8028280117442468543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140536 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140841.P8028280117442468543

noncomputable section

/-- A140841: Primes of the form 210n + 13.

Offset 1, canonical program `A140841.P8028280117442468543`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4176 terms. -/
def A140841 (n : ℕ) : ℤ :=
  (A140841.P8028280117442468543.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4176 terms. -/
def A140841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140874.P6691662635771918061

`A104712(n+2)-(A209518(n)+A028327(n))`
-/

namespace A140874.P6691662635771918061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104712 (n + 2) - (A209518 n + A028327 n)

end

end A140874.P6691662635771918061

noncomputable section

/-- A140874: Triangle T(n,k) = binomial(n,k+2)-2*binomial(n,k+1)-binomial(n,k) read by rows, 0<=k<=n-2, n>=2.

Offset 2, canonical program `A140874.P6691662635771918061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140874 (n : ℕ) : ℤ :=
  A140874.P6691662635771918061.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A140874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140972.P1519528018248526653

`record[1-A038608(A175308(n+1))]`
-/

namespace A140972.P1519528018248526653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A038608 (A175308 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140972.P1519528018248526653

noncomputable section

/-- A140972: Numbers k such that arithmetic mean of squares of first k Lucas numbers is an integer.

Offset 1, canonical program `A140972.P1519528018248526653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A140972 (n : ℕ) : ℤ :=
  A140972.P1519528018248526653.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A140972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141130.P15115507160674459778

`A000040(A000040(A000040(A000040(A000040(A028815(n)-1)-1)-1)-1)-1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141130.P15115507160674459778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (A000040 (A000040 (A000040 (A028815 n - 1).toNat - 1).toNat - 1).toNat - 1).toNat - 1).toNat - 1

end

end A141130.P15115507160674459778

noncomputable section

/-- A141130: a(n) = prime(prime(prime(prime(prime(A028815(n) - 1) - 1) - 1) - 1) - 1) - 1.

Offset 0, canonical program `A141130.P15115507160674459778`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A000040(A000040(A000040(A000040(A028815(n)-1)-1)-1)-1)-1)-1` (program `A141130.P15115507160674459778`, by `A141130.P15115507160674459778.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A141130 (n : ℕ) : ℤ :=
  A141130.P15115507160674459778.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A000040(A000040(A000040(A000040(A028815(n)-1)-1)-1)-1)-1)-1` (program `A141130.P15115507160674459778`, by `A141130.P15115507160674459778.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A141130.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141132.P16379204966305241626

`A000040(A000040(A000040(A000040(A028815(n)-1)-1)-1)-1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141132.P16379204966305241626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (A000040 (A000040 (A028815 n - 1).toNat - 1).toNat - 1).toNat - 1).toNat - 1

end

end A141132.P16379204966305241626

noncomputable section

/-- A141132: a(n) = prime(prime(prime(prime(A028815(n) - 1) - 1) - 1) - 1) - 1.

Offset 0, canonical program `A141132.P16379204966305241626`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A000040(A000040(A000040(A028815(n)-1)-1)-1)-1)-1` (program `A141132.P16379204966305241626`, by `A141132.P16379204966305241626.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A141132 (n : ℕ) : ℤ :=
  A141132.P16379204966305241626.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A000040(A000040(A000040(A028815(n)-1)-1)-1)-1)-1` (program `A141132.P16379204966305241626`, by `A141132.P16379204966305241626.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A141132.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141133.P13051906493185686307

`A000040(A000040(A000040(A028815(n)-1)-1)-1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141133.P13051906493185686307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (A000040 (A028815 n - 1).toNat - 1).toNat - 1).toNat - 1

end

end A141133.P13051906493185686307

noncomputable section

/-- A141133: a(n) = prime(prime(prime(A028815(n) - 1) - 1) - 1) - 1.

Offset 0, canonical program `A141133.P13051906493185686307`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A000040(A000040(A028815(n)-1)-1)-1)-1` (program `A141133.P13051906493185686307`, by `A141133.P13051906493185686307.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A141133 (n : ℕ) : ℤ :=
  A141133.P13051906493185686307.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A000040(A000040(A028815(n)-1)-1)-1)-1` (program `A141133.P13051906493185686307`, by `A141133.P13051906493185686307.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A141133.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141136.P10009492963449235360

`A000040(A000040(A028815(n)-1)-1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141136.P10009492963449235360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (A028815 n - 1).toNat - 1).toNat - 1

end

end A141136.P10009492963449235360

noncomputable section

/-- A141136: a(n) = prime(prime(A028815(n) - 1) - 1) - 1.

Offset 0, canonical program `A141136.P10009492963449235360`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A000040(A028815(n)-1)-1)-1` (program `A141136.P10009492963449235360`, by `A141136.P10009492963449235360.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A141136 (n : ℕ) : ℤ :=
  A141136.P10009492963449235360.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A000040(A028815(n)-1)-1)-1` (program `A141136.P10009492963449235360`, by `A141136.P10009492963449235360.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A141136.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141138.P7125824368820176257

`A000040(A028815(n)-1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141138.P7125824368820176257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A028815 n - 1).toNat - 1

end

end A141138.P7125824368820176257

noncomputable section

/-- A141138: a(n) = prime(A028815(n) - 1) - 1.

Offset 0, canonical program `A141138.P7125824368820176257`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A028815(n)-1)-1` (program `A141138.P7125824368820176257`, by `A141138.P7125824368820176257.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A141138 (n : ℕ) : ℤ :=
  A141138.P7125824368820176257.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A028815(n)-1)-1` (program `A141138.P7125824368820176257`, by `A141138.P7125824368820176257.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A141138.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A141515.P7322677319686946413

`A000010(A067774(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141515.P7322677319686946413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A067774 (n + 1)).toNat

end

end A141515.P7322677319686946413

noncomputable section

/-- A141515: a(n) = phi(A067774(n)) where phi is Euler totient function.

Offset 1, canonical program `A141515.P7322677319686946413`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067774, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141515 (n : ℕ) : ℤ :=
  A141515.P7322677319686946413.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067774, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A141515.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A141671.P16866868866156929720

`A126988(A103516(n)+A083920(n))`
-/

namespace A141671.P16866868866156929720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A103516 n + A083920 n).toNat

end

end A141671.P16866868866156929720

noncomputable section

/-- A141671: Triangle T(n, k) = n/k if n mod k = 0, otherwise T(n, k) = 0, with T(n, 0) = n+1, read by rows.

Offset 0, canonical program `A141671.P16866868866156929720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141671 (n : ℕ) : ℤ :=
  A141671.P16866868866156929720.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A141671.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A143062.P17484546011609023543

`Δ[A084176(3*(n+1))%2]`
-/

namespace A143062.P17484546011609023543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084176 (3 * (n + 1))) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A143062.P17484546011609023543

noncomputable section

/-- A143062: Expansion of false theta series variation of Euler's pentagonal number series in powers of x.

Offset 0, canonical program `A143062.P17484546011609023543`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A143062 (n : ℕ) : ℤ :=
  A143062.P17484546011609023543.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A143062.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143424.P11284984421560187409

`A054525(n+1)*A059268(n)`
-/

namespace A143424.P11284984421560187409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A059268 n

end

end A143424.P11284984421560187409

noncomputable section

/-- A143424: Triangle read by rows, A054525 * A130123, 1<=k<=n.

Offset 1, canonical program `A143424.P11284984421560187409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143424 (n : ℕ) : ℤ :=
  A143424.P11284984421560187409.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143468.P8235683988876298013

`A054525(n+1)*A134560(n+1)`
-/

namespace A143468.P8235683988876298013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A134560 (n + 1)

end

end A143468.P8235683988876298013

noncomputable section

/-- A143468: Triangle read by rows, A054525 * A127775, 1<=k<=n.

Offset 1, canonical program `A143468.P8235683988876298013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143468 (n : ℕ) : ℤ :=
  A143468.P8235683988876298013.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143473.P5763444039974273443

`A178914(n)+2*A217657(n)`
-/

namespace A143473.P5763444039974273443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178914 n + 2 * A217657 n

end

end A143473.P5763444039974273443

noncomputable section

/-- A143473: Replace the leading digit d of n with 10-d (in decimal representation).

Offset 0, canonical program `A143473.P5763444039974273443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143473 (n : ℕ) : ℤ :=
  A143473.P5763444039974273443.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143518.P16129242294580754326

`A054525(n+1)*A122414(n+1)`
-/

namespace A143518.P16129242294580754326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A122414 (n + 1)

end

end A143518.P16129242294580754326

noncomputable section

/-- A143518: Triangle read by rows, A054525 * (A010051 * 0^(n-k)), 1<=k<=n.

Offset 1, canonical program `A143518.P16129242294580754326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143518 (n : ℕ) : ℤ :=
  A143518.P16129242294580754326.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143575.P15638247367889798217

`eq[A125061(n), A169695(n)]`
-/

namespace A143575.P15638247367889798217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125061 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A143575.P15638247367889798217

noncomputable section

/-- A143575: Numbers m such that A143574(m) = m.

Offset 1, canonical program `A143575.P15638247367889798217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1705 terms. -/
def A143575 (n : ℕ) : ℤ :=
  (A143575.P15638247367889798217.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1705 terms. -/
def A143575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143655.P13289820664003860313

`A127368(n+1)*A143538(n+1)`
-/

namespace A143655.P13289820664003860313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127368 (n + 1) * A143538 (n + 1)

end

end A143655.P13289820664003860313

noncomputable section

/-- A143655: Triangle read by rows, primes not dividing n; A054521 * (A061397 * 0^(n-k)), 1<=k<=n.

Offset 1, canonical program `A143655.P13289820664003860313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143655 (n : ℕ) : ℤ :=
  A143655.P13289820664003860313.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A143655.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A143869.P7252286459323011956

`(n+1)*(A055653(n+1)+1)/2`
-/

namespace A143869.P7252286459323011956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * (A055653 (n + 1) + 1) : ℚ) / 2

end

end A143869.P7252286459323011956

noncomputable section

/-- A143869: An integer k is called regular (mod n) if there is an integer x such that k^2 x == k (mod n). Then these numbers are the sum of regular integers k (mod n) such that 1 <= k <= n for n=1,2,... .

Offset 1, canonical program `A143869.P7252286459323011956`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055653, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143869 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A143869.P7252286459323011956.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055653, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143869.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A144100.P2610238533023529381

`lt[A144907(n+1), n+1]+1`
-/

namespace A144100.P2610238533023529381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144907 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A144100.P2610238533023529381

noncomputable section

/-- A144100: Numbers k such that k is strictly greater than f(k), where f(k) = 1 if k is prime, 2 * rad(k) if 4 divides k and rad(k) otherwise.

Offset 1, canonical program `A144100.P2610238533023529381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A144100 (n : ℕ) : ℤ :=
  (A144100.P2610238533023529381.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A144100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144101.P11412887638920219634

`A000040((n+1)/A144907(n+1))%2`
-/

namespace A144101.P11412887638920219634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A144907 (n + 1) : ℚ))).toNat) 2

end

end A144101.P11412887638920219634

noncomputable section

/-- A144101: Characteristic sequence for A144100.

Offset 1, canonical program `A144101.P11412887638920219634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144101 (n : ℕ) : ℤ :=
  A144101.P11412887638920219634.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144411.P17247777929449242437

`A067970(n+1)/2-2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A144411.P17247777929449242437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067970 (n + 1) : ℚ) / 2 - 2

end

end A144411.P17247777929449242437

noncomputable section

/-- A144411: Odd nonprime gaps adjusted to be {2,1,0,-1}: a(n)=A067970(n)/2-2.

Offset 1, canonical program `A144411.P17247777929449242437`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067970, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A144411 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A144411.P17247777929449242437.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067970, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A144411.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A144480.P9166723768350089559

`A003983(n+1)*A007318(n)`
-/

namespace A144480.P9166723768350089559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1) * A007318 n

end

end A144480.P9166723768350089559

noncomputable section

/-- A144480: T(n,k) = binomial(n, k)*min(k + 1, n - k + 1), triangle read by rows (n >= 0, 0 <= k <= n).

Offset 0, canonical program `A144480.P9166723768350089559`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144480 (n : ℕ) : ℤ :=
  A144480.P9166723768350089559.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A144480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A144831.P7474642275724404831

`(n+2)²-A007491(n+1)`
-/

namespace A144831.P7474642275724404831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A007491 (n + 1)

end

end A144831.P7474642275724404831

noncomputable section

/-- A144831: (n+1)^2 - (smallest prime > n^2).

Offset 1, canonical program `A144831.P7474642275724404831`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007491, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A144831 (n : ℕ) : ℤ :=
  A144831.P7474642275724404831.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007491, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A144831.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A145342.P11180459690303212781

`(A145341(n+1)+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A145342.P11180459690303212781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145341 (n + 1) + 1 : ℚ) / 2

end

end A145342.P11180459690303212781

noncomputable section

/-- A145342: a(n) = (A145341(n) + 1)/2.

Offset 1, canonical program `A145342.P11180459690303212781`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145341, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145342 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A145342.P11180459690303212781.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145341, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145342.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A145989.P5652111938556337468

`A091318(lt[1, A091318(n+1)]+1)`
-/

namespace A145989.P5652111938556337468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A145989.P5652111938556337468

noncomputable section

/-- A145989: Run lengths of consecutive primes == 1 (mod 4) where the run length is at least 2.

Offset 1, canonical program `A145989.P5652111938556337468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A145989 (n : ℕ) : ℤ :=
  A145989.P5652111938556337468.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A145989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A145992.P5369397507907685557

`A091267(lt[1, A091267(n+1)]+1)`
-/

namespace A145992.P5369397507907685557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091267 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A145992.P5369397507907685557

noncomputable section

/-- A145992: Run lengths of 2 or more consecutive primes of the form 4k+3.

Offset 1, canonical program `A145992.P5369397507907685557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A145992 (n : ℕ) : ℤ :=
  A145992.P5369397507907685557.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A145992.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A147644.P1419813907313181643

`A028275(n)-2*char[4]`
-/

namespace A147644.P1419813907313181643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028275 n - ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A147644.P1419813907313181643

noncomputable section

/-- A147644: Triangle read by rows: T(n, k) = binomial(n, k) if n < 3, otherwise T(n, k) = binomial(n, k) + 2*binomial(n-2, k-1).

Offset 0, canonical program `A147644.P1419813907313181643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147644 (n : ℕ) : ℤ :=
  A147644.P1419813907313181643.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A147644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151292.P14289417684748015023

`5*a(n-1)-A014432(n)` with `a(0)=1`
-/

namespace A151292.P14289417684748015023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) - A014432 n

end

end A151292.P14289417684748015023

noncomputable section

/-- A151292: Number of walks within N^2 (the first quadrant of Z^2) starting at (0,0) and consisting of n steps taken from {(-1, -1), (-1, 1), (-1, 0), (0, 1), (1, 1)}.

Offset 0, canonical program `A151292.P14289417684748015023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A151292 (n : ℕ) : ℤ :=
  A151292.P14289417684748015023.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A151292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151665.P7749028135867019320

`A006046(A151669(n))`
-/

namespace A151665.P7749028135867019320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (A151669 n).toNat

end

end A151665.P7749028135867019320

noncomputable section

/-- A151665: G.f.: Product_{k>=0} (1 + 3*x^(4^k)).

Offset 0, canonical program `A151665.P7749028135867019320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151665 (n : ℕ) : ℤ :=
  A151665.P7749028135867019320.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151674.P15988754925228505936

`A006288(A151671(n))`
-/

namespace A151674.P15988754925228505936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006288 (A151671 n).toNat

end

end A151674.P15988754925228505936

noncomputable section

/-- A151674: G.f.: Product_{k >= 0} (1 + 4*x^(5^k)).

Offset 0, canonical program `A151674.P15988754925228505936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151674 (n : ℕ) : ℤ :=
  A151674.P15988754925228505936.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151740.P2454433821023245285

`A167611(n+2)`
-/

namespace A151740.P2454433821023245285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167611 (n + 2)

end

end A151740.P2454433821023245285

noncomputable section

/-- A151740: Composites that are the sum of two consecutive composite numbers.

Offset 1, canonical program `A151740.P2454433821023245285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A151740 (n : ℕ) : ℤ :=
  A151740.P2454433821023245285.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A151740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151742.P737792101325545151

`∩[A002808(n+1), A053767(n+4)-A053767(n)]`
-/

namespace A151742.P737792101325545151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (n + 4) - A053767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151742.P737792101325545151

noncomputable section

/-- A151742: Composite numbers which are the sum of four consecutive composite numbers.

Offset 1, canonical program `A151742.P737792101325545151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A151742 (n : ℕ) : ℤ :=
  (A151742.P737792101325545151.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A151742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151758.P108105294660586572

`dr(A073267(n))-A209229(n)`
-/

namespace A151758.P108105294660586572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A073267 n) : ℤ) - A209229 n

end

end A151758.P108105294660586572

noncomputable section

/-- A151758: G.f.: Theta^2-Theta, where Theta = Sum_{k>=0} x^(2^k).

Offset 0, canonical program `A151758.P108105294660586572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A151758 (n : ℕ) : ℤ :=
  A151758.P108105294660586572.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A151758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151920.P12681159998700896708

`(A130665(n+1)-1)/3`
-/

namespace A151920.P12681159998700896708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130665 (n + 1) - 1 : ℚ) / 3

end

end A151920.P12681159998700896708

noncomputable section

/-- A151920: a(n) = (Sum_{i=1..n+1} 3^wt(i))/3, where wt() = A000120().

Offset 0, canonical program `A151920.P12681159998700896708`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130665, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A151920 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A151920.P12681159998700896708.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130665, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A151920.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A152539.P11128868835489364912

`∑[A146538(n+1)]`
-/

namespace A152539.P11128868835489364912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152539.P11128868835489364912

noncomputable section

/-- A152539: Partial sum of A146538.

Offset 1, canonical program `A152539.P11128868835489364912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A152539 (n : ℕ) : ℤ :=
  A152539.P11128868835489364912.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A152539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152563.P13954880354621690569

`∩[A122516(n+1), A152535(n+1)]`
-/

namespace A152563.P13954880354621690569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122516 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152563.P13954880354621690569

noncomputable section

/-- A152563: Primes in A152535.

Offset 1, canonical program `A152563.P13954880354621690569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1199 terms. -/
def A152563 (n : ℕ) : ℤ :=
  (A152563.P13954880354621690569.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1199 terms. -/
def A152563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152719.P13057198307662737590

`A000129(A003983(n+1))`
-/

namespace A152719.P13057198307662737590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (A003983 (n + 1)).toNat

end

end A152719.P13057198307662737590

noncomputable section

/-- A152719: Triangle read by rows: T(n,k) = A000129( 1 + min(k,n-k) ), n>=0, 0<=k<=n.

Offset 0, canonical program `A152719.P13057198307662737590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A152719 (n : ℕ) : ℤ :=
  A152719.P13057198307662737590.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A152719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152828.P17053707415147750268

`A152830(lt[n, A056011(n+1)])`
-/

namespace A152828.P17053707415147750268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152830 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A152828.P17053707415147750268

noncomputable section

/-- A152828: Triangle read by rows, A007318 rows repeated three times.

Offset 0, canonical program `A152828.P17053707415147750268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7515 terms. -/
def A152828 (n : ℕ) : ℤ :=
  A152828.P17053707415147750268.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7515 terms. -/
def A152828.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A153045.P15986527208321006434

`5+A104275(n+2)`
-/

namespace A153045.P15986527208321006434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 + A104275 (n + 2)

end

end A153045.P15986527208321006434

noncomputable section

/-- A153045: Numbers k such that 2*k-11 is not a prime.

Offset 1, canonical program `A153045.P15986527208321006434`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153045 (n : ℕ) : ℤ :=
  A153045.P15986527208321006434.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153045.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A153327.P5821613529871534125

`comp[A127590(n+1)]`
-/

namespace A153327.P5821613529871534125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153327.P5821613529871534125

noncomputable section

/-- A153327: Numbers k such that 16*k+5 is not prime.

Offset 1, canonical program `A153327.P5821613529871534125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153327 (n : ℕ) : ℤ :=
  (A153327.P5821613529871534125.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153350.P12585267983721140221

`comp[A101123(n+1)]`
-/

namespace A153350.P12585267983721140221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153350.P12585267983721140221

noncomputable section

/-- A153350: Numbers k such that 7*k+11 is not prime.

Offset 1, canonical program `A153350.P12585267983721140221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153350 (n : ℕ) : ℤ :=
  (A153350.P12585267983721140221.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153464.P11627895847707691394

`A153085(n+1)-1`
-/

namespace A153464.P11627895847707691394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153085 (n + 1) - 1

end

end A153464.P11627895847707691394

noncomputable section

/-- A153464: Numbers k such that 4*k+9 is not prime.

Offset 1, canonical program `A153464.P11627895847707691394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153464 (n : ℕ) : ℤ :=
  A153464.P11627895847707691394.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A153464.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A153877.P12442606473326752863

`∩[A024894(n+1), A153355(n+1)]`
-/

namespace A153877.P12442606473326752863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153877.P12442606473326752863

noncomputable section

/-- A153877: Numbers n such that 5n-1 and 5n+1 are both prime.

Offset 1, canonical program `A153877.P12442606473326752863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A153877 (n : ℕ) : ℤ :=
  (A153877.P12442606473326752863.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A153877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153883.P3806345231788212027

`A153880(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A153883.P3806345231788212027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153880 n : ℚ) / 2

end

end A153883.P3806345231788212027

noncomputable section

/-- A153883: a(n) = A153880(n)/2.

Offset 0, canonical program `A153883.P3806345231788212027`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153880, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153883 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A153883.P3806345231788212027.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153880, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153883.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A154221.P10253953106395039828

`A034008(A318274(n))+1`
-/

namespace A154221.P10253953106395039828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A318274 n).toNat + 1

end

end A154221.P10253953106395039828

noncomputable section

/-- A154221: A simple Pascal-like triangle.

Offset 0, canonical program `A154221.P10253953106395039828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154221 (n : ℕ) : ℤ :=
  A154221.P10253953106395039828.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A154221.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A154447.P11287601721097405753

`A092569(A154448(A092569(n)))`
-/

namespace A154447.P11287601721097405753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092569 (A154448 (A092569 n).toNat).toNat

end

end A154447.P11287601721097405753

noncomputable section

/-- A154447: Permutation of nonnegative integers induced by wreath recursion a=s(b,c), b=s(c,a), c=(c,c), starting from state b, rewriting bits from the second most significant bit toward the least significant end.

Offset 0, canonical program `A154447.P11287601721097405753`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A154447 (n : ℕ) : ℤ :=
  A154447.P11287601721097405753.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. -/
def A154447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156241.P8695887676353496719

`A054525(n+1)*A156254(n+1)`
-/

namespace A156241.P8695887676353496719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A156254 (n + 1)

end

end A156241.P8695887676353496719

noncomputable section

/-- A156241: Triangle read by rows, T(n,k). If k divides n then A008683(n)*A008683(k).

Offset 1, canonical program `A156241.P8695887676353496719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8128 terms. -/
def A156241 (n : ℕ) : ℤ :=
  A156241.P8695887676353496719.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8128 terms. -/
def A156241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156583.P9591001356614490137

`A119505(eq[2, gcd(2, A119505(n+1))]+1)`
-/

namespace A156583.P9591001356614490137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A119505 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119505 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A156583.P9591001356614490137

noncomputable section

/-- A156583: The subsequence of even digits in A119505.

Offset 1, canonical program `A156583.P9591001356614490137`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1440 terms. -/
def A156583 (n : ℕ) : ℤ :=
  A156583.P9591001356614490137.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1440 terms. -/
def A156583.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156683.P11389173112947492787

`lt[1, A024361(n+1)]+1`
-/

namespace A156683.P11389173112947492787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A156683.P11389173112947492787

noncomputable section

/-- A156683: Integers that can occur as either leg in more than one primitive Pythagorean triple.

Offset 1, canonical program `A156683.P11389173112947492787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156683 (n : ℕ) : ℤ :=
  (A156683.P11389173112947492787.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156875.P9874642270312529186

`∑[A156659(n+1)]`
-/

namespace A156875.P9874642270312529186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156875.P9874642270312529186

noncomputable section

/-- A156875: Number of safe primes <= n.

Offset 1, canonical program `A156875.P9874642270312529186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156875 (n : ℕ) : ℤ :=
  A156875.P9874642270312529186.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156944.P9088602599021019118

`A095711(A098363(∑[n+3])+57)`
-/

namespace A156944.P9088602599021019118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095711 (A098363 (∑ j ∈ Finset.range (n + 1), f1 j) + 57).toNat

end

end A156944.P9088602599021019118

noncomputable section

/-- A156944: Let d(i) be the i-th digit of the decimal expansion of e = 2.71828182845..., so that d(1) = 2, d(2) = 7, d(3) = 1, etc. Then a(n) = d(10 - d(n)).

Offset 1, canonical program `A156944.P9088602599021019118`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A156944 (n : ℕ) : ℤ :=
  A156944.P9088602599021019118.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A156944.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A157228.P6044199204996125931

`(A000089(n+1)-A019590(n+1))/2`
-/

namespace A157228.P6044199204996125931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000089 (n + 1) - A019590 (n + 1) : ℚ) / 2

end

end A157228.P6044199204996125931

noncomputable section

/-- A157228: Number of primitive inequivalent inclined square sublattices of square lattice of index n.

Offset 1, canonical program `A157228.P6044199204996125931`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A157228 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A157228.P6044199204996125931.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A157228.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A158327.P17963926596425252861

`∑{d}[A000265(n+1)%(n+1), A000005(A274611(#))]`
-/

namespace A158327.P17963926596425252861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000005 (A274611 d).toNat

end

end A158327.P17963926596425252861

noncomputable section

/-- A158327: a(n) = A145444(n)-A145511(n).

Offset 1, canonical program `A158327.P17963926596425252861`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158327 (n : ℕ) : ℤ :=
  A158327.P17963926596425252861.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158708.P11182512673760747716

`p?[A229990(n+1)+1]`
-/

namespace A158708.P11182512673760747716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229990 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158708.P11182512673760747716

noncomputable section

/-- A158708: Primes p such that p + floor(p/2) is prime.

Offset 1, canonical program `A158708.P11182512673760747716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 930 terms. -/
def A158708 (n : ℕ) : ℤ :=
  A158708.P11182512673760747716.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 930 terms. -/
def A158708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158806.P17410747648070653925

`floor(A132234(n+1)/30)`
-/

namespace A158806.P17410747648070653925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A132234 (n + 1) : ℚ) / 30⌋

end

end A158806.P17410747648070653925

noncomputable section

/-- A158806: Numbers n such that 30*n + 19 is prime.

Offset 1, canonical program `A158806.P17410747648070653925`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132234, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158806 (n : ℕ) : ℤ :=
  A158806.P17410747648070653925.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A132234, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A158806.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A158824.P15231535269411815641

`A213500(n+1)-A193976(n)%A213500(n+1)`
-/

namespace A158824.P15231535269411815641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213500 (n + 1) - Int.tmod (A193976 n) (A213500 (n + 1))

end

end A158824.P15231535269411815641

noncomputable section

/-- A158824: Triangle T(n,k) = A000292(n) if k = 1 otherwise (k-1)*(n-k+1)*(n-k+2)/2, read by rows.

Offset 1, canonical program `A158824.P15231535269411815641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158824 (n : ℕ) : ℤ :=
  A158824.P15231535269411815641.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A158824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159780.P2765697705373744263

`A000120(and(n, A145341(n+1)))`
-/

namespace A159780.P2765697705373744263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (n : ℤ) (A145341 (n + 1))).toNat

end

end A159780.P2765697705373744263

noncomputable section

/-- A159780: Inner product of the binary representation of n and its reverse.

Offset 0, canonical program `A159780.P2765697705373744263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159780 (n : ℕ) : ℤ :=
  A159780.P2765697705373744263.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A159854.P4629768391219883641

`A097805(n)+1-A323231(n)`
-/

namespace A159854.P4629768391219883641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n + (1 - A323231 n)

end

end A159854.P4629768391219883641

noncomputable section

/-- A159854: Riordan array (1-x,x/(1-x)).

Offset 0, canonical program `A159854.P4629768391219883641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159854 (n : ℕ) : ℤ :=
  A159854.P4629768391219883641.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A159854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160522.P1046967172984511442

`A071904(n+1)-A005843(n+2)`
-/

namespace A160522.P1046967172984511442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1) - A005843 (n + 2)

end

end A160522.P1046967172984511442

noncomputable section

/-- A160522: The n-th odd composite number minus the n-th even composite number.

Offset 1, canonical program `A160522.P1046967172984511442`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071904, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160522 (n : ℕ) : ℤ :=
  A160522.P1046967172984511442.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071904, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A160522.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A160727.P938032724718537716

`Δ[A130665(n)]-A135416(n+1)`
-/

namespace A160727.P938032724718537716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130665 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A135416 (n + 1)

end

end A160727.P938032724718537716

noncomputable section

/-- A160727: a(n) = A161415(n+1)/4.

Offset 1, canonical program `A160727.P938032724718537716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160727 (n : ℕ) : ℤ :=
  A160727.P938032724718537716.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A160972.P10328099809638499813

`A160895(n+1)*A351301(n+1)`
-/

namespace A160972.P10328099809638499813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160895 (n + 1) * A351301 (n + 1)

end

end A160972.P10328099809638499813

noncomputable section

/-- A160972: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 13.

Offset 1, canonical program `A160972.P10328099809638499813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160972 (n : ℕ) : ℤ :=
  A160972.P10328099809638499813.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A160972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161025.P16166816335795081500

`A160897(n+1)*A351302(n+1)`
-/

namespace A161025.P16166816335795081500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160897 (n + 1) * A351302 (n + 1)

end

end A161025.P16166816335795081500

noncomputable section

/-- A161025: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 15.

Offset 1, canonical program `A161025.P16166816335795081500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161025 (n : ℕ) : ℤ :=
  A161025.P16166816335795081500.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161200.P10289639632069729149

`(n+1-7*n/5)*A161202(n)`
-/

namespace A161200.P10289639632069729149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) - 7 * ((n : ℚ) / 5)) * (A161202 n : ℚ)

end

end A161200.P10289639632069729149

noncomputable section

/-- A161200: Numerators in expansion of (1-x)^(3/2).

Offset 0, canonical program `A161200.P10289639632069729149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. -/
def A161200 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A161200.P10289639632069729149.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. -/
def A161200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161424.P13170212331515074192

`4*A161428(n+1)`
-/

namespace A161424.P13170212331515074192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A161428 (n + 1)

end

end A161424.P13170212331515074192

noncomputable section

/-- A161424: Numbers k whose largest divisor <= sqrt(k) equals 4.

Offset 1, canonical program `A161424.P13170212331515074192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161424 (n : ℕ) : ℤ :=
  A161424.P13170212331515074192.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161425.P4609620829610950226

`2*A161428(n+1)`
-/

namespace A161425.P4609620829610950226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161428 (n + 1)

end

end A161425.P4609620829610950226

noncomputable section

/-- A161425: a(n) = A161424(n)/2.

Offset 1, canonical program `A161425.P4609620829610950226`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A161424, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161425 (n : ℕ) : ℤ :=
  A161425.P4609620829610950226.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A161424, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161425.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161528.P12747581726242673171

`A035187(5*n+1)`
-/

namespace A161528.P12747581726242673171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (5 * n + 1)

end

end A161528.P12747581726242673171

noncomputable section

/-- A161528: Expansion of the q-series Sum_{n >= 0} (-1)^nq^(n(n+1)/2)(1-q)(1-q^2)...(1-q^n)/((1-q^(n+1))(1-q^(n+2))...(1-q^(2n+1))).

Offset 0, canonical program `A161528.P12747581726242673171`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035187, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161528 (n : ℕ) : ℤ :=
  A161528.P12747581726242673171.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035187, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161528.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A161658.P13515500336823959883

`n+1-(n+1)%A178914(A178914(A001222(n+1)))`
-/

namespace A161658.P13515500336823959883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.tmod (n + 1 : ℤ) (A178914 (A178914 (A001222 (n + 1)).toNat).toNat)

end

end A161658.P13515500336823959883

noncomputable section

/-- A161658: a(n) = the largest multiple of {the sum of the prime-factorization exponents of n} that is <= n.

Offset 1, canonical program `A161658.P13515500336823959883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161658 (n : ℕ) : ℤ :=
  A161658.P13515500336823959883.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161753.P17172365697063617890

`∑{d}[n, A361709(#)]²`
-/

namespace A161753.P17172365697063617890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A361709 d) ^ 2

end

end A161753.P17172365697063617890

noncomputable section

/-- A161753: Squares of nonprime numbers A141468.

Offset 1, canonical program `A161753.P17172365697063617890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161753 (n : ℕ) : ℤ :=
  A161753.P17172365697063617890.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161778.P9817928679836335703

`A163116(A161671(n+1))`
-/

namespace A161778.P9817928679836335703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163116 (A161671 (n + 1)).toNat

end

end A161778.P9817928679836335703

noncomputable section

/-- A161778: The A161671(n)-th partial sum of A161671.

Offset 1, canonical program `A161778.P9817928679836335703`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163116, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161778 (n : ℕ) : ℤ :=
  A161778.P9817928679836335703.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163116, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A161778.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A161886.P10842892658287364340

`A006590(n+2)-2`
-/

namespace A161886.P10842892658287364340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006590 (n + 2) - 2

end

end A161886.P10842892658287364340

noncomputable section

/-- A161886: Number of nonzero elements in the n X n Redheffer matrix.

Offset 1, canonical program `A161886.P10842892658287364340`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161886 (n : ℕ) : ℤ :=
  A161886.P10842892658287364340.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A161886.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A161890.P15218163243923693132

`eq[A065359(n+9), A065359(n)]`
-/

namespace A161890.P15218163243923693132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (n + 9)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161890.P15218163243923693132

noncomputable section

/-- A161890: Numbers such that A010060(n) = A010060(n+9).

Offset 0, canonical program `A161890.P15218163243923693132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161890 (n : ℕ) : ℤ :=
  (A161890.P15218163243923693132.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A161890.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A162154.P2090983927440829256

`Δ[A111688(n+1)]`
-/

namespace A162154.P2090983927440829256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A162154.P2090983927440829256

noncomputable section

/-- A162154: Odd-indexed terms are the number of consecutive prime numbers until a composite, even-indexed terms are the number of consecutive composite numbers until a prime.

Offset 1, canonical program `A162154.P2090983927440829256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A162154 (n : ℕ) : ℤ :=
  A162154.P2090983927440829256.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A162154.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A163746.P11768047734020211813

`A125061(n+1)`
-/

namespace A163746.P11768047734020211813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125061 (n + 1)

end

end A163746.P11768047734020211813

noncomputable section

/-- A163746: Expansion of (theta_3(q)^2 + 3 * theta_3(q^3)^2) / 4 - 1 in powers of q.

Offset 1, canonical program `A163746.P11768047734020211813`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A125061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163746 (n : ℕ) : ℤ :=
  A163746.P11768047734020211813.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A125061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163746.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A163807.P13093031249055492174

`A145341(A080513(n))-and(1, n)`
-/

namespace A163807.P13093031249055492174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145341 (A080513 n).toNat - (Nat.land 1 n : ℤ)

end

end A163807.P13093031249055492174

noncomputable section

/-- A163807: Reverse the order of inner digits (all digits but the first and last) of n written in binary. a(n) = the decimal value of the result.

Offset 1, canonical program `A163807.P13093031249055492174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163807 (n : ℕ) : ℤ :=
  A163807.P13093031249055492174.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A163807.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A163843.P11119471545613868718

`A163865(n+1)-A056040(n+1)`
-/

namespace A163843.P11119471545613868718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163865 (n + 1) - A056040 (n + 1)

end

end A163843.P11119471545613868718

noncomputable section

/-- A163843: Row sums of triangle A163840.

Offset 0, canonical program `A163843.P11119471545613868718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A163843 (n : ℕ) : ℤ :=
  A163843.P11119471545613868718.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A163843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163871.P6376979073296319069

`A002808(n+1)+A062825(n+2)`
-/

namespace A163871.P6376979073296319069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + A062825 (n + 2)

end

end A163871.P6376979073296319069

noncomputable section

/-- A163871: The n-th composite plus the sum of its nontrivial divisors.

Offset 1, canonical program `A163871.P6376979073296319069`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062825, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163871 (n : ℕ) : ℤ :=
  A163871.P6376979073296319069.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062825, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163871.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A164566.P13004933412815303573

`∩[A023225(n+1), A136052(n+1)]`
-/

namespace A164566.P13004933412815303573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164566.P13004933412815303573

noncomputable section

/-- A164566: Primes p such that 7*p-6 and 7*p+6 are also prime numbers.

Offset 1, canonical program `A164566.P13004933412815303573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A164566 (n : ℕ) : ℤ :=
  (A164566.P13004933412815303573.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A164566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164738.P7688680176698315187

`A057334(A233280(n+1))`
-/

namespace A164738.P7688680176698315187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057334 (A233280 (n + 1)).toNat

end

end A164738.P7688680176698315187

noncomputable section

/-- A164738: Triangle read by rows. Row 0 = {2}; left half of row n+1 = row n, right half = row n reversed with each term replaced by the next prime.

Offset 0, canonical program `A164738.P7688680176698315187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9471 terms. -/
def A164738 (n : ℕ) : ℤ :=
  A164738.P7688680176698315187.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9471 terms. -/
def A164738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164887.P8444353184396680170

`record[A080343(n)*A209492(n)]`
-/

namespace A164887.P8444353184396680170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080343 n * A209492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A164887.P8444353184396680170

noncomputable section

/-- A164887: a(n) = smallest number that leads to a new fixed point under the base-2 Kaprekar map of A164884.

Offset 1, canonical program `A164887.P8444353184396680170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A164887 (n : ℕ) : ℤ :=
  A164887.P8444353184396680170.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. -/
def A164887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A165789.P3775044912176039512

`A145341(A145051(n+1))`
-/

namespace A165789.P3775044912176039512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145341 (A145051 (n + 1)).toNat

end

end A165789.P3775044912176039512

noncomputable section

/-- A165789: a(n) is the smallest positive integer k that when written in binary, and leading 0's of k are ignored, contains the reversal of the digits of binary n.

Offset 1, canonical program `A165789.P3775044912176039512`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165789 (n : ℕ) : ℤ :=
  A165789.P3775044912176039512.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A165789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166140.P17649384582351937107

`lcm(∏{p}[n+1, #], A166142(n+1))`
-/

namespace A166140.P17649384582351937107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) (A166142 (n + 1))

end

end A166140.P17649384582351937107

noncomputable section

/-- A166140: Product of the nonzero elements of the n-th row of A166139.

Offset 1, canonical program `A166140.P17649384582351937107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166140 (n : ℕ) : ℤ :=
  (A166140.P17649384582351937107.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166587.P9407171212140652662

`A000007(n)-Δ[A099323(n)]`
-/

namespace A166587.P9407171212140652662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - (f1 (n + 1) - f1 n)

end

end A166587.P9407171212140652662

noncomputable section

/-- A166587: A signed variant of the Motzkin numbers.

Offset 0, canonical program `A166587.P9407171212140652662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A166587 (n : ℕ) : ℤ :=
  A166587.P9407171212140652662.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A166587.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A166698.P12793159027236630514`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353557, A353558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166698 (n : ℕ) : ℤ :=
  A166698.P12793159027236630514.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353557, A353558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A166698.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A167657.P13884500863494241506

`n^A075526(n)`
-/

namespace A167657.P13884500863494241506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A075526 n : ℤ)

end

end A167657.P13884500863494241506

noncomputable section

/-- A167657: Product of n-th block of identical consecutive values of A000720.

Offset 1, canonical program `A167657.P13884500863494241506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1059 terms. -/
def A167657 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A167657.P13884500863494241506.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1059 terms. -/
def A167657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167990.P17237278703894071025

`A010766(n+1)*A175992(n+1)`
-/

namespace A167990.P17237278703894071025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A175992 (n + 1)

end

end A167990.P17237278703894071025

noncomputable section

/-- A167990: Elements in A126988 (by row) that are not 1.

Offset 1, canonical program `A167990.P17237278703894071025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167990 (n : ℕ) : ℤ :=
  A167990.P17237278703894071025.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167990.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A170823.P2846578837375981881

`A060582(record[A163327(n)])+1`
-/

namespace A170823.P2846578837375981881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060582 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A170823.P2846578837375981881

noncomputable section

/-- A170823: An infinite word on the alphabet 1, 2, 3 by Bollobas.

Offset 0, canonical program `A170823.P2846578837375981881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A170823 (n : ℕ) : ℤ :=
  A170823.P2846578837375981881.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A170823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171639.P4220126091121494472

`A090178(n+1)+A073425(n)`
-/

namespace A171639.P4220126091121494472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090178 (n + 1) + A073425 n

end

end A171639.P4220126091121494472

noncomputable section

/-- A171639: Sum of n-th nonprime number and n-th noncomposite number.

Offset 1, canonical program `A171639.P4220126091121494472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171639 (n : ℕ) : ℤ :=
  A171639.P4220126091121494472.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171727.P1096727604738501956

`A091591(p?[A040976(n+1)])`
-/

namespace A171727.P1096727604738501956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091591 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A171727.P1096727604738501956

noncomputable section

/-- A171727: The number of twin prime pairs in the interval (p^2,p*q), where (p,q) runs over the twin prime pairs (A001359(n),A006512(n)).

Offset 1, canonical program `A171727.P1096727604738501956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. -/
def A171727 (n : ℕ) : ℤ :=
  A171727.P1096727604738501956.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. -/
def A171727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172048.P1924917802631505532

`A104275(n+1)+A014076(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A172048.P1924917802631505532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 1) + A014076 (n + 1)

end

end A172048.P1924917802631505532

noncomputable section

/-- A172048: a(n) = A104275(n) + A014076(n).

Offset 1, canonical program `A172048.P1924917802631505532`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, A104275, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A172048 (n : ℕ) : ℤ :=
  A172048.P1924917802631505532.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, A104275, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A172048.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A172624.P1675348428344907413

`eq[3, A145154(n)/A062011(n+1)]`
-/

namespace A172624.P1675348428344907413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145154 n : ℚ) / (A062011 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A172624.P1675348428344907413

noncomputable section

/-- A172624: Numbers k such that 2*A000005(k) = 3*A000005(k+1).

Offset 1, canonical program `A172624.P1675348428344907413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A172624 (n : ℕ) : ℤ :=
  (A172624.P1675348428344907413.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A172624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173016.P1321067361305043164

`∪[A002191(n+1), ∑[A083531(n+1)]]`
-/

namespace A173016.P1321067361305043164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002191 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A173016.P1321067361305043164

noncomputable section

/-- A173016: Numbers k such that the sequence B = B_k defined by {B(1) = 1; for i >= 2: B(i) = the smallest number h such that sigma(h) = A000203(h) = B(i-1) + k; or B(i) = 0 if no such number h exists} is not the sequence {A063524(j): j >= 1}.

Offset 1, canonical program `A173016.P1321067361305043164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173016 (n : ℕ) : ℤ :=
  (A173016.P1321067361305043164.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173229.P8938795864355033648

`A046953(n+1)-A046954(n+2)`
-/

namespace A173229.P8938795864355033648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046953 (n + 1) - A046954 (n + 2)

end

end A173229.P8938795864355033648

noncomputable section

/-- A173229: a(n) is the n-th number m such that 6m-1 is composite minus the n-th number k such that 6k+1 is composite.

Offset 1, canonical program `A173229.P8938795864355033648`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046953, A046954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A173229 (n : ℕ) : ℤ :=
  A173229.P8938795864355033648.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046953, A046954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A173229.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A173231.P14587032377011786533

`A046953(n+1)+A046954(n+2)`
-/

namespace A173231.P14587032377011786533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046953 (n + 1) + A046954 (n + 2)

end

end A173231.P14587032377011786533

noncomputable section

/-- A173231: a(n) is the n-th number m such that 6*m-1 is composite plus the n-th number k such that 6*k+1 is composite.

Offset 1, canonical program `A173231.P14587032377011786533`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046953, A046954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A173231 (n : ℕ) : ℤ :=
  A173231.P14587032377011786533.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046953, A046954, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A173231.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A173270.P9959685970867206750

`∑[A001037(n)]`
-/

namespace A173270.P9959685970867206750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A173270.P9959685970867206750

noncomputable section

/-- A173270: Partial sums of A001037, the number of degree-n irreducible polynomials over GF(2).

Offset 0, canonical program `A173270.P9959685970867206750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A173270 (n : ℕ) : ℤ :=
  A173270.P9959685970867206750.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A173270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173741.P3146822036776038077

`A132047(n)+1-A132729(n)`
-/

namespace A173741.P3146822036776038077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132047 n + (1 - A132729 n)

end

end A173741.P3146822036776038077

noncomputable section

/-- A173741: T(n,k) = binomial(n,k) + 4 for 1 <= k <= n - 1, n >= 2, and T(n,0) = T(n,n) = 1 for n >= 0, triangle read by rows.

Offset 0, canonical program `A173741.P3146822036776038077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173741 (n : ℕ) : ℤ :=
  A173741.P3146822036776038077.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A173741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173743.P4929656854599200138

`eq[A034444(n+1), A163109(n+1)]+1`
-/

namespace A173743.P4929656854599200138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163109 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A173743.P4929656854599200138

noncomputable section

/-- A173743: Numbers k such that phi(tau(k)) = tau(rad(k)).

Offset 1, canonical program `A173743.P4929656854599200138`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A173743 (n : ℕ) : ℤ :=
  (A173743.P4929656854599200138.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A173743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173826.P17218421421297169468

`∩[A086085(n+1), A086086(n+1)]`
-/

namespace A173826.P17218421421297169468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A173826.P17218421421297169468

noncomputable section

/-- A173826: Primes p such that p-+floor(Sqrt(p)) are primes.

Offset 1, canonical program `A173826.P17218421421297169468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A173826 (n : ℕ) : ℤ :=
  (A173826.P17218421421297169468.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A173826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174048.P4629497372076491791

`A000040(A173919(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A174048.P4629497372076491791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A173919 (n + 1)).toNat

end

end A174048.P4629497372076491791

noncomputable section

/-- A174048: Prime(A173919(n)).

Offset 1, canonical program `A174048.P4629497372076491791`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173919, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A174048 (n : ℕ) : ℤ :=
  A174048.P4629497372076491791.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173919, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A174048.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A174124.P6351116376219015781

`A001263(n+1)*A154325(n)`
-/

namespace A174124.P6351116376219015781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A154325 n

end

end A174124.P6351116376219015781

noncomputable section

/-- A174124: Triangle T(n, k, q) = (q+1)*binomial(n, k)*(Pochhammer(q+1, n)/(Pochhammer(q+1, k)*Pochhammer(q+1, n-k))), with T(n, 0) = T(n, n) = 1, and q = 1, read by rows.

Offset 0, canonical program `A174124.P6351116376219015781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174124 (n : ℕ) : ℤ :=
  A174124.P6351116376219015781.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174124.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A174648.P6169375116423577086

`∑[A000452(n+1)]`
-/

namespace A174648.P6169375116423577086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174648.P6169375116423577086

noncomputable section

/-- A174648: Partial sums of A000452.

Offset 1, canonical program `A174648.P6169375116423577086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174648 (n : ℕ) : ℤ :=
  A174648.P6169375116423577086.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A174648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174937.P745784790892421709

`∑{d}[n+1, (#*A007956(#))²]`
-/

namespace A174937.P745784790892421709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) * A007956 d) ^ 2

end

end A174937.P745784790892421709

noncomputable section

/-- A174937: a(n) = Sum_{d|n} d^tau(d).

Offset 1, canonical program `A174937.P745784790892421709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1259 terms. -/
def A174937 (n : ℕ) : ℤ :=
  A174937.P745784790892421709.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1259 terms. -/
def A174937.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A175090.P1060197383972460167

`eq[or(2, A175078(n+1)), A072491(n)]`
-/

namespace A175090.P1060197383972460167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A175078 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A175090.P1060197383972460167

noncomputable section

/-- A175090: Composites c with result 0 under iterations of {r mod (max prime p <= r)} starting at r = c.

Offset 1, canonical program `A175090.P1060197383972460167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5264 terms. -/
def A175090 (n : ℕ) : ℤ :=
  (A175090.P1060197383972460167.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5264 terms. -/
def A175090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175212.P6570222214537579537

`filter[A176176(n+1), A373154(#)]`
-/

namespace A175212.P6570222214537579537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373154 (f1 j).toNat = 1) n)

end

end A175212.P6570222214537579537

noncomputable section

/-- A175212: Numbers n such that A000975(n-1)/n is an integer. Also numbers n such that arithmetic mean of the first n Jacobsthal numbers is an integer.

Offset 1, canonical program `A175212.P6570222214537579537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9655 terms. -/
def A175212 (n : ℕ) : ℤ :=
  A175212.P6570222214537579537.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9655 terms. -/
def A175212.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A175317.P3664450880219237391

`∑{d}[n+1, #*A007956(#)]`
-/

namespace A175317.P3664450880219237391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A007956 d

end

end A175317.P3664450880219237391

noncomputable section

/-- A175317: a(n) = Sum_{d|n} A007955(d) where A007955(m) = product of divisors of m.

Offset 1, canonical program `A175317.P3664450880219237391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A175317 (n : ℕ) : ℤ :=
  A175317.P3664450880219237391.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A175317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175634.P10918917663715960839

`lt[A105560(n+4), A105700(n)²]`
-/

namespace A175634.P10918917663715960839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105560 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A175634.P10918917663715960839

noncomputable section

/-- A175634: Chen semiprimes: semiprimes m such that m+4 is either a prime or a semiprime.

Offset 1, canonical program `A175634.P10918917663715960839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A175634 (n : ℕ) : ℤ :=
  (A175634.P10918917663715960839.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A175634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175918.P158714506234326648

`A003817(n)-and(n, A145341(n+1))`
-/

namespace A175918.P158714506234326648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n - Int.land (n : ℤ) (A145341 (n + 1))

end

end A175918.P158714506234326648

noncomputable section

/-- A175918: Convert n to binary. NAND each respective digit of binary n and binary A030101(n), where A030101(n) is the reversal of the order of the digits in the binary representation of n (given in decimal). a(n) is the decimal value of the result.

Offset 0, canonical program `A175918.P158714506234326648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175918 (n : ℕ) : ℤ :=
  A175918.P158714506234326648.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A175918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176348.P5045138411392960695

`A007318(n)*A176346(n)`
-/

namespace A176348.P5045138411392960695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A176346 n

end

end A176348.P5045138411392960695

noncomputable section

/-- A176348: Triangle, read by rows: T(n, k) = binomial(n, k)*(1 + 2*(n+1) - (k+1)*floor((n+1)/(k+1)) - (n-k+1)* floor((n+1)/(n-k+1))).

Offset 0, canonical program `A176348.P5045138411392960695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A176348 (n : ℕ) : ℤ :=
  A176348.P5045138411392960695.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. -/
def A176348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176831.P10048569203297585884

`p?[A147846(n+3)-A147846(n+1)]`
-/

namespace A176831.P10048569203297585884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147846 (n + 3) - A147846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176831.P10048569203297585884

noncomputable section

/-- A176831: List of all primes p such that 2*A099609(2n-1)<p<2*A099609(2n).

Offset 1, canonical program `A176831.P10048569203297585884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A176831 (n : ℕ) : ℤ :=
  A176831.P10048569203297585884.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A176831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176841.P12208208766662245832

`a(n-A163109(n+1))+1` with `a(0)=0`
-/

namespace A176841.P12208208766662245832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A163109 (n + 1)).toNat + 1

end

end A176841.P12208208766662245832

noncomputable section

/-- A176841: a(n) is the number of iterations of f(n) = n-phi(tau(n)) needed to reach 1.

Offset 1, canonical program `A176841.P12208208766662245832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176841 (n : ℕ) : ℤ :=
  (A176841.P12208208766662245832.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176841.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A083854.P7100940027082630718

`lt[1, A000034(A125061(n))]`
-/

namespace A083854.P7100940027082630718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A125061 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A083854.P7100940027082630718

noncomputable section

/-- A083854: Numbers that are squares, twice squares, three times squares, or six times squares, i.e., numbers whose squarefree part divides 6.

Offset 0, canonical program `A083854.P7100940027082630718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 267 terms. -/
def A083854 (n : ℕ) : ℤ :=
  (A083854.P7100940027082630718.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 267 terms. -/
def A083854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084369.P2349708795339258249

`A000720(A030096(n+1))`
-/

namespace A084369.P2349708795339258249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A030096 (n + 1)).toNat

end

end A084369.P2349708795339258249

noncomputable section

/-- A084369: Numbers n such that the n-th prime number doesn't contain any even digits.

Offset 1, canonical program `A084369.P2349708795339258249`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 790 terms. -/
def A084369 (n : ℕ) : ℤ :=
  A084369.P2349708795339258249.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 790 terms. -/
def A084369.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A085987.P7602126064279087842

`filter[A030630(n+1), A212793(#)]`
-/

namespace A085987.P7602126064279087842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A085987.P7602126064279087842

noncomputable section

/-- A085987: Product of exactly four primes, three of which are distinct (p^2*q*r).

Offset 1, canonical program `A085987.P7602126064279087842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9346 terms. -/
def A085987 (n : ℕ) : ℤ :=
  A085987.P7602126064279087842.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9346 terms. -/
def A085987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086669.P4971627234888346327

`∑{d}[n+1, A290098(#)]`
-/

namespace A086669.P4971627234888346327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A290098 d

end

end A086669.P4971627234888346327

noncomputable section

/-- A086669: a(n) = number of divisors of n that are fundamental discriminants.

Offset 1, canonical program `A086669.P4971627234888346327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086669 (n : ℕ) : ℤ :=
  A086669.P4971627234888346327.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087207.P12536008426233777954

`A048675(A007947(n+1))`
-/

namespace A087207.P12536008426233777954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A007947 (n + 1)).toNat

end

end A087207.P12536008426233777954

noncomputable section

/-- A087207: A binary representation of the primes that divide a number, shown in decimal.

Offset 1, canonical program `A087207.P12536008426233777954`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087207 (n : ℕ) : ℤ :=
  A087207.P12536008426233777954.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087207.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A087472.P6974076248790329574

`A031346(A056709(2*(n+1)))*A031346(n+1)`
-/

namespace A087472.P6974076248790329574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A056709 (2 * (n + 1))).toNat * A031346 (n + 1)

end

end A087472.P6974076248790329574

noncomputable section

/-- A087472: Number of iterations required for the function f(n) to reach a single digit, where f(n) is the product of the two numbers formed from the alternating digits of n.

Offset 1, canonical program `A087472.P6974076248790329574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A087472 (n : ℕ) : ℤ :=
  A087472.P6974076248790329574.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A087472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087694.P12240670254306234750

`∑{d}[n+1, A162397(#)*A227128((n+1)/#)]`
-/

namespace A087694.P12240670254306234750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A162397 d * A227128 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A087694.P12240670254306234750

noncomputable section

/-- A087694: Number of solutions to x^2 + xy + y^2 == 0 (mod n).

Offset 1, canonical program `A087694.P12240670254306234750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087694 (n : ℕ) : ℤ :=
  A087694.P12240670254306234750.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088019.P5378104997926900415

`∑[A164292(2*n+1)-A164292(A093178(n))]`
-/

namespace A088019.P5378104997926900415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164292 (2 * n + 1) - A164292 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A088019.P5378104997926900415

noncomputable section

/-- A088019: Number of twin primes between n and 2n (inclusive).

Offset 1, canonical program `A088019.P5378104997926900415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A088019 (n : ℕ) : ℤ :=
  A088019.P5378104997926900415.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A088019.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A088899.P5292124785369287953

`2*A105673(A050873(n+1)²)`
-/

namespace A088899.P5292124785369287953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105673 (A050873 (n + 1) ^ 2).toNat

end

end A088899.P5292124785369287953

noncomputable section

/-- A088899: T(n, k) = number of ordered pairs of integers (x,y) with x^2/n^2 + y^2/k^2 = 1, 1 <= k <= n; triangular array, read by rows.

Offset 1, canonical program `A088899.P5292124785369287953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5150 terms. -/
def A088899 (n : ℕ) : ℤ :=
  A088899.P5292124785369287953.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5150 terms. -/
def A088899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089189.P12304478124887923302

`p?[A212793(n+1)+1+n]`
-/

namespace A089189.P12304478124887923302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089189.P12304478124887923302

noncomputable section

/-- A089189: Primes p such that p-1 is cubefree.

Offset 1, canonical program `A089189.P12304478124887923302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6712 terms. -/
def A089189 (n : ℕ) : ℤ :=
  A089189.P12304478124887923302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6712 terms. -/
def A089189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089191.P6897987938072641486

`p?[n*A212793(n+1)]`
-/

namespace A089191.P6897987938072641486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A212793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089191.P6897987938072641486

noncomputable section

/-- A089191: Primes p such that p+1 is cubefree.

Offset 1, canonical program `A089191.P6897987938072641486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6700 terms. -/
def A089191 (n : ℕ) : ℤ :=
  A089191.P6897987938072641486.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6700 terms. -/
def A089191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089199.P16774325504568410811

`p?[n*(1-A212793(n+1))]`
-/

namespace A089199.P16774325504568410811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A212793 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089199.P16774325504568410811

noncomputable section

/-- A089199: Primes p such that p+1 is divisible by a cube.

Offset 1, canonical program `A089199.P16774325504568410811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2892 terms. -/
def A089199 (n : ℕ) : ℤ :=
  A089199.P16774325504568410811.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2892 terms. -/
def A089199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089402.P12649387450735140950

`(A000108(n)+A089408(n))/2`
-/

namespace A089402.P12649387450735140950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n + A089408 n : ℚ) / 2

end

end A089402.P12649387450735140950

noncomputable section

/-- A089402: Number of cycles in range [A014137(n-1)..A014138(n-1)] of permutation A089864.

Offset 0, canonical program `A089402.P12649387450735140950`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089408, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089402 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A089402.P12649387450735140950.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089408, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A089402.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A090181.P13882170627177889434

`A131198(abs(2-n)+1)`
-/

namespace A090181.P13882170627177889434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131198 (|2 - (n : ℤ)| + 1).toNat

end

end A090181.P13882170627177889434

noncomputable section

/-- A090181: Triangle of Narayana (A001263) with 0 <= k <= n, read by rows.

Offset 0, canonical program `A090181.P13882170627177889434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090181 (n : ℕ) : ℤ :=
  A090181.P13882170627177889434.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A090181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090442.P10441181462503134609

`2^n*A001003(n+1)`
-/

namespace A090442.P10441181462503134609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001003 (n + 1)

end

end A090442.P10441181462503134609

noncomputable section

/-- A090442: Row sums of array A090452 (s2_{3,2}, scaled (3,2)-Stirling2).

Offset 1, canonical program `A090442.P10441181462503134609`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A090442 (n : ℕ) : ℤ :=
  A090442.P10441181462503134609.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A090442.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A092785.P12558785064700393744

`(-1)^n*A072547(n+2)+1`
-/

namespace A092785.P12558785064700393744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A072547 (n + 2) + 1

end

end A092785.P12558785064700393744

noncomputable section

/-- A092785: a(n) = sum(sum(binomial(j-n-1,m),m=0..n),j=0..n).

Offset 0, canonical program `A092785.P12558785064700393744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A092785 (n : ℕ) : ℤ :=
  A092785.P12558785064700393744.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A092785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096445.P14489248109655328566

`∑{d}[n+1, A120630(#)*A145392((n+1)/#)]`
-/

namespace A096445.P14489248109655328566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A120630 d * A145392 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A096445.P14489248109655328566

noncomputable section

/-- A096445: Number of reduced primitive positive definite binary quadratic forms of determinant n^2.

Offset 1, canonical program `A096445.P14489248109655328566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7000 terms. -/
def A096445 (n : ℕ) : ℤ :=
  A096445.P14489248109655328566.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7000 terms. -/
def A096445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096501.P6057643749581904713

`Δ[∑{d}[A136548(n+1), #+2]]`
-/

namespace A096501.P6057643749581904713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, (d + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A096501.P6057643749581904713

noncomputable section

/-- A096501: Difference between primes preceding n+1 and n.

Offset 1, canonical program `A096501.P6057643749581904713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A096501 (n : ℕ) : ℤ :=
  A096501.P6057643749581904713.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A096501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096784.P17728823887735339806

`floor(A060254(n+1)/2)`
-/

namespace A096784.P17728823887735339806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060254 (n + 1) : ℚ) / 2⌋

end

end A096784.P17728823887735339806

noncomputable section

/-- A096784: Numbers k such that both k and k+1 are composite numbers that sum up to a prime.

Offset 1, canonical program `A096784.P17728823887735339806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096784 (n : ℕ) : ℤ :=
  A096784.P17728823887735339806.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A096784.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098365.P15550866543655754186

`∑[17*A256435(n+1)]`
-/

namespace A098365.P15550866543655754186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A256435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098365.P15550866543655754186

noncomputable section

/-- A098365: Sums of two squares and divisible by 17.

Offset 1, canonical program `A098365.P15550866543655754186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098365 (n : ℕ) : ℤ :=
  A098365.P15550866543655754186.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098726.P16121288803637439389

`3-Δ[A037203(n)]`
-/

namespace A098726.P16121288803637439389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (f1 (n + 1) - f1 n)

end

end A098726.P16121288803637439389

noncomputable section

/-- A098726: Take three consecutive primes starting with the n-th prime. Calculate d(i,j) = abs(prime(i) - prime(j)), for all {i,j}, i.e., all possible differences. a(n) is the number of distinct differences (which can be either 3 or 2).

Offset 1, canonical program `A098726.P16121288803637439389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A098726 (n : ℕ) : ℤ :=
  A098726.P16121288803637439389.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A098726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099019.P264222523887219230

`∩[A269345(n+1)+2, A269345(n+1)]`
-/

namespace A099019.P264222523887219230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269345 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A099019.P264222523887219230

noncomputable section

/-- A099019: Odd composite numbers k such that k-2 and k+2 are also composite.

Offset 1, canonical program `A099019.P264222523887219230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7461 terms. -/
def A099019 (n : ℕ) : ℤ :=
  (A099019.P264222523887219230.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7461 terms. -/
def A099019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A099327.P17907964122088018001

`A134389(n)+A210736(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A099327.P17907964122088018001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A134389 n + (A210736 n + 2 * a (n - 1))

end

end A099327.P17907964122088018001

noncomputable section

/-- A099327: Expansion of ((1-x)*sqrt(1+2x) + (1+x)*sqrt(1-2x))/(2*(1-2x)^(5/2)).

Offset 0, canonical program `A099327.P17907964122088018001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 322 terms. -/
def A099327 (n : ℕ) : ℤ :=
  A099327.P17907964122088018001.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 322 terms. -/
def A099327.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A100549.P3441829071280898481

`A136548(A051903(n+1)+2)`
-/

namespace A100549.P3441829071280898481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A051903 (n + 1) + 2).toNat

end

end A100549.P3441829071280898481

noncomputable section

/-- A100549: Let n = 2^e_2 * 3^e_ * 5^e_ * ... be the prime factorization of n; then a(n) = largest prime <= 1 + max{e_2, e_3, e_5, ...}; a(1) = 1 by convention.

Offset 1, canonical program `A100549.P3441829071280898481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100549 (n : ℕ) : ℤ :=
  A100549.P3441829071280898481.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100777.P7440440407592815012

`∏[abs(A358272(n+1))]`
-/

namespace A100777.P7440440407592815012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A358272 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A100777.P7440440407592815012

noncomputable section

/-- A100777: Square-factorial numbers: a(1) = 1, a(n+1) = a(n) * largest square divisor of (n+1).

Offset 1, canonical program `A100777.P7440440407592815012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. -/
def A100777 (n : ℕ) : ℤ :=
  A100777.P7440440407592815012.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. -/
def A100777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100861.P8415527314952672000

`A059344(n)/2^A055087(n)`
-/

namespace A100861.P8415527314952672000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059344 n : ℚ) / (2 : ℚ) ^ (A055087 n : ℤ)

end

end A100861.P8415527314952672000

noncomputable section

/-- A100861: Triangle of Bessel numbers read by rows: T(n,k) is the number of k-matchings of the complete graph K(n).

Offset 0, canonical program `A100861.P8415527314952672000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2803 terms. -/
def A100861 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A100861.P8415527314952672000.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2803 terms. -/
def A100861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A101603.P8622180864976214950

`(A112475(n)+A008288(n))/2`
-/

namespace A101603.P8622180864976214950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112475 n + A008288 n : ℚ) / 2

end

end A101603.P8622180864976214950

noncomputable section

/-- A101603: Riordan array (1/(1-x^2), x(1+x)/(1-x)).

Offset 0, canonical program `A101603.P8622180864976214950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101603 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A101603.P8622180864976214950.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A101603.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A102541.P5176281856776410928

`A034851(A091018(n))`
-/

namespace A102541.P5176281856776410928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (A091018 n).toNat

end

end A102541.P5176281856776410928

noncomputable section

/-- A102541: Triangle read by rows, formed from antidiagonals of Losanitsch's triangle. T(n, k) = A034851(n-k, k), n >= 0 and 0 <= k <= floor(n/2).

Offset 0, canonical program `A102541.P5176281856776410928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A102541 (n : ℕ) : ℤ :=
  A102541.P5176281856776410928.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A102541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106089.P9950603822401867982

`∩[A023226(n+1), A023231(n+1)]`
-/

namespace A106089.P9950603822401867982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106089.P9950603822401867982

noncomputable section

/-- A106089: Primes p such that 7*p + 8 and 8*p + 7 are primes.

Offset 1, canonical program `A106089.P9950603822401867982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2775 terms. -/
def A106089 (n : ℕ) : ℤ :=
  (A106089.P9950603822401867982.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2775 terms. -/
def A106089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106090.P16719435767229659218

`∩[A023227(n+1), A023239(n+1)]`
-/

namespace A106090.P16719435767229659218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106090.P16719435767229659218

noncomputable section

/-- A106090: Prime numbers p such that 10p+7 and 7p+10 are primes.

Offset 1, canonical program `A106090.P16719435767229659218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3035 terms. -/
def A106090 (n : ℕ) : ℤ :=
  (A106090.P16719435767229659218.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3035 terms. -/
def A106090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106099.P6342612745526486747

`∩[A160337(n+1), A277965(n+1)]`
-/

namespace A106099.P6342612745526486747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106099.P6342612745526486747

noncomputable section

/-- A106099: Primes with maximal digit = 3.

Offset 1, canonical program `A106099.P6342612745526486747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 871 terms. -/
def A106099 (n : ℕ) : ℤ :=
  (A106099.P6342612745526486747.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 871 terms. -/
def A106099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106828.P446698263942165762

`A269940(A091018(n))`
-/

namespace A106828.P446698263942165762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269940 (A091018 n).toNat

end

end A106828.P446698263942165762

noncomputable section

/-- A106828: Triangle T(n,k) read by rows: associated Stirling numbers of first kind (n >= 0 and 0 <= k <= floor(n/2)).

Offset 0, canonical program `A106828.P446698263942165762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 841 terms. -/
def A106828 (n : ℕ) : ℤ :=
  A106828.P446698263942165762.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 841 terms. -/
def A106828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106881.P10335683123271550517

`∩[A191026(n+1), A038872(n+1)]`
-/

namespace A106881.P10335683123271550517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106881.P10335683123271550517

noncomputable section

/-- A106881: Primes of the form x^2+xy+9y^2.

Offset 1, canonical program `A106881.P10335683123271550517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4978 terms. -/
def A106881 (n : ℕ) : ℤ :=
  (A106881.P10335683123271550517.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4978 terms. -/
def A106881.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107136.P8570020010701659730

`∪[A139854(n+1), A139860(n+1)]`
-/

namespace A107136.P8570020010701659730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107136.P8570020010701659730

noncomputable section

/-- A107136: Primes of the form 3x^2 + 10y^2.

Offset 1, canonical program `A107136.P8570020010701659730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107136 (n : ℕ) : ℤ :=
  (A107136.P8570020010701659730.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107136.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107147.P16137290350496970727

`∪[A139874(n+1), A139879(n+1)]`
-/

namespace A107147.P16137290350496970727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107147.P16137290350496970727

noncomputable section

/-- A107147: Primes of the form 3x^2 + 14y^2.

Offset 1, canonical program `A107147.P16137290350496970727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107147 (n : ℕ) : ℤ :=
  (A107147.P16137290350496970727.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107147.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107942.P11863838632754258616

`2*A107966(n)-A107967(n)`
-/

namespace A107942.P11863838632754258616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107966 n - A107967 n

end

end A107942.P11863838632754258616

noncomputable section

/-- A107942: a(n) = (n+1)(n+2)^3*(n+3)^3*(n+4)(2n+5)/4320.

Offset 0, canonical program `A107942.P11863838632754258616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107942 (n : ℕ) : ℤ :=
  A107942.P11863838632754258616.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108263.P18378031101420940815

`A086810(A091018(n))`
-/

namespace A108263.P18378031101420940815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086810 (A091018 n).toNat

end

end A108263.P18378031101420940815

noncomputable section

/-- A108263: Triangle read by rows: T(n,k) is the number of short bushes with n edges and k branchnodes (i.e., nodes of outdegree at least two). A short bush is an ordered tree with no nodes of outdegree 1.

Offset 0, canonical program `A108263.P18378031101420940815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2652 terms. -/
def A108263 (n : ℕ) : ℤ :=
  A108263.P18378031101420940815.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2652 terms. -/
def A108263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108601.P2870284263787811406

`(A138622(n+1)+65)*2`
-/

namespace A108601.P2870284263787811406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A138622 (n + 1) + 65) * 2

end

end A108601.P2870284263787811406

noncomputable section

/-- A108601: Numbers n such that 7*n - 911 is prime.

Offset 1, canonical program `A108601.P2870284263787811406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108601 (n : ℕ) : ℤ :=
  A108601.P2870284263787811406.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108666.P2376190023294096623

`n/2*A123164(n)`
-/

namespace A108666.P2376190023294096623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A123164 n : ℚ)

end

end A108666.P2376190023294096623

noncomputable section

/-- A108666: Number of (1,1)-steps in all Delannoy paths of length n.

Offset 0, canonical program `A108666.P2376190023294096623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A108666 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A108666.P2376190023294096623.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A108666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109274.P11602195938365358574

`A307390(n+1)-1`
-/

namespace A109274.P11602195938365358574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307390 (n + 1) - 1

end

end A109274.P11602195938365358574

noncomputable section

/-- A109274: Numbers k such that k+1 is prime, 2k+1 composite.

Offset 1, canonical program `A109274.P11602195938365358574`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307390, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109274 (n : ℕ) : ℤ :=
  A109274.P11602195938365358574.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307390, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109274.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A110007.P13703026918754341120

`A188467(n+1)+a(2%n)+1` with `a(0)=1`
-/

namespace A110007.P13703026918754341120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A188467 (n + 1) + (a (2 % n) + 1)

end

end A110007.P13703026918754341120

noncomputable section

/-- A110007: a(n) = n-F(F(F(n))) where F(x)=A120613(x)=floor(phi*floor(x/phi)) and phi=(1+sqrt(5))/2.

Offset 1, canonical program `A110007.P13703026918754341120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110007 (n : ℕ) : ℤ :=
  A110007.P13703026918754341120.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110007.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110169.P12142494471206816610

`A110170(A025581(n))`
-/

namespace A110169.P12142494471206816610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110170 (A025581 n).toNat

end

end A110169.P12142494471206816610

noncomputable section

/-- A110169: Triangle read by rows: T(n,k) (0<=k<=n) is the number of Delannoy paths of length n that start with exactly k (1,1) steps.

Offset 0, canonical program `A110169.P12142494471206816610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8911 terms. -/
def A110169 (n : ℕ) : ℤ :=
  A110169.P12142494471206816610.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8911 terms. -/
def A110169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A110581.P9399505698075329016

`p?[A014682(A307390(n+1)+1)]`
-/

namespace A110581.P9399505698075329016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A307390 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A110581.P9399505698075329016

noncomputable section

/-- A110581: Primes p such that 2p-1 is prime, but 4p-3 is not prime.

Offset 1, canonical program `A110581.P9399505698075329016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 539 terms. -/
def A110581 (n : ℕ) : ℤ :=
  A110581.P9399505698075329016.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 539 terms. -/
def A110581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111949.P10964253214955943244

`∑{d}[n+1, A035187(#)*A275966((n+1)/#)]`
-/

namespace A111949.P10964253214955943244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035187 d * A275966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A111949.P10964253214955943244

noncomputable section

/-- A111949: Expansion of eta(q) * eta(q^2) * eta(q^10) * eta(q^20) / (eta(q^4) * eta(q^5)) in powers of q.

Offset 1, canonical program `A111949.P10964253214955943244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111949 (n : ℕ) : ℤ :=
  A111949.P10964253214955943244.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A111949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111967.P13674875290881375490

`Δ[A000523(A002024(n+1))-A115361(n)]`
-/

namespace A111967.P13674875290881375490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A002024 (n + 1)).toNat - A115361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111967.P13674875290881375490

noncomputable section

/-- A111967: Inverse of number triangle A101688.

Offset 0, canonical program `A111967.P13674875290881375490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A111967 (n : ℕ) : ℤ :=
  A111967.P13674875290881375490.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A111967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113421.P13774597701108961501

`∑{d}[n+1, A275966(#)*A326503((n+1)/#)]`
-/

namespace A113421.P13774597701108961501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A275966 d * A326503 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A113421.P13774597701108961501

noncomputable section

/-- A113421: Expansion of eta(q)^2 * eta(q^4) * eta(q^6)^2 * eta(q^12) / eta(q^3)^2 in powers of q.

Offset 1, canonical program `A113421.P13774597701108961501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113421 (n : ℕ) : ℤ :=
  A113421.P13774597701108961501.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A113421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113428.P12735616040462337458

`A113429(9*n)`
-/

namespace A113428.P12735616040462337458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113429 (9 * n)

end

end A113428.P12735616040462337458

noncomputable section

/-- A113428: Expansion of f(-x^2, -x^3) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A113428.P12735616040462337458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1112 terms. -/
def A113428 (n : ℕ) : ℤ :=
  A113428.P12735616040462337458.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1112 terms. -/
def A113428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113789.P9130721561676906998

`A259504(eq[1, A259504(n+2)-A259504(n+1)]+1)`
-/

namespace A113789.P9130721561676906998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259504 (n + 2) - A259504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259504 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A113789.P9130721561676906998

noncomputable section

/-- A113789: Numbers n such that n, n+1 and n+2 are products of exactly 3 primes.

Offset 1, canonical program `A113789.P9130721561676906998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2226 terms. -/
def A113789 (n : ℕ) : ℤ :=
  A113789.P9130721561676906998.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2226 terms. -/
def A113789.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A115424.P2393217423443762188

`A115805(n+2)/3`
-/

namespace A115424.P2393217423443762188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115805 (n + 2) : ℚ) / 3

end

end A115424.P2393217423443762188

noncomputable section

/-- A115424: Integers n > 0 such that n XOR 62*n = 63*n.

Offset 1, canonical program `A115424.P2393217423443762188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6235 terms. -/
def A115424 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A115424.P2393217423443762188.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6235 terms. -/
def A115424.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A117285.P12871270459971671114

`eq[1, A255849(A051953(n+1))]+1`
-/

namespace A117285.P12871270459971671114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255849 (A051953 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A117285.P12871270459971671114

noncomputable section

/-- A117285: Numbers k for which the cototient k-phi(k) is a pentagonal number.

Offset 1, canonical program `A117285.P12871270459971671114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1350 terms. -/
def A117285 (n : ℕ) : ℤ :=
  (A117285.P12871270459971671114.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1350 terms. -/
def A117285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119473.P16249177960589023562

`A193737(A091018(n+1))`
-/

namespace A119473.P16249177960589023562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193737 (A091018 (n + 1)).toNat

end

end A119473.P16249177960589023562

noncomputable section

/-- A119473: Triangle read by rows: T(n,k) is number of binary words of length n and having k runs of 0's of odd length, 0 <= k <= ceiling(n/2). (A run of 0's is a subsequence of consecutive 0's of maximal length.)

Offset 0, canonical program `A119473.P16249177960589023562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A119473 (n : ℕ) : ℤ :=
  A119473.P16249177960589023562.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A119473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119973.P6279921155899130007

`eq[A038189(n), A125061(n)]`
-/

namespace A119973.P6279921155899130007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125061 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A119973.P6279921155899130007

noncomputable section

/-- A119973: Numbers of the form (4k+1)*2^j which are not a sum of two squares.

Offset 1, canonical program `A119973.P6279921155899130007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2254 terms. -/
def A119973 (n : ℕ) : ℤ :=
  (A119973.P6279921155899130007.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2254 terms. -/
def A119973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A121559.P2620035417922548176

`A175077(n+2)-1`
-/

namespace A121559.P2620035417922548176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175077 (n + 2) - 1

end

end A121559.P2620035417922548176

noncomputable section

/-- A121559: Final result (0 or 1) under iterations of {r mod (max prime p <= r)} starting at r = n.

Offset 1, canonical program `A121559.P2620035417922548176`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175077, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121559 (n : ℕ) : ℤ :=
  A121559.P2620035417922548176.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175077, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121559.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A121561.P3772356346203237130

`A175078(n+2)`
-/

namespace A121561.P3772356346203237130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (n + 2)

end

end A121561.P3772356346203237130

noncomputable section

/-- A121561: The number of iterations of "subtract the largest prime less than or equal to the current value" to go from n to the limiting value 0 or 1.

Offset 1, canonical program `A121561.P3772356346203237130`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121561 (n : ℕ) : ℤ :=
  A121561.P3772356346203237130.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A121561.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A122179.P10778673272952612676`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034836, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122179 (n : ℕ) : ℤ :=
  A122179.P10778673272952612676.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034836, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122179.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A123870.P12259030212221851623

`A214295(A136548(n))+a(A180446(n))+1` with `a(0)=4`
-/

namespace A123870.P12259030212221851623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A214295 (A136548 n).toNat + a (A180446 n).toNat + 1

end

end A123870.P12259030212221851623

noncomputable section

/-- A123870: Order of minimal triangulation of nonorientable closed surface with n cross-caps (N_n).

Offset 0, canonical program `A123870.P12259030212221851623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A123870 (n : ℕ) : ℤ :=
  A123870.P12259030212221851623.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A123870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A125203.P7914855552444812704

`round(A293513(4*n+5)/2)`
-/

namespace A125203.P7914855552444812704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A293513 (4 * n + 5) : ℚ) / 2)

end

end A125203.P7914855552444812704

noncomputable section

/-- A125203: Number of ways to write n as 4*x*y - x - y with 1<=x<=y.

Offset 1, canonical program `A125203.P7914855552444812704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4095 terms. -/
def A125203 (n : ℕ) : ℤ :=
  A125203.P7914855552444812704.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4095 terms. -/
def A125203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128100.P759150142408682300

`A037027(A091018(n))`
-/

namespace A128100.P759150142408682300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (A091018 n).toNat

end

end A128100.P759150142408682300

noncomputable section

/-- A128100: Triangle read by rows: T(n,k) is the number of ways to tile a 2 X n rectangle with k pieces of 2 X 2 tiles and n-2k pieces of 1 X 2 tiles (0 <= k <= floor(n/2)).

Offset 0, canonical program `A128100.P759150142408682300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5776 terms. -/
def A128100 (n : ℕ) : ℤ :=
  A128100.P759150142408682300.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5776 terms. -/
def A128100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128176.P3128641014163871211

`(A129690(n+1)+A007318(n))/2`
-/

namespace A128176.P3128641014163871211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129690 (n + 1) + A007318 n : ℚ) / 2

end

end A128176.P3128641014163871211

noncomputable section

/-- A128176: A128174 * A007318.

Offset 1, canonical program `A128176.P3128641014163871211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128176 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A128176.P3128641014163871211.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128176.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129710.P7540357634890969964

`A029653(A091018(n))`
-/

namespace A129710.P7540357634890969964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029653 (A091018 n).toNat

end

end A129710.P7540357634890969964

noncomputable section

/-- A129710: Triangle read by rows: T(n,k) is the number of Fibonacci binary words of length n and having k 01 subwords (0 <= k <= floor(n/2)). A Fibonacci binary word is a binary word having no 00 subword.

Offset 0, canonical program `A129710.P7540357634890969964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A129710 (n : ℕ) : ℤ :=
  A129710.P7540357634890969964.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A129710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129950.P15295767996041627134

`2*A164292(n+1)-A010051(n+1)`
-/

namespace A129950.P15295767996041627134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164292 (n + 1) - A010051 (n + 1)

end

end A129950.P15295767996041627134

noncomputable section

/-- A129950: Indicator function of twin primes: 1 if n is a twin prime member, 0 if not prime, -1 else (isolated prime or 2).

Offset 1, canonical program `A129950.P15295767996041627134`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A164292, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129950 (n : ℕ) : ℤ :=
  A129950.P15295767996041627134.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A164292, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129950.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A130277.P1302981945449131391

`A141674(n+1)/A010766(n+1)`
-/

namespace A130277.P1302981945449131391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141674 (n + 1) : ℚ) / (A010766 (n + 1) : ℚ)

end

end A130277.P1302981945449131391

noncomputable section

/-- A130277: Triangle read by rows: T(n, k) = A000005(n) if k divides n, T(n, k) = 0 otherwise.

Offset 1, canonical program `A130277.P1302981945449131391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A130277 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A130277.P1302981945449131391.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. -/
def A130277.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A132243.P14774113840240775402

`filter[A132240(n+1), A164292(#)]`
-/

namespace A132243.P14774113840240775402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164292 (f1 j).toNat = 1) n)

end

end A132243.P14774113840240775402

noncomputable section

/-- A132243: Twin primes congruent to {1, 29} mod 30.

Offset 1, canonical program `A132243.P14774113840240775402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A132243 (n : ℕ) : ℤ :=
  A132243.P14774113840240775402.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A132243.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132460.P7544697064205325681

`A293600(A056536(n+1))`
-/

namespace A132460.P7544697064205325681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293600 (A056536 (n + 1)).toNat

end

end A132460.P7544697064205325681

noncomputable section

/-- A132460: Irregular triangle read by rows of the initial floor(n/2) + 1 coefficients of 1/C(x)^n, where C(x) is the g.f. of the Catalan sequence (A000108).

Offset 0, canonical program `A132460.P7544697064205325681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A132460 (n : ℕ) : ℤ :=
  A132460.P7544697064205325681.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A132460.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A133156.P15073346869318780918

`A065109(A091018(n))`
-/

namespace A133156.P15073346869318780918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065109 (A091018 n).toNat

end

end A133156.P15073346869318780918

noncomputable section

/-- A133156: Irregular triangle read by rows: coefficients of U(n,x), Chebyshev polynomials of the second kind with exponents in decreasing order.

Offset 0, canonical program `A133156.P15073346869318780918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A133156 (n : ℕ) : ℤ :=
  A133156.P15073346869318780918.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A133156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134425.P9961486418266130695

`6*a(n-1)-A001003(n)` with `a(0)=1`
-/

namespace A134425.P9961486418266130695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * a (n - 1) - A001003 n

end

end A134425.P9961486418266130695

noncomputable section

/-- A134425: Number of paths of length n in the first quadrant, starting at the origin and consisting of 2 kinds of upsteps U=(1,1) (U1 and U2), 3 kinds of flatsteps F=(1,0) (F1, F2 and F3) and 1 kind of downsteps D=(1,-1).

Offset 0, canonical program `A134425.P9961486418266130695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A134425 (n : ℕ) : ℤ :=
  A134425.P9961486418266130695.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A134425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A135528.P3618318843041046607

`A049711(n+3)%2`
-/

namespace A135528.P3618318843041046607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049711 (n + 3)) 2

end

end A135528.P3618318843041046607

noncomputable section

/-- A135528: 1, then repeat 1,0.

Offset 1, canonical program `A135528.P3618318843041046607`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049711, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135528 (n : ℕ) : ℤ :=
  A135528.P3618318843041046607.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049711, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A135528.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A135610.P10837418836104773190

`floor(A059344(A049068(n+1))/2)`
-/

namespace A135610.P10837418836104773190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A059344 (A049068 (n + 1)).toNat : ℚ) / 2⌋

end

end A135610.P10837418836104773190

noncomputable section

/-- A135610: Triangle read by rows: the k-th entry of row n is the number of particular connectivity requirements that a k-linked graph with n >= 2k vertices has to satisfy T(n,k) = (1/2) * n!/(k!*(n-2*k)!) where k runs from 1 to floor(n/2).

Offset 1, canonical program `A135610.P10837418836104773190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A135610 (n : ℕ) : ℤ :=
  A135610.P10837418836104773190.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A135610.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A138297.P9504987651790712023

`A030241(A048718(n))`
-/

namespace A138297.P9504987651790712023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030241 (A048718 n).toNat

end

end A138297.P9504987651790712023

noncomputable section

/-- A138297: Rows of triangle A138060 converge to this sequence.

Offset 1, canonical program `A138297.P9504987651790712023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A138297 (n : ℕ) : ℤ :=
  A138297.P9504987651790712023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A138297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138502.P2698045557476506495

`A002173(2*n+1)`
-/

namespace A138502.P2698045557476506495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002173 (2 * n + 1)

end

end A138502.P2698045557476506495

noncomputable section

/-- A138502: Expansion of q^(-1/2) * (eta(q)^4 * eta(q^4)^2 / eta(q^2)^3)^2 in powers of q.

Offset 0, canonical program `A138502.P2698045557476506495`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002173, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138502 (n : ℕ) : ℤ :=
  A138502.P2698045557476506495.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002173, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138502.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138505.P14452217802365060205

`(-1)^n*A002173(n+1)`
-/

namespace A138505.P14452217802365060205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A002173 (n + 1)

end

end A138505.P14452217802365060205

noncomputable section

/-- A138505: Expansion of ((phi(q) * phi(-q^2)^2)^2 - 1) / 4 in powers of q where phi() is a Ramanujan theta function.

Offset 1, canonical program `A138505.P14452217802365060205`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002173, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138505 (n : ℕ) : ℤ :=
  A138505.P14452217802365060205.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002173, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138505.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A138837.P13204643735566073635

`p?[A379218(p?[2*n+1])]`
-/

namespace A138837.P13204643735566073635
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379218 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A138837.P13204643735566073635

noncomputable section

/-- A138837: Non-Mersenne primes: A000040 \ A000668.

Offset 1, canonical program `A138837.P13204643735566073635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3507 terms. -/
def A138837 (n : ℕ) : ℤ :=
  A138837.P13204643735566073635.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3507 terms. -/
def A138837.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A139986.P14602032053010067332

`∩[A139899(n+1), A140616(n+1)]`
-/

namespace A139986.P14602032053010067332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139986.P14602032053010067332

noncomputable section

/-- A139986: Primes of the form 5x^2+168y^2.

Offset 1, canonical program `A139986.P14602032053010067332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4980 terms. -/
def A139986 (n : ℕ) : ℤ :=
  (A139986.P14602032053010067332.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4980 terms. -/
def A139986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140002.P18414971143705571415

`∩[A139899(n+1), A139928(n+1)]`
-/

namespace A140002.P18414971143705571415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140002.P18414971143705571415

noncomputable section

/-- A140002: Primes of the form 8*x^2 + 165*y^2.

Offset 1, canonical program `A140002.P18414971143705571415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4996 terms. -/
def A140002 (n : ℕ) : ℤ :=
  (A140002.P18414971143705571415.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4996 terms. -/
def A140002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140003.P14266301806652680954

`∩[A139857(n+1), A139928(n+1)]`
-/

namespace A140003.P14266301806652680954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139857 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139928 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140003.P14266301806652680954

noncomputable section

/-- A140003: Primes of the form 8x^2+8xy+167y^2.

Offset 1, canonical program `A140003.P14266301806652680954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4985 terms. -/
def A140003 (n : ℕ) : ℤ :=
  (A140003.P14266301806652680954.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4985 terms. -/
def A140003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140028.P5456480010220163943

`∩[A139848(n+1), A191029(n+1)]`
-/

namespace A140028.P5456480010220163943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140028.P5456480010220163943

noncomputable section

/-- A140028: Primes of the form 42x^2+42xy+43y^2.

Offset 1, canonical program `A140028.P5456480010220163943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 637 terms. -/
def A140028 (n : ℕ) : ℤ :=
  (A140028.P5456480010220163943.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 637 terms. -/
def A140028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140615.P18277158942554378838

`∩[A068228(n+1), A139838(n+1)]`
-/

namespace A140615.P18277158942554378838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140615.P18277158942554378838

noncomputable section

/-- A140615: Primes of the form 13x^2+6xy+21y^2.

Offset 1, canonical program `A140615.P18277158942554378838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2548 terms. -/
def A140615 (n : ℕ) : ℤ :=
  (A140615.P18277158942554378838.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2548 terms. -/
def A140615.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A141697.P6052672182441989793

`3*A168524(n)-2*A154337(n)`
-/

namespace A141697.P6052672182441989793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A168524 n - 2 * A154337 n

end

end A141697.P6052672182441989793

noncomputable section

/-- A141697: T(n,k) = (q*Sum_{j=0..k+1} (-1)^j*binomial(n+1, j)*(k+1-j)^n - p*binomial(n-1, k))/2 where p=12 and q=14.

Offset 1, canonical program `A141697.P6052672182441989793`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A154337, A168524, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A141697 (n : ℕ) : ℤ :=
  A141697.P6052672182441989793.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A154337, A168524, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A141697.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A145478.P8300234844944673233

`p?[A001747(n+1)-29]`
-/

namespace A145478.P8300234844944673233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1) - 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145478.P8300234844944673233

noncomputable section

/-- A145478: Primes p such that (29 + p)/2 is prime.

Offset 1, canonical program `A145478.P8300234844944673233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1258 terms. -/
def A145478 (n : ℕ) : ℤ :=
  A145478.P8300234844944673233.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1258 terms. -/
def A145478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A151670.P12086214931527312146

`A061392(A151671(n))`
-/

namespace A151670.P12086214931527312146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 (A151671 n).toNat

end

end A151670.P12086214931527312146

noncomputable section

/-- A151670: G.f.: Product_{k>=0} (1 + 2*x^(5^k)).

Offset 0, canonical program `A151670.P12086214931527312146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151670 (n : ℕ) : ℤ :=
  A151670.P12086214931527312146.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A151670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152442.P14276229364845082290

`lt[2, A000005(A137926(n+1))]+1`
-/

namespace A152442.P14276229364845082290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A137926 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A152442.P14276229364845082290

noncomputable section

/-- A152442: n is included if the largest divisor of n that is coprime to d(n) is a composite, where d(n) is the number of divisors of n.

Offset 1, canonical program `A152442.P14276229364845082290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A152442 (n : ℕ) : ℤ :=
  (A152442.P14276229364845082290.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A152442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A152468.P16510196203380355296

`A000040(A288041(n+1))`
-/

namespace A152468.P16510196203380355296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A288041 (n + 1)).toNat

end

end A152468.P16510196203380355296

noncomputable section

/-- A152468: Smallest of five consecutive primes whose sum is a prime.

Offset 1, canonical program `A152468.P16510196203380355296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A152468 (n : ℕ) : ℤ :=
  A152468.P16510196203380355296.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A152468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A153368.P10746229264741133645

`A153369(n+1)+A153370(n+1)`
-/

namespace A153368.P10746229264741133645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153369 (n + 1) + A153370 (n + 1)

end

end A153368.P10746229264741133645

noncomputable section

/-- A153368: Number of zig-zag paths from top to bottom of a rectangle of width 11 with n rows.

Offset 1, canonical program `A153368.P10746229264741133645`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153369, A153370, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A153368 (n : ℕ) : ℤ :=
  A153368.P10746229264741133645.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153369, A153370, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A153368.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A157970.P9283823334930395978

`A248056(n+1)-1`
-/

namespace A157970.P9283823334930395978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248056 (n + 1) - 1

end

end A157970.P9283823334930395978

noncomputable section

/-- A157970: Evil twin locations: first members of pairs of consecutive evil numbers.

Offset 1, canonical program `A157970.P9283823334930395978`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A248056, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A157970 (n : ℕ) : ℤ :=
  A157970.P9283823334930395978.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A248056, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A157970.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A164368.P4170227640801400143

`p?[A217564(n+1)+A000040(n+1)]`
-/

namespace A164368.P4170227640801400143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217564 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A164368.P4170227640801400143

noncomputable section

/-- A164368: Primes p with the property: if q is the smallest prime > p/2, then a prime exists between p and 2q.

Offset 1, canonical program `A164368.P4170227640801400143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5807 terms. -/
def A164368 (n : ℕ) : ℤ :=
  A164368.P4170227640801400143.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5807 terms. -/
def A164368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164376.P15310961995427451889

`∪[A023002(n), A025583(n+1)]`
-/

namespace A164376.P15310961995427451889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023002 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A164376.P15310961995427451889

noncomputable section

/-- A164376: Nonprime numbers that are not a sum of 2 primes.

Offset 1, canonical program `A164376.P15310961995427451889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164376 (n : ℕ) : ℤ :=
  (A164376.P15310961995427451889.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A164376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166341.P17958424774460978478

`2*A166340(n+1)-A166344(n+1)`
-/

namespace A166341.P17958424774460978478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166340 (n + 1) - A166344 (n + 1)

end

end A166341.P17958424774460978478

noncomputable section

/-- A166341: Triangle T(n, k) = coefficients of ( t(n, x) ) where t(n, x) = (1-x)^(n+1)*p(n, x)/x, p(n, x) = x*D( p(n-1, x) ), with p(1, x) = x/(1-x)^2, p(2, x) = x*(1+x)/(1-x)^3, and p(3, x) = x*(1+10*x+x^2)/(1-x)^4, read by rows.

Offset 1, canonical program `A166341.P17958424774460978478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A166341 (n : ℕ) : ℤ :=
  A166341.P17958424774460978478.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A166341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A166343.P12006835282466394169

`2*A166340(n+1)-A008292(n+1)`
-/

namespace A166343.P12006835282466394169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A166340 (n + 1) - A008292 (n + 1)

end

end A166343.P12006835282466394169

noncomputable section

/-- A166343: Triangle T(n, k) = coefficients of ( t(n, x) ) where t(n, x) = (1-x)^(n+1)*p(n, x)/x, p(n, x) = x*D( p(n-1, x) ), with p(1, x) = x/(1-x)^2, p(2, x) = x*(1+x)/(1-x)^3, and p(3, x) = x*(1+12*x+x^2)/(1-x)^4, read by rows.

Offset 1, canonical program `A166343.P12006835282466394169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A166343 (n : ℕ) : ℤ :=
  A166343.P12006835282466394169.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A166343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167915.P5019087640857283714

`A060254(n%a(n-1))` with `a(0)=5`
-/

namespace A167915.P5019087640857283714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A060254 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A167915.P5019087640857283714

noncomputable section

/-- A167915: Primes which are the sums of two consecutive nonprimes (A141468).

Offset 1, canonical program `A167915.P5019087640857283714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167915 (n : ℕ) : ℤ :=
  A167915.P5019087640857283714.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A167915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168044.P11925367810076855045

`A167692(n+1)/2`
-/

namespace A168044.P11925367810076855045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167692 (n + 1) : ℚ) / 2

end

end A168044.P11925367810076855045

noncomputable section

/-- A168044: Half of the even nonisolated nonprimes A167692.

Offset 1, canonical program `A168044.P11925367810076855045`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168044 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A168044.P11925367810076855045.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A168044.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A171487.P12486691831779442255

`A171435(2*n+1)*A171435(2*n+3)`
-/

namespace A171487.P12486691831779442255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 * n + 1) * A171435 (2 * n + 3)

end

end A171487.P12486691831779442255

noncomputable section

/-- A171487: Product of odd prime anti-factors < n, with multiplicity.

Offset 1, canonical program `A171487.P12486691831779442255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171487 (n : ℕ) : ℤ :=
  A171487.P12486691831779442255.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171487.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171729.P17350699023659055565

`A171730(A038722(n+1))`
-/

namespace A171729.P17350699023659055565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171730 (A038722 (n + 1)).toNat

end

end A171729.P17350699023659055565

noncomputable section

/-- A171729: Triangle of differences of Fibonacci numbers, rows ascending.

Offset 1, canonical program `A171729.P17350699023659055565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171729 (n : ℕ) : ℤ :=
  A171729.P17350699023659055565.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A171729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A173971.P2217788028575188822

`A000040(A175893(n+1))`
-/

namespace A173971.P2217788028575188822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A175893 (n + 1)).toNat

end

end A173971.P2217788028575188822

noncomputable section

/-- A173971: Primes p such that 2*p+q is prime, where q is the prime following p.

Offset 1, canonical program `A173971.P2217788028575188822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A173971 (n : ℕ) : ℤ :=
  A173971.P2217788028575188822.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A173971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174051.P16173755171828309437

`filter[A008784(n+1), A066247(#)]`
-/

namespace A174051.P16173755171828309437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A174051.P16173755171828309437

noncomputable section

/-- A174051: Composite numbers of the form x^2+y^2, gcd(x,y) = 1.

Offset 1, canonical program `A174051.P16173755171828309437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6476 terms. -/
def A174051 (n : ℕ) : ℤ :=
  A174051.P16173755171828309437.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6476 terms. -/
def A174051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174933.P15059812043474275287

`∑{d}[n+1, A338576(#)]`
-/

namespace A174933.P15059812043474275287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A338576 d

end

end A174933.P15059812043474275287

noncomputable section

/-- A174933: a(n) = Sum_{d|n} A007955(d) * A000027(d) = Sum_{d|n} A007955(d) * (d), where A007955(m) = product of divisors of m.

Offset 1, canonical program `A174933.P15059812043474275287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A174933 (n : ℕ) : ℤ :=
  A174933.P15059812043474275287.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A174933.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A175341.P6465404727987718190

`A304651(n²)`
-/

namespace A175341.P6465404727987718190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304651 (n ^ 2)

end

end A175341.P6465404727987718190

noncomputable section

/-- A175341: Number of coprime pairs (x,y) with x^2+y^2 <= n^2.

Offset 0, canonical program `A175341.P6465404727987718190`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A304651, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175341 (n : ℕ) : ℤ :=
  A175341.P6465404727987718190.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A304651, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A175341.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A176479.P6065574295959308531

`(n+1)*A001003(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A176479.P6065574295959308531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001003 n

end

end A176479.P6065574295959308531

noncomputable section

/-- A176479: a(n) = (n+1)*A001003(n).

Offset 0, canonical program `A176479.P6065574295959308531`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176479 (n : ℕ) : ℤ :=
  A176479.P6065574295959308531.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001003, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176479.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A176562.P7798059674671749075

`A305117(n²)`
-/

namespace A176562.P7798059674671749075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305117 (n ^ 2)

end

end A176562.P7798059674671749075

noncomputable section

/-- A176562: a(n) = A175341(n)/4.

Offset 0, canonical program `A176562.P7798059674671749075`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A305117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176562 (n : ℕ) : ℤ :=
  A176562.P7798059674671749075.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A305117, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A176562.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A084558.P8374569854218058976

`A090529(n+1)-1`
-/

namespace A084558.P8374569854218058976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090529 (n + 1) - 1

end

end A084558.P8374569854218058976

noncomputable section

/-- A084558: a(0) = 0; for n >= 1: a(n) = largest m such that n >= m!.

Offset 0, canonical program `A084558.P8374569854218058976`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090529, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084558 (n : ℕ) : ℤ :=
  A084558.P8374569854218058976.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090529, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084558.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A092057.P13672912862792873877

`∩[A066436(n+1), A179262(n+1)]`
-/

namespace A092057.P13672912862792873877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092057.P13672912862792873877

noncomputable section

/-- A092057: Primes of the form 2*p^2 - 1, where p is prime.

Offset 1, canonical program `A092057.P13672912862792873877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 931 terms. -/
def A092057 (n : ℕ) : ℤ :=
  (A092057.P13672912862792873877.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 931 terms. -/
def A092057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100319.P5803763208182587955

`A167692(n+2)`
-/

namespace A100319.P5803763208182587955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167692 (n + 2)

end

end A100319.P5803763208182587955

noncomputable section

/-- A100319: Even numbers m such that at least one of m-1 and m+1 is composite.

Offset 1, canonical program `A100319.P5803763208182587955`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100319 (n : ℕ) : ℤ :=
  A100319.P5803763208182587955.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167692, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A100319.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A106078.P16388488065149343356

`∩[A023214(n+1), A023218(n+1)]`
-/

namespace A106078.P16388488065149343356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106078.P16388488065149343356

noncomputable section

/-- A106078: Primes p such that 5*p+4 and 4*p+5 are primes.

Offset 1, canonical program `A106078.P16388488065149343356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2255 terms. -/
def A106078 (n : ℕ) : ℤ :=
  (A106078.P16388488065149343356.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2255 terms. -/
def A106078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123588.P9658134305888897931

`-floor(A127674(n)/2)`
-/

namespace A123588.P9658134305888897931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊(A127674 n : ℚ) / 2⌋

end

end A123588.P9658134305888897931

noncomputable section

/-- A123588: Triangle read by rows: T(n, k) is the coefficient of x^k in the polynomial 1 - ChT(n, x^(1/2))^2, where ChT(n, x) is the n-th Chebyshev polynomial of the first kind, evaluated at x (0 <= k <= n).

Offset 0, canonical program `A123588.P9658134305888897931`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A123588 (n : ℕ) : ℤ :=
  A123588.P9658134305888897931.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A123588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A124324.P3454007153021471071

`A112493(A091018(n)%A008299(n+2))`
-/

namespace A124324.P3454007153021471071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112493 (Int.tmod (A091018 n) (A008299 (n + 2))).toNat

end

end A124324.P3454007153021471071

noncomputable section

/-- A124324: Triangle read by rows: T(n,k) is the number of partitions of an n-set having k blocks of size > 1 (0<=k<=floor(n/2)).

Offset 0, canonical program `A124324.P3454007153021471071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 931 terms. -/
def A124324 (n : ℕ) : ℤ :=
  A124324.P3454007153021471071.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 931 terms. -/
def A124324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128830.P9449490363820853623

`A000005(A137926(n+1))`
-/

namespace A128830.P9449490363820853623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A137926 (n + 1)).toNat

end

end A128830.P9449490363820853623

noncomputable section

/-- A128830: a(n) = the number of positive divisors of n which are coprime to d(n), where d(n) = the number of positive divisors of n.

Offset 1, canonical program `A128830.P9449490363820853623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A128830 (n : ℕ) : ℤ :=
  A128830.P9449490363820853623.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A128830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A136071.P16113164721399552730

`5*A023218(n+1)+4`
-/

namespace A136071.P16113164721399552730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A023218 (n + 1) + 4

end

end A136071.P16113164721399552730

noncomputable section

/-- A136071: Primes of the form 5*p + 4 with p prime.

Offset 1, canonical program `A136071.P16113164721399552730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136071 (n : ℕ) : ℤ :=
  A136071.P16113164721399552730.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A136071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A139965.P1097653739943172126

`∪[A140037(n+1), A140038(n+1)]`
-/

namespace A139965.P1097653739943172126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139965.P1097653739943172126

noncomputable section

/-- A139965: Primes of the form 6x^2+77y^2.

Offset 1, canonical program `A139965.P1097653739943172126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139965 (n : ℕ) : ℤ :=
  (A139965.P1097653739943172126.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A139965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140370.P11945933179841790018

`record[A171435(A306285(2*(n+1)))]`
-/

namespace A140370.P11945933179841790018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A306285 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140370.P11945933179841790018

noncomputable section

/-- A140370: Composites of the form 26k + 21.

Offset 1, canonical program `A140370.P11945933179841790018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3056 terms. -/
def A140370 (n : ℕ) : ℤ :=
  A140370.P11945933179841790018.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3056 terms. -/
def A140370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140376.P14382105918377167922

`record[A171435(A190991(2*n))]`
-/

namespace A140376.P14382105918377167922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A190991 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140376.P14382105918377167922

noncomputable section

/-- A140376: Nonprimes of the form 26n+1.

Offset 1, canonical program `A140376.P14382105918377167922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3049 terms. -/
def A140376 (n : ℕ) : ℤ :=
  A140376.P14382105918377167922.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3049 terms. -/
def A140376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140379.P6055374210974957999

`record[A171435(2*7*n+1)]`
-/

namespace A140379.P6055374210974957999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 * (7 * n) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140379.P6055374210974957999

noncomputable section

/-- A140379: Nonprimes of the form 14k+1.

Offset 1, canonical program `A140379.P6055374210974957999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5550 terms. -/
def A140379 (n : ℕ) : ℤ :=
  A140379.P6055374210974957999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5550 terms. -/
def A140379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140380.P10488376729537076416

`record[A171435(A017029(n)+41)]`
-/

namespace A140380.P10488376729537076416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A017029 n + 41).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140380.P10488376729537076416

noncomputable section

/-- A140380: Composites of the form 14k + 3.

Offset 1, canonical program `A140380.P10488376729537076416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3837 terms. -/
def A140380 (n : ℕ) : ℤ :=
  A140380.P10488376729537076416.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3837 terms. -/
def A140380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140381.P12508315804219335173

`record[A171435(A017005(2*n+1))]`
-/

namespace A140381.P12508315804219335173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A017005 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A140381.P12508315804219335173

noncomputable section

/-- A140381: Composites of the form 14k + 9.

Offset 1, canonical program `A140381.P12508315804219335173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3844 terms. -/
def A140381 (n : ℕ) : ℤ :=
  A140381.P12508315804219335173.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3844 terms. -/
def A140381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140845.P2138074440688167939

`∩[A140573(n+1), A142095(n+1)]`
-/

namespace A140845.P2138074440688167939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A140845.P2138074440688167939

noncomputable section

/-- A140845: Primes of the form 210k + 29.

Offset 1, canonical program `A140845.P2138074440688167939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4993 terms. -/
def A140845 (n : ℕ) : ℤ :=
  (A140845.P2138074440688167939.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4993 terms. -/
def A140845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141563.P13827635468112491936

`∩[A140743(n+1), A142082(n+1)]`
-/

namespace A141563.P13827635468112491936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141563.P13827635468112491936

noncomputable section

/-- A141563: Primes of the form 2*3*5*7*n+79.

Offset 1, canonical program `A141563.P13827635468112491936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4991 terms. -/
def A141563 (n : ℕ) : ℤ :=
  (A141563.P13827635468112491936.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4991 terms. -/
def A141563.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A166565.P15076705835472780470

`∩[A084354(n+1), A166566(n+1)]`
-/

namespace A166565.P15076705835472780470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166566 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A166565.P15076705835472780470

noncomputable section

/-- A166565: Primes p such that product of digits +- 1 is prime.

Offset 1, canonical program `A166565.P15076705835472780470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2422 terms. -/
def A166565 (n : ℕ) : ℤ :=
  (A166565.P15076705835472780470.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2422 terms. -/
def A166565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A174916.P15451532924887177754

`p?[A023218(n+1)+2]-2`
-/

namespace A174916.P15451532924887177754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023218 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A174916.P15451532924887177754

noncomputable section

/-- A174916: Lesser of twin primes p1 such that p1 + p2^2 - p1^2 is a prime number.

Offset 1, canonical program `A174916.P15451532924887177754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A174916 (n : ℕ) : ℤ :=
  A174916.P15451532924887177754.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A174916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091633.P12351698367247899697

`∩[A030096(n+1), A136333(n+1)]`
-/

namespace A091633.P12351698367247899697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091633.P12351698367247899697

noncomputable section

/-- A091633: Primes having only {1, 3, 7, 9} as digits.

Offset 1, canonical program `A091633.P12351698367247899697`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1915 terms. -/
def A091633 (n : ℕ) : ℤ :=
  (A091633.P12351698367247899697.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1915 terms. -/
def A091633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093013.P11698118702598108032

`A091992(n+1)/2`
-/

namespace A093013.P11698118702598108032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091992 (n + 1) : ℚ) / 2

end

end A093013.P11698118702598108032

noncomputable section

/-- A093013: Numbers n such that 10*n-3 and 10*n+3 are both primes.

Offset 1, canonical program `A093013.P11698118702598108032`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091992, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A093013 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A093013.P11698118702598108032.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091992, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A093013.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A096478.P11669575094309891601

`A000040(A096477(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A096478.P11669575094309891601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A096477 (n + 1)).toNat

end

end A096478.P11669575094309891601

noncomputable section

/-- A096478: a(n) = A000040(A096477(n)), i.e., prime(a(n)) and prime(a(n)+1) are twin primes.

Offset 1, canonical program `A096478.P11669575094309891601`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096477, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A096478 (n : ℕ) : ℤ :=
  A096478.P11669575094309891601.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096477, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A096478.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A096479.P1185693016366905234

`A006450(A096477(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A096479.P1185693016366905234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A096477 (n + 1)).toNat

end

end A096479.P1185693016366905234

noncomputable section

/-- A096479: "Secondary twin primes": a(n) = A006450(A096477(n)).

Offset 1, canonical program `A096479.P1185693016366905234`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096477, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A096479 (n : ℕ) : ℤ :=
  A096479.P1185693016366905234.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A096477, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A096479.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A100193.P16215837900538251078

`2*A104530(n)-A088218(n)`
-/

namespace A100193.P16215837900538251078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104530 n - A088218 n

end

end A100193.P16215837900538251078

noncomputable section

/-- A100193: a(n) = Sum_{k=0..n} binomial(2*n,n+k)*3^k.

Offset 0, canonical program `A100193.P16215837900538251078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A100193 (n : ℕ) : ℤ :=
  A100193.P16215837900538251078.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A100193.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106402.P14799609536326277547

`∑{d}[n+1, A002324(#)*A007434((n+1)/#)]`
-/

namespace A106402.P14799609536326277547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002324 d * A007434 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A106402.P14799609536326277547

noncomputable section

/-- A106402: Expansion of eta(q^3)^9 / eta(q)^3 in powers of q.

Offset 1, canonical program `A106402.P14799609536326277547`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106402 (n : ℕ) : ℤ :=
  A106402.P14799609536326277547.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A106402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109194.P15180095982522545927

`A275289(n+3)+A055218(n)`
-/

namespace A109194.P15180095982522545927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275289 (n + 3) + A055218 n

end

end A109194.P15180095982522545927

noncomputable section

/-- A109194: Number of returns to the x-axis (i.e., d or u steps hitting the x-axis) in all Grand Motzkin paths of length n. (A Grand Motzkin path of length n is a path in the half-plane x>=0, starting at (0,0), ending at (n,0) and consisting of steps u=(1,1), d=(1,-1) and h=(1,0).).

Offset 2, canonical program `A109194.P15180095982522545927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A109194 (n : ℕ) : ℤ :=
  A109194.P15180095982522545927.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A109194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109511.P175732434807543170

`A000225(n+1)-A085945(n+1)`
-/

namespace A109511.P175732434807543170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - A085945 (n + 1)

end

end A109511.P175732434807543170

noncomputable section

/-- A109511: Number of subsets of the first n numbers having a common divisor greater than 1.

Offset 1, canonical program `A109511.P175732434807543170`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085945, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109511 (n : ℕ) : ℤ :=
  A109511.P175732434807543170.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085945, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A109511.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A110963.P3344771894533151408

`A025480(floor(n/(xor(n, n+1)+1)))+1`
-/

namespace A110963.P3344771894533151408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat + 1

end

end A110963.P3344771894533151408

noncomputable section

/-- A110963: Fractalization of Kimberling's paraphrase of the binary number system beginning with 1.

Offset 1, canonical program `A110963.P3344771894533151408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110963 (n : ℕ) : ℤ :=
  A110963.P3344771894533151408.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A110963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112301.P15026904141317085207

`A113652(n+1)*A130731(n)`
-/

namespace A112301.P15026904141317085207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113652 (n + 1) * A130731 n

end

end A112301.P15026904141317085207

noncomputable section

/-- A112301: Expansion of (eta(q) * eta(q^16))^2 / (eta(q^2) * eta(q^8)) in powers of q.

Offset 1, canonical program `A112301.P15026904141317085207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112301 (n : ℕ) : ℤ :=
  A112301.P15026904141317085207.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A113681.P4096137213470006319

`A010815(5*n)`
-/

namespace A113681.P4096137213470006319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (5 * n)

end

end A113681.P4096137213470006319

noncomputable section

/-- A113681: Expansion of f(-x^2, -x^3)^2 / f(-x, -x^2) in powers of x where f() is Ramanujan's two-variable theta function.

Offset 0, canonical program `A113681.P4096137213470006319`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113681 (n : ℕ) : ℤ :=
  A113681.P4096137213470006319.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A113681.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A116915.P15025365533881428146

`-A010815(5*n+2)`
-/

namespace A116915.P15025365533881428146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A010815 (5 * n + 2)

end

end A116915.P15025365533881428146

noncomputable section

/-- A116915: Expansion of f(-x, -x^4)^2 / f(-x, -x^2) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A116915.P15025365533881428146`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A116915 (n : ℕ) : ℤ :=
  A116915.P15025365533881428146.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A116915.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A121373.P13063866257632154363

`(-1)^n*A010815(n)`
-/

namespace A121373.P13063866257632154363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A010815 n

end

end A121373.P13063866257632154363

noncomputable section

/-- A121373: Expansion of f(x) = f(x, -x^2) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A121373.P13063866257632154363`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121373 (n : ℕ) : ℤ :=
  A121373.P13063866257632154363.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A121373.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A122373.P7813675859475871797

`∑{d}[n+1, A007434(#)*A035178((n+1)/#)]`
-/

namespace A122373.P7813675859475871797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007434 d * A035178 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A122373.P7813675859475871797

noncomputable section

/-- A122373: Expansion of (c(q)^3 + c(q^2)^3) / 27 in powers of q where c() is a cubic AGM theta function.

Offset 1, canonical program `A122373.P7813675859475871797`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122373 (n : ℕ) : ℤ :=
  A122373.P7813675859475871797.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A122373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A122861.P10229164081842870848

`A115979(3*n+1)`
-/

namespace A122861.P10229164081842870848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115979 (3 * n + 1)

end

end A122861.P10229164081842870848

noncomputable section

/-- A122861: Expansion of phi(-q)chi(-q)psi(q^3) in powers of q where phi(),chi(),psi() are Ramanujan theta functions.

Offset 0, canonical program `A122861.P10229164081842870848`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A115979, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122861 (n : ℕ) : ℤ :=
  A122861.P10229164081842870848.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A115979, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A122861.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A123484.P10262199691466174921

`A035178(n+1)*A230074(n+1)`
-/

namespace A123484.P10262199691466174921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035178 (n + 1) * A230074 (n + 1)

end

end A123484.P10262199691466174921

noncomputable section

/-- A123484: Expansion of eta(q)^2 * eta(q^6)^4 * eta(q^8) * eta(q^24) / (eta(q^2) * eta(q^3) * eta(q^12))^2 in powers of q.

Offset 1, canonical program `A123484.P10262199691466174921`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123484 (n : ℕ) : ℤ :=
  A123484.P10262199691466174921.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A123484.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128616.P5791470407128350833

`(1-A156595(n))*A082451(n+1)`
-/

namespace A128616.P5791470407128350833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A156595 n) * A082451 (n + 1)

end

end A128616.P5791470407128350833

noncomputable section

/-- A128616: Expansion of q * psi(q^3) * psi(q^5) in powers of q where psi() is a Ramanujan theta function.

Offset 1, canonical program `A128616.P5791470407128350833`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128616 (n : ℕ) : ℤ :=
  A128616.P5791470407128350833.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A128617.P2599063269449293282

`A082451(n+1)*A156595(n)`
-/

namespace A128617.P2599063269449293282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082451 (n + 1) * A156595 n

end

end A128617.P2599063269449293282

noncomputable section

/-- A128617: Expansion of q^2 * psi(q) * psi(q^15) in powers of q where psi() is a Ramanujan theta function.

Offset 1, canonical program `A128617.P2599063269449293282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128617 (n : ℕ) : ℤ :=
  A128617.P2599063269449293282.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A128617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A129308.P2055734380787893719

`A088722(n+1)+A059841(n+1)`
-/

namespace A129308.P2055734380787893719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088722 (n + 1) + A059841 (n + 1)

end

end A129308.P2055734380787893719

noncomputable section

/-- A129308: a(n) is the number of positive integers k such that k*(k+1) divides n.

Offset 1, canonical program `A129308.P2055734380787893719`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088722, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129308 (n : ℕ) : ℤ :=
  A129308.P2055734380787893719.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088722, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A129308.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A129667.P9864119466472355018

`∏{e}[n+1, A010815(#)]`
-/

namespace A129667.P9864119466472355018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A010815 (Nat.factorization (f1 n) p)

end

end A129667.P9864119466472355018

noncomputable section

/-- A129667: Dirichlet inverse of the Abelian group count (A000688).

Offset 1, canonical program `A129667.P9864119466472355018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129667 (n : ℕ) : ℤ :=
  A129667.P9864119466472355018.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A129667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A130199.P3088622024897580555

`record[(n+1)*n*A228039(2*n+1)]`
-/

namespace A130199.P3088622024897580555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n : ℤ) * A228039 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A130199.P3088622024897580555

noncomputable section

/-- A130199: Evil oblong (promic) numbers.

Offset 1, canonical program `A130199.P3088622024897580555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130199 (n : ℕ) : ℤ :=
  A130199.P3088622024897580555.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A130199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A134023.P10471742780946936654

`A134021(n)-A005812(n)`
-/

namespace A134023.P10471742780946936654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 n - A005812 n

end

end A134023.P10471742780946936654

noncomputable section

/-- A134023: Number of zeros in balanced ternary representation of n.

Offset 0, canonical program `A134023.P10471742780946936654`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005812, A134021, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A134023 (n : ℕ) : ℤ :=
  A134023.P10471742780946936654.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005812, A134021, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A134023.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134756.P5651471618166463539

`sqrt(24*n+1)*A010815(n)`
-/

namespace A134756.P5651471618166463539
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (24 * n + 1 : ℝ) * (A010815 n : ℝ)

end

end A134756.P5651471618166463539

noncomputable section

/-- A134756: Coefficients of a q-series of Zagier related to the Dedekind eta function.

Offset 0, canonical program `A134756.P5651471618166463539`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134756 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A134756.P5651471618166463539.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A134756.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A136774.P9169465516778292592

`lt[4, A082850(4*(n+1))]`
-/

namespace A136774.P9169465516778292592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082850 (4 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A136774.P9169465516778292592

noncomputable section

/-- A136774: n! never ends in this many 0's in base 16.

Offset 1, canonical program `A136774.P9169465516778292592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 991 terms. -/
def A136774 (n : ℕ) : ℤ :=
  (A136774.P9169465516778292592.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 991 terms. -/
def A136774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137412.P15505446152071389337

`A065359(xor(60, n))`
-/

namespace A137412.P15505446152071389337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (Nat.xor 60 n)

end

end A137412.P15505446152071389337

noncomputable section

/-- A137412: a(1)=0. If a(m) is odd, then a(2^(m-1)+k) = a(k)-1, for all k where 1<=k<=2^(m-1). If a(m) is even, then a(2^(m-1)+k) = a(k)+1, for all k where 1<=k<=2^(m-1).

Offset 1, canonical program `A137412.P15505446152071389337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A137412 (n : ℕ) : ℤ :=
  A137412.P15505446152071389337.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A137412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137608.P11362222229796310962

`(-1)^n*A035178(n+1)`
-/

namespace A137608.P11362222229796310962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A035178 (n + 1)

end

end A137608.P11362222229796310962

noncomputable section

/-- A137608: Expansion of (1 - psi(-q)^3 / psi(-q^3)) / 3 in powers of q where psi() is a Ramanujan theta function.

Offset 1, canonical program `A137608.P11362222229796310962`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035178, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137608 (n : ℕ) : ℤ :=
  A137608.P11362222229796310962.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035178, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A137608.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A137713.P10408986335505349566

`a(n-1)+a(n-2)-A010815(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A137713.P10408986335505349566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (a (n - 2) - A010815 (n + 1))

end

end A137713.P10408986335505349566

noncomputable section

/-- A137713: Row sums of triangle A137712.

Offset 1, canonical program `A137713.P10408986335505349566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A137713 (n : ℕ) : ℤ :=
  A137713.P10408986335505349566.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A137713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A138501.P13350798590411214149

`(-1)^n*A050470(n+1)`
-/

namespace A138501.P13350798590411214149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A050470 (n + 1)

end

end A138501.P13350798590411214149

noncomputable section

/-- A138501: Expansion of (eta(q)^2 * eta(q^4)^4 / eta(q^2)^3)^2 in powers of q.

Offset 1, canonical program `A138501.P13350798590411214149`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050470, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138501 (n : ℕ) : ℤ :=
  A138501.P13350798590411214149.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050470, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A138501.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A145390.P15585800402733348238`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112329, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145390 (n : ℕ) : ℤ :=
  A145390.P15585800402733348238.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112329, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A145390.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A147843.P14429766809705781327

`-n*A010815(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A147843.P14429766809705781327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n : ℤ)) * A010815 n

end

end A147843.P14429766809705781327

noncomputable section

/-- A147843: a(n) = -n*A010815(n).

Offset 0, canonical program `A147843.P14429766809705781327`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147843 (n : ℕ) : ℤ :=
  A147843.P14429766809705781327.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A147843.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A156077.P10312704143839705778

`n+1-A074286(n+1)`
-/

namespace A156077.P10312704143839705778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A074286 (n + 1)

end

end A156077.P10312704143839705778

noncomputable section

/-- A156077: a(n) = #{1<=k<=n : A000002(k)=1}.

Offset 1, canonical program `A156077.P10312704143839705778`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074286, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156077 (n : ℕ) : ℤ :=
  A156077.P10312704143839705778.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074286, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A156077.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A156274.P1595059407233853913

`A023201(A008619(n))+6*n%2`
-/

namespace A156274.P1595059407233853913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (A008619 n).toNat + ((6 * (n % 2) : ℕ) : ℤ)

end

end A156274.P1595059407233853913

noncomputable section

/-- A156274: List of prime pairs of the form (p, p+6).

Offset 1, canonical program `A156274.P1595059407233853913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156274 (n : ℕ) : ℤ :=
  A156274.P1595059407233853913.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156876.P3614611450342626584

`∑[or(A156659(n+1), A156660(n+1))]`
-/

namespace A156876.P3614611450342626584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A156659 (n + 1)) (A156660 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156876.P3614611450342626584

noncomputable section

/-- A156876: Number of primes <= n that are safe primes or Sophie Germain primes.

Offset 1, canonical program `A156876.P3614611450342626584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156876 (n : ℕ) : ℤ :=
  A156876.P3614611450342626584.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A156876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083913.P9028729068411083889

`A000005(n+1)-A083910(n+1)-A083911(n+1)-A083912(n+1)-A083914(n+1)-A083915(n+1)-A083916(n+1)-A083917(n+1)-A083918(n+1)-A083919(n+1)`
-/

namespace A083913.P9028729068411083889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A083910 (n + 1) - A083911 (n + 1) - A083912 (n + 1) - A083914 (n + 1) - A083915 (n + 1) - A083916 (n + 1) - A083917 (n + 1) - A083918 (n + 1) - A083919 (n + 1)

end

end A083913.P9028729068411083889

noncomputable section

/-- A083913: Number of divisors of n that are congruent to 3 modulo 10.

Offset 1, canonical program `A083913.P9028729068411083889`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083910, A083911, A083912, A083914, A083915, A083916, A083917, A083918, A083919, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083913 (n : ℕ) : ℤ :=
  A083913.P9028729068411083889.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083910, A083911, A083912, A083914, A083915, A083916, A083917, A083918, A083919, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A083913.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A084474.P8230348332531806502

`A084472(A084471(n+1))`
-/

namespace A084474.P8230348332531806502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084472 (A084471 (n + 1)).toNat

end

end A084474.P8230348332531806502

noncomputable section

/-- A084474: Write n in binary and replace 0 with 0000.

Offset 1, canonical program `A084474.P8230348332531806502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A084474 (n : ℕ) : ℤ :=
  A084474.P8230348332531806502.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A084474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086100.P12874924642419526521

`A007088(A086099(n))`
-/

namespace A086100.P12874924642419526521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A086099 n).toNat

end

end A086100.P12874924642419526521

noncomputable section

/-- A086100: A086099 in binary.

Offset 0, canonical program `A086100.P12874924642419526521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086100 (n : ℕ) : ℤ :=
  A086100.P12874924642419526521.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086100.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A087692.P14815720998810141369

`A115070(A282779(n+1))`
-/

namespace A087692.P14815720998810141369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115070 (A282779 (n + 1)).toNat

end

end A087692.P14815720998810141369

noncomputable section

/-- A087692: Number of cubes in multiplicative group modulo n.

Offset 1, canonical program `A087692.P14815720998810141369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087692 (n : ℕ) : ℤ :=
  A087692.P14815720998810141369.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A088723.P15091544922327729321

`2*lt[0, A325334(n)]`
-/

namespace A088723.P15091544922327729321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A088723.P15091544922327729321

noncomputable section

/-- A088723: Numbers k with at least one divisor d>1 such that d+1 also divides k.

Offset 1, canonical program `A088723.P15091544922327729321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088723 (n : ℕ) : ℤ :=
  (A088723.P15091544922327729321.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A088723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A089824.P10607685603427349612

`A045319(eq[A045319(n+1), A065073(n+1)])`
-/

namespace A089824.P10607685603427349612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A089824.P10607685603427349612

noncomputable section

/-- A089824: Primes p such that the next prime after p can be obtained from p by adding the sum of the digits of p.

Offset 1, canonical program `A089824.P10607685603427349612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 258 terms. -/
def A089824 (n : ℕ) : ℤ :=
  A089824.P10607685603427349612.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 258 terms. -/
def A089824.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A093653.P11288549894357571453

`A292257(n+1)+A000120(n+1)`
-/

namespace A093653.P11288549894357571453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292257 (n + 1) + A000120 (n + 1)

end

end A093653.P11288549894357571453

noncomputable section

/-- A093653: Total number of 1's in binary expansion of all divisors of n.

Offset 1, canonical program `A093653.P11288549894357571453`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292257, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A093653 (n : ℕ) : ℤ :=
  A093653.P11288549894357571453.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A292257, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A093653.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A095405.P11635465388125584041

`eq[0, A095403(n+1)]+1`
-/

namespace A095405.P11635465388125584041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095403 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A095405.P11635465388125584041

noncomputable section

/-- A095405: Numbers n such that Sum-of-digits-of-n = Sum-of-digits-of-all-distinct-prime-factors-of-n.

Offset 1, canonical program `A095405.P11635465388125584041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A095405 (n : ℕ) : ℤ :=
  (A095405.P11635465388125584041.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A095405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A095406.P13107935915610947608

`lt[A095403(A028310(n)), 0]`
-/

namespace A095406.P13107935915610947608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095403 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A095406.P13107935915610947608

noncomputable section

/-- A095406: Numbers k such that Sum-of-digits-of-k < Sum-of-digits-of-all-distinct-prime-factors-of-k.

Offset 1, canonical program `A095406.P13107935915610947608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3908 terms. -/
def A095406 (n : ℕ) : ℤ :=
  (A095406.P13107935915610947608.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3908 terms. -/
def A095406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097195.P12342509602906900209

`A359309(n+1)-A359327(n+1)`
-/

namespace A097195.P12342509602906900209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359309 (n + 1) - A359327 (n + 1)

end

end A097195.P12342509602906900209

noncomputable section

/-- A097195: Expansion of s(12)^3*s(18)^2/(s(6)^2*s(36)), where s(k) = eta(q^k) and eta(q) is Dedekind's function, cf. A010815. Then replace q^6 with q.

Offset 0, canonical program `A097195.P12342509602906900209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097195 (n : ℕ) : ℤ :=
  A097195.P12342509602906900209.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097195.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100808.P5859117941916704897

`char[A156243(n+1)]*A078880(n+1)+1`
-/

namespace A100808.P5859117941916704897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156243 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A078880 (n + 1) + 1

end

end A100808.P5859117941916704897

noncomputable section

/-- A100808: Quet transform (see A101387 for definition) of Kolakoski sequence A000002.

Offset 1, canonical program `A100808.P5859117941916704897`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100808 (n : ℕ) : ℤ :=
  A100808.P5859117941916704897.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A100808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105424.P5964440619879122362

`A007088(A105425(n))`
-/

namespace A105424.P5964440619879122362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A105425 n).toNat

end

end A105424.P5964440619879122362

noncomputable section

/-- A105424: The part of n in base phi left of the decimal point, using a greedy algorithm representation (more precisely, using the Bergman-canonical representation).

Offset 0, canonical program `A105424.P5964440619879122362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A105424 (n : ℕ) : ℤ :=
  A105424.P5964440619879122362.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A105424.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108164.P16644971163881353331

`A198773(eq[2, ∑{e}[A198773(n+1), #]]+1)`
-/

namespace A108164.P16644971163881353331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198773 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198773 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A108164.P16644971163881353331

noncomputable section

/-- A108164: Semiprimes p*q where both p and q are primes of the form 6n+1 (A002476).

Offset 1, canonical program `A108164.P16644971163881353331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4789 terms. -/
def A108164 (n : ℕ) : ℤ :=
  A108164.P16644971163881353331.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4789 terms. -/
def A108164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A111123.P4994184408905448114

`A001083(n+4)-A001083(n+3)`
-/

namespace A111123.P4994184408905448114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001083 (n + 4) - A001083 (n + 3)

end

end A111123.P4994184408905448114

noncomputable section

/-- A111123: Number of 2's in n-th "Kolakoski" string defined in A054349.

Offset 0, canonical program `A111123.P4994184408905448114`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001083, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A111123 (n : ℕ) : ℤ :=
  A111123.P4994184408905448114.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001083, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A111123.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A111458.P16703842777134860266

`lt[3, A007895(n)]`
-/

namespace A111458.P16703842777134860266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A111458.P16703842777134860266

noncomputable section

/-- A111458: Numbers that cannot be represented as the sum of at most three Fibonacci numbers (with repetitions allowed).

Offset 1, canonical program `A111458.P16703842777134860266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A111458 (n : ℕ) : ℤ :=
  (A111458.P16703842777134860266.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A111458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112886.P13448642729938480381

`lt[n*A325334(n), n]`
-/

namespace A112886.P13448642729938480381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A325334 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A112886.P13448642729938480381

noncomputable section

/-- A112886: Positive integers that have no triangular divisors > 1.

Offset 1, canonical program `A112886.P13448642729938480381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112886 (n : ℕ) : ℤ :=
  (A112886.P13448642729938480381.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A112886.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A112928.P14420708112015201937

`p?[A112926(n+1)]`
-/

namespace A112928.P14420708112015201937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112928.P14420708112015201937

noncomputable section

/-- A112928: Primes in sequence A112926.

Offset 1, canonical program `A112928.P14420708112015201937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 961 terms. -/
def A112928 (n : ℕ) : ℤ :=
  A112928.P14420708112015201937.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 961 terms. -/
def A112928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117656.P11004913678404553061

`A055653(A019554(n+1))*A337101(2*(n+1))`
-/

namespace A117656.P11004913678404553061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055653 (A019554 (n + 1)).toNat * A337101 (2 * (n + 1))

end

end A117656.P11004913678404553061

noncomputable section

/-- A117656: Number of solutions to x^(k+2)=x^2 mod n for some k>=1.

Offset 1, canonical program `A117656.P11004913678404553061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117656 (n : ℕ) : ℤ :=
  A117656.P11004913678404553061.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A117656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117967.P4491383601677545787

`A059249(a(n-1)+n)` with `a(0)=0`
-/

namespace A117967.P4491383601677545787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A059249 (a (n - 1) + (n : ℤ)).toNat

end

end A117967.P4491383601677545787

noncomputable section

/-- A117967: Positive part of inverse of A117966; write n in balanced ternary and then replace (-1)'s with 2's.

Offset 0, canonical program `A117967.P4491383601677545787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9842 terms. -/
def A117967 (n : ℕ) : ℤ :=
  A117967.P4491383601677545787.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9842 terms. -/
def A117967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118735.P16887616288475277364

`∩[A118731(n+1), A118732(n+1)]`
-/

namespace A118735.P16887616288475277364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A118735.P16887616288475277364

noncomputable section

/-- A118735: Numbers k such that 2^k and 3^k have odd digit sum.

Offset 1, canonical program `A118735.P16887616288475277364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5061 terms. -/
def A118735 (n : ℕ) : ℤ :=
  (A118735.P16887616288475277364.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5061 terms. -/
def A118735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A119480.P557192141545520741

`eq[2, A086668(2*(n+1))]+1`
-/

namespace A119480.P557192141545520741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086668 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A119480.P557192141545520741

noncomputable section

/-- A119480: Numbers k such that the Bernoulli number B_{4k} has denominator 30.

Offset 1, canonical program `A119480.P557192141545520741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4475 terms. -/
def A119480 (n : ℕ) : ℤ :=
  (A119480.P557192141545520741.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4475 terms. -/
def A119480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123139.P8555552717810402474

`A123134(n+1)-A123135(n+1)`
-/

namespace A123139.P8555552717810402474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123134 (n + 1) - A123135 (n + 1)

end

end A123139.P8555552717810402474

noncomputable section

/-- A123139: a(n) = prime(n)*(prime(n + 1) + 1) - (n^3 + sum of digits of n^3).

Offset 1, canonical program `A123139.P8555552717810402474`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A123135, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123139 (n : ℕ) : ℤ :=
  A123139.P8555552717810402474.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A123135, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A123139.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A134022.P16948364718600787196

`A005812(A117966(2*n)+A117966(n))`
-/

namespace A134022.P16948364718600787196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 (A117966 (2 * n) + A117966 n).toNat

end

end A134022.P16948364718600787196

noncomputable section

/-- A134022: Number of negative trits in balanced ternary representation of n.

Offset 0, canonical program `A134022.P16948364718600787196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134022 (n : ℕ) : ℤ :=
  A134022.P16948364718600787196.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A134022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140105.P12886462540237060989

`A007088(A049606(n))`
-/

namespace A140105.P12886462540237060989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A049606 n).toNat

end

end A140105.P12886462540237060989

noncomputable section

/-- A140105: Trailing zeros removed from n! in binary.

Offset 0, canonical program `A140105.P12886462540237060989`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140105 (n : ℕ) : ℤ :=
  A140105.P12886462540237060989.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140105.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A140266.P8746548474832639475

`A004741((n+1)²-A004488(n))`
-/

namespace A140266.P8746548474832639475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 (((n + 1) ^ 2 : ℤ) - A004488 n).toNat

end

end A140266.P8746548474832639475

noncomputable section

/-- A140266: Inverse permutation to A140265.

Offset 1, canonical program `A140266.P8746548474832639475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A140266 (n : ℕ) : ℤ :=
  A140266.P8746548474832639475.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A140266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A143927.P1718052944854013884

`((24*n+12)*A006605(n)+(3*n+5)*A006605(n+1))/(13*n+17)`
-/

namespace A143927.P1718052944854013884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((24 * n + 12 : ℤ) * A006605 n + (3 * n + 5 : ℤ) * A006605 (n + 1) : ℚ) / (13 * n + 17 : ℚ)

end

end A143927.P1718052944854013884

noncomputable section

/-- A143927: G.f. A(x) satisfies A(x) = (1 + x*A(x) + x^2*A(x)^2)^2.

Offset 0, canonical program `A143927.P1718052944854013884`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006605, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143927 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A143927.P1718052944854013884.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006605, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A143927.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A155560.P3033731189565993518

`filter[A092572(n+1), A353814(#)]`
-/

namespace A155560.P3033731189565993518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A155560.P3033731189565993518

noncomputable section

/-- A155560: Intersection of A000404 and A092572: N = a^2 + b^2 = c^2 + 3d^2 with a,b,c,d>0.

Offset 1, canonical program `A155560.P3033731189565993518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2672 terms. -/
def A155560 (n : ℕ) : ℤ :=
  A155560.P3033731189565993518.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2672 terms. -/
def A155560.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A156298.P2984020510876517705

`p?[lt[n, A098488(n)]]`
-/

namespace A156298.P2984020510876517705
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098488 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A156298.P2984020510876517705

noncomputable section

/-- A156298: Primes where the first digit is greater than the second digit.

Offset 1, canonical program `A156298.P2984020510876517705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 593 terms. -/
def A156298 (n : ℕ) : ℤ :=
  (A156298.P2984020510876517705.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 593 terms. -/
def A156298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163237.P17262417400216494532

`A004468(A163235(n))`
-/

namespace A163237.P17262417400216494532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (A163235 n).toNat

end

end A163237.P17262417400216494532

noncomputable section

/-- A163237: a(i,j) = bits of binary expansion of A003188(i) interleaved with that of A003188(j), then converted with A163241.

Offset 0, canonical program `A163237.P17262417400216494532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2080 terms. -/
def A163237 (n : ℕ) : ℤ :=
  A163237.P17262417400216494532.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2080 terms. -/
def A163237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163478.P4938933501690302131

`A163242(n)/3`
-/

namespace A163478.P4938933501690302131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163242 n : ℚ) / 3

end

end A163478.P4938933501690302131

noncomputable section

/-- A163478: Row sums of A163233 and A163235 divided by 3.

Offset 0, canonical program `A163478.P4938933501690302131`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163242, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163478 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A163478.P4938933501690302131.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163242, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A163478.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A165406.P12134847753010490514

`A007088(A165404(n))`
-/

namespace A165406.P12134847753010490514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A165404 n).toNat

end

end A165406.P12134847753010490514

noncomputable section

/-- A165406: Sequence A165404 shown in binary, or equivalently, sequence A163901 in quaternary base.

Offset 0, canonical program `A165406.P12134847753010490514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. -/
def A165406 (n : ℕ) : ℤ :=
  A165406.P12134847753010490514.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 610 terms. -/
def A165406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A172186.P17237444168487211502

`(A179017(n+1)-1)/2`
-/

namespace A172186.P17237444168487211502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179017 (n + 1) - 1 : ℚ) / 2

end

end A172186.P17237444168487211502

noncomputable section

/-- A172186: Numbers k such that k, k+1 and 2*k+1 are squarefree.

Offset 1, canonical program `A172186.P17237444168487211502`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179017, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A172186 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A172186.P17237444168487211502.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A179017, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A172186.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A084228.P11895831632362515159

`∑{digits}[A160939(a(n-1)+1)-1, #]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A084228.P11895831632362515159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n f1 =>
  A160939 (f1 (n - 1) + 1).toNat - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A084228.P11895831632362515159

noncomputable section

/-- A084228: a(1)=1, a(2)=2; thereafter a(n) = sum of digits of (a(1)+a(2)+a(3)+...+a(n-1)).

Offset 1, canonical program `A084228.P11895831632362515159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 591 terms. -/
def A084228 (n : ℕ) : ℤ :=
  (A084228.P11895831632362515159.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 591 terms. -/
def A084228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087340.P17745694707195578587

`∩[A046704(n+1), A081988(n+1)]`
-/

namespace A087340.P17745694707195578587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A087340.P17745694707195578587

noncomputable section

/-- A087340: Primes p such that the sum of the digits of p as well as 1 plus the product of its digits are also primes.

Offset 1, canonical program `A087340.P17745694707195578587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 530 terms. -/
def A087340 (n : ℕ) : ℤ :=
  (A087340.P17745694707195578587.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 530 terms. -/
def A087340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087486.P8452078015866765301

`eq[A007953(n), A081653(A028310(n))]`
-/

namespace A087486.P8452078015866765301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081653 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A087486.P8452078015866765301

noncomputable section

/-- A087486: Numbers k such that digital sum of k divides digital sum of k-th prime, p(k).

Offset 1, canonical program `A087486.P8452078015866765301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 633 terms. -/
def A087486 (n : ℕ) : ℤ :=
  (A087486.P8452078015866765301.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 633 terms. -/
def A087486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A091192.P718814886778094083

`eq[A294930(n+1), A294935(n+1)]+1`
-/

namespace A091192.P718814886778094083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294935 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A091192.P718814886778094083

noncomputable section

/-- A091192: Abundant numbers having at least one abundant proper divisor.

Offset 1, canonical program `A091192.P718814886778094083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091192 (n : ℕ) : ℤ :=
  (A091192.P718814886778094083.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A091192.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A096844.P1230674438731432842

`eq[A249121(n), A304440(n)]`
-/

namespace A096844.P1230674438731432842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249121 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304440 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A096844.P1230674438731432842

noncomputable section

/-- A096844: Numbers where 0 is the only even decimal digit.

Offset 1, canonical program `A096844.P1230674438731432842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 516 terms. -/
def A096844 (n : ℕ) : ℤ :=
  (A096844.P1230674438731432842.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 516 terms. -/
def A096844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104247.P9484724603255366417

`p?[A051351(n)]`
-/

namespace A104247.P9484724603255366417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A104247.P9484724603255366417

noncomputable section

/-- A104247: Primes that are the sum of digits of the first k primes for some k.

Offset 1, canonical program `A104247.P9484724603255366417`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 934 terms. -/
def A104247 (n : ℕ) : ℤ :=
  A104247.P9484724603255366417.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 934 terms. -/
def A104247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A105499.P17659406568366471516

`A130784(A289813(n)+2)`
-/

namespace A105499.P17659406568366471516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130784 (A289813 n + 2).toNat

end

end A105499.P17659406568366471516

noncomputable section

/-- A105499: Trajectory of 1 under the morphism 1->{2,1,2}, 2->{1,3,1}, 3->{3,2,3}.

Offset 0, canonical program `A105499.P17659406568366471516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105499 (n : ℕ) : ℤ :=
  A105499.P17659406568366471516.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A105499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106755.P15161756311865311751

`p?[A143164(n+1)]`
-/

namespace A106755.P15161756311865311751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143164 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106755.P15161756311865311751

noncomputable section

/-- A106755: Primes p with digital sum equal to 13.

Offset 1, canonical program `A106755.P15161756311865311751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 980 terms. -/
def A106755 (n : ℕ) : ℤ :=
  A106755.P15161756311865311751.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 980 terms. -/
def A106755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106756.P12145238415498527313

`p?[A143164(n+1)+1]`
-/

namespace A106756.P12145238415498527313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143164 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106756.P12145238415498527313

noncomputable section

/-- A106756: Primes with digit sum = 14.

Offset 1, canonical program `A106756.P12145238415498527313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1218 terms. -/
def A106756 (n : ℕ) : ℤ :=
  A106756.P12145238415498527313.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1218 terms. -/
def A106756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106757.P13942445452489068332

`∩[A062342(n+1), A107288(n+1)]`
-/

namespace A106757.P13942445452489068332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106757.P13942445452489068332

noncomputable section

/-- A106757: Primes with digit sum = 16.

Offset 1, canonical program `A106757.P13942445452489068332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2564 terms. -/
def A106757 (n : ℕ) : ℤ :=
  (A106757.P13942445452489068332.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2564 terms. -/
def A106757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A106758.P14051982100984720332

`p?[A235227(n+1)+1]`
-/

namespace A106758.P14051982100984720332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235227 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106758.P14051982100984720332

noncomputable section

/-- A106758: Primes with digit sum = 17.

Offset 1, canonical program `A106758.P14051982100984720332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1457 terms. -/
def A106758 (n : ℕ) : ℤ :=
  A106758.P14051982100984720332.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1457 terms. -/
def A106758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A107743.P1532081049074715641

`comp[A047791(n+1)-1]+1`
-/

namespace A107743.P1532081049074715641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047791 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A107743.P1532081049074715641

noncomputable section

/-- A107743: Numbers m such that m+(digit sum of m) is a composite number.

Offset 1, canonical program `A107743.P1532081049074715641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107743 (n : ℕ) : ℤ :=
  (A107743.P1532081049074715641.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A107743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A109981.P17615118613321248785

`∩[A046704(n+1), A120533(n+1)]`
-/

namespace A109981.P17615118613321248785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109981.P17615118613321248785

noncomputable section

/-- A109981: Primes such that both the sum of digits and the number of digits are primes.

Offset 1, canonical program `A109981.P17615118613321248785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3378 terms. -/
def A109981 (n : ℕ) : ℤ :=
  (A109981.P17615118613321248785.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3378 terms. -/
def A109981.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118488.P13866739444762926570

`eq[1, A059268(A004159(n))]²`
-/

namespace A118488.P13866739444762926570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A004159 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A118488.P13866739444762926570

noncomputable section

/-- A118488: Squares for which the sum of the digits is a triangular number.

Offset 1, canonical program `A118488.P13866739444762926570`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2505 terms. -/
def A118488 (n : ℕ) : ℤ :=
  (A118488.P13866739444762926570.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2505 terms. -/
def A118488.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A118730.P11127108990415150483

`comp[A118731(n+1)]`
-/

namespace A118730.P11127108990415150483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A118730.P11127108990415150483

noncomputable section

/-- A118730: Numbers k such that 2^k has even digit sum.

Offset 1, canonical program `A118730.P11127108990415150483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9980 terms. -/
def A118730 (n : ℕ) : ℤ :=
  (A118730.P11127108990415150483.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9980 terms. -/
def A118730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A123977.P15909624706474219848

`lt[0, A067552(n)]`
-/

namespace A123977.P15909624706474219848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067552 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A123977.P15909624706474219848

noncomputable section

/-- A123977: Complement of A061909 (skinny numbers).

Offset 1, canonical program `A123977.P15909624706474219848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9900 terms. -/
def A123977 (n : ℕ) : ℤ :=
  (A123977.P15909624706474219848.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9900 terms. -/
def A123977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A132791.P2807201736206907755

`eq[0, A005171(A065713(n))]`
-/

namespace A132791.P2807201736206907755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A065713 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A132791.P2807201736206907755

noncomputable section

/-- A132791: Numbers k such that the sum of the digits of 4^k is prime.

Offset 1, canonical program `A132791.P2807201736206907755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1621 terms. -/
def A132791 (n : ℕ) : ℤ :=
  (A132791.P2807201736206907755.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1621 terms. -/
def A132791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158205.P7641630389208659888

`∩[A046704(n+1), A084984(n+1)]`
-/

namespace A158205.P7641630389208659888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158205.P7641630389208659888

noncomputable section

/-- A158205: Primes with every digit a nonprime and the sum of the digits a prime.

Offset 1, canonical program `A158205.P7641630389208659888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A158205 (n : ℕ) : ℤ :=
  (A158205.P7641630389208659888.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A158205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A158332.P15794101750954824745

`∩[A119449(n+1)+2, A119449(n+1)]`
-/

namespace A158332.P15794101750954824745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119449 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158332.P15794101750954824745

noncomputable section

/-- A158332: Greater of twin primes, each prime having an even digit sum.

Offset 1, canonical program `A158332.P15794101750954824745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 834 terms. -/
def A158332 (n : ℕ) : ℤ :=
  (A158332.P15794101750954824745.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 834 terms. -/
def A158332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A161464.P870720688420773945

`A051351(Δ[n²])-A051351(n)`
-/

namespace A161464.P870720688420773945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051351 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A051351 n

end

end A161464.P870720688420773945

noncomputable section

/-- A161464: Sum of all digits of primes from n-th prime to (2*n-1)-th prime.

Offset 1, canonical program `A161464.P870720688420773945`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A161464 (n : ℕ) : ℤ :=
  A161464.P870720688420773945.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A161464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162250.P8437384254444543652

`∩[A006450(n+1), A046704(n+1)]`
-/

namespace A162250.P8437384254444543652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A162250.P8437384254444543652

noncomputable section

/-- A162250: Values of the form prime(prime(i)) with a prime digital sum.

Offset 1, canonical program `A162250.P8437384254444543652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A162250 (n : ℕ) : ℤ :=
  (A162250.P8437384254444543652.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A162250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A163343.P18183862503228985629

`A338086(A128173(n))`
-/

namespace A163343.P18183862503228985629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338086 (A128173 n).toNat

end

end A163343.P18183862503228985629

noncomputable section

/-- A163343: Central diagonal of A163334 and A163336.

Offset 0, canonical program `A163343.P18183862503228985629`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A128173, A338086, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163343 (n : ℕ) : ℤ :=
  A163343.P18183862503228985629.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A128173, A338086, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A163343.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A169968.P10176697459246325094

`comp[A169884(n+1)]`
-/

namespace A169968.P10176697459246325094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A169968.P10176697459246325094

noncomputable section

/-- A169968: Positive integers not in A169884.

Offset 1, canonical program `A169968.P10176697459246325094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A169968 (n : ℕ) : ℤ :=
  (A169968.P10176697459246325094.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A169968.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176718.P17709274811728577594

`∑[A004207(n)]`
-/

namespace A176718.P17709274811728577594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176718.P17709274811728577594

noncomputable section

/-- A176718: Partial sums of A004207.

Offset 0, canonical program `A176718.P17709274811728577594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176718 (n : ℕ) : ℤ :=
  A176718.P17709274811728577594.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A176892.P325327665077823368

`A305989(n)+A002276(A070939(n))`
-/

namespace A176892.P325327665077823368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 n + A002276 (A070939 n).toNat

end

end A176892.P325327665077823368

noncomputable section

/-- A176892: Decimal representation of the reverted binary representation of n followed by digits substitution 0->2, 1->3.

Offset 0, canonical program `A176892.P325327665077823368`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176892 (n : ℕ) : ℤ :=
  A176892.P325327665077823368.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A176892.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090433.P5899068372481364331

`A000040(A154311(n+1))`
-/

namespace A090433.P5899068372481364331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A154311 (n + 1)).toNat

end

end A090433.P5899068372481364331

noncomputable section

/-- A090433: Primes p(k) having a smaller sum of digits than k.

Offset 1, canonical program `A090433.P5899068372481364331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A090433 (n : ℕ) : ℤ :=
  A090433.P5899068372481364331.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A090433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100337.P11188072152999393634

`A100336(xor(n, xor(n, A100336(n+1))))`
-/

namespace A100337.P11188072152999393634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100336 (Int.xor (n : ℤ) (Int.xor (n : ℤ) (A100336 (n + 1)))).toNat

end

end A100337.P11188072152999393634

noncomputable section

/-- A100337: Arshon's sequence with a different start: start from 3 and replace the letters in odd positions using 1 -> 123, 2 -> 231, 3 -> 312 and the letters in even positions using 1 -> 321, 2-> 132, 3 -> 213.

Offset 1, canonical program `A100337.P11188072152999393634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A100337 (n : ℕ) : ℤ :=
  A100337.P11188072152999393634.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A100337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A117512.P1690792313298949061

`C(A129631(n+1)+1, 2)`
-/

namespace A117512.P1690792313298949061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A129631 (n + 1) + 1).toNat 2

end

end A117512.P1690792313298949061

noncomputable section

/-- A117512: Triangular numbers for which the sum of the digits is a prime number.

Offset 1, canonical program `A117512.P1690792313298949061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A117512 (n : ℕ) : ℤ :=
  (A117512.P1690792313298949061.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A117512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A171614.P10728647847726673456

`eq[0, A224977(n)%2]`
-/

namespace A171614.P10728647847726673456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224977 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171614.P10728647847726673456

noncomputable section

/-- A171614: Numbers n with property that (n^2 + sum of the digits of n^2) is even.

Offset 1, canonical program `A171614.P10728647847726673456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5019 terms. -/
def A171614 (n : ℕ) : ℤ :=
  (A171614.P10728647847726673456.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5019 terms. -/
def A171614.provenance : SequenceMachineLib.Provenance := .conjectured

