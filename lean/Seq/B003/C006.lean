import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C016
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A390608.P15575497196567576275

`A000010(n+1)*A001221(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390608.P15575497196567576275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A001221 (n + 1)

end

end A390608.P15575497196567576275

noncomputable section

/-- A390608: a(n) = phi(n) * omega(n).

Offset 1, canonical program `A390608.P15575497196567576275`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)*A001221(n+1)` (program `A390608.P15575497196567576275`, by `A390608.P15575497196567576275.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A390608 (n : ℕ) : ℤ :=
  A390608.P15575497196567576275.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)*A001221(n+1)` (program `A390608.P15575497196567576275`, by `A390608.P15575497196567576275.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A390608.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A393976.P13235993701100155495

`A000010(n+1)²+A000010(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A393976.P13235993701100155495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) ^ 2 + A000010 (n + 1) + 1

end

end A393976.P13235993701100155495

noncomputable section

/-- A393976: a(n) = phi(n)^2 + phi(n) + 1, where phi is Euler's totient function.

Offset 1, canonical program `A393976.P13235993701100155495`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)²+A000010(n+1)+1` (program `A393976.P13235993701100155495`, by `A393976.P13235993701100155495.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A393976 (n : ℕ) : ℤ :=
  A393976.P13235993701100155495.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)²+A000010(n+1)+1` (program `A393976.P13235993701100155495`, by `A393976.P13235993701100155495.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A393976.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A396113.P1790873692820670444

`A008472(n+1)*A000010(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396113.P1790873692820670444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) * A000010 (n + 1)

end

end A396113.P1790873692820670444

noncomputable section

/-- A396113: a(n) = sopf(n) * phi(n), where sopf = A008472 and phi = A000010.

Offset 1, canonical program `A396113.P1790873692820670444`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008472(n+1)*A000010(n+1)` (program `A396113.P1790873692820670444`, by `A396113.P1790873692820670444.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A396113 (n : ℕ) : ℤ :=
  A396113.P1790873692820670444.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A008472(n+1)*A000010(n+1)` (program `A396113.P1790873692820670444`, by `A396113.P1790873692820670444.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A396113.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A400277.P8291942098813751229

`A000010(n+1)²%(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400277.P8291942098813751229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1) ^ 2) (n + 2 : ℤ)

end

end A400277.P8291942098813751229

noncomputable section

/-- A400277: a(n) = phi(n)^2 mod (n+1), where phi is Euler's totient function (A000010).

Offset 1, canonical program `A400277.P8291942098813751229`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)²%(n+2)` (program `A400277.P8291942098813751229`, by `A400277.P8291942098813751229.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A400277 (n : ℕ) : ℤ :=
  A400277.P8291942098813751229.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)²%(n+2)` (program `A400277.P8291942098813751229`, by `A400277.P8291942098813751229.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A400277.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A387001.P16811340479551848930

`A224880(n+1)+1`
-/

namespace A387001.P16811340479551848930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224880 (n + 1) + 1

end

end A387001.P16811340479551848930

noncomputable section

/-- A387001: Number of vertices in the diagram called "symmetric representation of sigma(n)" where its "parts" or polygons are dissected into unit squares (see the example).

Offset 1, canonical program `A387001.P16811340479551848930`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387001 (n : ℕ) : ℤ :=
  A387001.P16811340479551848930.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387001.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389446.P10095306458237006129

`gcd(A000203(n+1), A057723(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389446.P10095306458237006129
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A057723 (n + 1))

end

end A389446.P10095306458237006129

noncomputable section

/-- A389446: a(n) = gcd(sigma(n), A057723(n)), where A057723 is sum of positive divisors of n that are divisible by every prime that divides n and sigma is the sum of divisors function.

Offset 1, canonical program `A389446.P10095306458237006129`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389446 (n : ℕ) : ℤ :=
  (A389446.P10095306458237006129.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389446.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389775.P15318510661550789038

`(-1)^A001221(n+1)*∑{d}[n+1, A008683(#)*A000010(#²)]`
-/

namespace A389775.P15318510661550789038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A001221 (n + 1) : ℤ) * ((∑ d ∈ Nat.divisors (f1 n), A008683 d * A000010 (d ^ 2) : ℤ) : ℚ)

end

end A389775.P15318510661550789038

noncomputable section

/-- A389775: Absolute value of the inverse Möbius transform of mu(n)*phi(n^2).

Offset 1, canonical program `A389775.P15318510661550789038`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389775 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389775.P15318510661550789038.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389775.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390752.P14431979490250258811

`A000010(A019554(n+1))`
-/

namespace A390752.P14431979490250258811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A019554 (n + 1)).toNat

end

end A390752.P14431979490250258811

noncomputable section

/-- A390752: The Euler totient of the smallest number whose square is divisible by n.

Offset 1, canonical program `A390752.P14431979490250258811`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390752 (n : ℕ) : ℤ :=
  A390752.P14431979490250258811.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390752.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391883.P2614756072055188463

`A000010(n+3)%A048865(n+3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391883.P2614756072055188463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 3)) (A048865 (n + 3))

end

end A391883.P2614756072055188463

noncomputable section

/-- A391883: a(n) = A000010(n) mod A048865(n).

Offset 3, canonical program `A391883.P2614756072055188463`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391883 (n : ℕ) : ℤ :=
  A391883.P2614756072055188463.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391883.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392034.P3707045700656422187

`A291463(n+1)/2`
-/

namespace A392034.P3707045700656422187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291463 (n + 1) : ℚ) / 2

end

end A392034.P3707045700656422187

noncomputable section

/-- A392034: a(n) = prime(n)*(prime(n+1) - prime(n))/2.

Offset 1, canonical program `A392034.P3707045700656422187`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392034 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392034.P3707045700656422187.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392034.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392166.P416411638160611915

`A001615(A019554(n+1))`
-/

namespace A392166.P416411638160611915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A019554 (n + 1)).toNat

end

end A392166.P416411638160611915

noncomputable section

/-- A392166: The Dedekind psi function value of the smallest number whose square is divisible by n.

Offset 1, canonical program `A392166.P416411638160611915`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392166 (n : ℕ) : ℤ :=
  A392166.P416411638160611915.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392166.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396239.P7967647103299319386

`A036263(n+1)/gcd(A036263(n+1), A031131(n+1))`
-/

namespace A396239.P7967647103299319386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036263 (n + 1) : ℚ) / (Int.gcd (A036263 (n + 1)) (A031131 (n + 1)) : ℚ)

end

end A396239.P7967647103299319386

noncomputable section

/-- A396239: Numerator of r(n) = (prime(n+2) - 2*prime(n+1) + prime(n)) / (prime(n+2) - prime(n)).

Offset 1, canonical program `A396239.P7967647103299319386`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396239 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A396239.P7967647103299319386.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396239.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396240.P12229753657126069438

`A031131(n+1)/gcd(A036263(n+1), A031131(n+1))`
-/

namespace A396240.P12229753657126069438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031131 (n + 1) : ℚ) / (Int.gcd (A036263 (n + 1)) (A031131 (n + 1)) : ℚ)

end

end A396240.P12229753657126069438

noncomputable section

/-- A396240: Denominator of r(n) = (prime(n+2) - 2*prime(n+1) + prime(n)) / (prime(n+2) - prime(n)).

Offset 1, canonical program `A396240.P12229753657126069438`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396240 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A396240.P12229753657126069438.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396240.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396670.P15040176529343827376

`1/(n+3)*∑{d}[n+3, A000010((n+3)/#)*((1+sqrt(2))^#+(1-sqrt(2))^#+2*(-1)^#)]`
-/

namespace A396670.P15040176529343827376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 / (n + 3 : ℚ) : ℝ) * (∑ d ∈ Nat.divisors (f1 n), (A000010 (SequenceMachineLib.roundAway ((n + 3 : ℚ) / (d : ℚ))).toNat : ℝ) * ((1 + Real.sqrt (2 : ℝ)) ^ d + (1 - Real.sqrt (2 : ℝ)) ^ d + (2 * (-1) ^ d : ℝ)))

end

end A396670.P15040176529343827376

noncomputable section

/-- A396670: Binary colorings of the sunlet graph S_n up to rotation, with no monochromatic connected component of size 3 or more.

Offset 3, canonical program `A396670.P15040176529343827376`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396670 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A396670.P15040176529343827376.a (n - 3))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396670.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398562.P6227823675874311163

`A000040(n+1)*A005867(n)+n+1-2-A000849(n+1)`
-/

namespace A398562.P6227823675874311163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A005867 n + (n + 1 : ℤ) - 2 - A000849 (n + 1)

end

end A398562.P6227823675874311163

noncomputable section

/-- A398562: Number of composite numbers less than the n-th primorial that are relatively prime to the (n-1)-th primorial.

Offset 1, canonical program `A398562.P6227823675874311163`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398562 (n : ℕ) : ℤ :=
  A398562.P6227823675874311163.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398562.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398974.P14447025700825235802

`A023416(A000578(n))`
-/

namespace A398974.P14447025700825235802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A000578 n).toNat

end

end A398974.P14447025700825235802

noncomputable section

/-- A398974: Number of 0's in the binary expansion of n^3.

Offset 0, canonical program `A398974.P14447025700825235802`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398974 (n : ℕ) : ℤ :=
  A398974.P14447025700825235802.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398974.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399359.P3296580441456699831

`∑{#}[n, A184423(#)*A184423(n-#)]`
-/

namespace A399359.P3296580441456699831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A184423 k * A184423 (n - k)

end

end A399359.P3296580441456699831

noncomputable section

/-- A399359: a(n) = 108^n * [z^n] hypergeom([1/6, 1/3], [1], z)^4.

Offset 0, canonical program `A399359.P3296580441456699831`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399359 (n : ℕ) : ℤ :=
  A399359.P3296580441456699831.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399359.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401239.P11563209216477383801

`A001222(A019554(n+1))`
-/

namespace A401239.P11563209216477383801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A019554 (n + 1)).toNat

end

end A401239.P11563209216477383801

noncomputable section

/-- A401239: The number of prime powers with odd exponents (A246551) that divide n.

Offset 1, canonical program `A401239.P11563209216477383801`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401239 (n : ℕ) : ℤ :=
  A401239.P11563209216477383801.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401239.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387726.P10728749570483671412

`A057521(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387726.P10728749570483671412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A000203 (n + 1)).toNat

end

end A387726.P10728749570483671412

noncomputable section

/-- A387726: Powerful part of the sum of divisors of n: a(n) = A057521(A000203(n)).

Offset 1, canonical program `A387726.P10728749570483671412`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A057521(A000203(n+1))` (program `A387726.P10728749570483671412`, by `A387726.P10728749570483671412.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A387726 (n : ℕ) : ℤ :=
  A387726.P10728749570483671412.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A057521(A000203(n+1))` (program `A387726.P10728749570483671412`, by `A387726.P10728749570483671412.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A387726.provenance : SequenceMachineLib.Provenance := .verified

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

Offset 1, canonical program `A389244.P9929055792756023973`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A057521((n+1)*(n+2))` (program `A389244.P9929055792756023973`, by `A389244.P9929055792756023973.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A389244 (n : ℕ) : ℤ :=
  A389244.P9929055792756023973.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A057521((n+1)*(n+2))` (program `A389244.P9929055792756023973`, by `A389244.P9929055792756023973.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A389244.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A390173.P4997777104451970628

`A002110(n+1)*2^(A007504(n+1)-(n+1))`
-/

namespace A390173.P4997777104451970628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (n + 1) : ℚ) * (2 : ℚ) ^ (A007504 (n + 1) - (n + 1 : ℤ) : ℤ)

end

end A390173.P4997777104451970628

noncomputable section

/-- A390173: Smallest integer k with exactly n distinct prime factors such that the sum of those primes equals the sum of the exponents in its prime factorization.

Offset 1, canonical program `A390173.P4997777104451970628`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390173 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390173.P4997777104451970628.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390173.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A394110.P1967582314872625174

`2*A006013(n)+A001764(n)`
-/

namespace A394110.P1967582314872625174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006013 n + A001764 n

end

end A394110.P1967582314872625174

noncomputable section

/-- A394110: a(n) = binomial(3*n, n)*(7*n+3)/((n+1)*(2*n+1)).

Offset 0, canonical program `A394110.P1967582314872625174`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394110 (n : ℕ) : ℤ :=
  A394110.P1967582314872625174.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394110.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394111.P11665560195545579973

`A006013(n)+2*A001764(n)`
-/

namespace A394111.P11665560195545579973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006013 n + 2 * A001764 n

end

end A394111.P11665560195545579973

noncomputable section

/-- A394111: a(n) = binomial(3*n, n)*(5*n+3)/((n+1)*(2*n+1)).

Offset 0, canonical program `A394111.P11665560195545579973`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394111 (n : ℕ) : ℤ :=
  A394111.P11665560195545579973.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394111.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397772.P11304897747839409447

`∑{d}[n+1, A351830(#)]`
-/

namespace A397772.P11304897747839409447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A351830 d

end

end A397772.P11304897747839409447

noncomputable section

/-- A397772: Inverse Möbius transform of A351830.

Offset 1, canonical program `A397772.P11304897747839409447`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397772 (n : ℕ) : ℤ :=
  A397772.P11304897747839409447.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397772.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401105.P5211430239912947113

`a(n-1)+A006307(n)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A401105.P5211430239912947113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  a (n - 1) + A006307 n

end

end A401105.P5211430239912947113

noncomputable section

/-- A401105: Number of unordered representations of 2^n as a sum of two numbers, each an odd prime multiplied by a power of 2.

Offset 0, canonical program `A401105.P5211430239912947113`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401105 (n : ℕ) : ℤ :=
  A401105.P5211430239912947113.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401105.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386963.P9105300058504622331

`Δ[A153043(n+1)]+1`
-/

namespace A386963.P9105300058504622331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A386963.P9105300058504622331

noncomputable section

/-- A386963: Gaps between positions of odd terms in A065090.

Offset 1, canonical program `A386963.P9105300058504622331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A386963 (n : ℕ) : ℤ :=
  A386963.P9105300058504622331.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A386963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387096.P15198397566290512698

`lt[n+2, A086568(n+1)]+1`
-/

namespace A387096.P15198397566290512698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086568 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A387096.P15198397566290512698

noncomputable section

/-- A387096: Numbers k such that k < prime(bigomega(k))#, where prime(bigomega(k))# is the product of the first bigomega(k) primes and bigomega(k) is the number of prime divisors of k (counted multiplicity).

Offset 1, canonical program `A387096.P15198397566290512698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1123 terms. -/
def A387096 (n : ℕ) : ℤ :=
  (A387096.P15198397566290512698.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1123 terms. -/
def A387096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387319.P17597783198726216255

`A343311(n+1)-A063524(n)`
-/

namespace A387319.P17597783198726216255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1) - A063524 n

end

end A387319.P17597783198726216255

noncomputable section

/-- A387319: Numbers k for which modulo 3 and modulo another multiple of 3 are coincident among the fractions (2*k mod m)/m for 1 <= m <= k.

Offset 1, canonical program `A387319.P17597783198726216255`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387319 (n : ℕ) : ℤ :=
  A387319.P17597783198726216255.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387657.P982859840005591800

`A123275(A056943(n)+1)`
-/

namespace A387657.P982859840005591800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123275 (A056943 n + 1).toNat

end

end A387657.P982859840005591800

noncomputable section

/-- A387657: Array read by ascending antidiagonals: A(n, k) = denominator(k^n/n), with k >= 0.

Offset 1, canonical program `A387657.P982859840005591800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387657 (n : ℕ) : ℤ :=
  A387657.P982859840005591800.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387892.P11437669347664042803

`lt[A306927(n+1), n+1]+1`
-/

namespace A387892.P11437669347664042803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306927 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A387892.P11437669347664042803

noncomputable section

/-- A387892: Psi-deficient numbers: numbers k such that psi(k) < 2*k.

Offset 1, canonical program `A387892.P11437669347664042803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8197 terms. -/
def A387892 (n : ℕ) : ℤ :=
  (A387892.P11437669347664042803.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8197 terms. -/
def A387892.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A388427.P2071951571592344279

`filter[A303554(n+1), A066247(#)]`
-/

namespace A388427.P2071951571592344279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A388427.P2071951571592344279

noncomputable section

/-- A388427: Composite numbers that are squarefree or prime powers.

Offset 1, canonical program `A388427.P2071951571592344279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8104 terms. -/
def A388427 (n : ℕ) : ℤ :=
  A388427.P2071951571592344279.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8104 terms. -/
def A388427.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A389556.P5725981755648961475

`∑[A070099(2*n+3)]`
-/

namespace A389556.P5725981755648961475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070099 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389556.P5725981755648961475

noncomputable section

/-- A389556: The number of primitive Pythagorean triples (PPTs) that lie within the first n rows of an irregular triangular array of PPTs defined in comments and whose even leg of the integer right triangle formed from the PPT is greater than its odd leg.

Offset 1, canonical program `A389556.P5725981755648961475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A389556 (n : ℕ) : ℤ :=
  A389556.P5725981755648961475.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A389556.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A389836.P17345097124898425646

`log2(A278908(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389836.P17345097124898425646
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A278908 (n + 1) : ℝ)

end

end A389836.P17345097124898425646

noncomputable section

/-- A389836: a(n) = log_2(A278908(n)).

Offset 1, canonical program `A389836.P17345097124898425646`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278908, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389836 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389836.P17345097124898425646.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278908, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389836.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390099.P13380091930058253574

`A111333(A066940(n+2))`
-/

namespace A390099.P13380091930058253574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (A066940 (n + 2)).toNat

end

end A390099.P13380091930058253574

noncomputable section

/-- A390099: Record denominators of (p2+1)/(p1+1), where p1 < p2 are consecutive primes.

Offset 1, canonical program `A390099.P13380091930058253574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5699 terms. -/
def A390099 (n : ℕ) : ℤ :=
  A390099.P13380091930058253574.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5699 terms. -/
def A390099.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A390327.P5443559523868288326

`lt[A023816(n), A022998(A023816(n))]`
-/

namespace A390327.P5443559523868288326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023816 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A023816 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A390327.P5443559523868288326

noncomputable section

/-- A390327: Numbers k such that the number of prime divisors of binomial(2k, k), including multiplicities, is even.

Offset 0, canonical program `A390327.P5443559523868288326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 307 terms. -/
def A390327 (n : ℕ) : ℤ :=
  (A390327.P5443559523868288326.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 307 terms. -/
def A390327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390328.P12866154070320318220

`eq[1, A000035(A023816(n))]`
-/

namespace A390328.P12866154070320318220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A023816 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A390328.P12866154070320318220

noncomputable section

/-- A390328: Numbers k such that the number of prime divisors of binomial(2k, k), including multiplicities, is odd.

Offset 1, canonical program `A390328.P12866154070320318220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A390328 (n : ℕ) : ℤ :=
  (A390328.P12866154070320318220.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A390328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390725.P2084391966824759075

`A000108(A002262(n))*A271703(n)`
-/

namespace A390725.P2084391966824759075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A002262 n).toNat * A271703 n

end

end A390725.P2084391966824759075

noncomputable section

/-- A390725: Triangle read by rows: T(n, k) = Lah(n, k)*CatalanNumber(k), and Lah = A271703.

Offset 0, canonical program `A390725.P2084391966824759075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2219 terms. -/
def A390725 (n : ℕ) : ℤ :=
  A390725.P2084391966824759075.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2219 terms. -/
def A390725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390764.P3120911945846591276

`A055642(A202267(n+1))`
-/

namespace A390764.P3120911945846591276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A202267 (n + 1)).toNat

end

end A390764.P3120911945846591276

noncomputable section

/-- A390764: Number of digits in base-6 representation of n.

Offset 0, canonical program `A390764.P3120911945846591276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1297 terms. -/
def A390764 (n : ℕ) : ℤ :=
  A390764.P3120911945846591276.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1297 terms. -/
def A390764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391096.P15625190028387691659

`A130174(n+3)-3`
-/

namespace A391096.P15625190028387691659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130174 (n + 3) - 3

end

end A391096.P15625190028387691659

noncomputable section

/-- A391096: a(n) is largest number such that the sequence contains a total of a(n) base 10 digits + commas through n terms (assuming one comma between each pair of terms).

Offset 1, canonical program `A391096.P15625190028387691659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391096 (n : ℕ) : ℤ :=
  A391096.P15625190028387691659.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391096.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A391574.P13642684315948743333

`eq[A026492(n), A057427(n)]`
-/

namespace A391574.P13642684315948743333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026492 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391574.P13642684315948743333

noncomputable section

/-- A391574: Numbers k such that 3*k = A048720(3,m) for some m, where A048720 is carryless base-2 multiplication.

Offset 1, canonical program `A391574.P13642684315948743333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5992 terms. -/
def A391574 (n : ℕ) : ℤ :=
  (A391574.P13642684315948743333.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5992 terms. -/
def A391574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391577.P11927412629419877182

`eq[A284574(n), A286576(n)]`
-/

namespace A391577.P11927412629419877182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284574 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286576 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391577.P11927412629419877182

noncomputable section

/-- A391577: Numbers k such that A048720(3,k) = 3*m for some m < k, where A048720 is carryless base-2 multiplication.

Offset 1, canonical program `A391577.P11927412629419877182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3427 terms. -/
def A391577 (n : ℕ) : ℤ :=
  (A391577.P11927412629419877182.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3427 terms. -/
def A391577.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A392630.P18032150745144184290

`∏{e}[(n+1)/∏{p}[n+1, #], A060236(#)]`
-/

namespace A392630.P18032150745144184290
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A060236 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A392630.P18032150745144184290

noncomputable section

/-- A392630: The number of exponential divisors of n that are numbers whose number of divisors is a power of 2.

Offset 1, canonical program `A392630.P18032150745144184290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392630 (n : ℕ) : ℤ :=
  A392630.P18032150745144184290.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393608.P4231341936800649805

`A104887(n+1)%(A002260(n+1)+1)`
-/

namespace A393608.P4231341936800649805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104887 (n + 1)) (A002260 (n + 1) + 1)

end

end A393608.P4231341936800649805

noncomputable section

/-- A393608: Rectangular array R read by descending antidiagonals: R(n,k) = prime(k) mod n, for n>=2.

Offset 2, canonical program `A393608.P4231341936800649805`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393608 (n : ℕ) : ℤ :=
  A393608.P4231341936800649805.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394178.P7172377896833367133

`A054521(n+1)*A144204(n+1)`
-/

namespace A394178.P7172377896833367133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1) * A144204 (n + 1)

end

end A394178.P7172377896833367133

noncomputable section

/-- A394178: Triangle read by rows: T(n, k) is the Frobenius number for n and k if n and k coprime, and 0 otherwise, for 1 <= k <= n.

Offset 1, canonical program `A394178.P7172377896833367133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394178 (n : ℕ) : ℤ :=
  A394178.P7172377896833367133.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394178.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A396574.P15412358032605073405

`A048671(n+1)*A064446(n+1)`
-/

namespace A396574.P15412358032605073405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (n + 1) * A064446 (n + 1)

end

end A396574.P15412358032605073405

noncomputable section

/-- A396574: a(n) is the smallest number k such that n divides binomial(k,m) for 1 <= m <= n-1.

Offset 1, canonical program `A396574.P15412358032605073405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396574 (n : ℕ) : ℤ :=
  A396574.P15412358032605073405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396574.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A397238.P14966536247982268415

`A046692(A057521(n+1))`
-/

namespace A397238.P14966536247982268415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046692 (A057521 (n + 1)).toNat

end

end A397238.P14966536247982268415

noncomputable section

/-- A397238: Dirichlet g.f.: Product_{p prime} (1 + 1/p^s + 1/p^(2*s-1)).

Offset 1, canonical program `A397238.P14966536247982268415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397238 (n : ℕ) : ℤ :=
  A397238.P14966536247982268415.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397606.P554892582912637438

`gcd(2, ∏{p}[n, #])*A011782(A011371(n))`
-/

namespace A397606.P554892582912637438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℤ) * A011782 (A011371 n).toNat

end

end A397606.P554892582912637438

noncomputable section

/-- A397606: a(n) = denominator of A069835(n)/2^n.

Offset 0, canonical program `A397606.P554892582912637438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A397606 (n : ℕ) : ℤ :=
  A397606.P554892582912637438.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A397606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398004.P1626617288142580979

`A027170(n)-A003056(n)`
-/

namespace A398004.P1626617288142580979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027170 n - A003056 n

end

end A398004.P1626617288142580979

noncomputable section

/-- A398004: Recursively defined symmetric multiplication table read by antidiagonals: A(n,k), n>=1, k>=1.

Offset 1, canonical program `A398004.P1626617288142580979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398004 (n : ℕ) : ℤ :=
  A398004.P1626617288142580979.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398004.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A398471.P10817023323234358849

`∑[∑[A157893(n+1)]]`
-/

namespace A398471.P10817023323234358849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157893 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398471.P10817023323234358849

noncomputable section

/-- A398471: Minimum total search cost of an optimal binary search tree over n keys in sorted order, where key i has access frequency i.

Offset 1, canonical program `A398471.P10817023323234358849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1507 terms. -/
def A398471 (n : ℕ) : ℤ :=
  A398471.P10817023323234358849.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1507 terms. -/
def A398471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399091.P3397790440992818153

`A051903(A340152(n+1))`
-/

namespace A399091.P3397790440992818153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A340152 (n + 1)).toNat

end

end A399091.P3397790440992818153

noncomputable section

/-- A399091: The maximum exponent in the prime factorization of the cubefree numbers k such that k+1 is also cubefree.

Offset 1, canonical program `A399091.P3397790440992818153`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A340152, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A399091 (n : ℕ) : ℤ :=
  A399091.P3397790440992818153.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A340152, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A399091.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A399862.P2868466355493484604

`∑[A064789(n+1)-(n+1)]`
-/

namespace A399862.P2868466355493484604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064789 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399862.P2868466355493484604

noncomputable section

/-- A399862: Triangle read by rows: T(n,k) = binomial(n-k+1, 2) - [n-k+1 > k] * binomial(n-2*k+1, 2), k = 1..n, where brackets are Iverson.

Offset 1, canonical program `A399862.P2868466355493484604`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399862 (n : ℕ) : ℤ :=
  A399862.P2868466355493484604.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400139.P13184537251885087427

`A366763(A011262(n+1))`
-/

namespace A400139.P13184537251885087427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366763 (A011262 (n + 1)).toNat

end

end A400139.P13184537251885087427

noncomputable section

/-- A400139: The number of divisors d of n such that gcid(d, n/d) is a powerful number (A001694), where gcid is the greatest common infinitary divisor.

Offset 1, canonical program `A400139.P13184537251885087427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A400139 (n : ℕ) : ℤ :=
  A400139.P13184537251885087427.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A400139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400585.P2189131603130017646

`∑{d}[n+1, A006519(#)*A359366((n+1)/#-1)]`
-/

namespace A400585.P2189131603130017646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006519 d * A359366 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A400585.P2189131603130017646

noncomputable section

/-- A400585: a(n) = Sum_{d|n, n/d odd} binomial(d, 2).

Offset 1, canonical program `A400585.P2189131603130017646`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400585 (n : ℕ) : ℤ :=
  A400585.P2189131603130017646.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387254.P4440641154738734773

`A389065(n+1)²`
-/

namespace A387254.P4440641154738734773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389065 (n + 1) ^ 2

end

end A387254.P4440641154738734773

noncomputable section

/-- A387254: Squares of numbers that are neither prime powers nor powerful.

Offset 1, canonical program `A387254.P4440641154738734773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387254 (n : ℕ) : ℤ :=
  A387254.P4440641154738734773.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387254.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A391701.P296484889807869590

`A000010(n+1)*(A000203(n+1)-A000005(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391701.P296484889807869590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * (A000203 (n + 1) - A000005 (n + 1))

end

end A391701.P296484889807869590

noncomputable section

/-- A391701: a(n) = phi(n) * (sigma(n) - tau(n)).

Offset 1, canonical program `A391701.P296484889807869590`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)*(A000203(n+1)-A000005(n+1))` (program `A391701.P296484889807869590`, by `A391701.P296484889807869590.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A391701 (n : ℕ) : ℤ :=
  A391701.P296484889807869590.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)*(A000203(n+1)-A000005(n+1))` (program `A391701.P296484889807869590`, by `A391701.P296484889807869590.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A391701.provenance : SequenceMachineLib.Provenance := .verified

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

/-! ## A392014.P1818538271184462039

`A278908(A138302(n+1))`
-/

namespace A392014.P1818538271184462039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278908 (A138302 (n + 1)).toNat

end

end A392014.P1818538271184462039

noncomputable section

/-- A392014: The number of exponential unitary divisors of the exponentially-2^n numbers.

Offset 1, canonical program `A392014.P1818538271184462039`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138302, A278908, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392014 (n : ℕ) : ℤ :=
  A392014.P1818538271184462039.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138302, A278908, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A392014.provenance : SequenceMachineLib.Provenance := .conditional

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

Offset 1, canonical program `A394471.P5852096907617755890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1188 terms. -/
def A394471 (n : ℕ) : ℤ :=
  (A394471.P5852096907617755890.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1188 terms. -/
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

/-! ## A395963.P2013661775841027138

`2*n+1-A395961(2*n)`
-/

namespace A395963.P2013661775841027138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A395961 (2 * n)

end

end A395963.P2013661775841027138

noncomputable section

/-- A395963: Numbers k such that A395961(k) = 1.

Offset 1, canonical program `A395963.P2013661775841027138`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395963 (n : ℕ) : ℤ :=
  A395963.P2013661775841027138.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395961, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395963.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A397672.P3807838670338666769

`A011371(n)-A083741(n)`
-/

namespace A397672.P3807838670338666769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n - A083741 n

end

end A397672.P3807838670338666769

noncomputable section

/-- A397672: Value of the Colless index for the rooted binary echelon tree with n leaves.

Offset 1, canonical program `A397672.P3807838670338666769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397672 (n : ℕ) : ℤ :=
  A397672.P3807838670338666769.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397672.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A399306.P14696332805227839918

`A249115(A187951(n+1))`
-/

namespace A399306.P14696332805227839918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249115 (A187951 (n + 1)).toNat

end

end A399306.P14696332805227839918

noncomputable section

/-- A399306: Integers whose minimal Lucas representation (A130310) does not end in a 0 which if removed results in a valid minimal Lucas representation of another integer.

Offset 1, canonical program `A399306.P14696332805227839918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5279 terms. -/
def A399306 (n : ℕ) : ℤ :=
  A399306.P14696332805227839918.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5279 terms. -/
def A399306.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A400894.P15283623408944251719

`2*A400891(n+1)+1`
-/

namespace A400894.P15283623408944251719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A400891 (n + 1) + 1

end

end A400894.P15283623408944251719

noncomputable section

/-- A400894: Bipartition of the positive odd numbers depending on the parity of the 2-adic valuation A007814(3*k + 2). Here the part with even valuation based on A400891.

Offset 1, canonical program `A400894.P15283623408944251719`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A400891, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400894 (n : ℕ) : ℤ :=
  A400894.P15283623408944251719.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A400891, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400894.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A399670.P8950561546072788312

`∪[A007624(n+1), A122181(n+1)]`
-/

namespace A399670.P8950561546072788312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A399670.P8950561546072788312

noncomputable section

/-- A399670: Numbers with at least 6 divisors.

Offset 1, canonical program `A399670.P8950561546072788312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399670 (n : ℕ) : ℤ :=
  (A399670.P8950561546072788312.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400890.P16191853028762974710

`comp[A400891(n+1)]`
-/

namespace A400890.P16191853028762974710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A400890.P16191853028762974710

noncomputable section

/-- A400890: Numbers k such that the 2-adic valuation of 3*k+2 is odd.

Offset 1, canonical program `A400890.P16191853028762974710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A400890 (n : ℕ) : ℤ :=
  (A400890.P16191853028762974710.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A400890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390756.P11425298169468382512

`A000010(A356193(n+1))`
-/

namespace A390756.P11425298169468382512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A356193 (n + 1)).toNat

end

end A390756.P11425298169468382512

noncomputable section

/-- A390756: The Euler totient of the smallest cubefull number divisible by n.

Offset 1, canonical program `A390756.P11425298169468382512`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356193, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390756 (n : ℕ) : ℤ :=
  A390756.P11425298169468382512.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356193, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390756.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392521.P11892844567520045021

`xor(n+1, A080542(n+1))`
-/

namespace A392521.P11892844567520045021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A080542 (n + 1))

end

end A392521.P11892844567520045021

noncomputable section

/-- A392521: Irregular table: apply Ducci map to each binary string of length n-1 in order and read as binary digits to get the terms of row n.

Offset 1, canonical program `A392521.P11892844567520045021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392521 (n : ℕ) : ℤ :=
  A392521.P11892844567520045021.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392521.provenance : SequenceMachineLib.Provenance := .conjectured

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

