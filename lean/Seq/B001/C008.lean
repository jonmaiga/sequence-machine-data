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
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A283467.P7621977705717145571

`A005185(n+2-A005185(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A283467.P7621977705717145571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 ((n + 2 : ℤ) - A005185 (n + 1)).toNat

end

end A283467.P7621977705717145571

noncomputable section

/-- A283467: a(n) = A005185(n+1-A005185(n)).

Offset 1, canonical program `A283467.P7621977705717145571`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A005185(n+2-A005185(n+1))` (program `A283467.P7621977705717145571`, by `A283467.P7621977705717145571.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A283467 (n : ℕ) : ℤ :=
  A283467.P7621977705717145571.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A005185(n+2-A005185(n+1))` (program `A283467.P7621977705717145571`, by `A283467.P7621977705717145571.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A283467.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A284019.P8425388726725023330

`A004001(n+1)-A005185(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284019.P8425388726725023330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 1) - A005185 (n + 1)

end

end A284019.P8425388726725023330

noncomputable section

/-- A284019: The "Hofstadter chaotic heart" sequence: a(n) = A004001(n) - A005185(n).

Offset 1, canonical program `A284019.P8425388726725023330`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A004001(n+1)-A005185(n+1)` (program `A284019.P8425388726725023330`, by `A284019.P8425388726725023330.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A284019 (n : ℕ) : ℤ :=
  A284019.P8425388726725023330.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A004001(n+1)-A005185(n+1)` (program `A284019.P8425388726725023330`, by `A284019.P8425388726725023330.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A284019.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A294896.P1724061180978365351

`gcd(A000203(n+1), A005187(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A294896.P1724061180978365351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A005187 (n + 1))

end

end A294896.P1724061180978365351

noncomputable section

/-- A294896: a(n) = gcd(A000203(n), A005187(n)).

Offset 1, canonical program `A294896.P1724061180978365351`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000203(n+1), A005187(n+1))` (program `A294896.P1724061180978365351`, by `A294896.P1724061180978365351.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A294896 (n : ℕ) : ℤ :=
  (A294896.P1724061180978365351.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000203(n+1), A005187(n+1))` (program `A294896.P1724061180978365351`, by `A294896.P1724061180978365351.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A294896.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A294898.P11311681912968614755

`A005187(n+1)-A000203(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A294898.P11311681912968614755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n + 1) - A000203 (n + 1)

end

end A294898.P11311681912968614755

noncomputable section

/-- A294898: Deficiency minus binary weight: a(n) = A033879(n) - A000120(n) = A005187(n) - A000203(n).

Offset 1, canonical program `A294898.P11311681912968614755`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A005187(n+1)-A000203(n+1)` (program `A294898.P11311681912968614755`, by `A294898.P11311681912968614755.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A294898 (n : ℕ) : ℤ :=
  A294898.P11311681912968614755.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A005187(n+1)-A000203(n+1)` (program `A294898.P11311681912968614755`, by `A294898.P11311681912968614755.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A294898.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A317405.P26191873803755320

`(n+1)*A001353(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A317405.P26191873803755320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001353 (n + 1)

end

end A317405.P26191873803755320

noncomputable section

/-- A317405: a(n) = n * A001353(n).

Offset 1, canonical program `A317405.P26191873803755320`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A001353(n+1)` (program `A317405.P26191873803755320`, by `A317405.P26191873803755320.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A317405 (n : ℕ) : ℤ :=
  A317405.P26191873803755320.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A001353(n+1)` (program `A317405.P26191873803755320`, by `A317405.P26191873803755320.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A317405.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A319842.P8477965333211123551

`8*A104720(n)+ceil(n/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A319842.P8477965333211123551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A104720 n + ⌈(n : ℚ) / 2⌉

end

end A319842.P8477965333211123551

noncomputable section

/-- A319842: a(n) = 8 * A104720(n) + ceiling(n/2).

Offset 0, canonical program `A319842.P8477965333211123551`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*A104720(n)+ceil(n/2)` (program `A319842.P8477965333211123551`, by `A319842.P8477965333211123551.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A319842 (n : ℕ) : ℤ :=
  A319842.P8477965333211123551.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*A104720(n)+ceil(n/2)` (program `A319842.P8477965333211123551`, by `A319842.P8477965333211123551.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A319842.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A279521.P13549278606039013017

`A006165(n+2)-1`
-/

namespace A279521.P13549278606039013017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006165 (n + 2) - 1

end

end A279521.P13549278606039013017

noncomputable section

/-- A279521: Maximum number of single-direction edges in leveled binary trees with n nodes.

Offset 1, canonical program `A279521.P13549278606039013017`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A279521 (n : ℕ) : ℤ :=
  A279521.P13549278606039013017.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A279521.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A279816.P9335264018930352382

`A010888(A000292(n))`
-/

namespace A279816.P9335264018930352382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A000292 n).toNat

end

end A279816.P9335264018930352382

noncomputable section

/-- A279816: Digital roots of tetrahedral numbers (A000292).

Offset 0, canonical program `A279816.P9335264018930352382`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A279816 (n : ℕ) : ℤ :=
  A279816.P9335264018930352382.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A279816.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A279895.P8982875468907171124

`A000566(n)+7*n`
-/

namespace A279895.P8982875468907171124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n + (7 * n : ℤ)

end

end A279895.P8982875468907171124

noncomputable section

/-- A279895: a(n) = n*(5*n + 11)/2.

Offset 0, canonical program `A279895.P8982875468907171124`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A279895 (n : ℕ) : ℤ :=
  A279895.P8982875468907171124.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A279895.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A280057.P4993139028131818465

`(-1)^n*A257174(n)`
-/

namespace A280057.P4993139028131818465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A257174 n

end

end A280057.P4993139028131818465

noncomputable section

/-- A280057: a(n) = (-1)^n * 4*n/3 if n = 3*k and n!=0, otherwise a(n) = (-1)^n * n except a(0) = 1.

Offset 0, canonical program `A280057.P4993139028131818465`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280057 (n : ℕ) : ℤ :=
  A280057.P4993139028131818465.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280057.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A280097.P6551121283852804075

`A000203(A183010(n+1))`
-/

namespace A280097.P6551121283852804075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A183010 (n + 1)).toNat

end

end A280097.P6551121283852804075

noncomputable section

/-- A280097: Sum of the divisors of 24*n - 1.

Offset 1, canonical program `A280097.P6551121283852804075`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280097 (n : ℕ) : ℤ :=
  A280097.P6551121283852804075.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280097.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A280166.P11037172666201527614

`(-1)^n*A257088(n)`
-/

namespace A280166.P11037172666201527614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A257088 n

end

end A280166.P11037172666201527614

noncomputable section

/-- A280166: a(2*n) = 4*n if n > 0, a(2*n + 1) = -(2*n + 1), a(0) = 1.

Offset 0, canonical program `A280166.P11037172666201527614`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280166 (n : ℕ) : ℤ :=
  A280166.P11037172666201527614.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280166.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A280426.P4387657100138312277

`A010888(A000078(n))`
-/

namespace A280426.P4387657100138312277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A000078 n).toNat

end

end A280426.P4387657100138312277

noncomputable section

/-- A280426: Digital roots of tetranacci numbers A000078.

Offset 0, canonical program `A280426.P4387657100138312277`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280426 (n : ℕ) : ℤ :=
  A280426.P4387657100138312277.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280426.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A280428.P4815761797308640122

`A017163(n+1)+A017271(n+1)`
-/

namespace A280428.P4815761797308640122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017163 (n + 1) + A017271 (n + 1)

end

end A280428.P4815761797308640122

noncomputable section

/-- A280428: a(n) = 1729*n^3.

Offset 1, canonical program `A280428.P4815761797308640122`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280428 (n : ℕ) : ℤ :=
  A280428.P4815761797308640122.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280428.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A280560.P10846611347778956273

`A084100(2*n)`
-/

namespace A280560.P10846611347778956273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084100 (2 * n)

end

end A280560.P10846611347778956273

noncomputable section

/-- A280560: a(n) = (-1)^n * 2 if n!=0, with a(0) = 1.

Offset 0, canonical program `A280560.P10846611347778956273`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280560 (n : ℕ) : ℤ :=
  A280560.P10846611347778956273.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A280560.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A281006.P4753203276795461863

`A000203(n+1)-A052928(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A281006.P4753203276795461863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A052928 n

end

end A281006.P4753203276795461863

noncomputable section

/-- A281006: a(n) = A000203(n) - A052928(n-1).

Offset 1, canonical program `A281006.P4753203276795461863`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A281006 (n : ℕ) : ℤ :=
  A281006.P4753203276795461863.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A281006.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A281262.P16614927319612418992

`C(2*n, n)*A000166(n)`
-/

namespace A281262.P16614927319612418992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) * A000166 n

end

end A281262.P16614927319612418992

noncomputable section

/-- A281262: Number of permutations of [2n] with exactly n fixed points.

Offset 0, canonical program `A281262.P16614927319612418992`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A281262 (n : ℕ) : ℤ :=
  A281262.P16614927319612418992.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A281262.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A281450.P2139052333657562300

`A000045(A000984(n))`
-/

namespace A281450.P2139052333657562300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000984 n).toNat

end

end A281450.P2139052333657562300

noncomputable section

/-- A281450: a(n) = Fibonacci(binomial(2*n,n)).

Offset 0, canonical program `A281450.P2139052333657562300`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A281450 (n : ℕ) : ℤ :=
  A281450.P2139052333657562300.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A281450.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A281500.P2681938232247418297

`a(n-2)+A117856(n+1)` with `a(0)=2, a(1)=3`
-/

namespace A281500.P2681938232247418297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 2) + A117856 (n + 1)

end

end A281500.P2681938232247418297

noncomputable section

/-- A281500: Reduced denominators of f(n) = (n+1)/(2^(2+n)-2) with A026741(n+1) as numerators.

Offset 0, canonical program `A281500.P2681938232247418297`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A281500 (n : ℕ) : ℤ :=
  A281500.P2681938232247418297.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A281500.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A282162.P18356065537090708922

`1+A001468(n)`
-/

namespace A282162.P18356065537090708922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A001468 n

end

end A282162.P18356065537090708922

noncomputable section

/-- A282162: Difference sequence of the upper Wythoff sequence, A001950, with 2 prepended.

Offset 0, canonical program `A282162.P18356065537090708922`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A282162 (n : ℕ) : ℤ :=
  A282162.P18356065537090708922.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A282162.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A282564.P10077136610171241754

`n!*a(n-1)+A000178(n-1)*cos(π/2*n)` with `a(0)=1, a(1)=1`
-/

namespace A282564.P10077136610171241754
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 1] fun n a =>
  (Nat.factorial n : ℝ) * a (n - 1) + (A000178 (n - 1) : ℝ) * Real.cos (Real.pi / 2 * (n : ℝ))

end

end A282564.P10077136610171241754

noncomputable section

/-- A282564: Real part of A000178(n) * Sum_{k=0..n} i^k/k!, where i = sqrt(-1).

Offset 0, canonical program `A282564.P10077136610171241754`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A282564 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A282564.P10077136610171241754.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A282564.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A282567.P13609526141642110053

`n!*a(n-1)+A000178(n-1)*sin(π/2*n)` with `a(0)=0`
-/

namespace A282567.P13609526141642110053
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.factorial n : ℝ) * a (n - 1) + (A000178 (n - 1) : ℝ) * Real.sin (Real.pi / 2 * (n : ℝ))

end

end A282567.P13609526141642110053

noncomputable section

/-- A282567: Imaginary part of A000178(n) * Sum_{k=0..n} i^k/k!, where i = sqrt(-1).

Offset 0, canonical program `A282567.P13609526141642110053`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A282567 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A282567.P13609526141642110053.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A282567.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A282818.P15117358072675221588

`2*A249460(n)`
-/

namespace A282818.P15117358072675221588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A249460 n

end

end A282818.P15117358072675221588

noncomputable section

/-- A282818: Number of inequivalent ways to color the edges of a tetrahedron using at most n colors so that no two adjacent edges have the same color.

Offset 0, canonical program `A282818.P15117358072675221588`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A282818 (n : ℕ) : ℤ :=
  A282818.P15117358072675221588.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A282818.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A282819.P2565760298212100288

`2*A282816(n)`
-/

namespace A282819.P2565760298212100288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A282816 n

end

end A282819.P2565760298212100288

noncomputable section

/-- A282819: Number of inequivalent ways to color the edges of a tetrahedron using at most n colors so that no two opposite edges have the same color.

Offset 0, canonical program `A282819.P2565760298212100288`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A282819 (n : ℕ) : ℤ :=
  A282819.P2565760298212100288.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A282819.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A283078.P17181704227828323299

`A000203(7*(n+1))`
-/

namespace A283078.P17181704227828323299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (7 * (n + 1))

end

end A283078.P17181704227828323299

noncomputable section

/-- A283078: a(n) = sigma(7*n).

Offset 1, canonical program `A283078.P17181704227828323299`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A283078 (n : ℕ) : ℤ :=
  A283078.P17181704227828323299.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A283078.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A283118.P7943081042999744

`A000203(5*(n+1))`
-/

namespace A283118.P7943081042999744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (5 * (n + 1))

end

end A283118.P7943081042999744

noncomputable section

/-- A283118: a(n) = sigma(5*n).

Offset 1, canonical program `A283118.P7943081042999744`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A283118 (n : ℕ) : ℤ :=
  A283118.P7943081042999744.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A283118.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A283122.P15983487600107587987

`A000203(8*(n+1))`
-/

namespace A283122.P15983487600107587987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (8 * (n + 1))

end

end A283122.P15983487600107587987

noncomputable section

/-- A283122: a(n) = sigma(8*n).

Offset 1, canonical program `A283122.P15983487600107587987`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A283122 (n : ℕ) : ℤ :=
  A283122.P15983487600107587987.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A283122.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A283123.P9327775811291743870

`A000203(9*(n+1))`
-/

namespace A283123.P9327775811291743870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (9 * (n + 1))

end

end A283123.P9327775811291743870

noncomputable section

/-- A283123: a(n) = sigma(9*n).

Offset 1, canonical program `A283123.P9327775811291743870`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A283123 (n : ℕ) : ℤ :=
  A283123.P9327775811291743870.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A283123.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A283208.P4144003533356594521

`A005187(n+1)-1`
-/

namespace A283208.P4144003533356594521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n + 1) - 1

end

end A283208.P4144003533356594521

noncomputable section

/-- A283208: Minimal exponent integer sequence associated with Vietoris sequence.

Offset 0, canonical program `A283208.P4144003533356594521`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A283208 (n : ℕ) : ℤ :=
  A283208.P4144003533356594521.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A283208.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A283394.P1686196317453702883

`A034856(3*n+2)`
-/

namespace A283394.P1686196317453702883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (3 * n + 2)

end

end A283394.P1686196317453702883

noncomputable section

/-- A283394: a(n) = 3*n*(3*n + 7)/2 + 4.

Offset 0, canonical program `A283394.P1686196317453702883`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A283394 (n : ℕ) : ℤ :=
  A283394.P1686196317453702883.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A283394.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A283678.P10903318495168675449

`A092563(n)*A001147(n)`
-/

namespace A283678.P10903318495168675449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092563 n * A001147 n

end

end A283678.P10903318495168675449

noncomputable section

/-- A283678: Number of possible draws of 2n pairs of consecutive cards from a set of 4n + 1 cards, so that the card that initially occupies the central position is not selected.

Offset 0, canonical program `A283678.P10903318495168675449`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A283678 (n : ℕ) : ℤ :=
  A283678.P10903318495168675449.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A283678.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A284478.P17703318329199154233

`A005185(n+1)-A055748(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A284478.P17703318329199154233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 1) - A055748 (n + 1)

end

end A284478.P17703318329199154233

noncomputable section

/-- A284478: a(n) = A005185(n) - A055748(n).

Offset 1, canonical program `A284478.P17703318329199154233`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A284478 (n : ℕ) : ℤ :=
  A284478.P17703318329199154233.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A284478.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A284816.P9637811502053019596

`(n+1)*A006595(n)`
-/

namespace A284816.P9637811502053019596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A006595 n

end

end A284816.P9637811502053019596

noncomputable section

/-- A284816: Sum of entries in the first cycles of all permutations of [n].

Offset 1, canonical program `A284816.P9637811502053019596`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A284816 (n : ℕ) : ℤ :=
  A284816.P9637811502053019596.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A284816.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A285326.P1726867562295019053

`2*A140472(n)`
-/

namespace A285326.P1726867562295019053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140472 n

end

end A285326.P1726867562295019053

noncomputable section

/-- A285326: a(0) = 0, for n > 0, a(n) = n + A006519(n).

Offset 0, canonical program `A285326.P1726867562295019053`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285326 (n : ℕ) : ℤ :=
  A285326.P1726867562295019053.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285326.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A285896.P13805736718187406496

`(A000203(5*(n+1))-A000203(n+1))/5`
-/

namespace A285896.P13805736718187406496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (5 * (n + 1)) - A000203 (n + 1) : ℚ) / 5

end

end A285896.P13805736718187406496

noncomputable section

/-- A285896: Sum of divisors d of n such that n/d is not congruent to 0 mod 5.

Offset 1, canonical program `A285896.P13805736718187406496`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285896 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A285896.P13805736718187406496.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A285896.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286188.P11269980393292216230

`A206776(n+1)+4*(n+1)²-2*(n+1)+1`
-/

namespace A286188.P11269980393292216230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206776 (n + 1) + (4 * (n + 1) ^ 2 : ℤ) - (2 * (n + 1) : ℤ) + 1

end

end A286188.P11269980393292216230

noncomputable section

/-- A286188: Number of connected induced (non-null) subgraphs of the gear graph with 2n+1 nodes.

Offset 1, canonical program `A286188.P11269980393292216230`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286188 (n : ℕ) : ℤ :=
  A286188.P11269980393292216230.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286188.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286282.P4498904757692292826

`2*A002627(n)-(n-1)`
-/

namespace A286282.P4498904757692292826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002627 n - ((n : ℤ) - 1)

end

end A286282.P4498904757692292826

noncomputable section

/-- A286282: Stage at which Ken Knowlton's elevator (version 2) reaches floor n for the first time.

Offset 1, canonical program `A286282.P4498904757692292826`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286282 (n : ℕ) : ℤ :=
  A286282.P4498904757692292826.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286282.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286359.P4148468375275740236

`1/2*(2+(A000203(n+1)+A000203(2*(n+1)))²-A000203(n+1)-3*A000203(2*(n+1)))`
-/

namespace A286359.P4148468375275740236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A000203 (n + 1) + A000203 (2 * (n + 1))) ^ 2 - A000203 (n + 1) - 3 * A000203 (2 * (n + 1)) : ℚ)

end

end A286359.P4148468375275740236

noncomputable section

/-- A286359: Compound filter: a(n) = P(sigma(n), sigma(2n)), where P(n,k) is sequence A000027 used as a pairing function, and sigma is the sum of divisors (A000203).

Offset 1, canonical program `A286359.P4148468375275740236`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286359 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A286359.P4148468375275740236.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286359.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286548.P11712479418656410754

`A003188(n)-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286548.P11712479418656410754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n - (n : ℤ)

end

end A286548.P11712479418656410754

noncomputable section

/-- A286548: a(n) = A003188(n) - n.

Offset 0, canonical program `A286548.P11712479418656410754`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286548 (n : ℕ) : ℤ :=
  A286548.P11712479418656410754.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286548.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286814.P11901322277021368725

`A002203(n)+n*A000129(n)`
-/

namespace A286814.P11901322277021368725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n + (n : ℤ) * A000129 n

end

end A286814.P11901322277021368725

noncomputable section

/-- A286814: Number of matchings in the n-helm graph.

Offset 0, canonical program `A286814.P11901322277021368725`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286814 (n : ℕ) : ℤ :=
  A286814.P11901322277021368725.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286814.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A286927.P17246180618763280689

`2*A001952(n+1)`
-/

namespace A286927.P17246180618763280689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001952 (n + 1)

end

end A286927.P17246180618763280689

noncomputable section

/-- A286927: Positions of 1 in A286925; complement of A286926.

Offset 1, canonical program `A286927.P17246180618763280689`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286927 (n : ℕ) : ℤ :=
  A286927.P17246180618763280689.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A286927.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A287594.P913544811923215527

`2^n+A080040(n)`
-/

namespace A287594.P913544811923215527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + A080040 n

end

end A287594.P913544811923215527

noncomputable section

/-- A287594: Number of independent vertex sets in the n-helm graph.

Offset 0, canonical program `A287594.P913544811923215527`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A287594 (n : ℕ) : ℤ :=
  A287594.P913544811923215527.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A287594.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A287659.P10046964900207517982

`2*(n+1)-A003849(n)`
-/

namespace A287659.P10046964900207517982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A003849 n

end

end A287659.P10046964900207517982

noncomputable section

/-- A287659: Positions of 1 in A287657; complement of A287658.

Offset 1, canonical program `A287659.P10046964900207517982`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A287659 (n : ℕ) : ℤ :=
  A287659.P10046964900207517982.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A287659.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A288703.P13620747763556395744

`A000522(n)²+A000522(n+1)-(n+1)-1`
-/

namespace A288703.P13620747763556395744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 n ^ 2 + A000522 (n + 1) - (n + 1 : ℤ) - 1

end

end A288703.P13620747763556395744

noncomputable section

/-- A288703: Number of (undirected) paths in the n-barbell graph.

Offset 1, canonical program `A288703.P13620747763556395744`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A288703 (n : ℕ) : ℤ :=
  A288703.P13620747763556395744.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A288703.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A288841.P3607955811981306337

`A000085(n+1)²+A000085(n)²`
-/

namespace A288841.P3607955811981306337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (n + 1) ^ 2 + A000085 n ^ 2

end

end A288841.P3607955811981306337

noncomputable section

/-- A288841: Number of matchings in the n-barbell graph.

Offset 1, canonical program `A288841.P3607955811981306337`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A288841 (n : ℕ) : ℤ :=
  A288841.P3607955811981306337.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A288841.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A289643.P1054073898019394777

`3*A000332(n+3)+5*A000332(n+2)`
-/

namespace A289643.P1054073898019394777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000332 (n + 3) + 5 * A000332 (n + 2)

end

end A289643.P1054073898019394777

noncomputable section

/-- A289643: a(n) = n*(2*n+1)*binomial(n+2,n)/3.

Offset 0, canonical program `A289643.P1054073898019394777`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A289643 (n : ℕ) : ℤ :=
  A289643.P1054073898019394777.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A289643.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A289718.P14152002450367989878

`A005430(n+1)-(n+1)*A006004(n+1)`
-/

namespace A289718.P14152002450367989878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005430 (n + 1) - (n + 1 : ℤ) * A006004 (n + 1)

end

end A289718.P14152002450367989878

noncomputable section

/-- A289718: The order of the semigroup of orientation-preserving or reserving full transformations of n elements.

Offset 1, canonical program `A289718.P14152002450367989878`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A289718 (n : ℕ) : ℤ :=
  A289718.P14152002450367989878.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A289718.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A289870.P8136116674077468676

`A002378(n)-A193356(n+1)`
-/

namespace A289870.P8136116674077468676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n - A193356 (n + 1)

end

end A289870.P8136116674077468676

noncomputable section

/-- A289870: a(n) = n*(n + 1) for n odd, otherwise a(n) = (n - 1)*(n + 1).

Offset 0, canonical program `A289870.P8136116674077468676`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A289870 (n : ℕ) : ℤ :=
  A289870.P8136116674077468676.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A289870.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A289873.P1117904609125433666

`A289761(n+2)-(n+2)`
-/

namespace A289873.P1117904609125433666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289761 (n + 2) - (n + 2 : ℤ)

end

end A289873.P1117904609125433666

noncomputable section

/-- A289873: Related to perfect Wichmann rulers: a(n) = ( n^2 - (mod(n, 6) - 3)^2 ) / 3.

Offset 2, canonical program `A289873.P1117904609125433666`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A289873 (n : ℕ) : ℤ :=
  A289873.P1117904609125433666.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A289873.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A290265.P16009983709249235141

`A001006(n)-A005773(1+floor(n/2))`
-/

namespace A290265.P16009983709249235141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - A005773 (1 + ⌊(n : ℚ) / 2⌋).toNat

end

end A290265.P16009983709249235141

noncomputable section

/-- A290265: The number of non-palindromic Motzkin paths of length n.

Offset 0, canonical program `A290265.P16009983709249235141`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A290265 (n : ℕ) : ℤ :=
  A290265.P16009983709249235141.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A290265.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A290380.P2092588369032190990

`(n+1)*A001006(n+1)`
-/

namespace A290380.P2092588369032190990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001006 (n + 1)

end

end A290380.P2092588369032190990

noncomputable section

/-- A290380: Analog of Motzkin sums for Coxeter type D.

Offset 3, canonical program `A290380.P2092588369032190990`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A290380 (n : ℕ) : ℤ :=
  A290380.P2092588369032190990.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A290380.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A290495.P13877558376664980538

`A000085(2^n)`
-/

namespace A290495.P13877558376664980538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 (2 ^ n)

end

end A290495.P13877558376664980538

noncomputable section

/-- A290495: The number of self-inverse Boolean functions of n variables.

Offset 0, canonical program `A290495.P13877558376664980538`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A290495 (n : ℕ) : ℤ :=
  A290495.P13877558376664980538.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A290495.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A291307.P15942804374896408033

`A291306(n+2)/2`
-/

namespace A291307.P15942804374896408033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291306 (n + 2) : ℚ) / 2

end

end A291307.P15942804374896408033

noncomputable section

/-- A291307: The arithmetic function v_6(n,2).

Offset 2, canonical program `A291307.P15942804374896408033`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A291307 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A291307.P15942804374896408033.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A291307.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A291699.P7038191437602574427

`A000312(n)*A000108(n)`
-/

namespace A291699.P7038191437602574427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n * A000108 n

end

end A291699.P7038191437602574427

noncomputable section

/-- A291699: a(n) = n^n*(2*n)!/(n!*(n + 1)!).

Offset 0, canonical program `A291699.P7038191437602574427`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A291699 (n : ℕ) : ℤ :=
  A291699.P7038191437602574427.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A291699.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A291945.P15300096953576282081

`A001020(n)*A096884(n)`
-/

namespace A291945.P15300096953576282081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001020 n * A096884 n

end

end A291945.P15300096953576282081

noncomputable section

/-- A291945: Powers of 1111.

Offset 0, canonical program `A291945.P15300096953576282081`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A291945 (n : ℕ) : ℤ :=
  A291945.P15300096953576282081.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A291945.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A292062.P7356258512734055693

`(n+1)!*A067318(n+1)/2`
-/

namespace A292062.P7356258512734055693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 1) : ℤ) * A067318 (n + 1) : ℚ) / 2

end

end A292062.P7356258512734055693

noncomputable section

/-- A292062: Wiener index of the n-transposition graph.

Offset 1, canonical program `A292062.P7356258512734055693`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A292062 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A292062.P7356258512734055693.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A292062.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A292272.P5703236082678816393

`n-A048735(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292272.P5703236082678816393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A048735 n

end

end A292272.P5703236082678816393

noncomputable section

/-- A292272: a(n) = n - A048735(n) = n - (n AND floor(n/2)).

Offset 0, canonical program `A292272.P5703236082678816393`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A292272 (n : ℕ) : ℤ :=
  A292272.P5703236082678816393.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A292272.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A292324.P4624661997728121911

`a(n-1)+a(n-4)+A003269(n+2)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=7`
-/

namespace A292324.P4624661997728121911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 4, 7] fun n a =>
  a (n - 1) + a (n - 4) + A003269 (n + 2)

end

end A292324.P4624661997728121911

noncomputable section

/-- A292324: p-INVERT of (1,0,0,1,0,0,0,0,0,...), where p(S) = (1 - S)^2.

Offset 0, canonical program `A292324.P4624661997728121911`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A292324 (n : ℕ) : ℤ :=
  A292324.P4624661997728121911.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A292324.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A292360.P2218299493852357588

`n*(A000032(n)*A000032(n+1)-2)`
-/

namespace A292360.P2218299493852357588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000032 n * A000032 (n + 1) - 2)

end

end A292360.P2218299493852357588

noncomputable section

/-- A292360: a(n) = n*(Lucas(n)*Lucas(n+1) - 2).

Offset 0, canonical program `A292360.P2218299493852357588`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A292360 (n : ℕ) : ℤ :=
  A292360.P2218299493852357588.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A292360.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A292410.P3803211021438617920

`A053645(A016754(n))`
-/

namespace A292410.P3803211021438617920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A016754 n).toNat

end

end A292410.P3803211021438617920

noncomputable section

/-- A292410: Difference between (2n+1)^2 and highest power of 2 less than or equal to (2n+1)^2.

Offset 0, canonical program `A292410.P3803211021438617920`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A292410 (n : ℕ) : ℤ :=
  A292410.P3803211021438617920.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A292410.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A292784.P9591025858271369189

`A000312(n)*A001147(n)`
-/

namespace A292784.P9591025858271369189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n * A001147 n

end

end A292784.P9591025858271369189

noncomputable section

/-- A292784: a(n) = n! * [x^n] 1/sqrt(1 - 2*n*x).

Offset 0, canonical program `A292784.P9591025858271369189`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A292784 (n : ℕ) : ℤ :=
  A292784.P9591025858271369189.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A292784.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A293042.P15673851028626043613

`(A000271(n)+(-1)^(n-1)*floor((n-1)/2))/2`
-/

namespace A293042.P15673851028626043613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000271 n : ℚ) + (-1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (⌊((n : ℤ) - 1 : ℚ) / 2⌋ : ℚ)) / 2

end

end A293042.P15673851028626043613

noncomputable section

/-- A293042: Number of even permutations p of {1,...,n} such that p(i) is not i or i+1.

Offset 0, canonical program `A293042.P15673851028626043613`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293042 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A293042.P15673851028626043613.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293042.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A293043.P8438911873217089998

`(A000271(n)+(-1)^n*floor((n-1)/2))/2`
-/

namespace A293043.P8438911873217089998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000271 n + (-1) ^ n * ⌊((n : ℤ) - 1 : ℚ) / 2⌋ : ℚ) / 2

end

end A293043.P8438911873217089998

noncomputable section

/-- A293043: Number of odd permutations p of {1,...,n} such that p(i) is not i or i+1.

Offset 0, canonical program `A293043.P8438911873217089998`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293043 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A293043.P8438911873217089998.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293043.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A293078.P16857755642706999247

`1/2*A293077(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A293078.P16857755642706999247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A293077 (n + 1) : ℚ)

end

end A293078.P16857755642706999247

noncomputable section

/-- A293078: a(n) = (1/2)*A293077(n).

Offset 1, canonical program `A293078.P16857755642706999247`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293078 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A293078.P16857755642706999247.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293078.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A293125.P13067584911367898446

`(-1)^n*A000262(n)`
-/

namespace A293125.P13067584911367898446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000262 n

end

end A293125.P13067584911367898446

noncomputable section

/-- A293125: Expansion of e.g.f.: exp(-x/(1+x)).

Offset 0, canonical program `A293125.P13067584911367898446`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293125 (n : ℕ) : ℤ :=
  A293125.P13067584911367898446.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293125.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A293144.P1598588345983364731

`20*a(n-1)-24*A293143(n-1)` with `a(0)=8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A293144.P1598588345983364731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  20 * a (n - 1) - 24 * A293143 (n - 1)

end

end A293144.P1598588345983364731

noncomputable section

/-- A293144: Number of vertices in a Menger Sponge constructed from a cubic lattice: a(n) = 20*a(n-1) - 24*A293143(n-1).

Offset 0, canonical program `A293144.P1598588345983364731`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293144 (n : ℕ) : ℤ :=
  A293144.P1598588345983364731.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293144.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A293308.P11952553668781319517

`(A056576(n+1)-1)!/((A056576(n+1)-(n+1))!*n!)`
-/

namespace A293308.P11952553668781319517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A056576 (n + 1) - 1).toNat : ℚ) / (Nat.factorial (A056576 (n + 1) - (n + 1 : ℤ)).toNat * Nat.factorial n : ℚ)

end

end A293308.P11952553668781319517

noncomputable section

/-- A293308: Number of permutations of zero-one words with A056576(n)-n zeros and n-1 ones.

Offset 1, canonical program `A293308.P11952553668781319517`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293308 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A293308.P11952553668781319517.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293308.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A293325.P1460983041729213506

`A094386(n+1)+1`
-/

namespace A293325.P1460983041729213506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094386 (n + 1) + 1

end

end A293325.P1460983041729213506

noncomputable section

/-- A293325: Least integer k such that k/2^n > sqrt(3).

Offset 0, canonical program `A293325.P1460983041729213506`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293325 (n : ℕ) : ℤ :=
  A293325.P1460983041729213506.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293325.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A293337.P12686929730737990883

`A027437(n)+1`
-/

namespace A293337.P12686929730737990883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027437 n + 1

end

end A293337.P12686929730737990883

noncomputable section

/-- A293337: Least integer k such that k/2^n > e.

Offset 0, canonical program `A293337.P12686929730737990883`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293337 (n : ℕ) : ℤ :=
  A293337.P12686929730737990883.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293337.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A293363.P12011803147856491094

`A293362(n)+1`
-/

namespace A293363.P12011803147856491094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293362 n + 1

end

end A293363.P12011803147856491094

noncomputable section

/-- A293363: Least integer k such that k/2^n > log 2.

Offset 0, canonical program `A293363.P12011803147856491094`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293363 (n : ℕ) : ℤ :=
  A293363.P12011803147856491094.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293363.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A294070.P13445950394499554624

`A152948(n+1)*A152948(n+2)`
-/

namespace A294070.P13445950394499554624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152948 (n + 1) * A152948 (n + 2)

end

end A294070.P13445950394499554624

noncomputable section

/-- A294070: a(n) = (1/4)*(n^2 - 2*n)^2 + (9/4)*(n^2 - 2*n) + 6.

Offset 1, canonical program `A294070.P13445950394499554624`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A294070 (n : ℕ) : ℤ :=
  A294070.P13445950394499554624.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A294070.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A294129.P3157484297515965198

`a(n-1)+A000085(n)` with `a(0)=0`
-/

namespace A294129.P3157484297515965198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A000085 n

end

end A294129.P3157484297515965198

noncomputable section

/-- A294129: Numbers n for which exactly one length minimal language exists having exactly n nonempty words over a countably infinite alphabet such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

Offset 1, canonical program `A294129.P3157484297515965198`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A294129 (n : ℕ) : ℤ :=
  A294129.P3157484297515965198.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A294129.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A294327.P10054156691128495151

`A126431(n)+A002282(n)`
-/

namespace A294327.P10054156691128495151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126431 n + A002282 n

end

end A294327.P10054156691128495151

noncomputable section

/-- A294327: a(n) = ((9*n + 8)*10^n - 8)/9.

Offset 0, canonical program `A294327.P10054156691128495151`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A294327 (n : ℕ) : ℤ :=
  A294327.P10054156691128495151.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A294327.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A294409.P11012143022956587436

`A000312(n)*A002426(n)`
-/

namespace A294409.P11012143022956587436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n * A002426 n

end

end A294409.P11012143022956587436

noncomputable section

/-- A294409: a(n) = n! * [x^n] exp(n*x)*BesselI(0,2*n*x).

Offset 0, canonical program `A294409.P11012143022956587436`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A294409 (n : ℕ) : ℤ :=
  A294409.P11012143022956587436.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A294409.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A294473.P13798028006280597171

`2*A294286(n+1)`
-/

namespace A294473.P13798028006280597171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A294286 (n + 1)

end

end A294473.P13798028006280597171

noncomputable section

/-- A294473: Sum of the areas of the squares on the sides of the distinct rectangles that can be made with positive integer sides such that L + W = n, W < L.

Offset 1, canonical program `A294473.P13798028006280597171`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A294473 (n : ℕ) : ℤ :=
  A294473.P13798028006280597171.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A294473.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A294614.P3325507046058223029

`A000203(A017653(n))/12-(n+1)`
-/

namespace A294614.P3325507046058223029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A017653 n).toNat : ℚ) / 12 - (n + 1 : ℚ)

end

end A294614.P3325507046058223029

noncomputable section

/-- A294614: Sum of the divisors of 12*n - 1, divided by 12, minus n.

Offset 1, canonical program `A294614.P3325507046058223029`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A294614 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A294614.P3325507046058223029.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A294614.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A294702.P14772919776764478698

`2*A001519(n)+2^n*(n-6)+(n+5)*(n+2)/2`
-/

namespace A294702.P14772919776764478698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A001519 n + (2 ^ n : ℤ) * ((n : ℤ) - 6) : ℚ) + ((n + 5) * (n + 2) : ℚ) / 2

end

end A294702.P14772919776764478698

noncomputable section

/-- A294702: Number of permutations of [n] avoiding {1324, 2143, 3412}.

Offset 0, canonical program `A294702.P14772919776764478698`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A294702 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A294702.P14772919776764478698.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A294702.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A295371.P17545874107208481143

`(A002426(n+1)²+3*A002426(n)²)/4`
-/

namespace A295371.P17545874107208481143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002426 (n + 1) ^ 2 + 3 * A002426 n ^ 2 : ℚ) / 4

end

end A295371.P17545874107208481143

noncomputable section

/-- A295371: a(n) = (1/(2n))*Sum_{k=0..n-1} C(n-1, k)*C(n+k, k)*C(2k, k)*(k+2)*(-3)^(n-1-k).

Offset 1, canonical program `A295371.P17545874107208481143`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295371 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A295371.P17545874107208481143.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295371.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A295391.P18420293463567727950

`A275611(n+1)/A275611(n)`
-/

namespace A295391.P18420293463567727950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275611 (n + 1) : ℚ) / (A275611 n : ℚ)

end

end A295391.P18420293463567727950

noncomputable section

/-- A295391: a(1) = 2; a(n+1) = 1 + (a(n)^2 - a(n))*(1+1/n) for n >= 1.

Offset 1, canonical program `A295391.P18420293463567727950`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295391 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A295391.P18420293463567727950.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295391.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A295864.P828657620155617513

`A000984(n)*A056040(n)`
-/

namespace A295864.P828657620155617513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A056040 n

end

end A295864.P828657620155617513

noncomputable section

/-- A295864: a(n) = hypergeom([-n, -n], [1], 1) * n! / (floor(n/2)!)^2.

Offset 0, canonical program `A295864.P828657620155617513`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295864 (n : ℕ) : ℤ :=
  A295864.P828657620155617513.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295864.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A295925.P16949749844533986636

`A060560(n+2)-A019583(n+3)`
-/

namespace A295925.P16949749844533986636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060560 (n + 2) - A019583 (n + 3)

end

end A295925.P16949749844533986636

noncomputable section

/-- A295925: Number of bilaterally asymmetric 8-hoops with n symbols.

Offset 2, canonical program `A295925.P16949749844533986636`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295925 (n : ℕ) : ℤ :=
  A295925.P16949749844533986636.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A295925.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A296955.P12925484425908854093

`A000203(n+1)-A080512(n+1)`
-/

namespace A296955.P12925484425908854093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A080512 (n + 1)

end

end A296955.P12925484425908854093

noncomputable section

/-- A296955: Sum of the smaller parts of the partitions of n into two distinct parts such that the smaller part divides the larger.

Offset 1, canonical program `A296955.P12925484425908854093`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A296955 (n : ℕ) : ℤ :=
  A296955.P12925484425908854093.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A296955.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A297384.P12971683271013436262

`2^(n+1)*A003500(n+1)-2/3*(2+4^(n+1))`
-/

namespace A297384.P12971683271013436262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 1) : ℤ) * A003500 (n + 1) : ℚ) - (2 : ℚ) / 3 * (2 + 4 ^ (n + 1) : ℚ)

end

end A297384.P12971683271013436262

noncomputable section

/-- A297384: Number of Eulerian cycles in the n-antiprism graph.

Offset 1, canonical program `A297384.P12971683271013436262`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A297384 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A297384.P12971683271013436262.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A297384.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A297474.P6799261532848148102

`A053871(n+1)+(n+1)*A053871(n)`
-/

namespace A297474.P6799261532848148102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053871 (n + 1) + (n + 1 : ℤ) * A053871 n

end

end A297474.P6799261532848148102

noncomputable section

/-- A297474: Number of maximal matchings in the n-cocktail party graph.

Offset 1, canonical program `A297474.P6799261532848148102`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A297474 (n : ℕ) : ℤ :=
  A297474.P6799261532848148102.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A297474.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A297670.P8816448242460430837

`A002807(n+2)-A000292(n)`
-/

namespace A297670.P8816448242460430837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002807 (n + 2) - A000292 n

end

end A297670.P8816448242460430837

noncomputable section

/-- A297670: Number of chordless cycles in the n-triangular graph.

Offset 2, canonical program `A297670.P8816448242460430837`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A297670 (n : ℕ) : ℤ :=
  A297670.P8816448242460430837.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A297670.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A297965.P4589983828039371754

`A000045(A000292(n+1))`
-/

namespace A297965.P4589983828039371754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000292 (n + 1)).toNat

end

end A297965.P4589983828039371754

noncomputable section

/-- A297965: a(n) = Fibonacci(binomial(n+3, 3)).

Offset 0, canonical program `A297965.P4589983828039371754`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A297965 (n : ℕ) : ℤ :=
  A297965.P4589983828039371754.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A297965.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A298027.P18185960904614678095

`A016921(A001318(n))`
-/

namespace A298027.P18185960904614678095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A001318 n).toNat

end

end A298027.P18185960904614678095

noncomputable section

/-- A298027: Partial sums of A298026.

Offset 0, canonical program `A298027.P18185960904614678095`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A298027 (n : ℕ) : ℤ :=
  A298027.P18185960904614678095.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A298027.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A299412.P10505866840362390154

`A007494(n)*A117748(n+1)`
-/

namespace A299412.P10505866840362390154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n * A117748 (n + 1)

end

end A299412.P10505866840362390154

noncomputable section

/-- A299412: Pentagonal pyramidal numbers divisible by 3.

Offset 0, canonical program `A299412.P10505866840362390154`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A299412 (n : ℕ) : ℤ :=
  A299412.P10505866840362390154.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A299412.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A299915.P2759897045341595723

`A299914(2*n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A299915.P2759897045341595723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299914 (2 * n)

end

end A299915.P2759897045341595723

noncomputable section

/-- A299915: a(n) = A299914(2n).

Offset 0, canonical program `A299915.P2759897045341595723`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A299915 (n : ℕ) : ℤ :=
  A299915.P2759897045341595723.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A299915.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A299916.P12333873613617741462

`A299914(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A299916.P12333873613617741462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299914 (2 * n + 1)

end

end A299916.P12333873613617741462

noncomputable section

/-- A299916: a(n) = A299914(2n+1).

Offset 0, canonical program `A299916.P12333873613617741462`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A299916 (n : ℕ) : ℤ :=
  A299916.P12333873613617741462.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A299916.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A300254.P12654436630093768535

`A212964(10*n+9)`
-/

namespace A300254.P12654436630093768535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212964 (10 * n + 9)

end

end A300254.P12654436630093768535

noncomputable section

/-- A300254: a(n) = 25*(n + 1)*(4*n + 3)*(5*n + 4)/3.

Offset 0, canonical program `A300254.P12654436630093768535`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A300254 (n : ℕ) : ℤ :=
  A300254.P12654436630093768535.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A300254.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A301739.P2807132835622847976

`A005993(n)+A000601(n)`
-/

namespace A301739.P2807132835622847976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005993 n + A000601 n

end

end A301739.P2807132835622847976

noncomputable section

/-- A301739: The number of trees with 4 nodes labeled by positive integers, where each tree's label sum is n.

Offset 4, canonical program `A301739.P2807132835622847976`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A301739 (n : ℕ) : ℤ :=
  A301739.P2807132835622847976.a (n - 4)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A301739.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A302603.P13268963148685604734

`A000032(n)+2*sin((n+1)*π/2)+2^n-1`
-/

namespace A302603.P13268963148685604734
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000032 n : ℝ) + 2 * Real.sin ((n + 1 : ℝ) * Real.pi / 2) + (2 ^ n : ℝ) - 1

end

end A302603.P13268963148685604734

noncomputable section

/-- A302603: Number of total dominating sets in the wheel graph on n nodes.

Offset 1, canonical program `A302603.P13268963148685604734`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A302603 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A302603.P13268963148685604734.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A302603.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A302658.P14429019079959570714

`A300738(n+1)+n+1`
-/

namespace A302658.P14429019079959570714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300738 (n + 1) + (n + 1 : ℤ)

end

end A302658.P14429019079959570714

noncomputable section

/-- A302658: Number of minimal total dominating sets in the wheel graph on n nodes.

Offset 2, canonical program `A302658.P14429019079959570714`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A302658 (n : ℕ) : ℤ :=
  A302658.P14429019079959570714.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A302658.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A302941.P10962283102722459246

`A006497(n+1)²`
-/

namespace A302941.P10962283102722459246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006497 (n + 1) ^ 2

end

end A302941.P10962283102722459246

noncomputable section

/-- A302941: Number of total dominating sets in the 2n-crossed prism graph.

Offset 1, canonical program `A302941.P10962283102722459246`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A302941 (n : ℕ) : ℤ :=
  A302941.P10962283102722459246.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A302941.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A303072.P14683285584780554309

`A253412(n+1)²`
-/

namespace A303072.P14683285584780554309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253412 (n + 1) ^ 2

end

end A303072.P14683285584780554309

noncomputable section

/-- A303072: Number of minimal total dominating sets in the n-ladder graph.

Offset 1, canonical program `A303072.P14683285584780554309`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A303072 (n : ℕ) : ℤ :=
  A303072.P14683285584780554309.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A303072.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A303916.P3281210226866267214

`4*A112851(n)`
-/

namespace A303916.P3281210226866267214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A112851 n

end

end A303916.P3281210226866267214

noncomputable section

/-- A303916: Constant term in the expansion of (Sum_{k=0..n} k*(x^k + x^(-k)))^3.

Offset 0, canonical program `A303916.P3281210226866267214`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A303916 (n : ℕ) : ℤ :=
  A303916.P3281210226866267214.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A303916.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A304025.P13543319459585861266

`A070885(n+2)-1`
-/

namespace A304025.P13543319459585861266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070885 (n + 2) - 1

end

end A304025.P13543319459585861266

noncomputable section

/-- A304025: a(n) is the largest integer that can be written with n digits in base 3/2.

Offset 1, canonical program `A304025.P13543319459585861266`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A304025 (n : ℕ) : ℤ :=
  A304025.P13543319459585861266.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A304025.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A304822.P17716916088307184015

`A304821(n+4)/A304821(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A304822.P17716916088307184015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304821 (n + 4) : ℚ) / (A304821 (n + 1) : ℚ) - 1

end

end A304822.P17716916088307184015

noncomputable section

/-- A304822: a(n) = A304821(n+3)/A304821(n) - 1.

Offset 1, canonical program `A304822.P17716916088307184015`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A304822 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A304822.P17716916088307184015.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A304822.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A304940.P12506467866958843373

`2^n*A063886(n)`
-/

namespace A304940.P12506467866958843373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A063886 n

end

end A304940.P12506467866958843373

noncomputable section

/-- A304940: Expansion of ((1 + 4*x)/(1 - 4*x))^(1/2).

Offset 0, canonical program `A304940.P12506467866958843373`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A304940 (n : ℕ) : ℤ :=
  A304940.P12506467866958843373.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A304940.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A305497.P10714311008206007693

`2*A061419(n+2)-2`
-/

namespace A305497.P10714311008206007693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061419 (n + 2) - 2

end

end A305497.P10714311008206007693

noncomputable section

/-- A305497: The largest positive even integer that can be represented with n digits in base 3/2.

Offset 1, canonical program `A305497.P10714311008206007693`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A305497 (n : ℕ) : ℤ :=
  A305497.P10714311008206007693.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A305497.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A305498.P10132958174563949694

`2*A061419(n+1)`
-/

namespace A305498.P10132958174563949694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061419 (n + 1)

end

end A305498.P10132958174563949694

noncomputable section

/-- A305498: The smallest positive even integer that can be represented with n digits in base 3/2.

Offset 1, canonical program `A305498.P10132958174563949694`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A305498 (n : ℕ) : ℤ :=
  A305498.P10132958174563949694.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A305498.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A306185.P10233409120489882193

`A006882(2*(n+1)+1)+A006882(2*(n+1))`
-/

namespace A306185.P10233409120489882193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (2 * (n + 1) + 1) + A006882 (2 * (n + 1))

end

end A306185.P10233409120489882193

noncomputable section

/-- A306185: a(n) = (2n+1)!! + (2n)!! where k!! = A006882(k).

Offset 1, canonical program `A306185.P10233409120489882193`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306185 (n : ℕ) : ℤ :=
  A306185.P10233409120489882193.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306185.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A306496.P4171439638547843588

`A094047(n+1)/2`
-/

namespace A306496.P4171439638547843588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094047 (n + 1) : ℚ) / 2

end

end A306496.P4171439638547843588

noncomputable section

/-- A306496: Number of (undirected) Hamiltonian cycles in the n-crown graph.

Offset 1, canonical program `A306496.P4171439638547843588`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306496 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A306496.P4171439638547843588.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306496.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A306511.P12945767139372474350

`n!-A078480(n)`
-/

namespace A306511.P12945767139372474350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A078480 n

end

end A306511.P12945767139372474350

noncomputable section

/-- A306511: Number of permutations p of [n] having at least one index i with |p(i)-i| = 1.

Offset 0, canonical program `A306511.P12945767139372474350`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306511 (n : ℕ) : ℤ :=
  A306511.P12945767139372474350.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306511.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A306561.P7138890654757422040

`A006452(n+1)²`
-/

namespace A306561.P7138890654757422040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 (n + 1) ^ 2

end

end A306561.P7138890654757422040

noncomputable section

/-- A306561: Square numbers that are also central polygonal numbers (i.e., square numbers found in the Lazy Caterer's sequence).

Offset 1, canonical program `A306561.P7138890654757422040`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306561 (n : ℕ) : ℤ :=
  A306561.P7138890654757422040.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306561.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A306721.P9438047231518048415

`A017857(7*n)`
-/

namespace A306721.P9438047231518048415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017857 (7 * n)

end

end A306721.P9438047231518048415

noncomputable section

/-- A306721: a(n) = Sum_{k=0..n} binomial(k, 7*(n-k)).

Offset 0, canonical program `A306721.P9438047231518048415`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306721 (n : ℕ) : ℤ :=
  A306721.P9438047231518048415.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306721.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A306752.P15877373641399873806

`A017867(8*n)`
-/

namespace A306752.P15877373641399873806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017867 (8 * n)

end

end A306752.P15877373641399873806

noncomputable section

/-- A306752: a(n) = Sum_{k=0..n} binomial(k, 8*(n-k)).

Offset 0, canonical program `A306752.P15877373641399873806`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306752 (n : ℕ) : ℤ :=
  A306752.P15877373641399873806.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306752.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A306753.P8827207824995559459

`A017877(9*n)`
-/

namespace A306753.P8827207824995559459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017877 (9 * n)

end

end A306753.P8827207824995559459

noncomputable section

/-- A306753: a(n) = Sum_{k=0..n} binomial(k, 9*(n-k)).

Offset 0, canonical program `A306753.P8827207824995559459`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306753 (n : ℕ) : ℤ :=
  A306753.P8827207824995559459.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A306753.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A307136.P2732469706360605279

`ceil(2*sqrt(A000037(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A307136.P2732469706360605279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.sqrt (A000037 (n + 1) : ℝ)⌉

end

end A307136.P2732469706360605279

noncomputable section

/-- A307136: a(n) = ceiling(2*sqrt(A000037(n))), n >= 1.

Offset 1, canonical program `A307136.P2732469706360605279`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A307136 (n : ℕ) : ℤ :=
  A307136.P2732469706360605279.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A307136.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A307768.P13717369919277474039

`2^n-A063886(n)`
-/

namespace A307768.P13717369919277474039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A063886 n

end

end A307768.P13717369919277474039

noncomputable section

/-- A307768: Number of n-step random walks on a line starting from the origin and returning to it at least once.

Offset 0, canonical program `A307768.P13717369919277474039`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A307768 (n : ℕ) : ℤ :=
  A307768.P13717369919277474039.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A307768.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A307935.P10286303832049442799

`A007060(n+1)/2`
-/

namespace A307935.P10286303832049442799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007060 (n + 1) : ℚ) / 2

end

end A307935.P10286303832049442799

noncomputable section

/-- A307935: Number of (undirected) Hamiltonian paths in the n-cocktail party graph.

Offset 1, canonical program `A307935.P10286303832049442799`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A307935 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A307935.P10286303832049442799.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A307935.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A308089.P8981676203332288718

`(n+1)*A005044(n+1)`
-/

namespace A308089.P8981676203332288718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005044 (n + 1)

end

end A308089.P8981676203332288718

noncomputable section

/-- A308089: Sum of the perimeters of all integer-sided triangles with perimeter n.

Offset 1, canonical program `A308089.P8981676203332288718`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A308089 (n : ℕ) : ℤ :=
  A308089.P8981676203332288718.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A308089.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A308134.P11044730314277676641

`A137889(n+1)/2`
-/

namespace A308134.P11044730314277676641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137889 (n + 1) : ℚ) / 2

end

end A308134.P11044730314277676641

noncomputable section

/-- A308134: Number of (undirected) Hamiltonian paths in the n-Hanoi graph.

Offset 1, canonical program `A308134.P11044730314277676641`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A308134 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A308134.P11044730314277676641.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A308134.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A308775.P743659139921755992

`n*A026810(n)`
-/

namespace A308775.P743659139921755992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A026810 n

end

end A308775.P743659139921755992

noncomputable section

/-- A308775: Sum of all the parts in the partitions of n into 4 parts.

Offset 0, canonical program `A308775.P743659139921755992`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A308775 (n : ℕ) : ℤ :=
  A308775.P743659139921755992.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A308775.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A308876.P15853436506435492186

`A010844(n)-A067273(n)`
-/

namespace A308876.P15853436506435492186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010844 n - A067273 n

end

end A308876.P15853436506435492186

noncomputable section

/-- A308876: Expansion of e.g.f. exp(x)*(1 - x)/(1 - 2*x).

Offset 0, canonical program `A308876.P15853436506435492186`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A308876 (n : ℕ) : ℤ :=
  A308876.P15853436506435492186.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A308876.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A309153.P7700007454880818440

`A000203(n+1)*A001227(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A309153.P7700007454880818440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A001227 (n + 1)

end

end A309153.P7700007454880818440

noncomputable section

/-- A309153: a(n) = A000203(n)*A001227(n).

Offset 1, canonical program `A309153.P7700007454880818440`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309153 (n : ℕ) : ℤ :=
  A309153.P7700007454880818440.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309153.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A309579.P8425449964666623534

`2*A056199(n+2)`
-/

namespace A309579.P8425449964666623534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056199 (n + 2)

end

end A309579.P8425449964666623534

noncomputable section

/-- A309579: Maximum principal ratio of a strongly connected digraph on n nodes.

Offset 3, canonical program `A309579.P8425449964666623534`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309579 (n : ℕ) : ℤ :=
  A309579.P8425449964666623534.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A309579.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A316275.P1685632628560373697

`A000032(2*A000045(n))`
-/

namespace A316275.P1685632628560373697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * A000045 n).toNat

end

end A316275.P1685632628560373697

noncomputable section

/-- A316275: Lucas analog to A101361.

Offset 0, canonical program `A316275.P1685632628560373697`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A316275 (n : ℕ) : ℤ :=
  A316275.P1685632628560373697.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A316275.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A316330.P8617574929361590466

`A000085(4*n)/2^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A316330.P8617574929361590466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000085 (4 * n) : ℚ) / (2 ^ n : ℚ)

end

end A316330.P8617574929361590466

noncomputable section

/-- A316330: a(n) = A000085(4*n)/2^n.

Offset 0, canonical program `A316330.P8617574929361590466`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A316330 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A316330.P8617574929361590466.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A316330.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A316331.P5925976260589872909

`A000085(4*n+1)/2^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A316331.P5925976260589872909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000085 (4 * n + 1) : ℚ) / (2 ^ n : ℚ)

end

end A316331.P5925976260589872909

noncomputable section

/-- A316331: a(n) = A000085(4*n+1)/2^n.

Offset 0, canonical program `A316331.P5925976260589872909`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A316331 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A316331.P5925976260589872909.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A316331.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A316332.P4722965833346480592

`A000085(4*n+2)/2^(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A316332.P4722965833346480592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000085 (4 * n + 2) : ℚ) / (2 ^ (n + 1) : ℚ)

end

end A316332.P4722965833346480592

noncomputable section

/-- A316332: a(n) = A000085(4*n+2)/2^(n+1).

Offset 0, canonical program `A316332.P4722965833346480592`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A316332 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A316332.P4722965833346480592.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A316332.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A316333.P17369199407234623873

`A000085(4*n+3)/2^(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A316333.P17369199407234623873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000085 (4 * n + 3) : ℚ) / (2 ^ (n + 2) : ℚ)

end

end A316333.P17369199407234623873

noncomputable section

/-- A316333: a(n) = A000085(4*n+3)/2^(n+2).

Offset 0, canonical program `A316333.P17369199407234623873`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A316333 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A316333.P17369199407234623873.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A316333.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A316355.P6644184729398382473

`A161205(n+1)-1`
-/

namespace A316355.P6644184729398382473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (n + 1) - 1

end

end A316355.P6644184729398382473

noncomputable section

/-- A316355: 2k-1 appears 2k times after 2k-2 appears once.

Offset 0, canonical program `A316355.P6644184729398382473`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A316355 (n : ℕ) : ℤ :=
  A316355.P6644184729398382473.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A316355.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A316386.P3567086635132274071

`n*A009545(n)`
-/

namespace A316386.P3567086635132274071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A009545 n

end

end A316386.P3567086635132274071

noncomputable section

/-- A316386: Binomial transform of [0, 1, 2, -3, -4, 5, 6, -7, -8, ...].

Offset 0, canonical program `A316386.P3567086635132274071`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A316386 (n : ℕ) : ℤ :=
  A316386.P3567086635132274071.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A316386.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A316505.P16861205524032787403

`3^(n+1-A007949(n+1))-(-1)^(n+1)`
-/

namespace A316505.P16861205524032787403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n + 1 : ℤ) - A007949 (n + 1) : ℤ) - ((-1) ^ (n + 1) : ℚ)

end

end A316505.P16861205524032787403

noncomputable section

/-- A316505: a(n) is the smallest number k > 1 such that k^n - 1 is divisible by 3^n.

Offset 1, canonical program `A316505.P16861205524032787403`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A316505 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A316505.P16861205524032787403.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A316505.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A317408.P10668422814070760855

`n*A001906(n)`
-/

namespace A317408.P10668422814070760855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001906 n

end

end A317408.P10668422814070760855

noncomputable section

/-- A317408: a(n) = n * Fibonacci(2n).

Offset 0, canonical program `A317408.P10668422814070760855`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A317408 (n : ℕ) : ℤ :=
  A317408.P10668422814070760855.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A317408.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A317873.P14961294624964069725

`A034887(n!)`
-/

namespace A317873.P14961294624964069725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (Nat.factorial n)

end

end A317873.P14961294624964069725

noncomputable section

/-- A317873: Number of digits in 2^(n!).

Offset 0, canonical program `A317873.P14961294624964069725`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A317873 (n : ℕ) : ℤ :=
  A317873.P14961294624964069725.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A317873.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A318666.P16554539009773594118

`2^A007949(n+1)`
-/

namespace A318666.P16554539009773594118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A007949 (n + 1) : ℤ)

end

end A318666.P16554539009773594118

noncomputable section

/-- A318666: a(n) = 2^{the 3-adic valuation of n}.

Offset 1, canonical program `A318666.P16554539009773594118`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A318666 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318666.P16554539009773594118.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A318666.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A319013.P5955328554395698537

`A002627(n+1)-(n+1)`
-/

namespace A319013.P5955328554395698537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002627 (n + 1) - (n + 1 : ℤ)

end

end A319013.P5955328554395698537

noncomputable section

/-- A319013: a(n) is the sum over each permutation of S_n of the least element of the descent set.

Offset 1, canonical program `A319013.P5955328554395698537`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A319013 (n : ℕ) : ℤ :=
  A319013.P5955328554395698537.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A319013.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A319527.P18010082604810730284

`7*A000203(n+1)`
-/

namespace A319527.P18010082604810730284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A000203 (n + 1)

end

end A319527.P18010082604810730284

noncomputable section

/-- A319527: a(n) = 7 * sigma(n).

Offset 1, canonical program `A319527.P18010082604810730284`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A319527 (n : ℕ) : ℤ :=
  A319527.P18010082604810730284.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A319527.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A319536.P16022269160005628560

`A000165(n+1)-A271212(n+1)`
-/

namespace A319536.P16022269160005628560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 (n + 1) - A271212 (n + 1)

end

end A319536.P16022269160005628560

noncomputable section

/-- A319536: Number of signed permutations of length n where numbers occur in consecutive order.

Offset 1, canonical program `A319536.P16022269160005628560`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A319536 (n : ℕ) : ℤ :=
  A319536.P16022269160005628560.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A319536.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A319588.P16662565000547195772

`A000217(A165517(n+1))`
-/

namespace A319588.P16662565000547195772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A165517 (n + 1)).toNat

end

end A319588.P16662565000547195772

noncomputable section

/-- A319588: First of three consecutive triangular numbers that add up to a perfect square.

Offset 1, canonical program `A319588.P16662565000547195772`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A319588 (n : ℕ) : ℤ :=
  A319588.P16662565000547195772.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A319588.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A319750.P4324588437210756397

`A006190(2^n)`
-/

namespace A319750.P4324588437210756397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 (2 ^ n)

end

end A319750.P4324588437210756397

noncomputable section

/-- A319750: a(n) is the denominator of the Heron sequence with h(0) = 3.

Offset 0, canonical program `A319750.P4324588437210756397`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A319750 (n : ℕ) : ℤ :=
  A319750.P4324588437210756397.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A319750.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A320453.P9955154508496927620

`A000312(n+1)-A185634(n+2)`
-/

namespace A320453.P9955154508496927620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (n + 1) - A185634 (n + 2)

end

end A320453.P9955154508496927620

noncomputable section

/-- A320453: a(n) = (n^n + n*(-1)^n)/(n + 1).

Offset 1, canonical program `A320453.P9955154508496927620`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A320453 (n : ℕ) : ℤ :=
  A320453.P9955154508496927620.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A320453.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A320471.P12898566965721676055

`A000196(n)*A049240(n+1)`
-/

namespace A320471.P12898566965721676055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n * A049240 (n + 1)

end

end A320471.P12898566965721676055

noncomputable section

/-- A320471: a(n) = floor(sqrt(n)) mod ceiling(sqrt(n)).

Offset 1, canonical program `A320471.P12898566965721676055`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A320471 (n : ℕ) : ℤ :=
  A320471.P12898566965721676055.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A320471.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A320524.P17637620607097104473

`A000400(n+1)-A056308(n+1)`
-/

namespace A320524.P17637620607097104473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 (n + 1) - A056308 (n + 1)

end

end A320524.P17637620607097104473

noncomputable section

/-- A320524: Number of chiral pairs of a row of n colors using 6 or fewer colors.

Offset 1, canonical program `A320524.P17637620607097104473`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A320524 (n : ℕ) : ℤ :=
  A320524.P17637620607097104473.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A320524.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A320553.P17690576578618424991

`A129847(n+3)-A000045(n+4)`
-/

namespace A320553.P17690576578618424991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129847 (n + 3) - A000045 (n + 4)

end

end A320553.P17690576578618424991

noncomputable section

/-- A320553: Number of set partitions of [n] such that for each block b the smallest integer interval containing b has at most three elements and for at least one block c the smallest integer interval containing c has exactly three elements.

Offset 3, canonical program `A320553.P17690576578618424991`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A320553 (n : ℕ) : ℤ :=
  A320553.P17690576578618424991.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A320553.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A320660.P311254634174233026

`3*(A084128(n)-2*A239549(n)+3*A239549(n+1))`
-/

namespace A320660.P311254634174233026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A084128 n - 2 * A239549 n + 3 * A239549 (n + 1))

end

end A320660.P311254634174233026

noncomputable section

/-- A320660: Number of business cards required to build an origami level n Jerusalem cube.

Offset 0, canonical program `A320660.P311254634174233026`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A320660 (n : ℕ) : ℤ :=
  A320660.P311254634174233026.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A320660.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A321311.P15851712544406314478

`A293156(n+1)-5*2^n`
-/

namespace A321311.P15851712544406314478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293156 (n + 1) - (5 * 2 ^ n : ℤ)

end

end A321311.P15851712544406314478

noncomputable section

/-- A321311: Number of linear chord diagrams having n+2 chords and minimal chord length n.

Offset 1, canonical program `A321311.P15851712544406314478`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A321311 (n : ℕ) : ℤ :=
  A321311.P15851712544406314478.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A321311.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A321672.P12387618061068922238

`A000584(n)-A168178(n)`
-/

namespace A321672.P12387618061068922238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n - A168178 n

end

end A321672.P12387618061068922238

noncomputable section

/-- A321672: Number of chiral pairs of rows of length 5 using up to n colors.

Offset 0, canonical program `A321672.P12387618061068922238`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A321672 (n : ℕ) : ℤ :=
  A321672.P12387618061068922238.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A321672.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A322052.P4213690938309645053

`10^(n+1)-A004189(n+2)`
-/

namespace A322052.P4213690938309645053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 1) : ℤ) - A004189 (n + 2)

end

end A322052.P4213690938309645053

noncomputable section

/-- A322052: Number of decimal strings of length n that contain a specific string xy where x and y are distinct digits.

Offset 1, canonical program `A322052.P4213690938309645053`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A322052 (n : ℕ) : ℤ :=
  A322052.P4213690938309645053.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A322052.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A322496.P15569204734757494915

`2*a(n-1)+a(n-2)+A049347(n)` with `a(0)=1, a(1)=1`
-/

namespace A322496.P15569204734757494915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * a (n - 1) + a (n - 2) + A049347 n

end

end A322496.P15569204734757494915

noncomputable section

/-- A322496: Number of tilings of a 3 X n rectangle using V (2m+1)-ominoes (m >= 0) in standard orientation.

Offset 0, canonical program `A322496.P15569204734757494915`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A322496 (n : ℕ) : ℤ :=
  A322496.P15569204734757494915.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A322496.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A323225.P13106198949139252087

`(A001787(n)+A009545(n))/2`
-/

namespace A323225.P13106198949139252087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001787 n + A009545 n : ℚ) / 2

end

end A323225.P13106198949139252087

noncomputable section

/-- A323225: a(n) = ((2^n*n + i*(1 - i)^n - i*(1 + i)^n))/4, where i is the imaginary unit.

Offset 0, canonical program `A323225.P13106198949139252087`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A323225 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A323225.P13106198949139252087.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A323225.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A323723.P10463574231425585088

`2*A004526(n*A000982(n))`
-/

namespace A323723.P10463574231425585088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004526 ((n : ℤ) * A000982 n).toNat

end

end A323723.P10463574231425585088

noncomputable section

/-- A323723: a(n) = (-2 - (-1)^n*(-2 + n) + n + 2*n^3)/4.

Offset 0, canonical program `A323723.P10463574231425585088`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A323723 (n : ℕ) : ℤ :=
  A323723.P10463574231425585088.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A323723.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A324445.P6189098538037595142

`A001147(n+1)-A003436(n+1)`
-/

namespace A324445.P6189098538037595142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (n + 1) - A003436 (n + 1)

end

end A324445.P6189098538037595142

noncomputable section

/-- A324445: Number of labeled cyclic chord diagrams with n chords such that the minimal chord length equals one.

Offset 1, canonical program `A324445.P6189098538037595142`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324445 (n : ℕ) : ℤ :=
  A324445.P6189098538037595142.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324445.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A324487.P9094464048076715283

`A001350(n)^3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324487.P9094464048076715283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001350 n ^ 3

end

end A324487.P9094464048076715283

noncomputable section

/-- A324487: a(n) = A001350(n)^3.

Offset 0, canonical program `A324487.P9094464048076715283`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324487 (n : ℕ) : ℤ :=
  A324487.P9094464048076715283.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A324487.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A325517.P17753240437897923138

`n*A131941(n)`
-/

namespace A325517.P17753240437897923138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A131941 n

end

end A325517.P17753240437897923138

noncomputable section

/-- A325517: a(n) = n*((2*n + 1)*(2*n^2 + 2*n + 3) - 3*(-1)^n)/24.

Offset 0, canonical program `A325517.P17753240437897923138`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325517 (n : ℕ) : ℤ :=
  A325517.P17753240437897923138.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325517.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A325636.P17661424497932919305

`gcd(2*(n+1), A000203(n+1))`
-/

namespace A325636.P17661424497932919305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * (n + 1) : ℤ) (A000203 (n + 1))

end

end A325636.P17661424497932919305

noncomputable section

/-- A325636: a(n) = gcd(2n, sigma(n)).

Offset 1, canonical program `A325636.P17661424497932919305`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325636 (n : ℕ) : ℤ :=
  (A325636.P17661424497932919305.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325636.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A325691.P1920078443294648485

`A005044(n+3)-A000035(n+3)`
-/

namespace A325691.P1920078443294648485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 3) - A000035 (n + 3)

end

end A325691.P1920078443294648485

noncomputable section

/-- A325691: Number of length-3 integer partitions of n whose largest part is not greater than the sum of the other two.

Offset 0, canonical program `A325691.P1920078443294648485`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325691 (n : ℕ) : ℤ :=
  A325691.P1920078443294648485.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325691.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A325912.P16718850207318004596

`A001146(n)-a(n-1)` with `a(0)=2`
-/

namespace A325912.P16718850207318004596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001146 n - a (n - 1)

end

end A325912.P16718850207318004596

noncomputable section

/-- A325912: a(n) = (-1)^n * Sum_{k=0..n} (-1)^k*2^(2^k).

Offset 0, canonical program `A325912.P16718850207318004596`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325912 (n : ℕ) : ℤ :=
  A325912.P16718850207318004596.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A325912.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A326251.P16289545305474891037

`2^(n*(n+1)/2)*A054726(n)`
-/

namespace A326251.P16289545305474891037
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((n * (n + 1) : ℚ) / 2 : ℝ) * (A054726 n : ℝ)

end

end A326251.P16289545305474891037

noncomputable section

/-- A326251: Number of digraphs with vertices {1..n} whose increasing edges are not crossing.

Offset 0, canonical program `A326251.P16289545305474891037`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326251 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A326251.P16289545305474891037.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A326251.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A291271.P2466136297381718599

`A291330(n+2)/2`
-/

namespace A291271.P2466136297381718599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291330 (n + 2) : ℚ) / 2

end

end A291271.P2466136297381718599

noncomputable section

/-- A291271: The arithmetic function v_4(n,2).

Offset 2, canonical program `A291271.P2466136297381718599`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A291271 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A291271.P2466136297381718599.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A291271.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A292443.P16824726598112249444

`10*A298101(n)`
-/

namespace A292443.P16824726598112249444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A298101 n

end

end A292443.P16824726598112249444

noncomputable section

/-- A292443: a(n) = (5/32)*A000045(6*n)^2.

Offset 0, canonical program `A292443.P16824726598112249444`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A292443 (n : ℕ) : ℤ :=
  A292443.P16824726598112249444.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A292443.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A293313.P7199876239734961514

`A293314(n)-1`
-/

namespace A293313.P7199876239734961514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293314 n - 1

end

end A293313.P7199876239734961514

noncomputable section

/-- A293313: Greatest integer k such that k/2^n < (1+sqrt(5))/2 (the golden ratio).

Offset 0, canonical program `A293313.P7199876239734961514`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293313 (n : ℕ) : ℤ :=
  A293313.P7199876239734961514.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293313.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A293319.P8415594249504291163

`A293320(n)-1`
-/

namespace A293319.P8415594249504291163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293320 n - 1

end

end A293319.P8415594249504291163

noncomputable section

/-- A293319: Greatest integer k such that k/2^n < phi^2, where phi = (1+sqrt(5))/2 = golden ratio.

Offset 0, canonical program `A293319.P8415594249504291163`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293319 (n : ℕ) : ℤ :=
  A293319.P8415594249504291163.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293319.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A293322.P14636184931829606719

`A293323(n)-1`
-/

namespace A293322.P14636184931829606719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293323 n - 1

end

end A293322.P14636184931829606719

noncomputable section

/-- A293322: Greatest integer k such that k/2^n < 1/phi, where phi = (1+sqrt(5))/2 = golden ratio.

Offset 0, canonical program `A293322.P14636184931829606719`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293322 (n : ℕ) : ℤ :=
  A293322.P14636184931829606719.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A293322.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A322053.P12674167388679704626

`10^(n+1)-A322054(n+1)`
-/

namespace A322053.P12674167388679704626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 1) : ℤ) - A322054 (n + 1)

end

end A322053.P12674167388679704626

noncomputable section

/-- A322053: Number of decimal strings of length n that contain a specific string xx (where x is a single digit).

Offset 1, canonical program `A322053.P12674167388679704626`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A322053 (n : ℕ) : ℤ :=
  A322053.P12674167388679704626.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A322053.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A323265.P13893778921393904343

`2*A323266(n+1)`
-/

namespace A323265.P13893778921393904343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A323266 (n + 1)

end

end A323265.P13893778921393904343

noncomputable section

/-- A323265: The sequence denoted by p_n used in the calculation of A323260.

Offset 1, canonical program `A323265.P13893778921393904343`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A323265 (n : ℕ) : ℤ :=
  A323265.P13893778921393904343.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A323265.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A279357.P8695073576768170559

`xor(Δ[A122247(n)], A005187(n))`
-/

namespace A279357.P8695073576768170559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) (A005187 n)

end

end A279357.P8695073576768170559

noncomputable section

/-- A279357: a(n) = A005187(n) XOR A005187(n+1).

Offset 0, canonical program `A279357.P8695073576768170559`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279357 (n : ℕ) : ℤ :=
  A279357.P8695073576768170559.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279363.P36880166466637901

`A001159(n+1)-A000583(n+1)`
-/

namespace A279363.P36880166466637901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001159 (n + 1) - A000583 (n + 1)

end

end A279363.P36880166466637901

noncomputable section

/-- A279363: Sum of 4th powers of proper divisors of n.

Offset 1, canonical program `A279363.P36880166466637901`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001159, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A279363 (n : ℕ) : ℤ :=
  A279363.P36880166466637901.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001159, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A279363.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A279364.P12642884651805125480

`A001160(n+1)-A000584(n+1)`
-/

namespace A279364.P12642884651805125480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001160 (n + 1) - A000584 (n + 1)

end

end A279364.P12642884651805125480

noncomputable section

/-- A279364: Sum of 5th powers of proper divisors of n.

Offset 1, canonical program `A279364.P12642884651805125480`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001160, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A279364 (n : ℕ) : ℤ :=
  A279364.P12642884651805125480.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001160, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A279364.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A279496.P17721157438031586069

`∑{d}[n+1, A253903(#)]`
-/

namespace A279496.P17721157438031586069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A253903 d

end

end A279496.P17721157438031586069

noncomputable section

/-- A279496: Number of square pyramidal numbers dividing n.

Offset 1, canonical program `A279496.P17721157438031586069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A279496 (n : ℕ) : ℤ :=
  A279496.P17721157438031586069.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A279496.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279574.P12593372951877447246

`A279322(2*(n+1))`
-/

namespace A279574.P12593372951877447246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279322 (2 * (n + 1))

end

end A279574.P12593372951877447246

noncomputable section

/-- A279574: Number of n X 2 0..2 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

Offset 1, canonical program `A279574.P12593372951877447246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A279574 (n : ℕ) : ℤ :=
  A279574.P12593372951877447246.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A279574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279742.P2431605558967303777

`2*(A010049(n)+2*A000071(n+1))`
-/

namespace A279742.P2431605558967303777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A010049 n + 2 * A000071 (n + 1))

end

end A279742.P2431605558967303777

noncomputable section

/-- A279742: Number of 2 X n 0..1 arrays with no element equal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

Offset 1, canonical program `A279742.P2431605558967303777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. -/
def A279742 (n : ℕ) : ℤ :=
  A279742.P2431605558967303777.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. -/
def A279742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279780.P8916946259894325653

`A289260(n)*(-1)^n`
-/

namespace A279780.P8916946259894325653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289260 n * (-1) ^ n

end

end A279780.P8916946259894325653

noncomputable section

/-- A279780: Coefficients in the expansion of 1/([r] + [2r]x + [3r]x^2 + ...); [ ] = floor, r = 8/5.

Offset 0, canonical program `A279780.P8916946259894325653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 435 terms. -/
def A279780 (n : ℕ) : ℤ :=
  A279780.P8916946259894325653.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 435 terms. -/
def A279780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279910.P17272219053837189446

`A024924(n+1)-A052928(n+1)`
-/

namespace A279910.P17272219053837189446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024924 (n + 1) - A052928 (n + 1)

end

end A279910.P17272219053837189446

noncomputable section

/-- A279910: a(n) = Sum_{k=1..n} prime(k+1)*floor(n/prime(k+1)).

Offset 1, canonical program `A279910.P17272219053837189446`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024924, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A279910 (n : ℕ) : ℤ :=
  A279910.P17272219053837189446.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024924, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A279910.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A279933.P135696941930136663

`eq[0, A078588(n)]+1`
-/

namespace A279933.P135696941930136663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078588 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A279933.P135696941930136663

noncomputable section

/-- A279933: Positive integers k such that {(k-1)*r} < 1/2, where r = golden ratio = (1 + sqrt(5))/2 and { } = fractional part.

Offset 1, canonical program `A279933.P135696941930136663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A279933 (n : ℕ) : ℤ :=
  (A279933.P135696941930136663.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A279933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280026.P12511479644503027020

`A055086(n)+n%floor(sqrt(n+1))`
-/

namespace A280026.P12511479644503027020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 n + ((n % Nat.sqrt (n + 1) : ℕ) : ℤ)

end

end A280026.P12511479644503027020

noncomputable section

/-- A280026: Fill an infinite square array by following a spiral around the origin; in the n-th cell, enter the number of earlier cells that can be seen from that cell.

Offset 0, canonical program `A280026.P12511479644503027020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280026 (n : ℕ) : ℤ :=
  A280026.P12511479644503027020.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280084.P16125585662034977001

`A002313(n+1)-A000007(n)`
-/

namespace A280084.P16125585662034977001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1) - A000007 n

end

end A280084.P16125585662034977001

noncomputable section

/-- A280084: 1 together with the Pythagorean primes.

Offset 1, canonical program `A280084.P16125585662034977001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280084 (n : ℕ) : ℤ :=
  A280084.P16125585662034977001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A280084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280167.P6416678742977905605

`(-1)^n*A257143(n)`
-/

namespace A280167.P6416678742977905605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A257143 n

end

end A280167.P6416678742977905605

noncomputable section

/-- A280167: a(2*n) = 3*n if n > 0, a(2*n + 1) = -(2*n + 1), a(0) = 1.

Offset 0, canonical program `A280167.P6416678742977905605`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257143, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280167 (n : ℕ) : ℤ :=
  A280167.P6416678742977905605.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257143, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A280167.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A280246.P5802468637491998326

`∏{d}[n+1, A023896(#)]`
-/

namespace A280246.P5802468637491998326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A023896 d

end

end A280246.P5802468637491998326

noncomputable section

/-- A280246: a(n) = Product_{d|n} psi(d), where psi(m) is the sum of totatives of m (A023896).

Offset 1, canonical program `A280246.P5802468637491998326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1679 terms. -/
def A280246 (n : ℕ) : ℤ :=
  A280246.P5802468637491998326.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1679 terms. -/
def A280246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280410.P15523525945967946313

`A094026(A266303(n))`
-/

namespace A280410.P15523525945967946313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (A266303 n).toNat

end

end A280410.P15523525945967946313

noncomputable section

/-- A280410: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 261", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A280410.P15523525945967946313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A280410 (n : ℕ) : ℤ :=
  A280410.P15523525945967946313.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A280410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280511.P11922694693869200803

`A001519(A130259(n+1)+1)`
-/

namespace A280511.P11922694693869200803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (A130259 (n + 1) + 1).toNat

end

end A280511.P11922694693869200803

noncomputable section

/-- A280511: Index sequence of the block-fractal sequence A001468.

Offset 1, canonical program `A280511.P11922694693869200803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A280511 (n : ℕ) : ℤ :=
  A280511.P11922694693869200803.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A280511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280513.P6202625206943010125

`A001906(A130259(n)+1)-n`
-/

namespace A280513.P6202625206943010125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (A130259 n + 1).toNat - (n : ℤ)

end

end A280513.P6202625206943010125

noncomputable section

/-- A280513: Index sequence of the reverse block-fractal sequence A001468.

Offset 1, canonical program `A280513.P6202625206943010125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A280513 (n : ℕ) : ℤ :=
  A280513.P6202625206943010125.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A280513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280699.P3664510402392200407

`gcd(A115339(n+1), A176742(n))`
-/

namespace A280699.P3664510402392200407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A115339 (n + 1)) (A176742 n)

end

end A280699.P3664510402392200407

noncomputable section

/-- A280699: Greatest Lucas number that is a divisor of the n-th Fibonacci number, a(1) = a(2) = 1.

Offset 1, canonical program `A280699.P3664510402392200407`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 957 terms. -/
def A280699 (n : ℕ) : ℤ :=
  (A280699.P3664510402392200407.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 957 terms. -/
def A280699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280762.P12865905246997797298

`ceil(log2(A000108(n)))`
-/

namespace A280762.P12865905246997797298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A000108 n : ℝ)⌉

end

end A280762.P12865905246997797298

noncomputable section

/-- A280762: a(n) = ceiling( log_2( Catalan(n) ) ).

Offset 0, canonical program `A280762.P12865905246997797298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A280762 (n : ℕ) : ℤ :=
  A280762.P12865905246997797298.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A280762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281017.P7289956237185605220

`eq[2, A032741(A280916(n)²)]`
-/

namespace A281017.P7289956237185605220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A280916 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A281017.P7289956237185605220

noncomputable section

/-- A281017: Numbers with a prime number of dashes in their International Morse numeral representation.

Offset 1, canonical program `A281017.P7289956237185605220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3511 terms. -/
def A281017 (n : ℕ) : ℤ :=
  (A281017.P7289956237185605220.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3511 terms. -/
def A281017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281019.P3294416278922020862

`∏[A016035(n+1)+1]`
-/

namespace A281019.P3294416278922020862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A281019.P3294416278922020862

noncomputable section

/-- A281019: Partial products of A051953; a(1) = 1.

Offset 1, canonical program `A281019.P3294416278922020862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A281019 (n : ℕ) : ℤ :=
  A281019.P3294416278922020862.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A281019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281146.P821833077912013293

`A267051(n)-11%A011557(n)`
-/

namespace A281146.P821833077912013293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267051 n - Int.tmod 11 (A011557 n)

end

end A281146.P821833077912013293

noncomputable section

/-- A281146: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 515", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A281146.P821833077912013293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A281146 (n : ℕ) : ℤ :=
  A281146.P821833077912013293.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A281146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281199.P10272472224117840655

`A166336(n)-1`
-/

namespace A281199.P10272472224117840655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166336 n - 1

end

end A281199.P10272472224117840655

noncomputable section

/-- A281199: Number of n X 2 0..1 arrays with no element equal to more than one of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

Offset 1, canonical program `A281199.P10272472224117840655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A281199 (n : ℕ) : ℤ :=
  A281199.P10272472224117840655.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A281199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281241.P7408969812568458589

`2*A281235(n+1)`
-/

namespace A281241.P7408969812568458589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A281235 (n + 1)

end

end A281241.P7408969812568458589

noncomputable section

/-- A281241: Solutions x to the negative Pell equation y^2 = 72*x^2 - 1331712 with x,y >= 0.

Offset 1, canonical program `A281241.P7408969812568458589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 385 terms. -/
def A281241 (n : ℕ) : ℤ :=
  A281241.P7408969812568458589.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 385 terms. -/
def A281241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281376.P8580911295092577376

`∑[∑[A023645(abs(1-n)+1)]]`
-/

namespace A281376.P8580911295092577376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (|1 - (n : ℤ)| + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A281376.P8580911295092577376

noncomputable section

/-- A281376: Total number of counts where floor(N/k) < floor((N+k)/n) for k = {1, 2, ..., n-1} and N >= n.

Offset 1, canonical program `A281376.P8580911295092577376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281376 (n : ℕ) : ℤ :=
  A281376.P8580911295092577376.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281553.P903484465477514888

`A038572(xor(n, floor(n/2)))`
-/

namespace A281553.P903484465477514888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A281553.P903484465477514888

noncomputable section

/-- A281553: Write n in binary reflected Gray code, rotate one binary place to the right and convert the code back to decimal.

Offset 0, canonical program `A281553.P903484465477514888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281553 (n : ℕ) : ℤ :=
  A281553.P903484465477514888.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281553.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281664.P3503266122031613119

`A045326(n+1)-1`
-/

namespace A281664.P3503266122031613119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1) - 1

end

end A281664.P3503266122031613119

noncomputable section

/-- A281664: Numbers k such that A000005(k) = A000005(A000217(k)).

Offset 1, canonical program `A281664.P3503266122031613119`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045326, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A281664 (n : ℕ) : ℤ :=
  A281664.P3503266122031613119.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045326, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A281664.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A281703.P6915530931857286295

`ceil(p?[A100531(n)+1+n]/3)`
-/

namespace A281703.P6915530931857286295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100531 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 3⌉

end

end A281703.P6915530931857286295

noncomputable section

/-- A281703: Numbers k such that A000005(k) = A000005(A000326(k)).

Offset 1, canonical program `A281703.P6915530931857286295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A281703 (n : ℕ) : ℤ :=
  A281703.P6915530931857286295.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A281703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281815.P6050278625740793222

`and(1, char[A195313(n)])`
-/

namespace A281815.P6050278625740793222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195313 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A281815.P6050278625740793222

noncomputable section

/-- A281815: Expansion of f(x, x^10) in powers of x where f(, ) is Ramanujan's general theta function.

Offset 0, canonical program `A281815.P6050278625740793222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281815 (n : ℕ) : ℤ :=
  (A281815.P6050278625740793222.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A281815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281862.P6329816750450541601

`A165202(n)-A104555(n+1)`
-/

namespace A281862.P6329816750450541601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165202 n - A104555 (n + 1)

end

end A281862.P6329816750450541601

noncomputable section

/-- A281862: Riordan transform of the triangular number sequence A000217 with the Chebyshev S matrix A049310.

Offset 0, canonical program `A281862.P6329816750450541601`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A281862 (n : ℕ) : ℤ :=
  A281862.P6329816750450541601.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A281862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282002.P14148458962214913846

`A094026(A267352(n))`
-/

namespace A282002.P14148458962214913846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (A267352 n).toNat

end

end A282002.P14148458962214913846

noncomputable section

/-- A282002: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 413", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282002.P14148458962214913846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A282002 (n : ℕ) : ℤ :=
  A282002.P14148458962214913846.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A282002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282003.P4951618772127714983

`A277798(n)+A178501(n)`
-/

namespace A282003.P4951618772127714983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277798 n + A178501 n

end

end A282003.P4951618772127714983

noncomputable section

/-- A282003: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 413", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282003.P4951618772127714983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282003 (n : ℕ) : ℤ :=
  A282003.P4951618772127714983.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282080.P11231614446896098972

`A213850(n+1)-A000292(A285869(n))`
-/

namespace A282080.P11231614446896098972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213850 (n + 1) - A000292 (A285869 n).toNat

end

end A282080.P11231614446896098972

noncomputable section

/-- A282080: Number of n-element subsets of [n+4] having an even sum.

Offset 0, canonical program `A282080.P11231614446896098972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282080 (n : ℕ) : ℤ :=
  A282080.P11231614446896098972.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282122.P11801974229766094100

`A056830(n*and(1, n)+1)+A056830(n)`
-/

namespace A282122.P11801974229766094100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056830 (n * Nat.land 1 n + 1) + A056830 n

end

end A282122.P11801974229766094100

noncomputable section

/-- A282122: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 430", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282122.P11801974229766094100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A282122 (n : ℕ) : ℤ :=
  A282122.P11801974229766094100.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A282122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282154.P723453364652554422

`24*A282097(n)`
-/

namespace A282154.P723453364652554422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A282097 n

end

end A282154.P723453364652554422

noncomputable section

/-- A282154: Coefficients in expansion of Eisenstein series -q*(d/dq)(q*(d/dq)E_2).

Offset 0, canonical program `A282154.P723453364652554422`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A282097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A282154 (n : ℕ) : ℤ :=
  A282154.P723453364652554422.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A282097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A282154.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A282386.P16956700879093564152

`A006943(A006257(n))`
-/

namespace A282386.P16956700879093564152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006943 (A006257 n).toNat

end

end A282386.P16956700879093564152

noncomputable section

/-- A282386: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 462", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282386.P16956700879093564152`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A282386 (n : ℕ) : ℤ :=
  A282386.P16956700879093564152.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A282386.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282411.P10088010066774626228

`∏{d}[1-n, #%2]*A002275(or(1, n))`
-/

namespace A282411.P10088010066774626228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n).natAbs, d % 2 : ℕ) : ℤ) * A002275 (Nat.lor 1 n)

end

end A282411.P10088010066774626228

noncomputable section

/-- A282411: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 467", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282411.P10088010066774626228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282411 (n : ℕ) : ℤ :=
  A282411.P10088010066774626228.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282413.P9166255357431083212

`A000225(C((n+1)/and(n+1, -(n+1)), n))`
-/

namespace A282413.P9166255357431083212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (Nat.choose (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat n)

end

end A282413.P9166255357431083212

noncomputable section

/-- A282413: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 467", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282413.P9166255357431083212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A282413 (n : ℕ) : ℤ :=
  A282413.P9166255357431083212.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A282413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282417.P1547961641862508463

`A052551(n)*A072345(n)`
-/

namespace A282417.P1547961641862508463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 n * A072345 n

end

end A282417.P1547961641862508463

noncomputable section

/-- A282417: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 469", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282417.P1547961641862508463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A282417 (n : ℕ) : ℤ :=
  A282417.P1547961641862508463.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A282417.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282452.P10611343078574645269

`A094026(Δ[A266257(n)])`
-/

namespace A282452.P10611343078574645269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (f1 (n + 1) - f1 n).toNat

end

end A282452.P10611343078574645269

noncomputable section

/-- A282452: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 475", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282452.P10611343078574645269`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282452 (n : ℕ) : ℤ :=
  A282452.P10611343078574645269.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282464.P101039133801469205

`floor(∑[n*A295680(2*n+1)/2])`
-/

namespace A282464.P101039133801469205
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A295680 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A282464.P101039133801469205

noncomputable section

/-- A282464: a(n) = Sum_{i=0..n} i*Fibonacci(i)^2.

Offset 0, canonical program `A282464.P101039133801469205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A282464 (n : ℕ) : ℤ :=
  A282464.P101039133801469205.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A282464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282473.P17884941203573586449

`9*A065438(n+1)`
-/

namespace A282473.P17884941203573586449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A065438 (n + 1)

end

end A282473.P17884941203573586449

noncomputable section

/-- A282473: Multiples of 9 which cannot be expressed as the difference between a natural number k and its digit sum s(k).

Offset 1, canonical program `A282473.P17884941203573586449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282473 (n : ℕ) : ℤ :=
  A282473.P17884941203573586449.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282600.P3309668431358535051

`A004526(n-A016035(n+1))*A004526(n)`
-/

namespace A282600.P3309668431358535051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n : ℤ) - A016035 (n + 1)).toNat * A004526 n

end

end A282600.P3309668431358535051

noncomputable section

/-- A282600: a(n) = Sum_(k=1..phi(n)) floor(d_k/2) where d_k are the totatives of n.

Offset 1, canonical program `A282600.P3309668431358535051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282600 (n : ℕ) : ℤ :=
  A282600.P3309668431358535051.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282600.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282622.P11673872232935592026

`val(A025547(n+4), 5)`
-/

namespace A282622.P11673872232935592026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025547 (n + 4)).toNat 5

end

end A282622.P11673872232935592026

noncomputable section

/-- A282622: Number of digits of the representation of n in the alternating sexagesimal-decimal number system.

Offset 1, canonical program `A282622.P11673872232935592026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282622 (n : ℕ) : ℤ :=
  (A282622.P11673872232935592026.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282891.P14281106400011043794

`∑[A004001(n+1)]%(n+1)`
-/

namespace A282891.P14281106400011043794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A282891.P14281106400011043794

noncomputable section

/-- A282891: Remainder when sum of first n terms of A004001 is divided by n.

Offset 1, canonical program `A282891.P14281106400011043794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282891 (n : ℕ) : ℤ :=
  A282891.P14281106400011043794.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282894.P8507695228909102184

`∑[A004001(n+1)]%A004001(n+1)`
-/

namespace A282894.P8507695228909102184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A004001 (n + 1))

end

end A282894.P8507695228909102184

noncomputable section

/-- A282894: Remainder when sum of first n terms of A004001 is divided by A004001(n).

Offset 1, canonical program `A282894.P8507695228909102184`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282894 (n : ℕ) : ℤ :=
  A282894.P8507695228909102184.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A282894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283025.P6503046752952569404

`A076268(n+1)%(n+1)`
-/

namespace A283025.P6503046752952569404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076268 (n + 1)) (n + 1 : ℤ)

end

end A283025.P6503046752952569404

noncomputable section

/-- A283025: Remainder when sum of first n terms of A005185 is divided by n.

Offset 1, canonical program `A283025.P6503046752952569404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283025 (n : ℕ) : ℤ :=
  A283025.P6503046752952569404.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283165.P4937381751944655618

`n-and(n-A006257(n), 2*n)`
-/

namespace A283165.P4937381751944655618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land ((n : ℤ) - A006257 n) (2 * n : ℤ)

end

end A283165.P4937381751944655618

noncomputable section

/-- A283165: a(0) = 0; a(1) = 1; a(2*n) = 2*a(n), a(2*n+1) = 2*a(n) + (-1)^a(n+1).

Offset 0, canonical program `A283165.P4937381751944655618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283165 (n : ℕ) : ℤ :=
  A283165.P4937381751944655618.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283233.P10814312052704964947

`∑[2*A001468(n)]`
-/

namespace A283233.P10814312052704964947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283233.P10814312052704964947

noncomputable section

/-- A283233: 2*A000201.

Offset 1, canonical program `A283233.P10814312052704964947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283233 (n : ℕ) : ℤ :=
  A283233.P10814312052704964947.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283295.P9519186107921099445

`eq[A000007(n), A105570(A000093(n))]`
-/

namespace A283295.P9519186107921099445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A000093 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A283295.P9519186107921099445

noncomputable section

/-- A283295: Integers n such that floor(n^(3/2)) is squarefree.

Offset 1, canonical program `A283295.P9519186107921099445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 898 terms. -/
def A283295 (n : ℕ) : ℤ :=
  (A283295.P9519186107921099445.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 898 terms. -/
def A283295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283351.P7294209392179528084

`A002275(or(1, abs(1-n)))`
-/

namespace A283351.P7294209392179528084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (Int.lor 1 |1 - (n : ℤ)|).toNat

end

end A283351.P7294209392179528084

noncomputable section

/-- A283351: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 619", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A283351.P7294209392179528084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A283351 (n : ℕ) : ℤ :=
  A283351.P7294209392179528084.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A283351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283419.P3546850962263025948

`A092092(p?[a(n-2)+2])` with `a(0)=0, a(1)=2, a(2)=4, a(3)=1`
-/

namespace A283419.P3546850962263025948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4, 1] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092092 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A283419.P3546850962263025948

noncomputable section

/-- A283419: a(n) is the multiplicative inverse of 3 modulo the n-th prime (or 0 if none exists).

Offset 1, canonical program `A283419.P3546850962263025948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A283419 (n : ℕ) : ℤ :=
  A283419.P3546850962263025948.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A283419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283439.P6626348979952952832

`(A008611(n)-(n+2))*Δ[A099470(n+1)]`
-/

namespace A283439.P6626348979952952832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008611 n - (n + 2 : ℤ)) * (f1 (n + 1) - f1 n)

end

end A283439.P6626348979952952832

noncomputable section

/-- A283439: Hankel transform of A033434.

Offset 0, canonical program `A283439.P6626348979952952832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A283439 (n : ℕ) : ℤ :=
  A283439.P6626348979952952832.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A283439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283451.P3335321419397655915

`∑[-(A005185(n+1)*A033999(n))]`
-/

namespace A283451.P3335321419397655915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A005185 (n + 1) * A033999 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A283451.P3335321419397655915

noncomputable section

/-- A283451: a(n) = Sum_{k=1..n} (-1)^k * A005185(k).

Offset 1, canonical program `A283451.P3335321419397655915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283451 (n : ℕ) : ℤ :=
  A283451.P3335321419397655915.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283501.P15782849535763562148

`∑[A004001(n+1)]%A005843(n+1)`
-/

namespace A283501.P15782849535763562148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A005843 (n + 1))

end

end A283501.P15782849535763562148

noncomputable section

/-- A283501: Remainder when sum of first n terms of A004001 is divided by 2*n.

Offset 1, canonical program `A283501.P15782849535763562148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283501 (n : ℕ) : ℤ :=
  A283501.P15782849535763562148.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283509.P10202215359054126072

`A076268(n+1)%(2*(n+1))`
-/

namespace A283509.P10202215359054126072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076268 (n + 1)) (2 * (n + 1) : ℤ)

end

end A283509.P10202215359054126072

noncomputable section

/-- A283509: Remainder when sum of first n terms of the Hofstadter Q-sequence is divided by 2*n.

Offset 1, canonical program `A283509.P10202215359054126072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283509 (n : ℕ) : ℤ :=
  A283509.P10202215359054126072.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283523.P4740579699157072917

`xor(A126646(n), A267883(n))`
-/

namespace A283523.P4740579699157072917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A126646 n) (A267883 n)

end

end A283523.P4740579699157072917

noncomputable section

/-- A283523: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 913", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A283523.P4740579699157072917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A283523 (n : ℕ) : ℤ :=
  A283523.P4740579699157072917.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A283523.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283525.P1612065617130241968

`∑[A004001(n+1)]%(3*(n+1))`
-/

namespace A283525.P1612065617130241968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (3 * (n + 1) : ℤ)

end

end A283525.P1612065617130241968

noncomputable section

/-- A283525: Remainder when sum of first n terms of A004001 is divided by 3*n.

Offset 1, canonical program `A283525.P1612065617130241968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283525 (n : ℕ) : ℤ :=
  A283525.P1612065617130241968.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283525.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283767.P7767198059280804537

`lt[A005206(n)%2, 1]+1`
-/

namespace A283767.P7767198059280804537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005206 n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A283767.P7767198059280804537

noncomputable section

/-- A283767: Numbers k such that U(k) is even, where U = A001950 = upper Wythoff sequence.

Offset 1, canonical program `A283767.P7767198059280804537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283767 (n : ℕ) : ℤ :=
  (A283767.P7767198059280804537.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283768.P4981395873337742799

`eq[1, A005206(n)%2]+1`
-/

namespace A283768.P4981395873337742799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005206 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A283768.P4981395873337742799

noncomputable section

/-- A283768: Numbers k such that U(k) is odd, where U = A001950 = upper Wythoff sequence.

Offset 1, canonical program `A283768.P4981395873337742799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283768 (n : ℕ) : ℤ :=
  (A283768.P4981395873337742799.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283771.P6400894254700234399

`eq[1, (A004956(n)-2)%3]`
-/

namespace A283771.P6400894254700234399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004956 n - 2) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283771.P6400894254700234399

noncomputable section

/-- A283771: Numbers k such that L(k) = 2 mod 3, where L = A000201 = lower Wythoff sequence.

Offset 1, canonical program `A283771.P6400894254700234399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3330 terms. -/
def A283771 (n : ℕ) : ℤ :=
  (A283771.P6400894254700234399.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3330 terms. -/
def A283771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283772.P13159893543690945890

`eq[1, A004957(n)%3]`
-/

namespace A283772.P13159893543690945890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004957 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283772.P13159893543690945890

noncomputable section

/-- A283772: Numbers k such that U(k) = 0 mod 3, where U = A001950 = upper Wythoff sequence.

Offset 1, canonical program `A283772.P13159893543690945890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A283772 (n : ℕ) : ℤ :=
  (A283772.P13159893543690945890.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. -/
def A283772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283774.P14228486931551571778

`eq[1, (n-A060143(n))%3]`
-/

namespace A283774.P14228486931551571778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - A060143 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A283774.P14228486931551571778

noncomputable section

/-- A283774: Numbers k such that U(k) == 2 mod 3, where U = A001950 = upper Wythoff sequence.

Offset 1, canonical program `A283774.P14228486931551571778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3336 terms. -/
def A283774 (n : ℕ) : ℤ :=
  (A283774.P14228486931551571778.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3336 terms. -/
def A283774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283776.P160697927852129727

`lt[val(A022838(n+1), 2), 1]+1`
-/

namespace A283776.P160697927852129727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A022838 (n + 1)).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A283776.P160697927852129727

noncomputable section

/-- A283776: Numbers k such that floor(k*sqrt(3)) is odd.

Offset 1, canonical program `A283776.P160697927852129727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A283776 (n : ℕ) : ℤ :=
  (A283776.P160697927852129727.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A283776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283834.P17938430144001037038

`A075111(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A283834.P17938430144001037038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A075111 (n + 1) - a (n - 1)

end

end A283834.P17938430144001037038

noncomputable section

/-- A283834: Number of length-n binary vectors beginning with 0, ending with 1, and avoiding 4 consecutive 0's and 4 consecutive 1's.

Offset 0, canonical program `A283834.P17938430144001037038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 380 terms. -/
def A283834 (n : ℕ) : ℤ :=
  A283834.P17938430144001037038.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 380 terms. -/
def A283834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283835.P9859982128392497524

`Δ[round(A000288(n+3)/6)]`
-/

namespace A283835.P9859982128392497524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000288 (n + 3) : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283835.P9859982128392497524

noncomputable section

/-- A283835: Number of length-n binary vectors beginning with 0, ending with 1, and avoiding 5 consecutive 0's and 5 consecutive 1's.

Offset 0, canonical program `A283835.P9859982128392497524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 349 terms. -/
def A283835 (n : ℕ) : ℤ :=
  A283835.P9859982128392497524.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 349 terms. -/
def A283835.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283836.P12151570932681974270

`Δ[ceil(A001949(n+4)/2)]`
-/

namespace A283836.P12151570932681974270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001949 (n + 4) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A283836.P12151570932681974270

noncomputable section

/-- A283836: Number of length-n binary vectors beginning with 0, ending with 1, and avoiding 6 consecutive 0's and 6 consecutive 1's.

Offset 0, canonical program `A283836.P12151570932681974270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A283836 (n : ℕ) : ℤ :=
  A283836.P12151570932681974270.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A283836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283963.P10359583538470732036

`char[A286389(n)+n]`
-/

namespace A283963.P10359583538470732036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286389 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A283963.P10359583538470732036

noncomputable section

/-- A283963: Fixed point of the morphism 0 -> 1, 1 -> 1010.

Offset 1, canonical program `A283963.P10359583538470732036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283963 (n : ℕ) : ℤ :=
  (A283963.P10359583538470732036.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283964.P17668733400232915345

`A026367(n+1)+1+n`
-/

namespace A283964.P17668733400232915345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026367 (n + 1) + 1 + (n : ℤ)

end

end A283964.P17668733400232915345

noncomputable section

/-- A283964: Positions of 0 in A283963; complement of A283965.

Offset 1, canonical program `A283964.P17668733400232915345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283964 (n : ℕ) : ℤ :=
  A283964.P17668733400232915345.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283964.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283965.P9752618056722054252

`A286389(n)+1+n`
-/

namespace A283965.P9752618056722054252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286389 n + 1 + (n : ℤ)

end

end A283965.P9752618056722054252

noncomputable section

/-- A283965: Positions of 1 in A283963; complement of A283964.

Offset 1, canonical program `A283965.P9752618056722054252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283965 (n : ℕ) : ℤ :=
  A283965.P9752618056722054252.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A283965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284097.P4703554069463701905

`∑{d}[n+1, #*A079998(#-1)]`
-/

namespace A284097.P4703554069463701905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A079998 (d - 1)

end

end A284097.P4703554069463701905

noncomputable section

/-- A284097: a(n) = Sum_{d|n, d == 1 (mod 5)} d.

Offset 1, canonical program `A284097.P4703554069463701905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284097 (n : ℕ) : ℤ :=
  A284097.P4703554069463701905.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284098.P14941002019999752586

`∑{d}[n+1, #*A079979(#-1)]`
-/

namespace A284098.P14941002019999752586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A079979 (d - 1)

end

end A284098.P14941002019999752586

noncomputable section

/-- A284098: a(n) = Sum_{d|n, d == 1 (mod 6)} d.

Offset 1, canonical program `A284098.P14941002019999752586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284098 (n : ℕ) : ℤ :=
  A284098.P14941002019999752586.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284099.P914746867242275467

`∑{d}[n+1, #*A082784(#-1)]`
-/

namespace A284099.P914746867242275467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A082784 (d - 1)

end

end A284099.P914746867242275467

noncomputable section

/-- A284099: a(n) = Sum_{d|n, d == 1 (mod 7)} d.

Offset 1, canonical program `A284099.P914746867242275467`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284099 (n : ℕ) : ℤ :=
  A284099.P914746867242275467.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284100.P16838605729315589615

`∑{d}[n+1, #*A253513(#-1)]`
-/

namespace A284100.P16838605729315589615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A253513 (d - 1)

end

end A284100.P16838605729315589615

noncomputable section

/-- A284100: a(n) = Sum_{d|n, d == 1 (mod 8)} d.

Offset 1, canonical program `A284100.P16838605729315589615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284100 (n : ℕ) : ℤ :=
  A284100.P16838605729315589615.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284105.P4018641519786266915

`∑{d}[n+1, #*A082784(#+1)]`
-/

namespace A284105.P4018641519786266915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A082784 (d + 1)

end

end A284105.P4018641519786266915

noncomputable section

/-- A284105: a(n) = Sum_{d|n, d == 6 (mod 7)} d.

Offset 1, canonical program `A284105.P4018641519786266915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A284105 (n : ℕ) : ℤ :=
  A284105.P4018641519786266915.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A284105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284117.P13830945115724323163

`∑{d}[n+1, #*A268340(#)]`
-/

namespace A284117.P13830945115724323163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A268340 d

end

end A284117.P13830945115724323163

noncomputable section

/-- A284117: Sum of proper prime power divisors of n.

Offset 1, canonical program `A284117.P13830945115724323163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284117 (n : ℕ) : ℤ :=
  A284117.P13830945115724323163.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284124.P6247716302523195513

`(4*(n+1))%A005185(n+1)`
-/

namespace A284124.P6247716302523195513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * (n + 1) : ℤ) (A005185 (n + 1))

end

end A284124.P6247716302523195513

noncomputable section

/-- A284124: Remainder when 4*n is divided by A005185(n).

Offset 1, canonical program `A284124.P6247716302523195513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284124 (n : ℕ) : ℤ :=
  A284124.P6247716302523195513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284214.P16839856081255687971

`∑[A006949(n)]%(n+1)`
-/

namespace A284214.P16839856081255687971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A284214.P16839856081255687971

noncomputable section

/-- A284214: Remainder when sum of first n terms of A006949 is divided by n.

Offset 1, canonical program `A284214.P16839856081255687971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284214 (n : ℕ) : ℤ :=
  A284214.P16839856081255687971.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284214.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284280.P10246323075996560872

`∑{d}[n+1, #*and(1, A047412(#))]`
-/

namespace A284280.P10246323075996560872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * Int.land 1 (A047412 d)

end

end A284280.P10246323075996560872

noncomputable section

/-- A284280: a(n) = Sum_{d|n, d == 2 (mod 5)} d.

Offset 1, canonical program `A284280.P10246323075996560872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284280 (n : ℕ) : ℤ :=
  A284280.P10246323075996560872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284361.P16555063331181266176

`∑{d}[n+1, #*A183865(#)%2]`
-/

namespace A284361.P16555063331181266176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * Int.tmod (A183865 d) 2

end

end A284361.P16555063331181266176

noncomputable section

/-- A284361: a(n) = Sum_{d|n, d = 0, 1, or 4 mod 5} d.

Offset 1, canonical program `A284361.P16555063331181266176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284361 (n : ℕ) : ℤ :=
  A284361.P16555063331181266176.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284362.P5653031429459134529

`∑{d}[n+1, #*A047278(#)%2]`
-/

namespace A284362.P5653031429459134529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * Int.tmod (A047278 d) 2

end

end A284362.P5653031429459134529

noncomputable section

/-- A284362: a(n) = Sum_{d|n, d = 0, 1, or 5 mod 6} d.

Offset 1, canonical program `A284362.P5653031429459134529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284362 (n : ℕ) : ℤ :=
  A284362.P5653031429459134529.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284365.P11990704887653612876

`A187570(n+1)+1+n`
-/

namespace A284365.P11990704887653612876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187570 (n + 1) + 1 + (n : ℤ)

end

end A284365.P11990704887653612876

noncomputable section

/-- A284365: Positions of 0 in A284364; complement of A284366.

Offset 1, canonical program `A284365.P11990704887653612876`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284365 (n : ℕ) : ℤ :=
  A284365.P11990704887653612876.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284366.P2946871292571761873

`A366860(n)+1+n`
-/

namespace A284366.P2946871292571761873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366860 n + 1 + (n : ℤ)

end

end A284366.P2946871292571761873

noncomputable section

/-- A284366: Positions of 1 in A284364; complement of A284365.

Offset 1, canonical program `A284366.P2946871292571761873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284366 (n : ℕ) : ℤ :=
  A284366.P2946871292571761873.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284387.P4206943026406952205

`A001468(∑[A286746(n+1)])-A003849(a(n-1))` with `a(0)=2`
-/

namespace A284387.P4206943026406952205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001468 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A003849 (a (n - 1)).toNat

end

end A284387.P4206943026406952205

noncomputable section

/-- A284387: {010->2}-transform of the infinite Fibonacci word A003849.

Offset 1, canonical program `A284387.P4206943026406952205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284387 (n : ℕ) : ℤ :=
  A284387.P4206943026406952205.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284394.P885342829682260951

`abs(Δ[A026351(floor((n+1)/3))])`
-/

namespace A284394.P885342829682260951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 ⌊(n + 1 : ℚ) / 3⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A284394.P885342829682260951

noncomputable section

/-- A284394: {101->2}-transform of the infinite Fibonacci word A003849.

Offset 1, canonical program `A284394.P885342829682260951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284394 (n : ℕ) : ℤ :=
  A284394.P885342829682260951.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284394.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284395.P7367287315047778442

`abs(3*A026352(n)-1)`
-/

namespace A284395.P7367287315047778442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * A026352 n - 1|

end

end A284395.P7367287315047778442

noncomputable section

/-- A284395: Positions of 1 in A284394.

Offset 1, canonical program `A284395.P7367287315047778442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284395 (n : ℕ) : ℤ :=
  A284395.P7367287315047778442.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284443.P13197412432002274483

`∑{d}[n+1, #*A144601(2*#)]`
-/

namespace A284443.P13197412432002274483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A144601 (2 * d)

end

end A284443.P13197412432002274483

noncomputable section

/-- A284443: a(n) = Sum_{d|n, d == 2 (mod 7)} d.

Offset 1, canonical program `A284443.P13197412432002274483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A284443 (n : ℕ) : ℤ :=
  A284443.P13197412432002274483.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A284443.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284444.P14860939798542868921

`∑{d}[n+1, #*A082784(#+4)]`
-/

namespace A284444.P14860939798542868921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A082784 (d + 4)

end

end A284444.P14860939798542868921

noncomputable section

/-- A284444: a(n) = Sum_{d|n, d == 3 (mod 7)} d.

Offset 1, canonical program `A284444.P14860939798542868921`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. -/
def A284444 (n : ℕ) : ℤ :=
  A284444.P14860939798542868921.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. -/
def A284444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284506.P5353495828140658715

`2*A026367(A004526(n)+1)+n+1`
-/

namespace A284506.P5353495828140658715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026367 (A004526 n + 1).toNat + (n + 1 : ℤ)

end

end A284506.P5353495828140658715

noncomputable section

/-- A284506: Positions of 0 in A284505; complement of A284507.

Offset 1, canonical program `A284506.P5353495828140658715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284506 (n : ℕ) : ℤ :=
  A284506.P5353495828140658715.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284507.P12069901503054785212

`2*A026367(n+1)-(n+1)`
-/

namespace A284507.P12069901503054785212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026367 (n + 1) - (n + 1 : ℤ)

end

end A284507.P12069901503054785212

noncomputable section

/-- A284507: Positions of 1 in A284505; complement of A284506.

Offset 1, canonical program `A284507.P12069901503054785212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284507 (n : ℕ) : ℤ :=
  A284507.P12069901503054785212.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284507.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284555.P18280556964026014776

`eq[0, A048727(n)%3]`
-/

namespace A284555.P18280556964026014776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048727 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A284555.P18280556964026014776

noncomputable section

/-- A284555: Positions of zeros in A284557.

Offset 0, canonical program `A284555.P18280556964026014776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3329 terms. -/
def A284555 (n : ℕ) : ℤ :=
  (A284555.P18280556964026014776.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3329 terms. -/
def A284555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284621.P14588018230324982726

`abs(1-2*A004957(n))`
-/

namespace A284621.P14588018230324982726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * A004957 n|

end

end A284621.P14588018230324982726

noncomputable section

/-- A284621: Positions of 0 in A284620.

Offset 1, canonical program `A284621.P14588018230324982726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284621 (n : ℕ) : ℤ :=
  A284621.P14588018230324982726.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284675.P13236861927282947980

`A080600(n)+1+n`
-/

namespace A284675.P13236861927282947980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080600 n + 1 + (n : ℤ)

end

end A284675.P13236861927282947980

noncomputable section

/-- A284675: Positions of 0 in A284674; complement of A284676.

Offset 1, canonical program `A284675.P13236861927282947980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284675 (n : ℕ) : ℤ :=
  A284675.P13236861927282947980.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284678.P13700835878893103956

`A284676(n+1)+3*n`
-/

namespace A284678.P13700835878893103956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284676 (n + 1) + (3 * n : ℤ)

end

end A284678.P13700835878893103956

noncomputable section

/-- A284678: Positions of 0 in A284677; complement of A284679.

Offset 1, canonical program `A284678.P13700835878893103956`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284678 (n : ℕ) : ℤ :=
  A284678.P13700835878893103956.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284749.P11495634495222630683

`A286746(n-A286746(n+1)+1)+A286746(n+1)`
-/

namespace A284749.P11495634495222630683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286746 ((n : ℤ) - A286746 (n + 1) + 1).toNat + A286746 (n + 1)

end

end A284749.P11495634495222630683

noncomputable section

/-- A284749: {001->2}-transform of the infinite Fibonacci word A003849.

Offset 1, canonical program `A284749.P11495634495222630683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284749 (n : ℕ) : ℤ :=
  A284749.P11495634495222630683.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284753.P14921659165875602772

`2*A026363(n+1)`
-/

namespace A284753.P14921659165875602772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026363 (n + 1)

end

end A284753.P14921659165875602772

noncomputable section

/-- A284753: Positions of 1 in A284751; complement of A284752.

Offset 1, canonical program `A284753.P14921659165875602772`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026363, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284753 (n : ℕ) : ℤ :=
  A284753.P14921659165875602772.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026363, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284753.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284772.P17040323948208132760

`A286389(n)%2`
-/

namespace A284772.P17040323948208132760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286389 n) 2

end

end A284772.P17040323948208132760

noncomputable section

/-- A284772: Fixed point of the morphism 0 -> 01, 1 -> 0010.

Offset 1, canonical program `A284772.P17040323948208132760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284772 (n : ℕ) : ℤ :=
  A284772.P17040323948208132760.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284853.P3894203280212817045

`2*A026367(n+1)`
-/

namespace A284853.P3894203280212817045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026367 (n + 1)

end

end A284853.P3894203280212817045

noncomputable section

/-- A284853: Positions of 1 in A284851; complement of A284852.

Offset 1, canonical program `A284853.P3894203280212817045`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026367, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284853 (n : ℕ) : ℤ :=
  A284853.P3894203280212817045.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026367, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284853.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284879.P577505175711310991

`A189628(n+1)+Δ[n²]`
-/

namespace A284879.P577505175711310991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189628 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A284879.P577505175711310991

noncomputable section

/-- A284879: Positions of 0 in A284878; complement of A284880.

Offset 1, canonical program `A284879.P577505175711310991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284879 (n : ℕ) : ℤ :=
  A284879.P577505175711310991.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284900.P1510735213663924980

`∑{d}[n+1, A309338(#)]`
-/

namespace A284900.P1510735213663924980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A309338 d

end

end A284900.P1510735213663924980

noncomputable section

/-- A284900: a(n) = Sum_{d|n} (-1)^(n/d+1)*d^4.

Offset 1, canonical program `A284900.P1510735213663924980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284900 (n : ℕ) : ℤ :=
  A284900.P1510735213663924980.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284906.P962888511464918355

`A189668(n+1)+Δ[n²]`
-/

namespace A284906.P962888511464918355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189668 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A284906.P962888511464918355

noncomputable section

/-- A284906: Positions of 0 in A284905; complement of A284907.

Offset 1, canonical program `A284906.P962888511464918355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284906 (n : ℕ) : ℤ :=
  A284906.P962888511464918355.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284913.P15008075159223114751

`A189727(n+1)+Δ[n²]`
-/

namespace A284913.P15008075159223114751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189727 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A284913.P15008075159223114751

noncomputable section

/-- A284913: Positions of 0 in A284912; complement of A284914.

Offset 1, canonical program `A284913.P15008075159223114751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284913 (n : ℕ) : ℤ :=
  A284913.P15008075159223114751.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284914.P18201955164397708571

`2*(n+1)-A189727(n+1)`
-/

namespace A284914.P18201955164397708571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A189727 (n + 1)

end

end A284914.P18201955164397708571

noncomputable section

/-- A284914: Positions of 1 in A284912; complement of A284913.

Offset 1, canonical program `A284914.P18201955164397708571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284914 (n : ℕ) : ℤ :=
  A284914.P18201955164397708571.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284926.P14470823227090905771

`∑{d}[n+1, #*A309336(#)]`
-/

namespace A284926.P14470823227090905771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A309336 d

end

end A284926.P14470823227090905771

noncomputable section

/-- A284926: a(n) = Sum_{d|n} (-1)^(n/d+1)*d^5.

Offset 1, canonical program `A284926.P14470823227090905771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284926 (n : ℕ) : ℤ :=
  A284926.P14470823227090905771.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284933.P4679445134235036996

`A294732(n+2)+A171946(n+1)`
-/

namespace A284933.P4679445134235036996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294732 (n + 2) + A171946 (n + 1)

end

end A284933.P4679445134235036996

noncomputable section

/-- A284933: Positions of 0 in A284792; complement of A284934.

Offset 1, canonical program `A284933.P4679445134235036996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284933 (n : ℕ) : ℤ :=
  A284933.P4679445134235036996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285020.P2019826248152179802

`A000984(n)/gcd(A000984(n), A004643(n))`
-/

namespace A285020.P2019826248152179802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (Int.gcd (A000984 n) (A004643 n) : ℚ)

end

end A285020.P2019826248152179802

noncomputable section

/-- A285020: Numerator of binomial(2*n,n)/20^n.

Offset 0, canonical program `A285020.P2019826248152179802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A285020 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A285020.P2019826248152179802.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A285020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285073.P1593324729896153878

`A159684(abs(2-n))`
-/

namespace A285073.P1593324729896153878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 |2 - (n : ℤ)|.toNat

end

end A285073.P1593324729896153878

noncomputable section

/-- A285073: 0-limiting word of the morphism 0->10, 1-> 010.

Offset 1, canonical program `A285073.P1593324729896153878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285073 (n : ℕ) : ℤ :=
  A285073.P1593324729896153878.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285076.P9313654898266391924

`a(1-A188037(n))` with `a(0)=1, a(1)=0`
-/

namespace A285076.P9313654898266391924
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (1 - A188037 n).toNat

end

end A285076.P9313654898266391924

noncomputable section

/-- A285076: 1-limiting word of the morphism 0->10, 1-> 010.

Offset 1, canonical program `A285076.P9313654898266391924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285076 (n : ℕ) : ℤ :=
  (A285076.P9313654898266391924.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285099.P14812426102409343108

`val(A008486(and(n, n-1)), 2)`
-/

namespace A285099.P14812426102409343108
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008486 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat).toNat 2

end

end A285099.P14812426102409343108

noncomputable section

/-- A285099: a(n) is the zero-based index of the second least significant 1-bit in the base-2 representation of n, or 0 if there are fewer than two 1-bits in n.

Offset 0, canonical program `A285099.P14812426102409343108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285099 (n : ℕ) : ℤ :=
  (A285099.P14812426102409343108.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285187.P15261003129053085157

`A228364(n+2)+A000035(n)`
-/

namespace A285187.P15261003129053085157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228364 (n + 2) + A000035 n

end

end A285187.P15261003129053085157

noncomputable section

/-- A285187: a(n) = Sum(psi(k-1)*psi(n-k-1),k=0..n)+(1-(-1)^n)/2, where psi(k) = A000931(k+6).

Offset 0, canonical program `A285187.P15261003129053085157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 798 terms. -/
def A285187 (n : ℕ) : ℤ :=
  A285187.P15261003129053085157.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 798 terms. -/
def A285187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285194.P12820240869321444829

`∑[A081172(n)]%3`
-/

namespace A285194.P12820240869321444829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A285194.P12820240869321444829

noncomputable section

/-- A285194: Expansion of (1+x^2)/(1+x+x^4) mod 3.

Offset 0, canonical program `A285194.P12820240869321444829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 379 terms. -/
def A285194 (n : ℕ) : ℤ :=
  A285194.P12820240869321444829.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 379 terms. -/
def A285194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285430.P12724991769825989304

`char[A026363(n+1)-1]`
-/

namespace A285430.P12724991769825989304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026363 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285430.P12724991769825989304

noncomputable section

/-- A285430: Fixed point of the morphism 0->11, 1-> 101.

Offset 1, canonical program `A285430.P12724991769825989304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285430 (n : ℕ) : ℤ :=
  (A285430.P12724991769825989304.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285431.P6460164538225184312

`char[A026367(n+1)-1]`
-/

namespace A285431.P6460164538225184312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026367 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A285431.P6460164538225184312

noncomputable section

/-- A285431: Fixed point of the morphism 0->11, 1-> 110.

Offset 1, canonical program `A285431.P6460164538225184312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285431 (n : ℕ) : ℤ :=
  (A285431.P6460164538225184312.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285540.P16012612933494173661

`A287468(lcm(2, n))`
-/

namespace A285540.P16012612933494173661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287468 (Nat.lcm 2 n)

end

end A285540.P16012612933494173661

noncomputable section

/-- A285540: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 35", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A285540.P16012612933494173661`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A285540 (n : ℕ) : ℤ :=
  A285540.P16012612933494173661.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A285540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285542.P14041949671126402712

`A052551(lcm(2, n))`
-/

namespace A285542.P14041949671126402712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (Nat.lcm 2 n)

end

end A285542.P14041949671126402712

noncomputable section

/-- A285542: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 35", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A285542.P14041949671126402712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A285542 (n : ℕ) : ℤ :=
  A285542.P14041949671126402712.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A285542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285543.P9845314030376834614

`A274638(n+1)+and(1, n+1)`
-/

namespace A285543.P9845314030376834614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274638 (n + 1) + (Nat.land 1 (n + 1) : ℤ)

end

end A285543.P9845314030376834614

noncomputable section

/-- A285543: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 35", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A285543.P9845314030376834614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A285543 (n : ℕ) : ℤ :=
  A285543.P9845314030376834614.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A285543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285682.P14811825003316370073

`abs(2*A284624(n+1)-2-n)`
-/

namespace A285682.P14811825003316370073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A284624 (n + 1) - 2 - (n : ℤ)|

end

end A285682.P14811825003316370073

noncomputable section

/-- A285682: Positions of 1 in A285680.

Offset 1, canonical program `A285682.P14811825003316370073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285682 (n : ℕ) : ℤ :=
  A285682.P14811825003316370073.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285684.P16948429234941225394

`A022838(A194979(n+1))-(n+1)`
-/

namespace A285684.P16948429234941225394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (A194979 (n + 1)).toNat - (n + 1 : ℤ)

end

end A285684.P16948429234941225394

noncomputable section

/-- A285684: Characteristic sequence of the Beatty sequence, A022838, of sqrt(3).

Offset 1, canonical program `A285684.P16948429234941225394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285684 (n : ℕ) : ℤ :=
  A285684.P16948429234941225394.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285726.P3256880989065645844

`A252736((∑[n]+n)%(n+1)+1)`
-/

namespace A285726.P3256880989065645844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 ((∑ j ∈ Finset.range (n + 1), f1 j + n) % (n + 1) + 1)

end

end A285726.P3256880989065645844

noncomputable section

/-- A285726: a(1) = a(2) = 0; for n > 2, a(n) = A252736(n) - (1-A000035(n)).

Offset 1, canonical program `A285726.P3256880989065645844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285726 (n : ℕ) : ℤ :=
  A285726.P3256880989065645844.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285895.P10646935884568177305

`∑{d}[n+1, gcd(#, A000217(#+n))]`
-/

namespace A285895.P10646935884568177305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.gcd (d : ℤ) (A000217 (d + n))

end

end A285895.P10646935884568177305

noncomputable section

/-- A285895: Sum of divisors d of n such that n/d is not congruent to 0 mod 4.

Offset 1, canonical program `A285895.P10646935884568177305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285895 (n : ℕ) : ℤ :=
  (A285895.P10646935884568177305.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285950.P7772063319653377245

`∑[A131136(n)%3]`
-/

namespace A285950.P7772063319653377245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131136 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285950.P7772063319653377245

noncomputable section

/-- A285950: Positions of 0's in A285949; complement of A285951.

Offset 1, canonical program `A285950.P7772063319653377245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285950 (n : ℕ) : ℤ :=
  A285950.P7772063319653377245.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285958.P10971398913599129129

`∑[C(2, A101671(n))]`
-/

namespace A285958.P10971398913599129129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A101671 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285958.P10971398913599129129

noncomputable section

/-- A285958: Positions of 0 in A285957; complement of A285959.

Offset 1, canonical program `A285958.P10971398913599129129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285958 (n : ℕ) : ℤ :=
  (A285958.P10971398913599129129.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285958.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285971.P4639553320394911257

`ceil(A260480(n+1)+n/2)`
-/

namespace A285971.P4639553320394911257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A260480 (n + 1) : ℚ) + (n : ℚ) / 2⌉

end

end A285971.P4639553320394911257

noncomputable section

/-- A285971: Positions of 0 in A285969; complement of A285970.

Offset 1, canonical program `A285971.P4639553320394911257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285971 (n : ℕ) : ℤ :=
  A285971.P4639553320394911257.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285977.P1218866237928235629

`∑[gcd(2, A101671(n))]`
-/

namespace A285977.P1218866237928235629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A101671 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285977.P1218866237928235629

noncomputable section

/-- A285977: Positions of 1 in A285975; complement of A285976.

Offset 1, canonical program `A285977.P1218866237928235629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285977 (n : ℕ) : ℤ :=
  (A285977.P1218866237928235629.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285979.P980250076451766351

`A001651(A284393(n+1))+2*n`
-/

namespace A285979.P980250076451766351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A284393 (n + 1)).toNat + (2 * n : ℤ)

end

end A285979.P980250076451766351

noncomputable section

/-- A285979: Positions of 0 in A285978; complement of A285980.

Offset 1, canonical program `A285979.P980250076451766351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A285979 (n : ℕ) : ℤ :=
  A285979.P980250076451766351.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5002 terms. -/
def A285979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286015.P16729021585373301699

`∑{d}[n+1, A123684(#)]`
-/

namespace A286015.P16729021585373301699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A123684 d

end

end A286015.P16729021585373301699

noncomputable section

/-- A286015: Sum of largest parts of all partitions of n into consecutive parts.

Offset 1, canonical program `A286015.P16729021585373301699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286015 (n : ℕ) : ℤ :=
  A286015.P16729021585373301699.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286065.P6002679725487375161

`A260480(n+1)+A028242(n)`
-/

namespace A286065.P6002679725487375161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260480 (n + 1) + A028242 n

end

end A286065.P6002679725487375161

noncomputable section

/-- A286065: Positions of 0 in A286064; complement of A286066.

Offset 1, canonical program `A286065.P6002679725487375161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286065 (n : ℕ) : ℤ :=
  A286065.P6002679725487375161.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286182.P18040158897190895158

`A002203(n+1)+3*(n+1)*A000129(n+1)-3*(n+1)+1`
-/

namespace A286182.P18040158897190895158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (n + 1) + 3 * ((n + 1 : ℤ) * A000129 (n + 1)) - (3 * (n + 1) : ℤ) + 1

end

end A286182.P18040158897190895158

noncomputable section

/-- A286182: Number of connected induced (non-null) subgraphs of the prism graph with 2n nodes.

Offset 1, canonical program `A286182.P18040158897190895158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. -/
def A286182 (n : ℕ) : ℤ :=
  A286182.P18040158897190895158.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. -/
def A286182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286183.P16536639819314678559

`A007574(2*(n+1))`
-/

namespace A286183.P16536639819314678559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007574 (2 * (n + 1))

end

end A286183.P16536639819314678559

noncomputable section

/-- A286183: Number of connected induced (non-null) subgraphs of the antiprism graph with 2n nodes.

Offset 1, canonical program `A286183.P16536639819314678559`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A286183 (n : ℕ) : ℤ :=
  A286183.P16536639819314678559.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A286183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286577.P6127444042492466078

`round(n/3^A253786(n))`
-/

namespace A286577.P6127444042492466078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (3 : ℚ) ^ (A253786 n : ℤ))

end

end A286577.P6127444042492466078

noncomputable section

/-- A286577: If n = 3k-1 then a(n) = a(k), otherwise a(n) = n.

Offset 0, canonical program `A286577.P6127444042492466078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286577 (n : ℕ) : ℤ :=
  A286577.P6127444042492466078.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286655.P4264452727309570536

`and(A049473(n), A080764(n))`
-/

namespace A286655.P4264452727309570536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A049473 n) (A080764 n)

end

end A286655.P4264452727309570536

noncomputable section

/-- A286655: Characteristic sequence of the Beatty sequence, A022842, of sqrt(8).

Offset 1, canonical program `A286655.P4264452727309570536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286655 (n : ℕ) : ℤ :=
  A286655.P4264452727309570536.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286665.P12755796930078172197

`abs(1-A159684(n+1))`
-/

namespace A286665.P12755796930078172197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A159684 (n + 1)|

end

end A286665.P12755796930078172197

noncomputable section

/-- A286665: {0->01}-transform of the Pell word, A171588.

Offset 1, canonical program `A286665.P12755796930078172197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286665 (n : ℕ) : ℤ :=
  A286665.P12755796930078172197.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286666.P2262944503126098146

`A003151(n+1)-1`
-/

namespace A286666.P2262944503126098146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 1) - 1

end

end A286666.P2262944503126098146

noncomputable section

/-- A286666: Positions of 0 in A286665; complement of A286667.

Offset 1, canonical program `A286666.P2262944503126098146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286666 (n : ℕ) : ℤ :=
  A286666.P2262944503126098146.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286666.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286667.P2713070744812953764

`∑[A080764(n)+1]`
-/

namespace A286667.P2713070744812953764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286667.P2713070744812953764

noncomputable section

/-- A286667: Positions of 1 in A286665; complement of A286666.

Offset 1, canonical program `A286667.P2713070744812953764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286667 (n : ℕ) : ℤ :=
  A286667.P2713070744812953764.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286686.P5308715415208066588

`abs(A080764(n)-2-2*n)`
-/

namespace A286686.P5308715415208066588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080764 n - 2 - (2 * n : ℤ)|

end

end A286686.P5308715415208066588

noncomputable section

/-- A286686: Positions of 0 in A286685; complement of A286687.

Offset 1, canonical program `A286686.P5308715415208066588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286686 (n : ℕ) : ℤ :=
  A286686.P5308715415208066588.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286687.P10039167065829446357

`abs(A080764(n)+Δ[n²])`
-/

namespace A286687.P10039167065829446357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080764 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))|

end

end A286687.P10039167065829446357

noncomputable section

/-- A286687: Positions of 1 in A286685; complement of A286686.

Offset 1, canonical program `A286687.P10039167065829446357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286687 (n : ℕ) : ℤ :=
  A286687.P10039167065829446357.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286688.P12697212265259802839

`A171588(n+1-gcd(n, ∑[n]))`
-/

namespace A286688.P12697212265259802839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171588 (n + 1 - Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A286688.P12697212265259802839

noncomputable section

/-- A286688: {0->00, 1->10}-transform of the Pell word, A171588.

Offset 1, canonical program `A286688.P12697212265259802839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286688 (n : ℕ) : ℤ :=
  A286688.P12697212265259802839.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286690.P16119741026963914011

`or(1, A098021(n+1)+n)`
-/

namespace A286690.P16119741026963914011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A098021 (n + 1) + (n : ℤ))

end

end A286690.P16119741026963914011

noncomputable section

/-- A286690: Positions of 1 in A286688; complement of A286689.

Offset 1, canonical program `A286690.P16119741026963914011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286690 (n : ℕ) : ℤ :=
  A286690.P16119741026963914011.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286719.P4969572481493460331

`∑[A028060(n)]`
-/

namespace A286719.P4969572481493460331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286719.P4969572481493460331

noncomputable section

/-- A286719: Column k=4 of triangle A039755, Sheffer(exp(x), (exp(2*x) - 1)/2).

Offset 0, canonical program `A286719.P4969572481493460331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A286719 (n : ℕ) : ℤ :=
  A286719.P4969572481493460331.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A286719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286754.P11351865985503812535

`2*(n+1)-A035337(n)%2`
-/

namespace A286754.P11351865985503812535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - Int.tmod (A035337 n) 2

end

end A286754.P11351865985503812535

noncomputable section

/-- A286754: Positions of 1 in A286752; complement of A286753.

Offset 1, canonical program `A286754.P11351865985503812535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286754 (n : ℕ) : ℤ :=
  A286754.P11351865985503812535.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286805.P2640537364746463001

`A083088(A004526(n))+n`
-/

namespace A286805.P2640537364746463001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083088 (A004526 n).toNat + (n : ℤ)

end

end A286805.P2640537364746463001

noncomputable section

/-- A286805: Positions of 0 in A286804; complement of A286806.

Offset 1, canonical program `A286805.P2640537364746463001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286805 (n : ℕ) : ℤ :=
  A286805.P2640537364746463001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286806.P13855370342727150769

`∑[gcd(3, A276864(n+1))]`
-/

namespace A286806.P13855370342727150769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A276864 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286806.P13855370342727150769

noncomputable section

/-- A286806: Positions of 1 in A286804; complement of A286805.

Offset 1, canonical program `A286806.P13855370342727150769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286806 (n : ℕ) : ℤ :=
  (A286806.P13855370342727150769.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286865.P3302213470359981083

`A000225(A072376(or(1, n)))`
-/

namespace A286865.P3302213470359981083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A072376 (Nat.lor 1 n)).toNat

end

end A286865.P3302213470359981083

noncomputable section

/-- A286865: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 814", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A286865.P3302213470359981083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A286865 (n : ℕ) : ℤ :=
  A286865.P3302213470359981083.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A286865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286903.P10980288912855720806

`char[A286905(n+1)-1]`
-/

namespace A286903.P10980288912855720806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286905 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286903.P10980288912855720806

noncomputable section

/-- A286903: {0->00}-transform of the Sturmian word A080764.

Offset 1, canonical program `A286903.P10980288912855720806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286903 (n : ℕ) : ℤ :=
  (A286903.P10980288912855720806.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286904.P1062189813046643830

`A003151(floor(n/2)+1)+n+1`
-/

namespace A286904.P1062189813046643830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (⌊(n : ℚ) / 2⌋ + 1).toNat + (n + 1 : ℤ)

end

end A286904.P1062189813046643830

noncomputable section

/-- A286904: Positions of 0 in A286903; complement of A286905.

Offset 1, canonical program `A286904.P1062189813046643830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286904 (n : ℕ) : ℤ :=
  A286904.P1062189813046643830.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286907.P16898303085372787161

`n%2*A080764(floor(n/2))`
-/

namespace A286907.P16898303085372787161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A080764 ⌊(n : ℚ) / 2⌋.toNat

end

end A286907.P16898303085372787161

noncomputable section

/-- A286907: {0->00,1->01}-transform of the Sturmian word A080764.

Offset 1, canonical program `A286907.P16898303085372787161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286907 (n : ℕ) : ℤ :=
  A286907.P16898303085372787161.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286922.P13163846795494854594

`char[A187328(n)-2]`
-/

namespace A286922.P13163846795494854594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187328 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286922.P13163846795494854594

noncomputable section

/-- A286922: {0->01}-transform of the Sturmian word A080764.

Offset 1, canonical program `A286922.P13163846795494854594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286922 (n : ℕ) : ℤ :=
  (A286922.P13163846795494854594.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286988.P18403024785931774095

`∑[Δ[A195176(n)]+1]`
-/

namespace A286988.P18403024785931774095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195176 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286988.P18403024785931774095

noncomputable section

/-- A286988: Positions of 0 in A286987; complement of A286989.

Offset 1, canonical program `A286988.P18403024785931774095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286988 (n : ℕ) : ℤ :=
  A286988.P18403024785931774095.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286994.P1062580341009753336

`n+1+A195176(A008620(n))`
-/

namespace A286994.P1062580341009753336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A195176 (A008620 n).toNat

end

end A286994.P1062580341009753336

noncomputable section

/-- A286994: Positions of 0 in A286993; complement of A286995.

Offset 1, canonical program `A286994.P1062580341009753336`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286994 (n : ℕ) : ℤ :=
  A286994.P1062580341009753336.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287106.P12211031677089213963

`eq[1, A287104(n+1)]+1`
-/

namespace A287106.P12211031677089213963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287104 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A287106.P12211031677089213963

noncomputable section

/-- A287106: Positions of 1 in A287104.

Offset 1, canonical program `A287106.P12211031677089213963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4302 terms. -/
def A287106 (n : ℕ) : ℤ :=
  (A287106.P12211031677089213963.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4302 terms. -/
def A287106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287196.P12136604551129073341

`A277798(lcm(n, A260196(n)))`
-/

namespace A287196.P12136604551129073341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277798 (Int.lcm (n : ℤ) (A260196 n))

end

end A287196.P12136604551129073341

noncomputable section

/-- A287196: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 259", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A287196.P12136604551129073341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A287196 (n : ℕ) : ℤ :=
  A287196.P12136604551129073341.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A287196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287197.P11640315673981248028

`gcd(A169585(n), A277799(n))`
-/

namespace A287197.P11640315673981248028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A169585 n) (A277799 n)

end

end A287197.P11640315673981248028

noncomputable section

/-- A287197: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 259", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A287197.P11640315673981248028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A287197 (n : ℕ) : ℤ :=
  (A287197.P11640315673981248028.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A287197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287300.P1174836460604458142

`p?[(n+1)²+n*A171960(n)]`
-/

namespace A287300.P1174836460604458142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (n : ℤ) * A171960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A287300.P1174836460604458142

noncomputable section

/-- A287300: Primes that can be generated by the concatenation in base 3, in ascending order, of two consecutive integers read in base 10.

Offset 1, canonical program `A287300.P1174836460604458142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A287300 (n : ℕ) : ℤ :=
  A287300.P1174836460604458142.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A287300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287353.P4245883112398231915

`10*a(n-1)+A000040(n)` with `a(0)=0`
-/

namespace A287353.P4245883112398231915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  10 * a (n - 1) + A000040 n

end

end A287353.P4245883112398231915

noncomputable section

/-- A287353: a(0)=0; for n>0, a(n) = 10*a(n-1) + prime(n).

Offset 0, canonical program `A287353.P4245883112398231915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A287353 (n : ℕ) : ℤ :=
  A287353.P4245883112398231915.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A287353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287425.P846342589008876529

`(n+1)*A005314(n+1)+2`
-/

namespace A287425.P846342589008876529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005314 (n + 1) + 2

end

end A287425.P846342589008876529

noncomputable section

/-- A287425: Number of maximal matchings in the n-gear graph.

Offset 1, canonical program `A287425.P846342589008876529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 399 terms. -/
def A287425 (n : ℕ) : ℤ :=
  A287425.P846342589008876529.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 399 terms. -/
def A287425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287438.P2963112552505513428

`(2-A189668(n+1))*A189727(n+1)`
-/

namespace A287438.P2963112552505513428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A189668 (n + 1)) * A189727 (n + 1)

end

end A287438.P2963112552505513428

noncomputable section

/-- A287438: Start with 0 and repeatedly substitute 0->012, 1->120, 2->210.

Offset 1, canonical program `A287438.P2963112552505513428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287438 (n : ℕ) : ℤ :=
  A287438.P2963112552505513428.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287452.P3979137329400655331

`A287451(n+1)+3*n+1`
-/

namespace A287452.P3979137329400655331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287451 (n + 1) + (3 * n + 1 : ℤ)

end

end A287452.P3979137329400655331

noncomputable section

/-- A287452: Positions of 0 in A287451.

Offset 1, canonical program `A287452.P3979137329400655331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287452 (n : ℕ) : ℤ :=
  A287452.P3979137329400655331.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287454.P17182626822090707294

`3*(n+1)-A060582(n)`
-/

namespace A287454.P17182626822090707294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A060582 n

end

end A287454.P17182626822090707294

noncomputable section

/-- A287454: Positions of 2 in A287451.

Offset 1, canonical program `A287454.P17182626822090707294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287454 (n : ℕ) : ℤ :=
  A287454.P17182626822090707294.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287524.P2131839873874398650

`A189723(n+1)+A189632(n+1)`
-/

namespace A287524.P2131839873874398650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189723 (n + 1) + A189632 (n + 1)

end

end A287524.P2131839873874398650

noncomputable section

/-- A287524: Start with 0 and repeatedly substitute 0->012, 1->102, 2->201.

Offset 1, canonical program `A287524.P2131839873874398650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287524 (n : ℕ) : ℤ :=
  A287524.P2131839873874398650.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287528.P8977328754307273010

`A189668(n+1)+2*A189632(n+1)`
-/

namespace A287528.P8977328754307273010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189668 (n + 1) + 2 * A189632 (n + 1)

end

end A287528.P8977328754307273010

noncomputable section

/-- A287528: Start with 0 and repeatedly substitute 0->012, 1->102, 2->210.

Offset 1, canonical program `A287528.P8977328754307273010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287528 (n : ℕ) : ℤ :=
  A287528.P8977328754307273010.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287657.P14767657760280168455

`xor(n%2, A003849(floor(n/2)))`
-/

namespace A287657.P14767657760280168455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n % 2 : ℕ) : ℤ) (A003849 ⌊(n : ℚ) / 2⌋.toNat)

end

end A287657.P14767657760280168455

noncomputable section

/-- A287657: {0->01, 1->10}-transform of the infinite Fibonacci word A003849.

Offset 1, canonical program `A287657.P14767657760280168455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287657 (n : ℕ) : ℤ :=
  A287657.P14767657760280168455.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287664.P15191477513936064077

`A004956(A002264(n)+1)+n`
-/

namespace A287664.P15191477513936064077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (A002264 n + 1).toNat + (n : ℤ)

end

end A287664.P15191477513936064077

noncomputable section

/-- A287664: Positions of 0's in A287663; complement of A287665.

Offset 1, canonical program `A287664.P15191477513936064077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287664 (n : ℕ) : ℤ :=
  A287664.P15191477513936064077.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287674.P4910867926422161195

`A287663(n+1)+A221151(n)`
-/

namespace A287674.P4910867926422161195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287663 (n + 1) + A221151 n

end

end A287674.P4910867926422161195

noncomputable section

/-- A287674: {0->1, 1->001}-transform of the infinite Fibonacci word A003849.

Offset 1, canonical program `A287674.P4910867926422161195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287674 (n : ℕ) : ℤ :=
  A287674.P4910867926422161195.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287676.P3792131562201660675

`∑[2*A003849(n)+1]`
-/

namespace A287676.P3792131562201660675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003849 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287676.P3792131562201660675

noncomputable section

/-- A287676: Positions of 1 in A287674; complement of A287675.

Offset 1, canonical program `A287676.P3792131562201660675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287676 (n : ℕ) : ℤ :=
  A287676.P3792131562201660675.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287723.P11608785159484584755

`∑[A001468(A142150(n))+1]`
-/

namespace A287723.P11608785159484584755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (A142150 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287723.P11608785159484584755

noncomputable section

/-- A287723: Positions of 0 in A287722; complement of A287724.

Offset 1, canonical program `A287723.P11608785159484584755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287723 (n : ℕ) : ℤ :=
  A287723.P11608785159484584755.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287724.P16226668830565031982

`∑[A001468(A005206(n))]`
-/

namespace A287724.P16226668830565031982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (A005206 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A287724.P16226668830565031982

noncomputable section

/-- A287724: Positions of 1 in A287722; complement of A287723.

Offset 1, canonical program `A287724.P16226668830565031982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287724 (n : ℕ) : ℤ :=
  A287724.P16226668830565031982.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287745.P15680675513556340977

`A032085(n+2)-4*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A287745.P15680675513556340977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A032085 (n + 2) - 4 * a (n - 2)

end

end A287745.P15680675513556340977

noncomputable section

/-- A287745: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 342", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A287745.P15680675513556340977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A287745 (n : ℕ) : ℤ :=
  A287745.P15680675513556340977.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A287745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287746.P908048233123958262

`A287733(n+1)/6`
-/

namespace A287746.P908048233123958262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A287733 (n + 1) : ℚ) / 6

end

end A287746.P908048233123958262

noncomputable section

/-- A287746: First differences of A154293.

Offset 1, canonical program `A287746.P908048233123958262`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A287733, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A287746 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A287746.P908048233123958262.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A287733, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A287746.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A287770.P11237212306429765726

`ceil(A195121(n+1)/5+n)`
-/

namespace A287770.P11237212306429765726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A195121 (n + 1) : ℚ) / 5 + (n : ℚ)⌉

end

end A287770.P11237212306429765726

noncomputable section

/-- A287770: Positions of 1 in A287769; complement of A276855.

Offset 1, canonical program `A287770.P11237212306429765726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287770 (n : ℕ) : ℤ :=
  A287770.P11237212306429765726.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287772.P12816254190753866578

`A230603(a(n-1)+n)` with `a(0)=1`
-/

namespace A287772.P12816254190753866578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A230603 (a (n - 1) + (n : ℤ)).toNat

end

end A287772.P12816254190753866578

noncomputable section

/-- A287772: {0->1, 1->00}-transform of the infinite Fibonacci word A003849.

Offset 1, canonical program `A287772.P12816254190753866578`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287772 (n : ℕ) : ℤ :=
  A287772.P12816254190753866578.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287775.P13905753593983467473

`A000201(A008619(n))+1+n`
-/

namespace A287775.P13905753593983467473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A008619 n).toNat + 1 + (n : ℤ)

end

end A287775.P13905753593983467473

noncomputable section

/-- A287775: Positions of 0 in A287772; complement of A050140 (conjectured and proved).

Offset 1, canonical program `A287775.P13905753593983467473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287775 (n : ℕ) : ℤ :=
  A287775.P13905753593983467473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287777.P3751153092046747703

`A187945(n+1)+1+n`
-/

namespace A287777.P3751153092046747703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187945 (n + 1) + 1 + (n : ℤ)

end

end A287777.P3751153092046747703

noncomputable section

/-- A287777: Positions of 1 in A287773; complement of A287774.

Offset 1, canonical program `A287777.P3751153092046747703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287777 (n : ℕ) : ℤ :=
  A287777.P3751153092046747703.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287802.P16887405492664947401

`A120613(ceil((n+3)/2))+n+1`
-/

namespace A287802.P16887405492664947401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120613 ⌈(n + 3 : ℚ) / 2⌉.toNat + (n + 1 : ℤ)

end

end A287802.P16887405492664947401

noncomputable section

/-- A287802: Positions of 0 in A287801; complement of A287803.

Offset 1, canonical program `A287802.P16887405492664947401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287802 (n : ℕ) : ℤ :=
  A287802.P16887405492664947401.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287802.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287841.P13270344791315527012

`a(A079275(n+1))+1` with `a(0)=1`
-/

namespace A287841.P13270344791315527012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A079275 (n + 1)).toNat + 1

end

end A287841.P13270344791315527012

noncomputable section

/-- A287841: Number of iterations of number of distinct prime factors (A001221) needed to reach 1 starting at n (n is counted).

Offset 1, canonical program `A287841.P13270344791315527012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287841 (n : ℕ) : ℤ :=
  (A287841.P13270344791315527012.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A287841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288132.P3271536657450335669

`a(A004001(n-1))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A288132.P3271536657450335669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (A004001 (n - 1)).toNat

end

end A288132.P3271536657450335669

noncomputable section

/-- A288132: Fixed point of the mapping 00->0010, 1->11, starting with 00.

Offset 1, canonical program `A288132.P3271536657450335669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288132 (n : ℕ) : ℤ :=
  (A288132.P3271536657450335669.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288169.P9463209400602246047

`A249034(n+1)-A085423(n+2)`
-/

namespace A288169.P9463209400602246047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249034 (n + 1) - A085423 (n + 2)

end

end A288169.P9463209400602246047

noncomputable section

/-- A288169: Positions of 1 in A288167; complement of A288168.

Offset 1, canonical program `A288169.P9463209400602246047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A288169 (n : ℕ) : ℤ :=
  A288169.P9463209400602246047.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A288169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288205.P4532469448324624174

`∑[A267442(n)+2]+n`
-/

namespace A288205.P4532469448324624174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267442 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A288205.P4532469448324624174

noncomputable section

/-- A288205: Positions of 1 in A288203; complement of A288204.

Offset 1, canonical program `A288205.P4532469448324624174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288205 (n : ℕ) : ℤ :=
  A288205.P4532469448324624174.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288213.P7703768301411406808

`gcd(2, A001954(n))-1`
-/

namespace A288213.P7703768301411406808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A001954 n) : ℤ) - 1

end

end A288213.P7703768301411406808

noncomputable section

/-- A288213: Fixed point of the mapping 00->0010, 1->011, starting with 00.

Offset 1, canonical program `A288213.P7703768301411406808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288213 (n : ℕ) : ℤ :=
  A288213.P7703768301411406808.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288215.P5485610025847874001

`A190764(n+1)+1`
-/

namespace A288215.P5485610025847874001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190764 (n + 1) + 1

end

end A288215.P5485610025847874001

noncomputable section

/-- A288215: Positions of 1 in A288213; complement of A288215.

Offset 1, canonical program `A288215.P5485610025847874001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288215 (n : ℕ) : ℤ :=
  A288215.P5485610025847874001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288313.P13212366983752349706

`3*A000040(n%a(n-1))` with `a(0)=2, a(1)=4, a(2)=8`
-/

namespace A288313.P13212366983752349706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 8] fun n a =>
  3 * A000040 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A288313.P13212366983752349706

noncomputable section

/-- A288313: Let b(k) denote A056240(k); the sequence lists numbers b(2*n) where for all m > n, b(2*m) > b(2*n).

Offset 1, canonical program `A288313.P13212366983752349706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288313 (n : ℕ) : ℤ :=
  A288313.P13212366983752349706.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288341.P677461810220747952

`∑[∑[A037145(n)]]`
-/

namespace A288341.P677461810220747952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037145 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288341.P677461810220747952

noncomputable section

/-- A288341: Expansion of 1 / ((1-x)^2*(1-x^2)*(1-x^3)*...*(1-x^6)).

Offset 0, canonical program `A288341.P677461810220747952`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288341 (n : ℕ) : ℤ :=
  A288341.P677461810220747952.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288419.P3062089732794896662

`∑{d}[n+1, #*A076577(#)]`
-/

namespace A288419.P3062089732794896662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A076577 d

end

end A288419.P3062089732794896662

noncomputable section

/-- A288419: a(n) = Sum_{d|n} d^3*A000593(n/d).

Offset 1, canonical program `A288419.P3062089732794896662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288419 (n : ℕ) : ℤ :=
  A288419.P3062089732794896662.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288420.P17718365369934289039

`∑{d}[n+1, #*A007331(#)]`
-/

namespace A288420.P17718365369934289039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A007331 d

end

end A288420.P17718365369934289039

noncomputable section

/-- A288420: a(n) = Sum_{d|n} d^4*A000593(n/d).

Offset 1, canonical program `A288420.P17718365369934289039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288420 (n : ℕ) : ℤ :=
  A288420.P17718365369934289039.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288572.P7014901530328764659

`A145064(A028310(n))*A145979(n)`
-/

namespace A288572.P7014901530328764659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145064 (A028310 n).toNat * A145979 n

end

end A288572.P7014901530328764659

noncomputable section

/-- A288572: a(n) = smallest positive integer k such that (n^3)^k == 1 mod (n+1)^3.

Offset 1, canonical program `A288572.P7014901530328764659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288572 (n : ℕ) : ℤ :=
  A288572.P7014901530328764659.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288660.P16979688566341528985

`eq[2, gcd(2, A111393(n+1))]+1`
-/

namespace A288660.P16979688566341528985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A111393 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A288660.P16979688566341528985

noncomputable section

/-- A288660: Numbers whose cubes have an even number of digits.

Offset 1, canonical program `A288660.P16979688566341528985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6829 terms. -/
def A288660 (n : ℕ) : ℤ :=
  (A288660.P16979688566341528985.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6829 terms. -/
def A288660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288687.P14402893457171725233

`A028310(n)+A000431(n+1)`
-/

namespace A288687.P14402893457171725233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + A000431 (n + 1)

end

end A288687.P14402893457171725233

noncomputable section

/-- A288687: Number of n-digit biquanimous strings using digits {0,1,2,3}.

Offset 0, canonical program `A288687.P14402893457171725233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A288687 (n : ℕ) : ℤ :=
  A288687.P14402893457171725233.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A288687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288708.P5207956346555753035

`A189663(A005206(n+1))+n+1`
-/

namespace A288708.P5207956346555753035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A005206 (n + 1)).toNat + (n + 1 : ℤ)

end

end A288708.P5207956346555753035

noncomputable section

/-- A288708: Positions of 0 in A288707; complement of A288709.

Offset 1, canonical program `A288708.P5207956346555753035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288708 (n : ℕ) : ℤ :=
  A288708.P5207956346555753035.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288709.P8804272716824744838

`xor(1, 2*A026352(n))`
-/

namespace A288709.P8804272716824744838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * A026352 n)

end

end A288709.P8804272716824744838

noncomputable section

/-- A288709: Positions of 1's in A288707; complement of A288708.

Offset 1, canonical program `A288709.P8804272716824744838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288709 (n : ℕ) : ℤ :=
  A288709.P8804272716824744838.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288825.P14440546485086933183

`A000042(n+1)-A178500(floor(n/2))`
-/

namespace A288825.P14440546485086933183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A178500 ⌊(n : ℚ) / 2⌋.toNat

end

end A288825.P14440546485086933183

noncomputable section

/-- A288825: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 515", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A288825.P14440546485086933183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A288825 (n : ℕ) : ℤ :=
  A288825.P14440546485086933183.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A288825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288826.P8999188853409678325

`A094026(2*n+1)-A011557(n+1)%A094026(n+1)`
-/

namespace A288826.P8999188853409678325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (2 * n + 1) - Int.tmod (A011557 (n + 1)) (A094026 (n + 1))

end

end A288826.P8999188853409678325

noncomputable section

/-- A288826: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 515", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A288826.P8999188853409678325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A288826 (n : ℕ) : ℤ :=
  A288826.P8999188853409678325.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A288826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288828.P4093762577739422167

`a(n-1)-xor(-A052552(n), a(n-1))` with `a(0)=1`
-/

namespace A288828.P4093762577739422167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - Int.xor (-A052552 n) (a (n - 1))

end

end A288828.P4093762577739422167

noncomputable section

/-- A288828: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 515", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A288828.P4093762577739422167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A288828 (n : ℕ) : ℤ :=
  A288828.P4093762577739422167.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A288828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288934.P1390299028950243465

`ceil((A080578(n+1)+n)/2)`
-/

namespace A288934.P1390299028950243465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A080578 (n + 1) + (n : ℤ) : ℚ) / 2⌉

end

end A288934.P1390299028950243465

noncomputable section

/-- A288934: Positions of 1 in A288932; complement of A288933.

Offset 1, canonical program `A288934.P1390299028950243465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288934 (n : ℕ) : ℤ :=
  A288934.P1390299028950243465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288938.P11305853258716454191

`A080036(n)+char[A080036(n)]+2`
-/

namespace A288938.P11305853258716454191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 n + (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 2 : ℕ) : ℤ)

end

end A288938.P11305853258716454191

noncomputable section

/-- A288938: Positions of 1 in A288936; complement of A288937.

Offset 1, canonical program `A288938.P11305853258716454191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288938 (n : ℕ) : ℤ :=
  A288938.P11305853258716454191.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288999.P8263752832284557845

`∑[A159684(n)+3]`
-/

namespace A288999.P8263752832284557845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288999.P8263752832284557845

noncomputable section

/-- A288999: Positions of 1 in A288997; complement of A288998.

Offset 1, canonical program `A288999.P8263752832284557845`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288999 (n : ℕ) : ℤ :=
  A288999.P8263752832284557845.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A288999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289034.P3101325627668885776

`1-A189479(n+1)`
-/

namespace A289034.P3101325627668885776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A189479 (n + 1)

end

end A289034.P3101325627668885776

noncomputable section

/-- A289034: Fixed point of the morphism 0->010, 1->10 starting with 1.

Offset 1, canonical program `A289034.P3101325627668885776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289034 (n : ℕ) : ℤ :=
  A289034.P3101325627668885776.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289037.P8224787134129977398

`∑[A276864(A028310(n))]`
-/

namespace A289037.P8224787134129977398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276864 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A289037.P8224787134129977398

noncomputable section

/-- A289037: Positions of 1 in A289035; complement of A289036.

Offset 1, canonical program `A289037.P8224787134129977398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289037 (n : ℕ) : ℤ :=
  A289037.P8224787134129977398.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289142.P11077449046936920695

`eq[0, A001414(n+1)%3]+1`
-/

namespace A289142.P11077449046936920695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001414 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A289142.P11077449046936920695

noncomputable section

/-- A289142: Numbers whose sum of prime factors (taken with multiplicity) is divisible by 3.

Offset 1, canonical program `A289142.P11077449046936920695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289142 (n : ℕ) : ℤ :=
  (A289142.P11077449046936920695.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289142.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289150.P17860079283463340798

`∑[10^n]-A056830(∑[n%2])`
-/

namespace A289150.P17860079283463340798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A056830 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A289150.P17860079283463340798

noncomputable section

/-- A289150: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 597", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A289150.P17860079283463340798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A289150 (n : ℕ) : ℤ :=
  A289150.P17860079283463340798.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A289150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289199.P15088153983146951858

`n-Δ[round(A155212(n+1)/13)]`
-/

namespace A289199.P15088153983146951858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A155212 (n + 1) : ℚ) / 13)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A289199.P15088153983146951858

noncomputable section

/-- A289199: a(n) is the number of odd integers divisible by 13 in the open interval (12*(n-1)^2, 12*n^2).

Offset 0, canonical program `A289199.P15088153983146951858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A289199 (n : ℕ) : ℤ :=
  A289199.P15088153983146951858.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A289199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289387.P12260547900688232206

`A289321(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A289387.P12260547900688232206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A289321 (n - 1) + a (n - 1)

end

end A289387.P12260547900688232206

noncomputable section

/-- A289387: a(n) = Sum_{k>=0} (-1)^k*binomial(n, 5*k+2).

Offset 0, canonical program `A289387.P12260547900688232206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 358 terms. -/
def A289387 (n : ℕ) : ℤ :=
  A289387.P12260547900688232206.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 358 terms. -/
def A289387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289388.P9088607596143187835

`Δ[Δ[-A289306(n)]]`
-/

namespace A289388.P9088607596143187835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A289306 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A289388.P9088607596143187835

noncomputable section

/-- A289388: a(n) = Sum_{k>=0} (-1)^k*binomial(n,5*k+3).

Offset 0, canonical program `A289388.P9088607596143187835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 357 terms. -/
def A289388 (n : ℕ) : ℤ :=
  A289388.P9088607596143187835.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 357 terms. -/
def A289388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289418.P16600378519191471792

`A080937(n+5)-A007051(n+4)`
-/

namespace A289418.P16600378519191471792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080937 (n + 5) - A007051 (n + 4)

end

end A289418.P16600378519191471792

noncomputable section

/-- A289418: Number of Dyck paths of semilength n and height exactly 5.

Offset 5, canonical program `A289418.P16600378519191471792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. -/
def A289418 (n : ℕ) : ℤ :=
  A289418.P16600378519191471792.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 193 terms. -/
def A289418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289419.P5189639168704027076

`A024175(n+6)-A080937(n+6)`
-/

namespace A289419.P5189639168704027076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024175 (n + 6) - A080937 (n + 6)

end

end A289419.P5189639168704027076

noncomputable section

/-- A289419: Number of Dyck paths of semilength n and height exactly 6.

Offset 6, canonical program `A289419.P5189639168704027076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. -/
def A289419 (n : ℕ) : ℤ :=
  A289419.P5189639168704027076.a (n - 6)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. -/
def A289419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289420.P8260356485151865093

`A080938(n+7)-A024175(n+7)`
-/

namespace A289420.P8260356485151865093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080938 (n + 7) - A024175 (n + 7)

end

end A289420.P8260356485151865093

noncomputable section

/-- A289420: Number of Dyck paths of semilength n and height exactly 7.

Offset 7, canonical program `A289420.P8260356485151865093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. -/
def A289420 (n : ℕ) : ℤ :=
  A289420.P8260356485151865093.a (n - 7)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. -/
def A289420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289422.P10486747953016827996

`A211216(n+9)-A033191(n+9)`
-/

namespace A289422.P10486747953016827996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211216 (n + 9) - A033191 (n + 9)

end

end A289422.P10486747953016827996

noncomputable section

/-- A289422: Number of Dyck paths of semilength n and height exactly 9.

Offset 9, canonical program `A289422.P10486747953016827996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A289422 (n : ℕ) : ℤ :=
  A289422.P10486747953016827996.a (n - 9)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A289422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289744.P10289619435437853700

`480*(n+1)*A013955(n+1)`
-/

namespace A289744.P10289619435437853700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (480 * (n + 1) : ℤ) * A013955 (n + 1)

end

end A289744.P10289619435437853700

noncomputable section

/-- A289744: Coefficients in expansion of q*E'_8 where E_8 is the Eisenstein Series (A008410).

Offset 1, canonical program `A289744.P10289619435437853700`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013955, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289744 (n : ℕ) : ℤ :=
  A289744.P10289619435437853700.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013955, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289744.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A289745.P15768420138054802924

`264*(n+1)*A013957(n+1)`
-/

namespace A289745.P15768420138054802924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (264 * (n + 1) : ℤ) * A013957 (n + 1)

end

end A289745.P15768420138054802924

noncomputable section

/-- A289745: Coefficients in expansion of -q*E'_10 where E_10 is the Eisenstein Series (A013974).

Offset 1, canonical program `A289745.P15768420138054802924`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013957, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289745 (n : ℕ) : ℤ :=
  A289745.P15768420138054802924.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013957, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289745.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A289746.P10294771378129521522

`24*A282597(n+1)`
-/

namespace A289746.P10294771378129521522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A282597 (n + 1)

end

end A289746.P10294771378129521522

noncomputable section

/-- A289746: Coefficients in expansion of -q*E'_14 where E_14 is the Eisenstein Series (A058550).

Offset 1, canonical program `A289746.P10294771378129521522`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A282597, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289746 (n : ℕ) : ℤ :=
  A289746.P10294771378129521522.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A282597, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A289746.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A289764.P5647659139669201899

`a(n-2)+or(a(n-2), A127904(n+1))` with `a(0)=1, a(1)=2`
-/

namespace A289764.P5647659139669201899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + Int.lor (a (n - 2)) (A127904 (n + 1))

end

end A289764.P5647659139669201899

noncomputable section

/-- A289764: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 597", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A289764.P5647659139669201899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A289764 (n : ℕ) : ℤ :=
  A289764.P5647659139669201899.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A289764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289765.P8307938005075288678

`xor(A077980(n)+A000225(n), A001045(n))`
-/

namespace A289765.P8307938005075288678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A077980 n + A000225 n) (A001045 n)

end

end A289765.P8307938005075288678

noncomputable section

/-- A289765: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 597", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A289765.P8307938005075288678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A289765 (n : ℕ) : ℤ :=
  A289765.P8307938005075288678.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A289765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289795.P8991608833031833958

`3*A289796(n)`
-/

namespace A289795.P8991608833031833958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A289796 n

end

end A289795.P8991608833031833958

noncomputable section

/-- A289795: p-INVERT of (3n), where p(S) = 1 - S - S^2.

Offset 0, canonical program `A289795.P8991608833031833958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A289795 (n : ℕ) : ℤ :=
  A289795.P8991608833031833958.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A289795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290072.P12916737471976448683

`or(1, A283505(n))`
-/

namespace A290072.P12916737471976448683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A283505 n)

end

end A290072.P12916737471976448683

noncomputable section

/-- A290072: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 641", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290072.P12916737471976448683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290072 (n : ℕ) : ℤ :=
  A290072.P12916737471976448683.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290075.P15704188963845953926

`A016116(n)+A007179(A289207(n))`
-/

namespace A290075.P15704188963845953926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n + A007179 (A289207 n).toNat

end

end A290075.P15704188963845953926

noncomputable section

/-- A290075: Number of monomials in c(n) where c(1) = x, c(2) = y, c(n+2) = c(n+1) + c(n)^2.

Offset 1, canonical program `A290075.P15704188963845953926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A290075 (n : ℕ) : ℤ :=
  A290075.P15704188963845953926.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A290075.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290112.P7332499460374383390

`or(1, A267623(n))`
-/

namespace A290112.P7332499460374383390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A267623 n)

end

end A290112.P7332499460374383390

noncomputable section

/-- A290112: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 643", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290112.P7332499460374383390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290112 (n : ℕ) : ℤ :=
  A290112.P7332499460374383390.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290195.P9621791207342674564

`xor(and(n, A011782(n)), A283651(n))`
-/

namespace A290195.P9621791207342674564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.land (n : ℤ) (A011782 n)) (A283651 n)

end

end A290195.P9621791207342674564

noncomputable section

/-- A290195: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 705", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290195.P9621791207342674564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A290195 (n : ℕ) : ℤ :=
  A290195.P9621791207342674564.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A290195.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290199.P940950629369003112

`A000225(n)+and(n+1, A011782(n))`
-/

namespace A290199.P940950629369003112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + Int.land (n + 1 : ℤ) (A011782 n)

end

end A290199.P940950629369003112

noncomputable section

/-- A290199: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 721", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290199.P940950629369003112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A290199 (n : ℕ) : ℤ :=
  A290199.P940950629369003112.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A290199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290221.P18290709257670831745

`A290220(n)-A290220(log2(A011782(n)))`
-/

namespace A290221.P18290709257670831745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290220 n - A290220 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A290221.P18290709257670831745

noncomputable section

/-- A290221: Number of elements added at n-th stage to the structure of the narrow cross described in A290220.

Offset 0, canonical program `A290221.P18290709257670831745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A290221 (n : ℕ) : ℤ :=
  A290221.P18290709257670831745.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A290221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290233.P11962414555324344443

`A081857(lcm(2, n+1))`
-/

namespace A290233.P11962414555324344443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081857 (Nat.lcm 2 (n + 1))

end

end A290233.P11962414555324344443

noncomputable section

/-- A290233: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 773", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290233.P11962414555324344443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290233 (n : ℕ) : ℤ :=
  A290233.P11962414555324344443.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290234.P10245150171700326506

`2^(n+1)-A072345(n)`
-/

namespace A290234.P10245150171700326506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A072345 n

end

end A290234.P10245150171700326506

noncomputable section

/-- A290234: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 773", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290234.P10245150171700326506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A290234 (n : ℕ) : ℤ :=
  A290234.P10245150171700326506.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A290234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290235.P9278613562028619744

`A052551(n*gcd(2, n))`
-/

namespace A290235.P9278613562028619744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (n * Nat.gcd 2 n)

end

end A290235.P9278613562028619744

noncomputable section

/-- A290235: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 773", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290235.P9278613562028619744`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A290235 (n : ℕ) : ℤ :=
  A290235.P9278613562028619744.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A290235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290268.P9066980186009559821

`ceil((A106466(n)+∑[A014601(n)])/2)`
-/

namespace A290268.P9066980186009559821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A106466 n + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌉

end

end A290268.P9066980186009559821

noncomputable section

/-- A290268: Number of terms in the fully expanded n-th derivative of x^(x^2).

Offset 0, canonical program `A290268.P9066980186009559821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290268 (n : ℕ) : ℤ :=
  A290268.P9066980186009559821.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290313.P4933709878126481158

`A051797(n)+A000096(n)*A005712(n+2)`
-/

namespace A290313.P4933709878126481158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051797 n + A000096 n * A005712 (n + 2)

end

end A290313.P4933709878126481158

noncomputable section

/-- A290313: Fourth diagonal sequence of the Sheffer triangle A094816 (special Charlier).

Offset 0, canonical program `A290313.P4933709878126481158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290313 (n : ℕ) : ℤ :=
  A290313.P4933709878126481158.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A290313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290415.P13294576493658578083

`xor(or(n²+1, A000225(n)), A014236(n))`
-/

namespace A290415.P13294576493658578083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.lor (n ^ 2 + 1 : ℤ) (A000225 n)) (A014236 n)

end

end A290415.P13294576493658578083

noncomputable section

/-- A290415: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 785", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290415.P13294576493658578083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A290415 (n : ℕ) : ℤ :=
  A290415.P13294576493658578083.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A290415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290660.P15163917206572821738

`A002275(n+1)-a(gcd(2, n)-1)+1` with `a(0)=1`
-/

namespace A290660.P15163917206572821738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002275 (n + 1) - a (Nat.gcd 2 n - 1) + 1

end

end A290660.P15163917206572821738

noncomputable section

/-- A290660: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 899", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290660.P15163917206572821738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290660 (n : ℕ) : ℤ :=
  A290660.P15163917206572821738.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290842.P12910772204790180681

`eq[27, A004164(n)]`
-/

namespace A290842.P12910772204790180681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A290842.P12910772204790180681

noncomputable section

/-- A290842: Numbers k such that the sum of digits of k^3 is 3^3 = 27.

Offset 1, canonical program `A290842.P12910772204790180681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. -/
def A290842 (n : ℕ) : ℤ :=
  (A290842.P12910772204790180681.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. -/
def A290842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290859.P3243732649899171496

`A011782(n)*A156752(n)`
-/

namespace A290859.P3243732649899171496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A156752 n

end

end A290859.P3243732649899171496

noncomputable section

/-- A290859: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 1006", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290859.P3243732649899171496`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A290859 (n : ℕ) : ℤ :=
  A290859.P3243732649899171496.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A290859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290891.P3925911599048697236

`A291217(Δ[n²])`
-/

namespace A290891.P3925911599048697236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291217 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A290891.P3925911599048697236

noncomputable section

/-- A290891: p-INVERT of the positive integers, where p(S) = 1 - S^3.

Offset 0, canonical program `A290891.P3925911599048697236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A290891 (n : ℕ) : ℤ :=
  A290891.P3925911599048697236.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A290891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290929.P14096020846007279230

`(A290917(n)+A290890(n))/2`
-/

namespace A290929.P14096020846007279230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290917 n + A290890 n : ℚ) / 2

end

end A290929.P14096020846007279230

noncomputable section

/-- A290929: p-INVERT of the positive integers, where p(S) = (1 - S)(1 - S^2).

Offset 0, canonical program `A290929.P14096020846007279230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A290929 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A290929.P14096020846007279230.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A290929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290930.P2559548672273861222

`2*A290904(n)-A290890(n)`
-/

namespace A290930.P2559548672273861222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A290904 n - A290890 n

end

end A290930.P2559548672273861222

noncomputable section

/-- A290930: p-INVERT of the positive integers, where p(S) = (1 - S^2)(1 - 2*S^2).

Offset 0, canonical program `A290930.P2559548672273861222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. -/
def A290930 (n : ℕ) : ℤ :=
  A290930.P2559548672273861222.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. -/
def A290930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290993.P4070757531723867054

`A057681(n+1)+A227430(n)-A057681(n)`
-/

namespace A290993.P4070757531723867054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057681 (n + 1) + (A227430 n - A057681 n)

end

end A290993.P4070757531723867054

noncomputable section

/-- A290993: p-INVERT of (1,1,1,1,1,...), where p(S) = 1 - S^6.

Offset 0, canonical program `A290993.P4070757531723867054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A290993 (n : ℕ) : ℤ :=
  A290993.P4070757531723867054.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A290993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291021.P13249810594627728153

`A290890(n+1)-A131708(n)`
-/

namespace A291021.P13249810594627728153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290890 (n + 1) - A131708 n

end

end A291021.P13249810594627728153

noncomputable section

/-- A291021: p-INVERT of (1,1,1,1,1,...), where p(S) = 1 - S - S^2 - S^3 + S^4 + S^5.

Offset 0, canonical program `A291021.P13249810594627728153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A291021 (n : ℕ) : ℤ :=
  A291021.P13249810594627728153.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A291021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291197.P12306781684361658534

`Δ[Δ[-A050500(n+2)]]`
-/

namespace A291197.P12306781684361658534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A050500 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A291197.P12306781684361658534

noncomputable section

/-- A291197: Second differences of frac(n/log(n)) rounded, n >= 2.

Offset 2, canonical program `A291197.P12306781684361658534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A291197 (n : ℕ) : ℤ :=
  A291197.P12306781684361658534.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A291197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291229.P9126633261047573384

`A106515(n+1)+A001333(n)`
-/

namespace A291229.P9126633261047573384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106515 (n + 1) + A001333 n

end

end A291229.P9126633261047573384

noncomputable section

/-- A291229: p-INVERT of (0,1,0,1,0,1,...), where p(S) = (1 - S)(1 - 2 S).

Offset 0, canonical program `A291229.P9126633261047573384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. -/
def A291229 (n : ℕ) : ℤ :=
  A291229.P9126633261047573384.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. -/
def A291229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291241.P11292606566486155068

`∪[A038731(n), A290917(n)]`
-/

namespace A291241.P11292606566486155068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038731 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290917 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A291241.P11292606566486155068

noncomputable section

/-- A291241: p-INVERT of (0,1,0,1,0,1,...), where p(S) = 1 - S - S^2 + S^3.

Offset 0, canonical program `A291241.P11292606566486155068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. -/
def A291241 (n : ℕ) : ℤ :=
  (A291241.P11292606566486155068.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. -/
def A291241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291250.P4356664726592613925

`2*A048788(n+1)-∑[A212804(n)]`
-/

namespace A291250.P4356664726592613925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048788 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291250.P4356664726592613925

noncomputable section

/-- A291250: p-INVERT of (0,1,0,1,0,1,...), where p(S) = 1 - S - 2 S^2 + 2 S^3.

Offset 0, canonical program `A291250.P4356664726592613925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 349 terms. -/
def A291250 (n : ℕ) : ℤ :=
  A291250.P4356664726592613925.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 349 terms. -/
def A291250.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291387.P9217993124761703692

`8*A291388(n)`
-/

namespace A291387.P9217993124761703692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A291388 n

end

end A291387.P9217993124761703692

noncomputable section

/-- A291387: p-INVERT of (1,1,0,0,0,0,...), where p(S) = (1 - 4 S)^2.

Offset 0, canonical program `A291387.P9217993124761703692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A291387 (n : ℕ) : ℤ :=
  A291387.P9217993124761703692.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A291387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291389.P3133749326830032153

`5*A291390(n)`
-/

namespace A291389.P3133749326830032153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A291390 n

end

end A291389.P3133749326830032153

noncomputable section

/-- A291389: p-INVERT of (1,1,0,0,0,0,...), where p(S) = (1 - 5 S)^2.

Offset 0, canonical program `A291389.P3133749326830032153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A291389 (n : ℕ) : ℤ :=
  A291389.P3133749326830032153.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A291389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291391.P15295743276940635889

`12*A291392(n)`
-/

namespace A291391.P15295743276940635889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A291392 n

end

end A291391.P15295743276940635889

noncomputable section

/-- A291391: p-INVERT of (1,1,0,0,0,0,...), where p(S) = (1 - 6 S)^2.

Offset 0, canonical program `A291391.P15295743276940635889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A291391 (n : ℕ) : ℤ :=
  A291391.P15295743276940635889.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A291391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291396.P12241741448704826286

`2*A291395(n)-A291394(n)`
-/

namespace A291396.P12241741448704826286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A291395 n - A291394 n

end

end A291396.P12241741448704826286

noncomputable section

/-- A291396: p-INVERT of (1,1,0,0,0,0,...), where p(S) = (1 - S)(1 - 2 S)(1 - 3 S).

Offset 0, canonical program `A291396.P12241741448704826286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A291396 (n : ℕ) : ℤ :=
  A291396.P12241741448704826286.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A291396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291414.P1598030693681552258

`A272642(n+2)-record[A212804(n)]`
-/

namespace A291414.P1598030693681552258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272642 (n + 2) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291414.P1598030693681552258

noncomputable section

/-- A291414: p-INVERT of (1,1,0,0,0,0,...), where p(S) = 1 - 2 S + S^3.

Offset 0, canonical program `A291414.P1598030693681552258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. -/
def A291414 (n : ℕ) : ℤ :=
  A291414.P1598030693681552258.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. -/
def A291414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291498.P10614475688955058972

`A023453(n)-A204502(n+1)`
-/

namespace A291498.P10614475688955058972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023453 n - A204502 (n + 1)

end

end A291498.P10614475688955058972

noncomputable section

/-- A291498: The arithmetic function uhat(n,1,4).

Offset 1, canonical program `A291498.P10614475688955058972`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A291498 (n : ℕ) : ℤ :=
  A291498.P10614475688955058972.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A291498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291516.P2739492485073675488

`abs(3*A291514(n+1))`
-/

namespace A291516.P2739492485073675488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * A291514 (n + 1)|

end

end A291516.P2739492485073675488

noncomputable section

/-- A291516: The arithmetic function uhat(n,3,7), negated.

Offset 1, canonical program `A291516.P2739492485073675488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A291516 (n : ℕ) : ℤ :=
  A291516.P2739492485073675488.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A291516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291662.P18141742761416750643

`A165817(n)-n`
-/

namespace A291662.P18141742761416750643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165817 n - (n : ℤ)

end

end A291662.P18141742761416750643

noncomputable section

/-- A291662: Number of ordered rooted trees with 2n non-root nodes such that the maximal outdegree equals n.

Offset 0, canonical program `A291662.P18141742761416750643`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A291662 (n : ℕ) : ℤ :=
  A291662.P18141742761416750643.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A291662.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291703.P10698987530802811860

`A291537(n+1)-3%(n+3)`
-/

namespace A291703.P10698987530802811860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291537 (n + 1) - ((3 % (n + 3) : ℕ) : ℤ)

end

end A291703.P10698987530802811860

noncomputable section

/-- A291703: Number of connected dominating sets in the complete tripartite graph K_{n,n,n}.

Offset 1, canonical program `A291703.P10698987530802811860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A291703 (n : ℕ) : ℤ :=
  A291703.P10698987530802811860.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A291703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291734.P17297414494026807977

`2*A052912(n+1)-A000930(n+1)`
-/

namespace A291734.P17297414494026807977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052912 (n + 1) - A000930 (n + 1)

end

end A291734.P17297414494026807977

noncomputable section

/-- A291734: p-INVERT of (1,0,1,0,0,0,0,...), where p(S) = (1 - S)(1 - 2 S).

Offset 0, canonical program `A291734.P17297414494026807977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 267 terms. -/
def A291734 (n : ℕ) : ℤ :=
  A291734.P17297414494026807977.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 267 terms. -/
def A291734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291745.P12155943270432222460

`record[A005451(3*n+1)]`
-/

namespace A291745.P12155943270432222460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291745.P12155943270432222460

noncomputable section

/-- A291745: Nonprimes of the form 3*k + 1.

Offset 1, canonical program `A291745.P12155943270432222460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1600 terms. -/
def A291745 (n : ℕ) : ℤ :=
  A291745.P12155943270432222460.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1600 terms. -/
def A291745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291887.P7998709455536945116

`A005207(n+3)-A005418(n+3)`
-/

namespace A291887.P7998709455536945116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005207 (n + 3) - A005418 (n + 3)

end

end A291887.P7998709455536945116

noncomputable section

/-- A291887: Number of symmetrically unique Dyck paths of semilength n and height three.

Offset 3, canonical program `A291887.P7998709455536945116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A291887 (n : ℕ) : ℤ :=
  A291887.P7998709455536945116.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A291887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291933.P13043895663212954923

`A000040(n+1)+a(n-1)%10` with `a(0)=2`
-/

namespace A291933.P13043895663212954923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000040 (n + 1) + Int.tmod (a (n - 1)) 10

end

end A291933.P13043895663212954923

noncomputable section

/-- A291933: a(1)=2; a(n) is the sum of prime(n) and the last digit of previous term.

Offset 1, canonical program `A291933.P13043895663212954923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A291933 (n : ℕ) : ℤ :=
  A291933.P13043895663212954923.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A291933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292051.P4710405735727671808

`A212893(n)-A178946(n+1)`
-/

namespace A292051.P4710405735727671808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212893 n - A178946 (n + 1)

end

end A292051.P4710405735727671808

noncomputable section

/-- A292051: Wiener index of the n X n black bishop graph.

Offset 1, canonical program `A292051.P4710405735727671808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292051 (n : ℕ) : ℤ :=
  A292051.P4710405735727671808.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292077.P208369071452103874

`1-A106665(n)`
-/

namespace A292077.P208369071452103874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A106665 n

end

end A292077.P208369071452103874

noncomputable section

/-- A292077: a(n) = 0 if n=1; a(n) = 1-a(n-2) if n is odd; a(n) = 1-a(n/2) if n is even.

Offset 1, canonical program `A292077.P208369071452103874`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A106665, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292077 (n : ℕ) : ℤ :=
  A292077.P208369071452103874.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A106665, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A292077.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A292281.P1308277968515658370

`∑[2*A244879(n)]-A244879(n)`
-/

namespace A292281.P1308277968515658370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A244879 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A244879 n

end

end A292281.P1308277968515658370

noncomputable section

/-- A292281: Number of magic labelings of the prism graph I X C_6 having magic sum n.

Offset 0, canonical program `A292281.P1308277968515658370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292281 (n : ℕ) : ℤ :=
  A292281.P1308277968515658370.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292315.P1816862207648289831

`filter[A080308(n+1), A093719(#)]`
-/

namespace A292315.P1816862207648289831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A292315.P1816862207648289831

noncomputable section

/-- A292315: Positive integers not divisible by any number of the form 2^n + 1 for n >= 0.

Offset 1, canonical program `A292315.P1816862207648289831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A292315 (n : ℕ) : ℤ :=
  A292315.P1816862207648289831.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A292315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292465.P4226917308943281277

`lcm(A023607(n), A045925(n))`
-/

namespace A292465.P4226917308943281277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A023607 n) (A045925 n)

end

end A292465.P4226917308943281277

noncomputable section

/-- A292465: a(n) = n*F(n)*F(n+1), where F = A000045.

Offset 0, canonical program `A292465.P4226917308943281277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A292465 (n : ℕ) : ℤ :=
  (A292465.P4226917308943281277.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. -/
def A292465.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292524.P9295925993762549996

`A162512(n)%2+3*a(n-1)` with `a(0)=0`
-/

namespace A292524.P9295925993762549996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (A162512 n) 2 + 3 * a (n - 1)

end

end A292524.P9295925993762549996

noncomputable section

/-- A292524: Interpret the values of the Moebius function mu(k) for k = 1 to n as a balanced ternary number.

Offset 0, canonical program `A292524.P9295925993762549996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A292524 (n : ℕ) : ℤ :=
  A292524.P9295925993762549996.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A292524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292638.P6012436071896694180

`A195174(n+1)+n`
-/

namespace A292638.P6012436071896694180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (n + 1) + (n : ℤ)

end

end A292638.P6012436071896694180

noncomputable section

/-- A292638: Rank of (3-r)*n when all the numbers (3-r)*j and (3+r)*k, where r = sqrt(5), j>=1, k>=1, are jointly ranked.

Offset 1, canonical program `A292638.P6012436071896694180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292638 (n : ℕ) : ℤ :=
  A292638.P6012436071896694180.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292641.P3636368433729091843

`n+1+A137804(n+1)`
-/

namespace A292641.P3636368433729091843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A137804 (n + 1)

end

end A292641.P3636368433729091843

noncomputable section

/-- A292641: Rank of (4+r)*n when all the numbers (4-r)*j and (4+r)*k, where r = sqrt(2), j>=1, k>=1, are jointly ranked.

Offset 1, canonical program `A292641.P3636368433729091843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292641 (n : ℕ) : ℤ :=
  A292641.P3636368433729091843.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292647.P7577445348216488322

`∑[Δ[A032634(n)]+2]`
-/

namespace A292647.P7577445348216488322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032634 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292647.P7577445348216488322

noncomputable section

/-- A292647: Rank of (e+1)*n when all the numbers e*j and (e+1)*k, for j>=1, k>=1, are jointly ranked.

Offset 1, canonical program `A292647.P7577445348216488322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292647 (n : ℕ) : ℤ :=
  A292647.P7577445348216488322.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292647.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292649.P4374179252160698434

`A059531(n+1)+1+n`
-/

namespace A292649.P4374179252160698434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059531 (n + 1) + 1 + (n : ℤ)

end

end A292649.P4374179252160698434

noncomputable section

/-- A292649: Rank of (Pi+1)*n when all the numbers Pi*j and (Pi+1)*k, for j>=1, k>=1, are jointly ranked.

Offset 1, canonical program `A292649.P4374179252160698434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292649 (n : ℕ) : ℤ :=
  A292649.P4374179252160698434.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292652.P9827937049489949386

`A189757(n+1)-A108120(n+1)`
-/

namespace A292652.P9827937049489949386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189757 (n + 1) - A108120 (n + 1)

end

end A292652.P9827937049489949386

noncomputable section

/-- A292652: Rank of n*cos(1) when all the numbers j*cos(1) and k*sin(1), for j>=1, k>=1, are jointly ranked.

Offset 1, canonical program `A292652.P9827937049489949386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292652 (n : ℕ) : ℤ :=
  A292652.P9827937049489949386.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292652.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292656.P4248639488250771232

`A292651(n+1)+A022844(n+1)`
-/

namespace A292656.P4248639488250771232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292651 (n + 1) + A022844 (n + 1)

end

end A292656.P4248639488250771232

noncomputable section

/-- A292656: Rank of n*Pi when all the numbers h, j*e, k*Pi, for h>=1, j>=1, k>=1, are jointly ranked.

Offset 1, canonical program `A292656.P4248639488250771232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292656 (n : ℕ) : ℤ :=
  A292656.P4248639488250771232.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292663.P11006181685462935153

`Δ[n²]-A032634(n+1)`
-/

namespace A292663.P11006181685462935153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A032634 (n + 1)

end

end A292663.P11006181685462935153

noncomputable section

/-- A292663: Rank of n*(e-1) when all the numbers j*(e-1) and k*e, for j>=1, k>=1, are jointly ranked.

Offset 1, canonical program `A292663.P11006181685462935153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292663 (n : ℕ) : ℤ :=
  A292663.P11006181685462935153.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292663.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292665.P15323345386634199452

`comp[A184590(2*n+1)]+1`
-/

namespace A292665.P15323345386634199452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184590 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A292665.P15323345386634199452

noncomputable section

/-- A292665: Rank of n*(e-1) when all the numbers j*(e-1) and k*(e+1), for j>=1, k>=1, are jointly ranked.

Offset 1, canonical program `A292665.P15323345386634199452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292665 (n : ℕ) : ℤ :=
  (A292665.P15323345386634199452.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292931.P11848410152138071600

`eq[7, gcd(7, A004166(n))]`
-/

namespace A292931.P11848410152138071600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 7 (A004166 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292931.P11848410152138071600

noncomputable section

/-- A292931: Numbers n such that the sum of digits of 3^n (A004166) is divisible by 7.

Offset 1, canonical program `A292931.P11848410152138071600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1374 terms. -/
def A292931 (n : ℕ) : ℤ :=
  (A292931.P11848410152138071600.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1374 terms. -/
def A292931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292987.P9850565851364099735

`A121381(n)-a(n-1)` with `a(0)=1`
-/

namespace A292987.P9850565851364099735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A121381 n - a (n - 1)

end

end A292987.P9850565851364099735

noncomputable section

/-- A292987: Beatty sequence of the real root of x^5 - x^4 - x^2 - 1; complement of A292988.

Offset 1, canonical program `A292987.P9850565851364099735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A292987 (n : ℕ) : ℤ :=
  A292987.P9850565851364099735.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A292987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292995.P14469871609488576223

`floor(A004166(n)/9)`
-/

namespace A292995.P14469871609488576223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004166 n : ℚ) / 9⌋

end

end A292995.P14469871609488576223

noncomputable section

/-- A292995: Sum of digits of 3^n (A004166) divided by 9.

Offset 0, canonical program `A292995.P14469871609488576223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292995 (n : ℕ) : ℤ :=
  A292995.P14469871609488576223.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A292995.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293014.P8453026757887853128

`A000045(n-3)-a(n-3)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A293014.P8453026757887853128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  A000045 (n - 3) - a (n - 3)

end

end A293014.P8453026757887853128

noncomputable section

/-- A293014: a(n) = a(n-1) + a(n-2) - a(n-3) + a(n-4) for n > 4, where a(n)=0 for n < 4 and a(4) = 1.

Offset 0, canonical program `A293014.P8453026757887853128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 484 terms. -/
def A293014 (n : ℕ) : ℤ :=
  A293014.P8453026757887853128.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 484 terms. -/
def A293014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293169.P10636581363963723716

`A392253(2*n)`
-/

namespace A293169.P10636581363963723716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392253 (2 * n)

end

end A293169.P10636581363963723716

noncomputable section

/-- A293169: a(n) = Sum_{k=0..n} binomial(k, 6*(n-k)).

Offset 0, canonical program `A293169.P10636581363963723716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 363 terms. -/
def A293169 (n : ℕ) : ℤ :=
  A293169.P10636581363963723716.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 363 terms. -/
def A293169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293233.P13541927163502330655

`round(1/∏{e}[n+1, -#²])*a(A110654(n)-1)` with `a(0)=1`
-/

namespace A293233.P13541927163502330655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (1 / ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p ^ 2 : ℤ)) : ℤ) : ℚ)) * a (A110654 n - 1).toNat

end

end A293233.P13541927163502330655

noncomputable section

/-- A293233: a(1) = 1; and for n > 1, a(n) = mu(n) * a(floor(n/2)), where mu is the Moebius function A008683.

Offset 1, canonical program `A293233.P13541927163502330655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293233 (n : ℕ) : ℤ :=
  A293233.P13541927163502330655.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293239.P3844869864369269808

`A038707(n)+2-A185118(n)`
-/

namespace A293239.P3844869864369269808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038707 n + (2 - A185118 n)

end

end A293239.P3844869864369269808

noncomputable section

/-- A293239: Number of terms in the fully expanded n-th derivative of x^x.

Offset 0, canonical program `A293239.P3844869864369269808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293239 (n : ℕ) : ℤ :=
  A293239.P3844869864369269808.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293333.P12220246143884906906

`A293324(n+1)+2^n`
-/

namespace A293333.P12220246143884906906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293324 (n + 1) + (2 ^ n : ℤ)

end

end A293333.P12220246143884906906

noncomputable section

/-- A293333: The integer k that minimizes |k/2^n - sqrt(5)|.

Offset 0, canonical program `A293333.P12220246143884906906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A293333 (n : ℕ) : ℤ :=
  A293333.P12220246143884906906.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A293333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293401.P2171145593388991176

`A293400(n)+n²%(n+1)`
-/

namespace A293401.P2171145593388991176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293400 n + ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A293401.P2171145593388991176

noncomputable section

/-- A293401: Least integer k such that k/n^2 > (1 + sqrt(5))/2 (the golden ratio).

Offset 0, canonical program `A293401.P2171145593388991176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293401 (n : ℕ) : ℤ :=
  A293401.P2171145593388991176.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293403.P14097951911837784715

`A293400(n)+n²`
-/

namespace A293403.P14097951911837784715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293400 n + (n ^ 2 : ℤ)

end

end A293403.P14097951911837784715

noncomputable section

/-- A293403: Greatest integer k such that k/n^2 < (3 + sqrt(5))/2.

Offset 0, canonical program `A293403.P14097951911837784715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293403 (n : ℕ) : ℤ :=
  A293403.P14097951911837784715.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293405.P3254269789907674871

`A293402(n)+n²`
-/

namespace A293405.P3254269789907674871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293402 n + (n ^ 2 : ℤ)

end

end A293405.P3254269789907674871

noncomputable section

/-- A293405: The integer k that minimizes |k/n^2 - phi^2|, where phi = (1+sqrt(5))/2 (golden ratio).

Offset 0, canonical program `A293405.P3254269789907674871`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293405 (n : ℕ) : ℤ :=
  A293405.P3254269789907674871.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293410.P13299819704749243722

`A171972(n)+n²%(n+1)`
-/

namespace A293410.P13299819704749243722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171972 n + ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A293410.P13299819704749243722

noncomputable section

/-- A293410: Least integer k such that k/n^2 > sqrt(3).

Offset 0, canonical program `A293410.P13299819704749243722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293410 (n : ℕ) : ℤ :=
  A293410.P13299819704749243722.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293418.P17959891732544130175

`floor(sqrt(2)*A000045(n))`
-/

namespace A293418.P17959891732544130175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) * (A000045 n : ℝ)⌋

end

end A293418.P17959891732544130175

noncomputable section

/-- A293418: a(n) is the greatest integer k such that k/Fibonacci(n) < sqrt(2).

Offset 0, canonical program `A293418.P17959891732544130175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A293418 (n : ℕ) : ℤ :=
  A293418.P17959891732544130175.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A293418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293420.P14130243804413009707

`round(sqrt(2)*A000045(n))`
-/

namespace A293420.P14130243804413009707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 : ℝ) * (A000045 n : ℝ))

end

end A293420.P14130243804413009707

noncomputable section

/-- A293420: a(n) is the integer k that minimizes |k/Fibonacci(n) - sqrt(2)|.

Offset 0, canonical program `A293420.P14130243804413009707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A293420 (n : ℕ) : ℤ :=
  A293420.P14130243804413009707.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A293420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293611.P16775360234379216699

`∑[∑[A000292(n)]*(5*n+6)]`
-/

namespace A293611.P16775360234379216699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * (5 * n + 6 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293611.P16775360234379216699

noncomputable section

/-- A293611: a(n) = (25*n + 41)*Pochhammer(n, 5) / 6!.

Offset 0, canonical program `A293611.P16775360234379216699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293611 (n : ℕ) : ℤ :=
  A293611.P16775360234379216699.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293656.P5162966852586704272

`∑[n+1]*A006882(n)`
-/

namespace A293656.P5162966852586704272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A006882 n

end

end A293656.P5162966852586704272

noncomputable section

/-- A293656: a(n) = binomial(n+1,2)*n!/n!!.

Offset 1, canonical program `A293656.P5162966852586704272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A293656 (n : ℕ) : ℤ :=
  A293656.P5162966852586704272.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A293656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293668.P14676330596261024754

`A255308(n)+1`
-/

namespace A293668.P14676330596261024754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255308 n + 1

end

end A293668.P14676330596261024754

noncomputable section

/-- A293668: First differences of A292046.

Offset 0, canonical program `A293668.P14676330596261024754`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A255308, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293668 (n : ℕ) : ℤ :=
  A293668.P14676330596261024754.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A255308, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293668.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293671.P15712082427370859904

`floor(4/5*A000045(n))`
-/

namespace A293671.P15712082427370859904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 : ℚ) / 5 * (A000045 n : ℚ)⌋

end

end A293671.P15712082427370859904

noncomputable section

/-- A293671: a(n) is the greatest integer k such that k/Fibonacci(n) < 4/5.

Offset 0, canonical program `A293671.P15712082427370859904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A293671 (n : ℕ) : ℤ :=
  A293671.P15712082427370859904.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A293671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293672.P8681346290342597704

`ceil(4/5*A000045(n))`
-/

namespace A293672.P8681346290342597704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 : ℚ) / 5 * (A000045 n : ℚ)⌉

end

end A293672.P8681346290342597704

noncomputable section

/-- A293672: a(n) is the least integer k such that k/Fibonacci(n) > 4/5.

Offset 0, canonical program `A293672.P8681346290342597704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A293672 (n : ℕ) : ℤ :=
  A293672.P8681346290342597704.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A293672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293673.P4666619230657474854

`round(4/5*A000045(n))`
-/

namespace A293673.P4666619230657474854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 : ℚ) / 5 * (A000045 n : ℚ))

end

end A293673.P4666619230657474854

noncomputable section

/-- A293673: a(n) is the integer k that minimizes |k/Fibonacci(n) - 4/5|.

Offset 0, canonical program `A293673.P4666619230657474854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A293673 (n : ℕ) : ℤ :=
  A293673.P4666619230657474854.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A293673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293674.P17440719709334452364

`floor(e*A000045(n))`
-/

namespace A293674.P17440719709334452364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (A000045 n : ℝ)⌋

end

end A293674.P17440719709334452364

noncomputable section

/-- A293674: a(n) is the greatest integer k such that k/Fibonacci(n) < e.

Offset 0, canonical program `A293674.P17440719709334452364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A293674 (n : ℕ) : ℤ :=
  A293674.P17440719709334452364.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A293674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293676.P4327452207758404279

`round(e*A000045(n))`
-/

namespace A293676.P4327452207758404279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp 1 * (A000045 n : ℝ))

end

end A293676.P4327452207758404279

noncomputable section

/-- A293676: a(n) is the integer k that minimizes |e - k/Fibonacci(n)|.

Offset 0, canonical program `A293676.P4327452207758404279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A293676 (n : ℕ) : ℤ :=
  A293676.P4327452207758404279.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A293676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293677.P8644198808222840955

`floor(π*A000045(n))`
-/

namespace A293677.P8644198808222840955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (A000045 n : ℝ)⌋

end

end A293677.P8644198808222840955

noncomputable section

/-- A293677: a(n) is the greatest integer k such that k/Fibonacci(n) < Pi.

Offset 0, canonical program `A293677.P8644198808222840955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A293677 (n : ℕ) : ℤ :=
  A293677.P8644198808222840955.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A293677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293679.P15726943823660417155

`round(π*A000045(n))`
-/

namespace A293679.P15726943823660417155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.pi * (A000045 n : ℝ))

end

end A293679.P15726943823660417155

noncomputable section

/-- A293679: a(n) is the integer k that minimizes |k/Fibonacci(n) - Pi|.

Offset 0, canonical program `A293679.P15726943823660417155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A293679 (n : ℕ) : ℤ :=
  A293679.P15726943823660417155.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A293679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293688.P8284500563526258194

`(n+1)*A005206(n)`
-/

namespace A293688.P8284500563526258194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005206 n

end

end A293688.P8284500563526258194

noncomputable section

/-- A293688: Partial sums of A002251.

Offset 0, canonical program `A293688.P8284500563526258194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293688 (n : ℕ) : ℤ :=
  A293688.P8284500563526258194.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293700.P7866924572608709519

`Δ[A293698(n+1)]`
-/

namespace A293700.P7866924572608709519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293700.P7866924572608709519

noncomputable section

/-- A293700: First differences of A293698.

Offset 1, canonical program `A293700.P7866924572608709519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A293700 (n : ℕ) : ℤ :=
  A293700.P7866924572608709519.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A293700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293751.P1475450915144499424

`eq[0, A195910(n)+1]`
-/

namespace A293751.P1475450915144499424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195910 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293751.P1475450915144499424

noncomputable section

/-- A293751: Values of positive integer i such that floor(tan(-i)) = 1.

Offset 1, canonical program `A293751.P1475450915144499424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1040 terms. -/
def A293751 (n : ℕ) : ℤ :=
  (A293751.P1475450915144499424.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1040 terms. -/
def A293751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294013.P11508528961553630059

`∑[2*A230980(n)]`
-/

namespace A294013.P11508528961553630059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A230980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294013.P11508528961553630059

noncomputable section

/-- A294013: Sum of the differences of the larger and smaller parts in the partitions of 2n into two parts with the smaller part prime.

Offset 1, canonical program `A294013.P11508528961553630059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294013 (n : ℕ) : ℤ :=
  A294013.P11508528961553630059.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294052.P16115692674983833928

`A287275(n+4)-A001519(n+4)`
-/

namespace A294052.P16115692674983833928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287275 (n + 4) - A001519 (n + 4)

end

end A294052.P16115692674983833928

noncomputable section

/-- A294052: Number of set partitions of [n] such that the maximal absolute difference between consecutive elements within a block equals three.

Offset 4, canonical program `A294052.P16115692674983833928`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A287275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294052 (n : ℕ) : ℤ :=
  A294052.P16115692674983833928.a (n - 4)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A287275, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294052.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294085.P11106820965388429589

`A266769(n)+A026810(A109613(n))`
-/

namespace A294085.P11106820965388429589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266769 n + A026810 (A109613 n).toNat

end

end A294085.P11106820965388429589

noncomputable section

/-- A294085: a(n) is the number of self-symmetric anonymous and neutral equivalence classes of preference profiles with 3 alternatives and n agents (IANC model).

Offset 0, canonical program `A294085.P11106820965388429589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294085 (n : ℕ) : ℤ :=
  A294085.P11106820965388429589.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294091.P16255864335808949045

`2*A002313(n+1)+1`
-/

namespace A294091.P16255864335808949045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002313 (n + 1) + 1

end

end A294091.P16255864335808949045

noncomputable section

/-- A294091: Numbers k such that (k - 1)/2 is prime that are not congruent to -1 mod 8.

Offset 1, canonical program `A294091.P16255864335808949045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294091 (n : ℕ) : ℤ :=
  A294091.P16255864335808949045.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294106.P2933432271010427062

`a(A002264(n))*A117940(n)` with `a(0)=1`
-/

namespace A294106.P2933432271010427062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A002264 n).toNat * A117940 n

end

end A294106.P2933432271010427062

noncomputable section

/-- A294106: Sum of products of terms in all partitions of 3*n into distinct powers of 3.

Offset 0, canonical program `A294106.P2933432271010427062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A294106 (n : ℕ) : ℤ :=
  A294106.P2933432271010427062.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A294106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294108.P8258309688264849587

`abs(Δ[A033270(A185048(n+1))])`
-/

namespace A294108.P8258309688264849587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A185048 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A294108.P8258309688264849587

noncomputable section

/-- A294108: Minimum of the number of primes appearing among the smaller parts and the number of primes appearing among the larger parts of the partitions of n into two parts.

Offset 1, canonical program `A294108.P8258309688264849587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294108 (n : ℕ) : ℤ :=
  A294108.P8258309688264849587.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294143.P16233858525841780267

`A294062(n+1)+A066779(n+1)`
-/

namespace A294143.P16233858525841780267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294062 (n + 1) + A066779 (n + 1)

end

end A294143.P16233858525841780267

noncomputable section

/-- A294143: Sum of the larger parts of the partitions of 2n into two parts with smaller part squarefree.

Offset 1, canonical program `A294143.P16233858525841780267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294143 (n : ℕ) : ℤ :=
  A294143.P16233858525841780267.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294175.P1326977934770168492

`A027306(n)-A001405(n)`
-/

namespace A294175.P1326977934770168492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027306 n - A001405 n

end

end A294175.P1326977934770168492

noncomputable section

/-- A294175: a(n) = 2^(n-1) + ((1+(-1)^n)/4)*binomial(n, n/2) - binomial(n, floor(n/2)).

Offset 0, canonical program `A294175.P1326977934770168492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A294175 (n : ℕ) : ℤ :=
  A294175.P1326977934770168492.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A294175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294237.P9254304307185982450

`Δ[n/2*∑[A294234(n)]]`
-/

namespace A294237.P9254304307185982450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294234 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A294237.P9254304307185982450

noncomputable section

/-- A294237: Sum of the larger parts of the partitions of n into two parts with smaller part nonsquarefree.

Offset 1, canonical program `A294237.P9254304307185982450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A294237 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A294237.P9254304307185982450.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A294237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294238.P15813330204626195893

`∑[abs(Δ[n*A294234(n)])]`
-/

namespace A294238.P15813330204626195893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A294234 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294238.P15813330204626195893

noncomputable section

/-- A294238: Sum of the parts in the partitions of n into two parts with smaller part nonsquarefree.

Offset 1, canonical program `A294238.P15813330204626195893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A294238 (n : ℕ) : ℤ :=
  A294238.P15813330204626195893.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A294238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294271.P7794211560096555549

`∑[(n+1)²²-Δ[A309336(n)]]`
-/

namespace A294271.P7794211560096555549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309336 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294271.P7794211560096555549

noncomputable section

/-- A294271: Sum of the fourth powers of the parts in the partitions of n into two parts.

Offset 1, canonical program `A294271.P7794211560096555549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294271 (n : ℕ) : ℤ :=
  A294271.P7794211560096555549.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294271.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294272.P4155078698942793880

`A000584(∑[n]%(n+1))+A000539(n)`
-/

namespace A294272.P4155078698942793880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)) + A000539 n

end

end A294272.P4155078698942793880

noncomputable section

/-- A294272: Sum of the fifth powers of the parts in the partitions of n into two parts.

Offset 1, canonical program `A294272.P4155078698942793880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294272 (n : ℕ) : ℤ :=
  A294272.P4155078698942793880.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294273.P3284638066771822649

`A001014(∑[n]%(n+1))+A000540(n)`
-/

namespace A294273.P3284638066771822649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)) + A000540 n

end

end A294273.P3284638066771822649

noncomputable section

/-- A294273: Sum of the sixth powers of the parts in the partitions of n into two parts.

Offset 1, canonical program `A294273.P3284638066771822649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294273 (n : ℕ) : ℤ :=
  A294273.P3284638066771822649.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294274.P16034422266987753468

`A001015(∑[n]%(n+1))+A000541(n)`
-/

namespace A294274.P16034422266987753468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)) + A000541 n

end

end A294274.P16034422266987753468

noncomputable section

/-- A294274: Sum of the seventh powers of the parts in the partitions of n into two parts.

Offset 1, canonical program `A294274.P16034422266987753468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294274 (n : ℕ) : ℤ :=
  A294274.P16034422266987753468.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294275.P5436868170071859999

`A001016(∑[n]%(n+1))+A000542(n)`
-/

namespace A294275.P5436868170071859999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001016 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)) + A000542 n

end

end A294275.P5436868170071859999

noncomputable section

/-- A294275: Sum of the eighth powers of the parts in the partitions of n into two parts.

Offset 1, canonical program `A294275.P5436868170071859999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294275 (n : ℕ) : ℤ :=
  A294275.P5436868170071859999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294276.P11196550552926364073

`Δ[A007487(floor(n/2))]+∑[n^9]`
-/

namespace A294276.P11196550552926364073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007487 ⌊(n : ℚ) / 2⌋.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A294276.P11196550552926364073

noncomputable section

/-- A294276: Sum of the ninth powers of the parts in the partitions of n into two parts.

Offset 1, canonical program `A294276.P11196550552926364073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294276 (n : ℕ) : ℤ :=
  A294276.P11196550552926364073.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294300.P13627915974501025542

`A000539(n)-Δ[A000539(floor(n/2))]`
-/

namespace A294300.P13627915974501025542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000539 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000539 n - (f1 (n + 1) - f1 n)

end

end A294300.P13627915974501025542

noncomputable section

/-- A294300: Sum of the fifth powers of the parts in the partitions of n into two distinct parts.

Offset 1, canonical program `A294300.P13627915974501025542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294300 (n : ℕ) : ℤ :=
  A294300.P13627915974501025542.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294317.P12504463466195048187

`A128076(n+1)-1`
-/

namespace A294317.P12504463466195048187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128076 (n + 1) - 1

end

end A294317.P12504463466195048187

noncomputable section

/-- A294317: Triangle read by rows: T(n, k) = 2*n-k, k <= n.

Offset 0, canonical program `A294317.P12504463466195048187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294317 (n : ℕ) : ℤ :=
  A294317.P12504463466195048187.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294364.P10284434815774838734

`A033999(n)+3*A286311(n)`
-/

namespace A294364.P10284434815774838734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + 3 * A286311 n

end

end A294364.P10284434815774838734

noncomputable section

/-- A294364: Linear recurrence with signature (1,1,-1,1,1), where the first terms are powers of 2 (1,2,4,8,16).

Offset 0, canonical program `A294364.P10284434815774838734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A294364 (n : ℕ) : ℤ :=
  A294364.P10284434815774838734.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A294364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294448.P13092270535202228762

`∑[A033999(A156253(n+1))]`
-/

namespace A294448.P13092270535202228762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A156253 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294448.P13092270535202228762

noncomputable section

/-- A294448: Discrepancy of the Kolakoski sequence A000002.

Offset 1, canonical program `A294448.P13092270535202228762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294448 (n : ℕ) : ℤ :=
  A294448.P13092270535202228762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294601.P169410523176805650

`eq[1, A196564(n)]`
-/

namespace A294601.P169410523176805650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294601.P169410523176805650

noncomputable section

/-- A294601: Numbers with exactly one odd decimal digit.

Offset 1, canonical program `A294601.P169410523176805650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A294601 (n : ℕ) : ℤ :=
  (A294601.P169410523176805650.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A294601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294604.P8617844953742123333

`A071238(n+2)+A000217(A008796(2*n))`
-/

namespace A294604.P8617844953742123333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071238 (n + 2) + A000217 (A008796 (2 * n)).toNat

end

end A294604.P8617844953742123333

noncomputable section

/-- A294604: Number of ordinary double points of a family of threefolds.

Offset 3, canonical program `A294604.P8617844953742123333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. -/
def A294604 (n : ℕ) : ℤ :=
  A294604.P8617844953742123333.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. -/
def A294604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294640.P17292815464110634610

`a(A004526(n))*A093178(n)` with `a(0)=1`
-/

namespace A294640.P17292815464110634610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A004526 n).toNat * A093178 n

end

end A294640.P17292815464110634610

noncomputable section

/-- A294640: G.f. A(x) = Sum_{n>=0} x^n/a(n) satisfies: A(x) = A(x^2) + Integral A(x^2) dx.

Offset 0, canonical program `A294640.P17292815464110634610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4101 terms. -/
def A294640 (n : ℕ) : ℤ :=
  A294640.P17292815464110634610.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4101 terms. -/
def A294640.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295012.P7483936910690053485

`A000203(12*n+11)/12`
-/

namespace A295012.P7483936910690053485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (12 * n + 11) : ℚ) / 12

end

end A295012.P7483936910690053485

noncomputable section

/-- A295012: a(n) = sigma(12n - 1)/12, where sigma = sum of divisors (A000203).

Offset 1, canonical program `A295012.P7483936910690053485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8333 terms. -/
def A295012 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A295012.P7483936910690053485.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8333 terms. -/
def A295012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295024.P12799125946553615279

`A294999(n+1)^3`
-/

namespace A295024.P12799125946553615279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294999 (n + 1) ^ 3

end

end A295024.P12799125946553615279

noncomputable section

/-- A295024: Cubes whose largest digit is 9.

Offset 1, canonical program `A295024.P12799125946553615279`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294999, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295024 (n : ℕ) : ℤ :=
  A295024.P12799125946553615279.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294999, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295024.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295287.P15776343000814745150

`Δ[n*∑[C(A008621(n), 2)]]`
-/

namespace A295287.P15776343000814745150
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008621 n).toNat 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A295287.P15776343000814745150

noncomputable section

/-- A295287: Sum of the products of the smaller and larger parts of the partitions of n into two parts with the smaller part even.

Offset 1, canonical program `A295287.P15776343000814745150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A295287 (n : ℕ) : ℤ :=
  A295287.P15776343000814745150.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A295287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295298.P12146886332929648330

`eq[1, (A294899(n+1)+1)%2]+1`
-/

namespace A295298.P12146886332929648330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294899 (n + 1) + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A295298.P12146886332929648330

noncomputable section

/-- A295298: Numbers n for which sum of the divisors (A000203) and the binary weight of n (A000120) have the same parity.

Offset 1, canonical program `A295298.P12146886332929648330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8257 terms. -/
def A295298 (n : ℕ) : ℤ :=
  (A295298.P12146886332929648330.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8257 terms. -/
def A295298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295299.P1082946531175352022

`eq[1, A294899(n+1)%2]+1`
-/

namespace A295299.P1082946531175352022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294899 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A295299.P1082946531175352022

noncomputable section

/-- A295299: Numbers k such that the sum of the divisors (A000203) and the binary weight of k (A000120) have different parity.

Offset 1, canonical program `A295299.P1082946531175352022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8127 terms. -/
def A295299 (n : ℕ) : ℤ :=
  (A295299.P1082946531175352022.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8127 terms. -/
def A295299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295302.P4842979664690152672

`A062402(n+1)-(n+1)`
-/

namespace A295302.P4842979664690152672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062402 (n + 1) - (n + 1 : ℤ)

end

end A295302.P4842979664690152672

noncomputable section

/-- A295302: a(n) = sigma(phi(n)) - n, where phi = A000010 and sigma = A000203.

Offset 1, canonical program `A295302.P4842979664690152672`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062402, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295302 (n : ℕ) : ℤ :=
  A295302.P4842979664690152672.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062402, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A295302.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295867.P8913751111726183930

`A000217(A047248(n+1))*A007494(A047248(n+1))`
-/

namespace A295867.P8913751111726183930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A047248 (n + 1)).toNat * A007494 (A047248 (n + 1)).toNat

end

end A295867.P8913751111726183930

noncomputable section

/-- A295867: Numbers of the form A000217(n)*A007494(n) that are divisible by 3.

Offset 0, canonical program `A295867.P8913751111726183930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8334 terms. -/
def A295867 (n : ℕ) : ℤ :=
  A295867.P8913751111726183930.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8334 terms. -/
def A295867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296058.P2087085375536391627

`A004523(A000040(n+2)+1)`
-/

namespace A296058.P2087085375536391627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A000040 (n + 2) + 1).toNat

end

end A296058.P2087085375536391627

noncomputable section

/-- A296058: Numbers k such that floor((3*k - 1)/2) is prime.

Offset 1, canonical program `A296058.P2087085375536391627`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A296058 (n : ℕ) : ℤ :=
  A296058.P2087085375536391627.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A296058.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A296066.P16015597603883370750

`A296065(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A296066.P16015597603883370750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296065 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A296066.P16015597603883370750

noncomputable section

/-- A296066: a(n) = A296065(n)/n.

Offset 1, canonical program `A296066.P16015597603883370750`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A296065, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A296066 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A296066.P16015597603883370750.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A296065, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A296066.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A296081.P5465156998017527787

`gcd(A032741(n+1), A039653(n+1))`
-/

namespace A296081.P5465156998017527787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A032741 (n + 1)) (A039653 (n + 1))

end

end A296081.P5465156998017527787

noncomputable section

/-- A296081: a(n) = gcd(tau(n)-1, sigma(n)-1), where tau = A000005 and sigma = A000203.

Offset 1, canonical program `A296081.P5465156998017527787`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032741, A039653, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A296081 (n : ℕ) : ℤ :=
  (A296081.P5465156998017527787.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032741, A039653, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A296081.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A296102.P12593933539464687046

`A001644(lcm(2, n+1))^A000034(n)`
-/

namespace A296102.P12593933539464687046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001644 (Nat.lcm 2 (n + 1)) : ℚ) ^ (A000034 n : ℤ)

end

end A296102.P12593933539464687046

noncomputable section

/-- A296102: Number of total dominating sets in the n-prism graph.

Offset 1, canonical program `A296102.P12593933539464687046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A296102 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A296102.P12593933539464687046.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A296102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296198.P2777221350177651624

`∑[A131474(n+1)-or(1, n)]`
-/

namespace A296198.P2777221350177651624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131474 (n + 1) - (Nat.lor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296198.P2777221350177651624

noncomputable section

/-- A296198: Harary index of the n X n black bishop graph.

Offset 1, canonical program `A296198.P2777221350177651624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296198 (n : ℕ) : ℤ :=
  A296198.P2777221350177651624.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296200.P13666537993982254084

`∑[(A027379(n)+1)*A008619(n)]-1`
-/

namespace A296200.P13666537993982254084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A027379 n + 1) * A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A296200.P13666537993982254084

noncomputable section

/-- A296200: Harary index of the n X n white bishop graph.

Offset 2, canonical program `A296200.P13666537993982254084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296200 (n : ℕ) : ℤ :=
  A296200.P13666537993982254084.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296200.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296209.P15000456844671825511

`char[A001591(n)]`
-/

namespace A296209.P15000456844671825511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A296209.P15000456844671825511

noncomputable section

/-- A296209: a(n) = 1 if n is a pentanacci number, 0 otherwise; characteristic function for A001591.

Offset 0, canonical program `A296209.P15000456844671825511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296209 (n : ℕ) : ℤ :=
  (A296209.P15000456844671825511.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296349.P12407460171033777792

`A083652(n)-A070939(n)`
-/

namespace A296349.P12407460171033777792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083652 n - A070939 n

end

end A296349.P12407460171033777792

noncomputable section

/-- A296349: Position where the row corresponding to the binary expansion of n starts in the (flattened) binary Champernowne triangle A030190.

Offset 0, canonical program `A296349.P12407460171033777792`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296349 (n : ℕ) : ℤ :=
  A296349.P12407460171033777792.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296354.P8428607164020722342

`∑{d}[A011782(A029837(n+1)), A003314(#)+n]`
-/

namespace A296354.P8428607164020722342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A029837 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A003314 d + (n : ℤ))

end

end A296354.P8428607164020722342

noncomputable section

/-- A296354: Official position where binary expansion of n starts in the list of binary numbers in the binary Champernowne sequence A076478.

Offset 0, canonical program `A296354.P8428607164020722342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296354 (n : ℕ) : ℤ :=
  A296354.P8428607164020722342.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296367.P5203125828263086518

`A000292(4*n+2)-A334706(n+1)`
-/

namespace A296367.P5203125828263086518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (4 * n + 2) - A334706 (n + 1)

end

end A296367.P5203125828263086518

noncomputable section

/-- A296367: Number of triangles on a 4 X n grid.

Offset 1, canonical program `A296367.P5203125828263086518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A296367 (n : ℕ) : ℤ :=
  A296367.P5203125828263086518.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A296367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296516.P6220263094053475914

`A005207(n+1)+1-A133263(n)+n`
-/

namespace A296516.P6220263094053475914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005207 (n + 1) + (1 - A133263 n + (n : ℤ))

end

end A296516.P6220263094053475914

noncomputable section

/-- A296516: a(n) is the number of terms in expanded form of bivariate polynomial Q_n, where (P_n, Q_n) is defined by: P_0 = x, Q_0 = y, P_(n+1) = P_n + Q_n, Q_(n+1) = P_n * Q_n.

Offset 0, canonical program `A296516.P6220263094053475914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A296516 (n : ℕ) : ℤ :=
  A296516.P6220263094053475914.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A296516.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296663.P10525781489669147668

`A100071(n+1)-A045621(n)`
-/

namespace A296663.P10525781489669147668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100071 (n + 1) - A045621 n

end

end A296663.P10525781489669147668

noncomputable section

/-- A296663: Row sums of A296664.

Offset 0, canonical program `A296663.P10525781489669147668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A296663 (n : ℕ) : ℤ :=
  A296663.P10525781489669147668.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. -/
def A296663.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296806.P9586310270846408031

`p?[A005408(n)*A032741(n-A053644(n))]`
-/

namespace A296806.P9586310270846408031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A032741 ((n : ℤ) - A053644 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296806.P9586310270846408031

noncomputable section

/-- A296806: Take a prime, convert it to base 2, remove its most significant digit and its least significant digit and convert it back to base 10. Sequence lists primes that generate another prime by this process.

Offset 1, canonical program `A296806.P9586310270846408031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 389 terms. -/
def A296806 (n : ℕ) : ℤ :=
  A296806.P9586310270846408031.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 389 terms. -/
def A296806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296819.P11695686937393646933

`ceil((n/2)²*A014601(n))`
-/

namespace A296819.P11695686937393646933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 2) ^ 2 * (A014601 n : ℚ)⌉

end

end A296819.P11695686937393646933

noncomputable section

/-- A296819: Maximum detour index of any bipartite graph on n nodes.

Offset 1, canonical program `A296819.P11695686937393646933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296819 (n : ℕ) : ℤ :=
  A296819.P11695686937393646933.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296922.P1686285599133092748

`A240920(n+2)`
-/

namespace A296922.P1686285599133092748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240920 (n + 2)

end

end A296922.P1686285599133092748

noncomputable section

/-- A296922: Primes p such that Legendre(-5,p) = 0 or 1.

Offset 1, canonical program `A296922.P1686285599133092748`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A240920, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A296922 (n : ℕ) : ℤ :=
  A296922.P1686285599133092748.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A240920, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A296922.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A296923.P6490900541001492370

`∪[A003626(n+1), A122487(n+1)]`
-/

namespace A296923.P6490900541001492370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A296923.P6490900541001492370

noncomputable section

/-- A296923: Primes p such that Legendre(-5,p) = -1.

Offset 1, canonical program `A296923.P6490900541001492370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296923 (n : ℕ) : ℤ :=
  (A296923.P6490900541001492370.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296924.P3946104846121365816

`∪[A033199(n+1), A084865(n+1)]`
-/

namespace A296924.P3946104846121365816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A296924.P3946104846121365816

noncomputable section

/-- A296924: Primes p such that Legendre(-6,p) = 0 or 1.

Offset 1, canonical program `A296924.P3946104846121365816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296924 (n : ℕ) : ℤ :=
  (A296924.P3946104846121365816.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296925.P9706483772686857562

`p?[xor(A047415(n+1), A131670(n))]`
-/

namespace A296925.P9706483772686857562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A047415 (n + 1)) (A131670 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296925.P9706483772686857562

noncomputable section

/-- A296925: Inert rational primes in the field Q(sqrt(-10)).

Offset 1, canonical program `A296925.P9706483772686857562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1147 terms. -/
def A296925 (n : ℕ) : ℤ :=
  A296925.P9706483772686857562.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1147 terms. -/
def A296925.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296927.P16389215036078374289

`p?[A009001(n)*A011583(2*n)]`
-/

namespace A296927.P16389215036078374289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 n * A011583 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A296927.P16389215036078374289

noncomputable section

/-- A296927: Inert rational primes in the field Q(sqrt(-13)).

Offset 1, canonical program `A296927.P16389215036078374289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A296927 (n : ℕ) : ℤ :=
  A296927.P16389215036078374289.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. -/
def A296927.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A296966.P18250778610313653592`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A296966 (n : ℕ) : ℤ :=
  A296966.P18250778610313653592.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A296966.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A296997.P8803801217566714357

`A178208(n+1)-(n+1)*A007590(n)`
-/

namespace A296997.P8803801217566714357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178208 (n + 1) - (n + 1 : ℤ) * A007590 n

end

end A296997.P8803801217566714357

noncomputable section

/-- A296997: Number of ways to place 3 points on an n X n point grid so that no point is equally distant from two other points on the same row or the same column.

Offset 1, canonical program `A296997.P8803801217566714357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296997 (n : ℕ) : ℤ :=
  A296997.P8803801217566714357.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297042.P12230498484453205082

`floor(log(log(A134986(n+6))))`
-/

namespace A297042.P12230498484453205082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.log (A134986 (n + 6) : ℝ))⌋

end

end A297042.P12230498484453205082

noncomputable section

/-- A297042: Number of pieces in the list d(m), d(m-1), ..., d(0) of base-14 digits of n; see Comments.

Offset 1, canonical program `A297042.P12230498484453205082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. -/
def A297042 (n : ℕ) : ℤ :=
  A297042.P12230498484453205082.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. -/
def A297042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297046.P2169155458548623246

`round(2*n/A188222(3*n+4))`
-/

namespace A297046.P2169155458548623246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℚ) / (A188222 (3 * n + 4) : ℚ))

end

end A297046.P2169155458548623246

noncomputable section

/-- A297046: Number of pieces in the list d(m), d(m-1), ..., d(0) of base-60 digits of n; see Comments.

Offset 1, canonical program `A297046.P2169155458548623246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A297046 (n : ℕ) : ℤ :=
  A297046.P2169155458548623246.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A297046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297109.P3226708849595875613

`A230980(A020500(n+1))`
-/

namespace A297109.P3226708849595875613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A020500 (n + 1)).toNat

end

end A297109.P3226708849595875613

noncomputable section

/-- A297109: If n is prime(k)^e, e >= 1, then a(n) = k, otherwise 0.

Offset 1, canonical program `A297109.P3226708849595875613`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297109 (n : ℕ) : ℤ :=
  A297109.P3226708849595875613.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297249.P11320292076067648954

`record[A080782(A080727(n+1))]`
-/

namespace A297249.P11320292076067648954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080782 (A080727 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297249.P11320292076067648954

noncomputable section

/-- A297249: Numbers whose base-3 digits have greater down-variation than up-variation; see Comments.

Offset 1, canonical program `A297249.P11320292076067648954`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4426 terms. -/
def A297249 (n : ℕ) : ℤ :=
  A297249.P11320292076067648954.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4426 terms. -/
def A297249.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297251.P6344271933404297145

`2*n+A157671(n+1)+3`
-/

namespace A297251.P6344271933404297145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A157671 (n + 1) + 3)

end

end A297251.P6344271933404297145

noncomputable section

/-- A297251: Numbers whose base-3 digits have greater up-variation than down-variation; see Comments.

Offset 1, canonical program `A297251.P6344271933404297145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297251 (n : ℕ) : ℤ :=
  A297251.P6344271933404297145.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297382.P17234500139329436849

`1+A209229(n+1)`
-/

namespace A297382.P17234500139329436849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A209229 (n + 1)

end

end A297382.P17234500139329436849

noncomputable section

/-- A297382: Denominator of -A023900(n)/2.

Offset 1, canonical program `A297382.P17234500139329436849`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A297382 (n : ℕ) : ℤ :=
  A297382.P17234500139329436849.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A297382.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A297405.P3296877562638287583

`(n+1)*A001576(A070939(n+1))`
-/

namespace A297405.P3296877562638287583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001576 (A070939 (n + 1)).toNat

end

end A297405.P3296877562638287583

noncomputable section

/-- A297405: Binary "cubes"; numbers whose binary representation consists of three consecutive identical blocks.

Offset 1, canonical program `A297405.P3296877562638287583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A297405 (n : ℕ) : ℤ :=
  A297405.P3296877562638287583.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A297405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297469.P17207541114748779178

`5*n+A285384(n+1)+1`
-/

namespace A297469.P17207541114748779178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) + (A285384 (n + 1) + 1)

end

end A297469.P17207541114748779178

noncomputable section

/-- A297469: Solution (bb(n)) of the system of 3 complementary equations in Comments.

Offset 0, canonical program `A297469.P17207541114748779178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297469 (n : ℕ) : ℤ :=
  A297469.P17207541114748779178.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A297469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297575.P5293567509015063131

`eq[9, A039653(n)%10]`
-/

namespace A297575.P5293567509015063131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039653 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A297575.P5293567509015063131

noncomputable section

/-- A297575: Numbers whose sum of divisors is divisible by 10.

Offset 1, canonical program `A297575.P5293567509015063131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1591 terms. -/
def A297575 (n : ℕ) : ℤ :=
  (A297575.P5293567509015063131.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1591 terms. -/
def A297575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297966.P8044726551549001468

`A027313(n)%A000040(n+1)`
-/

namespace A297966.P8044726551549001468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027313 n) (A000040 (n + 1))

end

end A297966.P8044726551549001468

noncomputable section

/-- A297966: a(n) = 3^n mod prime(n).

Offset 1, canonical program `A297966.P8044726551549001468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A297966 (n : ℕ) : ℤ :=
  A297966.P8044726551549001468.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A297966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298043.P12078883428185430853

`a(n-A053644(n))+n` with `a(0)=0`
-/

namespace A298043.P12078883428185430853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A053644 n).toNat + n

end

end A298043.P12078883428185430853

noncomputable section

/-- A298043: If n = Sum_{i=1..h} 2^b_i with b_1 > ... > b_h >= 0, then a(n) = Sum_{i=1..h} i * 2^b_i.

Offset 0, canonical program `A298043.P12078883428185430853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A298043 (n : ℕ) : ℤ :=
  (A298043.P12078883428185430853.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A298043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298375.P7387057598630148626

`∑[A230584(n+1)]`
-/

namespace A298375.P7387057598630148626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298375.P7387057598630148626

noncomputable section

/-- A298375: Partial sums of A230584.

Offset 1, canonical program `A298375.P7387057598630148626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298375 (n : ℕ) : ℤ :=
  A298375.P7387057598630148626.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A298375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298638.P11624616744762784382

`eq[1, A179081(n)+A113217(n)]`
-/

namespace A298638.P11624616744762784382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n + A113217 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298638.P11624616744762784382

noncomputable section

/-- A298638: Numbers k such that the digital sum of k and the digital root of k have opposite parity.

Offset 1, canonical program `A298638.P11624616744762784382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5115 terms. -/
def A298638 (n : ℕ) : ℤ :=
  (A298638.P11624616744762784382.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5115 terms. -/
def A298638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298823.P17623720946952442995

`A300738(n+1)+2*(n+1)`
-/

namespace A298823.P17623720946952442995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300738 (n + 1) + (2 * (n + 1) : ℤ)

end

end A298823.P17623720946952442995

noncomputable section

/-- A298823: Number of minimal total dominating sets in the n-dipyramidal graph.

Offset 1, canonical program `A298823.P17623720946952442995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 818 terms. -/
def A298823 (n : ℕ) : ℤ :=
  A298823.P17623720946952442995.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 818 terms. -/
def A298823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298865.P11176209337828573366

`eq[1, A032741(n/A010121(n))]`
-/

namespace A298865.P11176209337828573366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.roundAway ((n : ℚ) / (A010121 n : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298865.P11176209337828573366

noncomputable section

/-- A298865: The primes p and products 4*p in increasing order.

Offset 1, canonical program `A298865.P11176209337828573366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A298865 (n : ℕ) : ℤ :=
  (A298865.P11176209337828573366.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A298865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299090.P6964279361835886871

`A029837(A051903(n+1)+1)`
-/

namespace A299090.P6964279361835886871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A051903 (n + 1) + 1).toNat

end

end A299090.P6964279361835886871

noncomputable section

/-- A299090: Number of "digits" in the binary representation of the multiset of prime factors of n.

Offset 1, canonical program `A299090.P6964279361835886871`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299090 (n : ℕ) : ℤ :=
  A299090.P6964279361835886871.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299260.P6148484751298139448

`∑[A299254(n)]`
-/

namespace A299260.P6148484751298139448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299260.P6148484751298139448

noncomputable section

/-- A299260: Partial sums of A299254.

Offset 0, canonical program `A299260.P6148484751298139448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299260 (n : ℕ) : ℤ :=
  A299260.P6148484751298139448.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299264.P17963270887005284218

`∑[A299258(n)]`
-/

namespace A299264.P17963270887005284218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299258 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299264.P17963270887005284218

noncomputable section

/-- A299264: Partial sums of A299258.

Offset 0, canonical program `A299264.P17963270887005284218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299264 (n : ℕ) : ℤ :=
  A299264.P17963270887005284218.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299269.P16181950100886024288

`∑[A299268(n)]`
-/

namespace A299269.P16181950100886024288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299269.P16181950100886024288

noncomputable section

/-- A299269: Partial sums of A299268.

Offset 0, canonical program `A299269.P16181950100886024288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299269 (n : ℕ) : ℤ :=
  A299269.P16181950100886024288.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299273.P16369362884452258853

`∑[A299272(n)]`
-/

namespace A299273.P16369362884452258853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299273.P16369362884452258853

noncomputable section

/-- A299273: Partial sums of A299272.

Offset 0, canonical program `A299273.P16369362884452258853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299273 (n : ℕ) : ℤ :=
  A299273.P16369362884452258853.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299280.P2212089132227130009

`∑[A299279(n)]`
-/

namespace A299280.P2212089132227130009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299279 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299280.P2212089132227130009

noncomputable section

/-- A299280: Partial sums of A299279.

Offset 0, canonical program `A299280.P2212089132227130009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299280 (n : ℕ) : ℤ :=
  A299280.P2212089132227130009.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299284.P12485643414015177927

`∑[A299283(n)]`
-/

namespace A299284.P12485643414015177927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299284.P12485643414015177927

noncomputable section

/-- A299284: Partial sums of A299283.

Offset 0, canonical program `A299284.P12485643414015177927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299284 (n : ℕ) : ℤ :=
  A299284.P12485643414015177927.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299286.P1101752150573193452

`∑[A299285(n)]`
-/

namespace A299286.P1101752150573193452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299286.P1101752150573193452

noncomputable section

/-- A299286: Partial sums of A299285.

Offset 0, canonical program `A299286.P1101752150573193452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299286 (n : ℕ) : ℤ :=
  A299286.P1101752150573193452.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299286.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299406.P12851445645438717549

`∏{e}[n+1, A000484(#)]`
-/

namespace A299406.P12851445645438717549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000484 (Nat.factorization (f1 n) p)

end

end A299406.P12851445645438717549

noncomputable section

/-- A299406: Dirichlet g.f.: Sum_{n>0} a(n)/n^s = (zeta(s)*zeta(6*s))/(zeta(2*s)*zeta(3*s)).

Offset 1, canonical program `A299406.P12851445645438717549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299406 (n : ℕ) : ℤ :=
  A299406.P12851445645438717549.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299480.P14776688201908958445

`∑{d}[A008619(n), (#+n)%2]`
-/

namespace A299480.P14776688201908958445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d + n) % 2

end

end A299480.P14776688201908958445

noncomputable section

/-- A299480: List of pairs (a,b) where in the n-th pair, a = number of odd divisors of n and b = number of even divisors of n.

Offset 1, canonical program `A299480.P14776688201908958445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299480 (n : ℕ) : ℤ :=
  (A299480.P14776688201908958445.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A299480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299795.P4529790232242310538

`A001787(A000040(n+1))`
-/

namespace A299795.P4529790232242310538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (A000040 (n + 1)).toNat

end

end A299795.P4529790232242310538

noncomputable section

/-- A299795: Numbers of the form p*2^(p-1) where p is prime.

Offset 1, canonical program `A299795.P4529790232242310538`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A299795 (n : ℕ) : ℤ :=
  A299795.P4529790232242310538.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A299795.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A299918.P3752853738902023478

`A001006(n)%8`
-/

namespace A299918.P3752853738902023478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001006 n) 8

end

end A299918.P3752853738902023478

noncomputable section

/-- A299918: Motzkin numbers (A001006) mod 8.

Offset 0, canonical program `A299918.P3752853738902023478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A299918 (n : ℕ) : ℤ :=
  A299918.P3752853738902023478.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A299918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A299920.P4677145065747022215

`A001006(n)%6`
-/

namespace A299920.P4677145065747022215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001006 n) 6

end

end A299920.P4677145065747022215

noncomputable section

/-- A299920: Motzkin numbers (A001006) mod 6.

Offset 0, canonical program `A299920.P4677145065747022215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A299920 (n : ℕ) : ℤ :=
  A299920.P4677145065747022215.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A299920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300068.P14212122279735515571

`A300067(n)+3*floor(n/6)`
-/

namespace A300068.P14212122279735515571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300067 n + 3 * ⌊(n : ℚ) / 6⌋

end

end A300068.P14212122279735515571

noncomputable section

/-- A300068: A sequence based on the period 6 sequence A300067.

Offset 0, canonical program `A300068.P14212122279735515571`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A300067, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A300068 (n : ℕ) : ℤ :=
  A300068.P14212122279735515571.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A300067, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A300068.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A300076.P1900940538167367687

`A300075(n)+3*floor(n/6)`
-/

namespace A300076.P1900940538167367687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300075 n + 3 * ⌊(n : ℚ) / 6⌋

end

end A300076.P1900940538167367687

noncomputable section

/-- A300076: A sequence based on the period 6 sequence A300075.

Offset 0, canonical program `A300076.P1900940538167367687`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A300075, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A300076 (n : ℕ) : ℤ :=
  A300076.P1900940538167367687.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A300075, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A300076.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A300154.P12598035812061489662

`n+1-A069905(∑[char[A001399(n)]])`
-/

namespace A300154.P12598035812061489662
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A069905 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A300154.P12598035812061489662

noncomputable section

/-- A300154: Consider a spiral on an infinite hexagonal grid. a(n) is the number of cells in the part of the spiral from 1st to n-th cell that are on the same column or diagonal (in any of three directions) as the n-th cell along the spiral, including that cell itself.

Offset 1, canonical program `A300154.P12598035812061489662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A300154 (n : ℕ) : ℤ :=
  A300154.P12598035812061489662.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A300154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300270.P8067228774697964100

`(A174863(n+1)+n+1)/2`
-/

namespace A300270.P8067228774697964100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174863 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A300270.P8067228774697964100

noncomputable section

/-- A300270: a(n) = Sum_{1 <= i <= j <= n} mu(i*j)*floor((n/i)/j).

Offset 1, canonical program `A300270.P8067228774697964100`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A174863, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A300270 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A300270.P8067228774697964100.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A174863, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A300270.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A300296.P416617843077522993

`lcm(16, A115067(n+1))/16`
-/

namespace A300296.P416617843077522993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 16 (A115067 (n + 1)) : ℚ) / 16

end

end A300296.P416617843077522993

noncomputable section

/-- A300296: Numerators of n*(5 + 3*n)/(8*(1 + 3*n)*(4 + 3*n)), n >= 0.

Offset 0, canonical program `A300296.P416617843077522993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300296 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A300296.P416617843077522993.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300296.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300409.P17132749189029347074

`∑{d}[n+1, A073424(3*#-2)]`
-/

namespace A300409.P17132749189029347074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A073424 (3 * d - 2)

end

end A300409.P17132749189029347074

noncomputable section

/-- A300409: Number of centered triangular numbers dividing n.

Offset 1, canonical program `A300409.P17132749189029347074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3825 terms. -/
def A300409 (n : ℕ) : ℤ :=
  A300409.P17132749189029347074.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3825 terms. -/
def A300409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300410.P13384018005390243384

`∑{d}[n+1, A003982(#-1)]`
-/

namespace A300410.P13384018005390243384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003982 (d - 1)

end

end A300410.P13384018005390243384

noncomputable section

/-- A300410: Number of centered square numbers dividing n.

Offset 1, canonical program `A300410.P13384018005390243384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300410 (n : ℕ) : ℤ :=
  A300410.P13384018005390243384.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300657.P2454119295566594023

`∑{d}[n+1, A054024(#)]`
-/

namespace A300657.P2454119295566594023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A054024 d

end

end A300657.P2454119295566594023

noncomputable section

/-- A300657: a(n) = Sum_{d|n} sigma(d) mod d.

Offset 1, canonical program `A300657.P2454119295566594023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300657 (n : ℕ) : ℤ :=
  A300657.P2454119295566594023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300850.P17462114444134555515

`n*floor(∑[n²]*A000108(n)/2)`
-/

namespace A300850.P17462114444134555515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000108 n : ℚ) / 2⌋

end

end A300850.P17462114444134555515

noncomputable section

/-- A300850: Number of 6-cycles in the n-odd graph.

Offset 1, canonical program `A300850.P17462114444134555515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A300850 (n : ℕ) : ℤ :=
  A300850.P17462114444134555515.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A300850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300999.P4441876574690506784

`A000030(a(n-1))+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A300999.P4441876574690506784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000030 (a (n - 1)).toNat + a (n - 2)

end

end A300999.P4441876574690506784

noncomputable section

/-- A300999: Add to a(n) the first digit of a(n+1) to get a(n+2), with a(1) = 1 and a(2) = 2.

Offset 1, canonical program `A300999.P4441876574690506784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6246 terms. -/
def A300999 (n : ℕ) : ℤ :=
  A300999.P4441876574690506784.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6246 terms. -/
def A300999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301285.P11128293698623168490

`A077814(n)+A301293(n)-A008854(n+1)`
-/

namespace A301285.P11128293698623168490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077814 n + (A301293 n - A008854 (n + 1))

end

end A301285.P11128293698623168490

noncomputable section

/-- A301285: Coordination sequence for node of type V2 in "car" 2-D tiling (or net).

Offset 0, canonical program `A301285.P11128293698623168490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301285 (n : ℕ) : ℤ :=
  A301285.P11128293698623168490.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301674.P12060980078719106304

`A296910(n)+2*A087509(n)`
-/

namespace A301674.P12060980078719106304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296910 n + 2 * A087509 n

end

end A301674.P12060980078719106304

noncomputable section

/-- A301674: Coordination sequence for node of type V1 in "krs" 2-D tiling (or net).

Offset 0, canonical program `A301674.P12060980078719106304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2527 terms. -/
def A301674 (n : ℕ) : ℤ :=
  A301674.P12060980078719106304.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2527 terms. -/
def A301674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301682.P268542884370986644

`A008486(2*(n-A087509(n)))`
-/

namespace A301682.P268542884370986644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * ((n : ℤ) - A087509 n)).toNat

end

end A301682.P268542884370986644

noncomputable section

/-- A301682: Coordination sequence for node of type V1 in "krg" 2-D tiling (or net).

Offset 0, canonical program `A301682.P268542884370986644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2510 terms. -/
def A301682 (n : ℕ) : ℤ :=
  A301682.P268542884370986644.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2510 terms. -/
def A301682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301686.P8507218022111170085

`A298784(n)+A022998(A004396(n))`
-/

namespace A301686.P8507218022111170085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298784 n + A022998 (A004396 n).toNat

end

end A301686.P8507218022111170085

noncomputable section

/-- A301686: Coordination sequence for node of type V1 in "krh" 2-D tiling (or net).

Offset 0, canonical program `A301686.P8507218022111170085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2622 terms. -/
def A301686 (n : ℕ) : ℤ :=
  A301686.P8507218022111170085.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2622 terms. -/
def A301686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301688.P3981714855521435450

`A087509(n)+A008574(n)`
-/

namespace A301688.P3981714855521435450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087509 n + A008574 n

end

end A301688.P3981714855521435450

noncomputable section

/-- A301688: Coordination sequence for node of type V2 in "krh" 2-D tiling (or net).

Offset 0, canonical program `A301688.P3981714855521435450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2631 terms. -/
def A301688 (n : ℕ) : ℤ :=
  A301688.P3981714855521435450.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2631 terms. -/
def A301688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301698.P7882029233513104764

`∑[A047513(n+1)]+(n+1)²+n²`
-/

namespace A301698.P7882029233513104764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 + n ^ 2 : ℤ)

end

end A301698.P7882029233513104764

noncomputable section

/-- A301698: Partial sums of A301697.

Offset 0, canonical program `A301698.P7882029233513104764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301698 (n : ℕ) : ℤ :=
  A301698.P7882029233513104764.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301720.P13865746006239503731

`A008486(2*n-A087509(n))`
-/

namespace A301720.P13865746006239503731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 ((2 * n : ℤ) - A087509 n).toNat

end

end A301720.P13865746006239503731

noncomputable section

/-- A301720: Coordination sequence for node of type V1 in "krb" 2-D tiling (or net).

Offset 0, canonical program `A301720.P13865746006239503731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2325 terms. -/
def A301720 (n : ℕ) : ℤ :=
  A301720.P13865746006239503731.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2325 terms. -/
def A301720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301726.P1101597542674240363

`A008706(n)+A151988(n)-A004396(A151988(n))`
-/

namespace A301726.P1101597542674240363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + (A151988 n - A004396 (A151988 n).toNat)

end

end A301726.P1101597542674240363

noncomputable section

/-- A301726: Coordination sequence for node of type V2 in "kra" 2-D tiling (or net).

Offset 0, canonical program `A301726.P1101597542674240363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8335 terms. -/
def A301726 (n : ℕ) : ℤ :=
  A301726.P1101597542674240363.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8335 terms. -/
def A301726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301752.P16734824768978691247

`A131735(A052938(n))+∑[A008620(n)]`
-/

namespace A301752.P16734824768978691247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 (A052938 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301752.P16734824768978691247

noncomputable section

/-- A301752: Clique covering number of the n-triangular grid graph.

Offset 1, canonical program `A301752.P16734824768978691247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301752 (n : ℕ) : ℤ :=
  A301752.P16734824768978691247.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301789.P7146991118033482218

`A005683(n+9)-A005682(n+5)`
-/

namespace A301789.P7146991118033482218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005683 (n + 9) - A005682 (n + 5)

end

end A301789.P7146991118033482218

noncomputable section

/-- A301789: Number of n X 7 0..1 arrays with every element equal to 0 or 1 horizontally or antidiagonally adjacent elements, with upper left element zero.

Offset 1, canonical program `A301789.P7146991118033482218`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 405 terms. -/
def A301789 (n : ℕ) : ℤ :=
  A301789.P7146991118033482218.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 405 terms. -/
def A301789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301797.P3853926274997277584

`A002450(A000040(n+1))`
-/

namespace A301797.P3853926274997277584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 (A000040 (n + 1)).toNat

end

end A301797.P3853926274997277584

noncomputable section

/-- A301797: a(n) = (4^prime(n) - 1)/3.

Offset 1, canonical program `A301797.P3853926274997277584`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A301797 (n : ℕ) : ℤ :=
  A301797.P3853926274997277584.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A301797.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A301812.P16700024061125117281

`A003627(n+1)²-1`
-/

namespace A301812.P16700024061125117281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1) ^ 2 - 1

end

end A301812.P16700024061125117281

noncomputable section

/-- A301812: Numbers of the form p^2 - 1 where p is a prime of the form 3*k-1 (A003627).

Offset 1, canonical program `A301812.P16700024061125117281`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003627, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A301812 (n : ℕ) : ℤ :=
  A301812.P16700024061125117281.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003627, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A301812.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A301994.P5549587833774915005

`∑[A049219(n+1)]`
-/

namespace A301994.P5549587833774915005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301994.P5549587833774915005

noncomputable section

/-- A301994: Number of n X 3 0..1 arrays with every element equal to 1, 2 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

Offset 1, canonical program `A301994.P5549587833774915005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A301994 (n : ℕ) : ℤ :=
  A301994.P5549587833774915005.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A301994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302323.P569987669017276639

`2*(A131577(n)+A028859(n))`
-/

namespace A302323.P569987669017276639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A131577 n + A028859 n)

end

end A302323.P569987669017276639

noncomputable section

/-- A302323: Number of 2Xn 0..1 arrays with every element equal to 0, 1, 2 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

Offset 1, canonical program `A302323.P569987669017276639`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. -/
def A302323 (n : ℕ) : ℤ :=
  A302323.P569987669017276639.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. -/
def A302323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302390.P15472306667370707159

`round(A016789(n+2)²/A007494(n+3))`
-/

namespace A302390.P15472306667370707159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016789 (n + 2) ^ 2 : ℚ) / (A007494 (n + 3) : ℚ))

end

end A302390.P15472306667370707159

noncomputable section

/-- A302390: Triameter of the n-cube-connected cycle graph.

Offset 3, canonical program `A302390.P15472306667370707159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A302390 (n : ℕ) : ℤ :=
  A302390.P15472306667370707159.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A302390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302392.P7698044016696591427

`(n+1)²+2*A008733(n)`
-/

namespace A302392.P7698044016696591427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + 2 * A008733 n

end

end A302392.P7698044016696591427

noncomputable section

/-- A302392: Number of odd parts in the partitions of 3n into 3 parts.

Offset 1, canonical program `A302392.P7698044016696591427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302392 (n : ℕ) : ℤ :=
  A302392.P7698044016696591427.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302393.P17459900131682349134

`A238411(n+1)+A166515(n)`
-/

namespace A302393.P17459900131682349134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238411 (n + 1) + A166515 n

end

end A302393.P17459900131682349134

noncomputable section

/-- A302393: Number of even parts in the partitions of 3n into 3 parts.

Offset 1, canonical program `A302393.P17459900131682349134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302393 (n : ℕ) : ℤ :=
  A302393.P17459900131682349134.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302406.P10786457506837801270

`A104563(n)-A211521(n)`
-/

namespace A302406.P10786457506837801270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104563 n - A211521 n

end

end A302406.P10786457506837801270

noncomputable section

/-- A302406: Total domination number of the n X n torus grid graph.

Offset 0, canonical program `A302406.P10786457506837801270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302406 (n : ℕ) : ℤ :=
  A302406.P10786457506837801270.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302559.P17552720317405693606

`∑[A092183(n+1)]`
-/

namespace A302559.P17552720317405693606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302559.P17552720317405693606

noncomputable section

/-- A302559: Partial sums of A092183.

Offset 1, canonical program `A302559.P17552720317405693606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302559 (n : ℕ) : ℤ :=
  A302559.P17552720317405693606.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302559.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302653.P12437367069294794384

`gcd(A004442(A057979(n))², A079097(n))`
-/

namespace A302653.P12437367069294794384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004442 (A057979 n).toNat ^ 2) (A079097 n)

end

end A302653.P12437367069294794384

noncomputable section

/-- A302653: Number of minimum total dominating sets in the n-cycle graph.

Offset 1, canonical program `A302653.P12437367069294794384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302653 (n : ℕ) : ℤ :=
  (A302653.P12437367069294794384.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A302653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302692.P6992755302281173742

`p?[A063992(p?[2*n+1])]`
-/

namespace A302692.P6992755302281173742
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063992 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A302692.P6992755302281173742

noncomputable section

/-- A302692: Primes p that are the sum of another prime q and the greatest k such that k! < p.

Offset 1, canonical program `A302692.P6992755302281173742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. -/
def A302692 (n : ℕ) : ℤ :=
  A302692.P6992755302281173742.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 192 terms. -/
def A302692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A302777.P12979743537694390003

`A209229(A100995(n+1))`
-/

namespace A302777.P12979743537694390003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A100995 (n + 1)).toNat

end

end A302777.P12979743537694390003

noncomputable section

/-- A302777: a(n) = 1 if n is of the form p^(2^k) where p is prime and k >= 0, otherwise 0.

Offset 1, canonical program `A302777.P12979743537694390003`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100995, A209229, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A302777 (n : ℕ) : ℤ :=
  A302777.P12979743537694390003.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100995, A209229, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A302777.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A303054.P5112954172130356619

`A347633(n+1)²`
-/

namespace A303054.P5112954172130356619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347633 (n + 1) ^ 2

end

end A303054.P5112954172130356619

noncomputable section

/-- A303054: Number of minimum total dominating sets in the n-ladder graph.

Offset 1, canonical program `A303054.P5112954172130356619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303054 (n : ℕ) : ℤ :=
  A303054.P5112954172130356619.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303226.P6762589886093325207

`Δ[A193744(n)]+Δ[A193744(n)]²`
-/

namespace A303226.P6762589886093325207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193744 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193744 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (f2 (n + 1) - f2 n) ^ 2

end

end A303226.P6762589886093325207

noncomputable section

/-- A303226: Number of minimal total dominating sets in the n-gear graph.

Offset 1, canonical program `A303226.P6762589886093325207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 409 terms. -/
def A303226 (n : ℕ) : ℤ :=
  A303226.P6762589886093325207.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 409 terms. -/
def A303226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303269.P14236862448181407010

`∑{digits}[n, A181983(#²)]`
-/

namespace A303269.P14236862448181407010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A181983 (x ^ 2)).sum

end

end A303269.P14236862448181407010

noncomputable section

/-- A303269: Sum of squares of odd digits minus sum of squares of even digits of n.

Offset 0, canonical program `A303269.P14236862448181407010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303269 (n : ℕ) : ℤ :=
  A303269.P14236862448181407010.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303383.P771961285447132481

`∑[A309335(n)]`
-/

namespace A303383.P771961285447132481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303383.P771961285447132481

noncomputable section

/-- A303383: Total volume of all cubes with side length q such that n = p + q and p <= q.

Offset 1, canonical program `A303383.P771961285447132481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303383 (n : ℕ) : ℤ :=
  A303383.P771961285447132481.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303537.P2582435639910148094

`(A304933(A028310(n))+A304933(n))/A028310(n)`
-/

namespace A303537.P2582435639910148094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304933 (A028310 n).toNat + A304933 n : ℚ) / (A028310 n : ℚ)

end

end A303537.P2582435639910148094

noncomputable section

/-- A303537: Expansion of ((1 + 4*x)/(1 - 4*x))^(1/4).

Offset 0, canonical program `A303537.P2582435639910148094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A303537 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A303537.P2582435639910148094.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A303537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303649.P3768676354070009238

`∑[∑[A280186(n)]]+C(n, 3)`
-/

namespace A303649.P3768676354070009238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280186 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose n 3 : ℤ)

end

end A303649.P3768676354070009238

noncomputable section

/-- A303649: Number of involutions of [n] having exactly one peak.

Offset 0, canonical program `A303649.P3768676354070009238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303649 (n : ℕ) : ℤ :=
  A303649.P3768676354070009238.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303649.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303768.P18072890022727355273

`or(a(n%A053644(n))+1, A053644(n))` with `a(0)=0`
-/

namespace A303768.P18072890022727355273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (a (Int.tmod (n : ℤ) (A053644 n)).toNat + 1) (A053644 n)

end

end A303768.P18072890022727355273

noncomputable section

/-- A303768: Inverse permutation to A303767.

Offset 0, canonical program `A303768.P18072890022727355273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303768 (n : ℕ) : ℤ :=
  A303768.P18072890022727355273.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A303768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A303972.P11388176725645930891

`(n+1)*A303873(n+1)`
-/

namespace A303972.P11388176725645930891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A303873 (n + 1)

end

end A303972.P11388176725645930891

noncomputable section

/-- A303972: Total volume of all cubes with side length n which can be split such that n = p + q, p divides q and p < q.

Offset 1, canonical program `A303972.P11388176725645930891`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A303873, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A303972 (n : ℕ) : ℤ :=
  A303972.P11388176725645930891.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A303873, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A303972.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A304143.P16625252342008015632

`A297860(n+3)+A171449(n)`
-/

namespace A304143.P16625252342008015632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297860 (n + 3) + A171449 n

end

end A304143.P16625252342008015632

noncomputable section

/-- A304143: Number of nX2 0..1 arrays with every element unequal to 1, 2, 3 or 6 king-move adjacent elements, with upper left element zero.

Offset 1, canonical program `A304143.P16625252342008015632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 281 terms. -/
def A304143 (n : ℕ) : ℤ :=
  A304143.P16625252342008015632.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 281 terms. -/
def A304143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304203.P18269401981959007266

`∏{p}[n+1, #^A000040(val(n+1, #))]`
-/

namespace A304203.P18269401981959007266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (p : ℚ) ^ (A000040 (SequenceMachineLib.valuation (n + 1) p) : ℤ)

end

end A304203.P18269401981959007266

noncomputable section

/-- A304203: If n = Product (p_j^k_j) then a(n) = Product (p_j^prime(k_j)).

Offset 1, canonical program `A304203.P18269401981959007266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304203 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A304203.P18269401981959007266.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304251.P1616102808794678672

`∑{p}[n+1, A000040(#)^val(n+1, #)]`
-/

namespace A304251.P1616102808794678672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000040 p ^ SequenceMachineLib.valuation (n + 1) p

end

end A304251.P1616102808794678672

noncomputable section

/-- A304251: If n = Product (p_j^k_j) then a(n) = Sum (prime(p_j)^k_j).

Offset 1, canonical program `A304251.P1616102808794678672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304251 (n : ℕ) : ℤ :=
  A304251.P1616102808794678672.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304335.P10310758909339580982

`A120390(n-(2-n)%(n+1)+1)`
-/

namespace A304335.P10310758909339580982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120390 ((n : ℤ) - Int.tmod (2 - (n : ℤ)) (n + 1 : ℤ) + 1).toNat

end

end A304335.P10310758909339580982

noncomputable section

/-- A304335: Sum of digits of (2*n-1)!!.

Offset 0, canonical program `A304335.P10310758909339580982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A304335 (n : ℕ) : ℤ :=
  A304335.P10310758909339580982.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A304335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304356.P16489054736704604555

`p?[A038346(n+4)-A038346(n+1)]`
-/

namespace A304356.P16489054736704604555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038346 (n + 4) - A038346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A304356.P16489054736704604555

noncomputable section

/-- A304356: Primes that are the sum of three consecutive primes == 1 (mod 4).

Offset 1, canonical program `A304356.P16489054736704604555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2266 terms. -/
def A304356 (n : ℕ) : ℤ :=
  A304356.P16489054736704604555.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2266 terms. -/
def A304356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304358.P9965989991105738390

`p?[A038347(n+4)-A038347(n+1)]`
-/

namespace A304358.P9965989991105738390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038347 (n + 4) - A038347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A304358.P9965989991105738390

noncomputable section

/-- A304358: Primes that are the sum of three consecutive primes == 3 (mod 4).

Offset 1, canonical program `A304358.P9965989991105738390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2216 terms. -/
def A304358 (n : ℕ) : ℤ :=
  A304358.P9965989991105738390.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2216 terms. -/
def A304358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304404.P2880738735894886889

`A062509(n+1)/(n+1)`
-/

namespace A304404.P2880738735894886889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062509 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A304404.P2880738735894886889

noncomputable section

/-- A304404: If n = Product (p_j^k_j) then a(n) = Product (n/p_j^k_j).

Offset 1, canonical program `A304404.P2880738735894886889`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062509, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304404 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A304404.P2880738735894886889.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062509, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304404.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A304484.P2454143240847601615

`A033270(n+1)*A033270(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A304484.P2454143240847601615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (n + 1) * A033270 (2 * n + 1)

end

end A304484.P2454143240847601615

noncomputable section

/-- A304484: a(n) = A033270(n)*A033270(2n), where A033270 counts the odd primes.

Offset 1, canonical program `A304484.P2454143240847601615`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033270, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304484 (n : ℕ) : ℤ :=
  A304484.P2454143240847601615.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033270, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304484.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A304583.P6719767480601290813

`A199264(8*n+9)+A000035(n+1)`
-/

namespace A304583.P6719767480601290813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199264 (8 * n + 9) + A000035 (n + 1)

end

end A304583.P6719767480601290813

noncomputable section

/-- A304583: Period 18: repeat 1,8,3,6,5,4,7,2,9,0,9,2,7,4,5,6,3,8.

Offset 1, canonical program `A304583.P6719767480601290813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A304583 (n : ℕ) : ℤ :=
  A304583.P6719767480601290813.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1249 terms. -/
def A304583.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304586.P17678521593836003710

`A174344(n+1)+n*A274923(n+1)`
-/

namespace A304586.P17678521593836003710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (n + 1) + (n : ℤ) * A274923 (n + 1)

end

end A304586.P17678521593836003710

noncomputable section

/-- A304586: A linear mapping a(n) = x + d*n of pairs of integers (x,d), where the pairs are enumerated by the counterclockwise square spiral (an axis-parallel number spiral) starting at 0.

Offset 0, canonical program `A304586.P17678521593836003710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304586 (n : ℕ) : ℤ :=
  A304586.P17678521593836003710.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304588.P15314905550837807375

`∑[A099892(n)+1]+2`
-/

namespace A304588.P15314905550837807375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099892 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A304588.P15314905550837807375

noncomputable section

/-- A304588: Length of shortest prefix of the Thue-Morse word (A010060) such that some length-n block appears twice.

Offset 1, canonical program `A304588.P15314905550837807375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A304588 (n : ℕ) : ℤ :=
  A304588.P15314905550837807375.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A304588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304909.P3593984619417138488

`n*A018819(n)`
-/

namespace A304909.P3593984619417138488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A018819 n

end

end A304909.P3593984619417138488

noncomputable section

/-- A304909: Expansion of x * (d/dx) Product_{k>=0} 1/(1 - x^(2^k)).

Offset 0, canonical program `A304909.P3593984619417138488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304909 (n : ℕ) : ℤ :=
  A304909.P3593984619417138488.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304973.P4987803302753247775

`A182522(n)-A016116(n)`
-/

namespace A304973.P4987803302753247775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 n - A016116 n

end

end A304973.P4987803302753247775

noncomputable section

/-- A304973: Number of achiral color patterns (set partitions) for a row or loop of length n using exactly 3 colors (sets).

Offset 0, canonical program `A304973.P4987803302753247775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A304973 (n : ℕ) : ℤ :=
  A304973.P4987803302753247775.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. -/
def A304973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304974.P17883165039520731159

`A305750(n)-A182522(n)`
-/

namespace A304974.P17883165039520731159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305750 n - A182522 n

end

end A304974.P17883165039520731159

noncomputable section

/-- A304974: Number of achiral color patterns (set partitions) for a row or loop of length n using exactly 4 colors (sets).

Offset 0, canonical program `A304974.P17883165039520731159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A304974 (n : ℕ) : ℤ :=
  A304974.P17883165039520731159.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A304974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304975.P8256716132214659542

`A305751(n)-A305750(n)`
-/

namespace A304975.P8256716132214659542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305751 n - A305750 n

end

end A304975.P8256716132214659542

noncomputable section

/-- A304975: Number of achiral color patterns (set partitions) for a row or loop of length n using exactly 5 colors (sets).

Offset 0, canonical program `A304975.P8256716132214659542`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. -/
def A304975 (n : ℕ) : ℤ :=
  A304975.P8256716132214659542.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. -/
def A304975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305031.P1662226059483018231

`A047471(n+1)*A063886(n)`
-/

namespace A305031.P1662226059483018231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047471 (n + 1) * A063886 n

end

end A305031.P1662226059483018231

noncomputable section

/-- A305031: Expansion of ((1 + 2*x)/(1 - 2*x))^(3/2).

Offset 0, canonical program `A305031.P1662226059483018231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. -/
def A305031 (n : ℕ) : ℤ :=
  A305031.P1662226059483018231.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. -/
def A305031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305189.P521679482728346287

`∑[A117571(n)^abs(A057079(n))]`
-/

namespace A305189.P521679482728346287
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117571 n : ℚ) ^ (|A057079 n| : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A305189.P521679482728346287

noncomputable section

/-- A305189: a(n) = 1*2 + 3 + 4*5 + 6 + 7*8 + 9 + 10*11 + 12 + ... + (up to n).

Offset 1, canonical program `A305189.P521679482728346287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305189 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A305189.P521679482728346287.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305233.P7132812030500803874

`a(n-1)+C(n, A001405(a(n-1)))` with `a(0)=1`
-/

namespace A305233.P7132812030500803874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose n (A001405 (a (n - 1))).toNat

end

end A305233.P7132812030500803874

noncomputable section

/-- A305233: Smallest k such that binomial(k, floor(k/2)) >= n.

Offset 1, canonical program `A305233.P7132812030500803874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305233 (n : ℕ) : ℤ :=
  (A305233.P7132812030500803874.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305289.P18362137731492137850

`A001675(2*n)`
-/

namespace A305289.P18362137731492137850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001675 (2 * n)

end

end A305289.P18362137731492137850

noncomputable section

/-- A305289: Powers of 2*Pi, rounded to the nearest integer.

Offset 0, canonical program `A305289.P18362137731492137850`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305289 (n : ℕ) : ℤ :=
  A305289.P18362137731492137850.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A305289.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A305378.P7773183286010594477

`A003726(2*(n+1))`
-/

namespace A305378.P7773183286010594477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003726 (2 * (n + 1))

end

end A305378.P7773183286010594477

noncomputable section

/-- A305378: Tribonacci representation of 2n+1, written in base 10.

Offset 0, canonical program `A305378.P7773183286010594477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A305378 (n : ℕ) : ℤ :=
  A305378.P7773183286010594477.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A305378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305491.P13852021593725893787

`A048788(n)/gcd(A016116(n), A048788(n))`
-/

namespace A305491.P13852021593725893787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048788 n : ℚ) / (Int.gcd (A016116 n) (A048788 n) : ℚ)

end

end A305491.P13852021593725893787

noncomputable section

/-- A305491: a(n) = numerator(r(n)) where r(n) = (((1/2)*(sqrt(3) + 1))^n - ((1/2)*(sqrt(3) - 1))^n * cos(Pi*n))/sqrt(3).

Offset 0, canonical program `A305491.P13852021593725893787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 352 terms. -/
def A305491 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A305491.P13852021593725893787.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 352 terms. -/
def A305491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305609.P7902511574484490471

`floor(A303538(n)/2)`
-/

namespace A305609.P7902511574484490471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A303538 n : ℚ) / 2⌋

end

end A305609.P7902511574484490471

noncomputable section

/-- A305609: Expansion of 1/2 * (((1 + 8*x)/(1 - 8*x))^(1/8) - 1).

Offset 0, canonical program `A305609.P7902511574484490471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A305609 (n : ℕ) : ℤ :=
  A305609.P7902511574484490471.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A305609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305728.P16486474473058137855

`(2*A055131(n))^3`
-/

namespace A305728.P16486474473058137855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A055131 n) ^ 3

end

end A305728.P16486474473058137855

noncomputable section

/-- A305728: Numbers of the form 216*p^3, where p is a Pythagorean prime (A002144).

Offset 1, canonical program `A305728.P16486474473058137855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305728 (n : ℕ) : ℤ :=
  A305728.P16486474473058137855.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305847.P37911868099262503

`A005378(A005206(n))+n`
-/

namespace A305847.P37911868099262503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (A005206 n).toNat + (n : ℤ)

end

end A305847.P37911868099262503

noncomputable section

/-- A305847: Solution a() of the complementary equation a(n) + b(n) = 5*n, where a(1) = 1. See Comments.

Offset 1, canonical program `A305847.P37911868099262503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305847 (n : ℕ) : ℤ :=
  A305847.P37911868099262503.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305848.P16122553387200692946

`abs(A004766(n+1)-A005378(A060143(n+1)))`
-/

namespace A305848.P16122553387200692946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004766 (n + 1) - A005378 (A060143 (n + 1)).toNat|

end

end A305848.P16122553387200692946

noncomputable section

/-- A305848: Solution b() of the complementary equation a(n) + b(n) = 5n, where a(1) = 1. See Comments.

Offset 1, canonical program `A305848.P16122553387200692946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305848 (n : ℕ) : ℤ :=
  A305848.P16122553387200692946.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305880.P16964776846539863070

`or(3, A322925(n+7)-13)`
-/

namespace A305880.P16964776846539863070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A322925 (n + 7) - 13)

end

end A305880.P16964776846539863070

noncomputable section

/-- A305880: A base 3/2 reverse sorted Fibonacci sequence that starts with terms 2211 and 2211. The terms are interpreted as numbers written in base 3/2. To get a(n+2), add a(n) and a(n+1), write the result in base 3/2 and sort the digits into decreasing order, omitting all zeros.

Offset 1, canonical program `A305880.P16964776846539863070`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 194 terms. -/
def A305880 (n : ℕ) : ℤ :=
  A305880.P16964776846539863070.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 194 terms. -/
def A305880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A305930.P16091158982295753828

`∑{digits}[3^n, A000007(#)]`
-/

namespace A305930.P16091158982295753828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A000007 x).sum

end

end A305930.P16091158982295753828

noncomputable section

/-- A305930: Number of digits '0' in 3^n (in base 10).

Offset 0, canonical program `A305930.P16091158982295753828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A305930 (n : ℕ) : ℤ :=
  A305930.P16091158982295753828.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A305930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306286.P7034646562799688644

`a(A029578(n))*A070939(A093178(n))` with `a(0)=1, a(1)=1`
-/

namespace A306286.P7034646562799688644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A029578 n).toNat * A070939 (A093178 n).toNat

end

end A306286.P7034646562799688644

noncomputable section

/-- A306286: a(n) is the product of the positions of the ones in the binary expansion of n (the most significant bit having position 1).

Offset 0, canonical program `A306286.P7034646562799688644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306286 (n : ℕ) : ℤ :=
  A306286.P7034646562799688644.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306286.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306591.P16637579630859096376

`A145979(p?[a(n-1)+2]-1)` with `a(0)=2, a(1)=1`
-/

namespace A306591.P16637579630859096376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145979 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1)

end

end A306591.P16637579630859096376

noncomputable section

/-- A306591: a(n) is the denominator of 1/2 - 1/(prime(n)+1), where prime(n) is the n-th prime.

Offset 1, canonical program `A306591.P16637579630859096376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A306591 (n : ℕ) : ℤ :=
  A306591.P16637579630859096376.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A306591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306916.P10721873889550371981

`∏{p}[n+1, A000040(val(n+1, #))^#]`
-/

namespace A306916.P10721873889550371981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000040 (SequenceMachineLib.valuation (n + 1) p) ^ p

end

end A306916.P10721873889550371981

noncomputable section

/-- A306916: a(1)=1; for n > 1 replace each p^k in the prime factorization of n with prime(k)^p where prime(k) denotes the k-th prime number.

Offset 1, canonical program `A306916.P10721873889550371981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A306916 (n : ℕ) : ℤ :=
  A306916.P10721873889550371981.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A306916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307314.P7749159603707739801

`∑{d}[n+1, A000007(and(#, 2*(n+1)))]`
-/

namespace A307314.P7749159603707739801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000007 (Nat.land d (2 * (n + 1)))

end

end A307314.P7749159603707739801

noncomputable section

/-- A307314: Number of divisors d of 2n such that adding d to 2n in binary requires no carries.

Offset 1, canonical program `A307314.P7749159603707739801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307314 (n : ℕ) : ℤ :=
  A307314.P7749159603707739801.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307420.P2385378640941051895

`∏{e}[n+1, A115360(#)]`
-/

namespace A307420.P2385378640941051895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A115360 (Nat.factorization (f1 n) p)

end

end A307420.P2385378640941051895

noncomputable section

/-- A307420: Dirichlet g.f.: zeta(2*s) * zeta(3*s) / zeta(s).

Offset 1, canonical program `A307420.P2385378640941051895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307420 (n : ℕ) : ℤ :=
  A307420.P2385378640941051895.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307421.P10510512587857110973

`abs(A210826(n+1))`
-/

namespace A307421.P10510512587857110973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A210826 (n + 1)|

end

end A307421.P10510512587857110973

noncomputable section

/-- A307421: Dirichlet g.f.: zeta(s) * zeta(3*s) / zeta(2*s).

Offset 1, canonical program `A307421.P10510512587857110973`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A210826, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A307421 (n : ℕ) : ℤ :=
  A307421.P10510512587857110973.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A210826, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A307421.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A307427.P355744781384453444

`∏{e}[n+1, A131756(#²)]`
-/

namespace A307427.P355744781384453444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A131756 (Nat.factorization (f1 n) p ^ 2)

end

end A307427.P355744781384453444

noncomputable section

/-- A307427: Dirichlet g.f.: zeta(3*s) / (zeta(s) * zeta(2*s)).

Offset 1, canonical program `A307427.P355744781384453444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307427 (n : ℕ) : ℤ :=
  A307427.P355744781384453444.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307428.P15057610598647432221

`∑{d}[n+1, A271102(#)*A303915((n+1)/#)]`
-/

namespace A307428.P15057610598647432221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A271102 d * A303915 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A307428.P15057610598647432221

noncomputable section

/-- A307428: Dirichlet g.f.: zeta(2*s) / (zeta(s) * zeta(3*s)).

Offset 1, canonical program `A307428.P15057610598647432221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307428 (n : ℕ) : ℤ :=
  A307428.P15057610598647432221.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307466.P4025654233009935254

`∑[A085810(A028310(n))-A166444(n)]`
-/

namespace A307466.P4025654233009935254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085810 (A028310 n).toNat - A166444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307466.P4025654233009935254

noncomputable section

/-- A307466: Number of Catalan words of length n avoiding the pattern 210.

Offset 0, canonical program `A307466.P4025654233009935254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. -/
def A307466 (n : ℕ) : ℤ :=
  A307466.P4025654233009935254.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. -/
def A307466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307513.P10097634644987608462

`∑[A022934(n)]`
-/

namespace A307513.P10097634644987608462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307513.P10097634644987608462

noncomputable section

/-- A307513: Beatty sequence for 1/log(2).

Offset 1, canonical program `A307513.P10097634644987608462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307513 (n : ℕ) : ℤ :=
  A307513.P10097634644987608462.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307513.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307612.P12442353200099132177

`∑[A307485(n)]`
-/

namespace A307612.P12442353200099132177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307485 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A307612.P12442353200099132177

noncomputable section

/-- A307612: Partial sums of the permutation A307485: one odd, two even, four odd, eight even, etc.

Offset 0, canonical program `A307612.P12442353200099132177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307612 (n : ℕ) : ℤ :=
  A307612.P12442353200099132177.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307612.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307717.P16759504569882169610

`lcm(A056594(n), A218035(A008619(n)))`
-/

namespace A307717.P16759504569882169610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 n) (A218035 (A008619 n).toNat)

end

end A307717.P16759504569882169610

noncomputable section

/-- A307717: Number of palindromic squares, k^2, of length n such that k is also palindromic.

Offset 1, canonical program `A307717.P16759504569882169610`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307717 (n : ℕ) : ℤ :=
  (A307717.P16759504569882169610.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307721.P17612075571818422005

`A302128(A005350(n+1))-A005350(A302128(n+1))`
-/

namespace A307721.P17612075571818422005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302128 (A005350 (n + 1)).toNat - A005350 (A302128 (n + 1)).toNat

end

end A307721.P17612075571818422005

noncomputable section

/-- A307721: a(n) = x(y(n)) - y(x(n)) where x = A302128 and y = A005350.

Offset 1, canonical program `A307721.P17612075571818422005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307721 (n : ℕ) : ℤ :=
  A307721.P17612075571818422005.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A307721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307789.P13334902009020321620

`A005773(abs(1-n))`
-/

namespace A307789.P13334902009020321620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 |1 - (n : ℤ)|.toNat

end

end A307789.P13334902009020321620

noncomputable section

/-- A307789: Number of valid hook configurations of permutations of [n] that avoid the patterns 231 and 1243.

Offset 0, canonical program `A307789.P13334902009020321620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A307789 (n : ℕ) : ℤ :=
  A307789.P13334902009020321620.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. -/
def A307789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307913.P4133678735760456041

`eq[gcd(3, A051801(n))+n, n+1]`
-/

namespace A307913.P4133678735760456041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A051801 n) + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A307913.P4133678735760456041

noncomputable section

/-- A307913: Numbers without the decimal digits 3, 6 and 9.

Offset 1, canonical program `A307913.P4133678735760456041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2402 terms. -/
def A307913 (n : ℕ) : ℤ :=
  (A307913.P4133678735760456041.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2402 terms. -/
def A307913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307939.P17534156971581480400

`(A130773(n+1)+A027689(2*n))*A103517(n+2)`
-/

namespace A307939.P17534156971581480400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130773 (n + 1) + A027689 (2 * n)) * A103517 (n + 2)

end

end A307939.P17534156971581480400

noncomputable section

/-- A307939: Number of (undirected) Hamiltonian paths in the n-dipyramidal graph.

Offset 3, canonical program `A307939.P17534156971581480400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A307939 (n : ℕ) : ℤ :=
  A307939.P17534156971581480400.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A307939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308034.P4024146489496561086

`A069905(n+1)-floor(sqrt(10%gcd(12, n+1)))`
-/

namespace A308034.P4024146489496561086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (n + 1) - (Nat.sqrt (10 % Nat.gcd 12 (n + 1)) : ℤ)

end

end A308034.P4024146489496561086

noncomputable section

/-- A308034: Number of partitions of n into 3 parts with at least 1 part that is a nondivisor of n.

Offset 1, canonical program `A308034.P4024146489496561086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308034 (n : ℕ) : ℤ :=
  A308034.P4024146489496561086.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308066.P14476082537782703603

`A005044(∑[n]%(n+1))`
-/

namespace A308066.P14476082537782703603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1))

end

end A308066.P14476082537782703603

noncomputable section

/-- A308066: Number of triangles with perimeter n whose side lengths are even.

Offset 1, canonical program `A308066.P14476082537782703603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308066 (n : ℕ) : ℤ :=
  A308066.P14476082537782703603.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308068.P7266491862810550122

`floor(A008795(floor(n/2))/3)`
-/

namespace A308068.P7266491862810550122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008795 ⌊(n : ℚ) / 2⌋.toNat : ℚ) / 3⌋

end

end A308068.P7266491862810550122

noncomputable section

/-- A308068: Number of integer-sided triangles with perimeter n whose longest side length is even.

Offset 1, canonical program `A308068.P7266491862810550122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308068 (n : ℕ) : ℤ :=
  A308068.P7266491862810550122.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308090.P3714707824000917373

`C(n+2, A113523(n+2))`
-/

namespace A308090.P3714707824000917373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) (A113523 (n + 2)).toNat

end

end A308090.P3714707824000917373

noncomputable section

/-- A308090: a(n) = gcd(2^n + n!, 3^n + n!, n+1).

Offset 1, canonical program `A308090.P3714707824000917373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4849 terms. -/
def A308090 (n : ℕ) : ℤ :=
  (A308090.P3714707824000917373.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4849 terms. -/
def A308090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308102.P16020769950966667102

`(n+1)*A211540(ceil(xor(1, n)/2))`
-/

namespace A308102.P16020769950966667102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A211540 ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat

end

end A308102.P16020769950966667102

noncomputable section

/-- A308102: Sum of the perimeters of all integer-sided scalene triangles with perimeter n.

Offset 1, canonical program `A308102.P16020769950966667102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308102 (n : ℕ) : ℤ :=
  A308102.P16020769950966667102.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308150.P6415626369365081280

`eq[3, a(A054024(n))+1]` with `a(0)=4, a(1)=1`
-/

namespace A308150.P6415626369365081280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4, 1] fun n f2 =>
  f2 (A054024 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A308150.P6415626369365081280

noncomputable section

/-- A308150: Numbers k such that sigma(k) mod k is prime, where sigma = A000203.

Offset 1, canonical program `A308150.P6415626369365081280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4677 terms. -/
def A308150 (n : ℕ) : ℤ :=
  (A308150.P6415626369365081280.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4677 terms. -/
def A308150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308158.P1496558067925969562

`A211524(A271324(n+1)+2)`
-/

namespace A308158.P1496558067925969562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211524 (A271324 (n + 1) + 2).toNat

end

end A308158.P1496558067925969562

noncomputable section

/-- A308158: Sum of the smallest side lengths of all integer-sided isosceles triangles with perimeter n.

Offset 1, canonical program `A308158.P1496558067925969562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7997 terms. -/
def A308158 (n : ℕ) : ℤ :=
  A308158.P1496558067925969562.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7997 terms. -/
def A308158.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308159.P13651073618713551582

`A008619(n)*A059169(n+1)-A005044(n+1)`
-/

namespace A308159.P13651073618713551582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A059169 (n + 1) - A005044 (n + 1)

end

end A308159.P13651073618713551582

noncomputable section

/-- A308159: Sum of the largest sides of all integer-sided isosceles triangles with perimeter n.

Offset 1, canonical program `A308159.P13651073618713551582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308159 (n : ℕ) : ℤ :=
  A308159.P13651073618713551582.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308159.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308183.P3604475339994477846

`Δ[comp[A005187(comp[4*n])]]-1`
-/

namespace A308183.P3604475339994477846
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A308183.P3604475339994477846

noncomputable section

/-- A308183: S_oo, where S_1 = bc, S_n = S_{n-1} a^n S_{n-1} for n > 1, over the alphabet {a,b,c} = {0,1,2}.

Offset 1, canonical program `A308183.P3604475339994477846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A308183 (n : ℕ) : ℤ :=
  A308183.P3604475339994477846.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A308183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308186.P4188807853655826539

`A308185(n+1)+1`
-/

namespace A308186.P4188807853655826539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308185 (n + 1) + 1

end

end A308186.P4188807853655826539

noncomputable section

/-- A308186: Fixed point (beginning with a) of the morphism a -> abab, b -> b, over the alphabet {a,b} = {1,2}.

Offset 1, canonical program `A308186.P4188807853655826539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308186 (n : ℕ) : ℤ :=
  A308186.P4188807853655826539.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308266.P14087854034105715006

`A307872(n+1)+A008763(n)`
-/

namespace A308266.P14087854034105715006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307872 (n + 1) + A008763 n

end

end A308266.P14087854034105715006

noncomputable section

/-- A308266: Sum of the middle parts in the partitions of n into 3 parts.

Offset 1, canonical program `A308266.P14087854034105715006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308266 (n : ℕ) : ℤ :=
  A308266.P14087854034105715006.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308358.P17355110042302640437

`A004526(A172475(n))`
-/

namespace A308358.P17355110042302640437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A172475 n).toNat

end

end A308358.P17355110042302640437

noncomputable section

/-- A308358: Beatty sequence for sqrt(3)/4.

Offset 0, canonical program `A308358.P17355110042302640437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308358 (n : ℕ) : ℤ :=
  A308358.P17355110042302640437.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308473.P15714322036047545151

`(n+1)*A016035(n+1)/2`
-/

namespace A308473.P15714322036047545151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A016035 (n + 1) : ℚ) / 2

end

end A308473.P15714322036047545151

noncomputable section

/-- A308473: Sum of numbers < n which have common prime factors with n.

Offset 1, canonical program `A308473.P15714322036047545151`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A016035, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308473 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A308473.P15714322036047545151.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A016035, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308473.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A308474.P10150030756916015915

`A000290(n+1)*A023896(n+1)`
-/

namespace A308474.P10150030756916015915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) * A023896 (n + 1)

end

end A308474.P10150030756916015915

noncomputable section

/-- A308474: a(n) = Sum_{k=1..n^2, gcd(n,k) = 1} k.

Offset 1, canonical program `A308474.P10150030756916015915`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023896, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308474 (n : ℕ) : ℤ :=
  A308474.P10150030756916015915.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023896, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A308474.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A308495.P1536952289088867514

`A082186(A000040(n+1))`
-/

namespace A308495.P1536952289088867514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082186 (A000040 (n + 1)).toNat

end

end A308495.P1536952289088867514

noncomputable section

/-- A308495: a(n) is the position of the first occurrence of prime(n) in A027748.

Offset 1, canonical program `A308495.P1536952289088867514`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A082186, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A308495 (n : ℕ) : ℤ :=
  A308495.P1536952289088867514.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A082186, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A308495.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A308528.P16512669099177771917

`2*A003000(n)`
-/

namespace A308528.P16512669099177771917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003000 n

end

end A308528.P16512669099177771917

noncomputable section

/-- A308528: Number of length-n binary words having no nontrivial prefix that is a palindrome of odd length.

Offset 1, canonical program `A308528.P16512669099177771917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A308528 (n : ℕ) : ℤ :=
  A308528.P16512669099177771917.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A308528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308720.P467322842987642582

`gcd(∑[A000122(n)], A000122(n))-1`
-/

namespace A308720.P467322842987642582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000122 n) : ℤ) - 1

end

end A308720.P467322842987642582

noncomputable section

/-- A308720: The maximum value in the continued fraction of sqrt(n), or 0 if there is no fractional part.

Offset 0, canonical program `A308720.P467322842987642582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308720 (n : ℕ) : ℤ :=
  A308720.P467322842987642582.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308733.P10361527980184129555

`∑[A008763(A028242(n)+1)]`
-/

namespace A308733.P10361527980184129555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (A028242 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A308733.P10361527980184129555

noncomputable section

/-- A308733: Sum of the smallest parts of the partitions of n into 4 parts.

Offset 0, canonical program `A308733.P10361527980184129555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308733 (n : ℕ) : ℤ :=
  A308733.P10361527980184129555.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A308733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A308867.P12097156113695832026

`n*∑[A037145(n)-A008667(n)]`
-/

namespace A308867.P12097156113695832026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037145 n - A008667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A308867.P12097156113695832026

noncomputable section

/-- A308867: Sum of all the parts in the partitions of n into 6 parts.

Offset 0, canonical program `A308867.P12097156113695832026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 412 terms. -/
def A308867 (n : ℕ) : ℤ :=
  A308867.P12097156113695832026.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 412 terms. -/
def A308867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309002.P3766737663258813332

`lcm((n+1)², A054496(n+1))`
-/

namespace A309002.P3766737663258813332
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n + 1) ^ 2 : ℤ) (A054496 (n + 1))

end

end A309002.P3766737663258813332

noncomputable section

/-- A309002: Multiplicative with a(p) = p^2 and a(p^e) = p^a(e) for any e > 1 and prime number p.

Offset 1, canonical program `A309002.P3766737663258813332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A309002 (n : ℕ) : ℤ :=
  (A309002.P3766737663258813332.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A309002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309048.P4656978642239997170

`a(A002264(n))+(n²%3-1)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A309048.P4656978642239997170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (A002264 n).toNat + (((n ^ 2 % 3 : ℕ) : ℤ) - 1) * a (n - 2)

end

end A309048.P4656978642239997170

noncomputable section

/-- A309048: Expansion of Product_{k>=0} (1 + x^(3^k) + x^(2*3^k) - x^(3^(k+1))).

Offset 0, canonical program `A309048.P4656978642239997170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2110 terms. -/
def A309048 (n : ℕ) : ℤ :=
  A309048.P4656978642239997170.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2110 terms. -/
def A309048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309212.P14676656329670371086

`round((3/4)^A001489(n))`
-/

namespace A309212.P14676656329670371086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((3 : ℚ) / 4) ^ (A001489 n : ℤ))

end

end A309212.P14676656329670371086

noncomputable section

/-- A309212: Nearest integer to (4/3)^n.

Offset 0, canonical program `A309212.P14676656329670371086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 801 terms. -/
def A309212 (n : ℕ) : ℤ :=
  A309212.P14676656329670371086.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 801 terms. -/
def A309212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309368.P4501545708741556862

`∑{d}[n+1, A000040((n+1)/#)^#]`
-/

namespace A309368.P4501545708741556862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat ^ d

end

end A309368.P4501545708741556862

noncomputable section

/-- A309368: a(n) = Sum_{d|n} prime(n/d)^d.

Offset 1, canonical program `A309368.P4501545708741556862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A309368 (n : ℕ) : ℤ :=
  A309368.P4501545708741556862.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A309368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309686.P5973081140512244808

`∑[A307018(A237420(n))]`
-/

namespace A309686.P5973081140512244808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307018 (A237420 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A309686.P5973081140512244808

noncomputable section

/-- A309686: Sum of the even parts appearing among the smallest parts of the partitions of n into 3 parts.

Offset 0, canonical program `A309686.P5973081140512244808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309686 (n : ℕ) : ℤ :=
  A309686.P5973081140512244808.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309717.P16293545848605844786

`(A006190(n)-(A006684(n)+A000129(n)))/2`
-/

namespace A309717.P16293545848605844786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006190 n - (A006684 n + A000129 n) : ℚ) / 2

end

end A309717.P16293545848605844786

noncomputable section

/-- A309717: Convolve Fibonacci, Pell and bronze Fibonacci numbers.

Offset 0, canonical program `A309717.P16293545848605844786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 194 terms. -/
def A309717 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A309717.P16293545848605844786.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 194 terms. -/
def A309717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309729.P1295357004740063289

`∑{d}[n+1, A001045(#)]`
-/

namespace A309729.P1295357004740063289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001045 d

end

end A309729.P1295357004740063289

noncomputable section

/-- A309729: Expansion of Sum_{k>=1} x^k/(1 - x^k - 2*x^(2*k)).

Offset 1, canonical program `A309729.P1295357004740063289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A309729 (n : ℕ) : ℤ :=
  A309729.P1295357004740063289.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A309729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309731.P12136471664551813411

`∑{d}[n+1, #*A000217((n+1)/#)]`
-/

namespace A309731.P12136471664551813411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000217 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A309731.P12136471664551813411

noncomputable section

/-- A309731: Expansion of Sum_{k>=1} k * x^k/(1 - x^k)^3.

Offset 1, canonical program `A309731.P12136471664551813411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309731 (n : ℕ) : ℤ :=
  A309731.P12136471664551813411.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309808.P4073451780118516941

`p?[or(1, ceil(A127421(2*n+3)/2+n))]`
-/

namespace A309808.P4073451780118516941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌈(A127421 (2 * n + 3) : ℚ) / 2 + (n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A309808.P4073451780118516941

noncomputable section

/-- A309808: Primes formed by concatenating k and 2k+1.

Offset 1, canonical program `A309808.P4073451780118516941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A309808 (n : ℕ) : ℤ :=
  A309808.P4073451780118516941.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A309808.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309809.P7507900315122133766

`ceil(A127421(2*n+3)/2+n+1)`
-/

namespace A309809.P7507900315122133766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A127421 (2 * n + 3) : ℚ) / 2 + (n + 1 : ℚ)⌉

end

end A309809.P7507900315122133766

noncomputable section

/-- A309809: a(n) is the concatenation of n and 2n+1.

Offset 1, canonical program `A309809.P7507900315122133766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309809 (n : ℕ) : ℤ :=
  A309809.P7507900315122133766.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309831.P15864747999336176262

`∑[A029140(n)]-A001400(n)`
-/

namespace A309831.P15864747999336176262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001400 n

end

end A309831.P15864747999336176262

noncomputable section

/-- A309831: Number of even parts appearing among the smallest parts of the partitions of n into 5 parts.

Offset 0, canonical program `A309831.P15864747999336176262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309831 (n : ℕ) : ℤ :=
  A309831.P15864747999336176262.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309840.P11360781880078736310

`A000045(floor(log2(n))+3)*a(n-2^floor(log2(n)))` with `a(0)=1`
-/

namespace A309840.P11360781880078736310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 (Nat.log 2 n + 3) * a (n - 2 ^ Nat.log 2 n)

end

end A309840.P11360781880078736310

noncomputable section

/-- A309840: If n = Sum (2^e_k) then a(n) = Product (Fibonacci(e_k + 3)).

Offset 0, canonical program `A309840.P11360781880078736310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309840 (n : ℕ) : ℤ :=
  A309840.P11360781880078736310.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309874.P12989217329271986297

`2*((n+1)%2+(n+2)*A000045(n))`
-/

namespace A309874.P12989217329271986297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((((n + 1) % 2 : ℕ) : ℤ) + (n + 2 : ℤ) * A000045 n)

end

end A309874.P12989217329271986297

noncomputable section

/-- A309874: a(n) = 2*n*Fibonacci(n-2) + (-1)^n + 1.

Offset 2, canonical program `A309874.P12989217329271986297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. -/
def A309874 (n : ℕ) : ℤ :=
  A309874.P12989217329271986297.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 466 terms. -/
def A309874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309954.P15049606844485343321

`∏{digits}[A024644(2*n)/2, #]`
-/

namespace A309954.P15049606844485343321
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024644 (2 * n) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).prod

end

end A309954.P15049606844485343321

noncomputable section

/-- A309954: Product of digits of (n written in base 4).

Offset 0, canonical program `A309954.P15049606844485343321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A309954 (n : ℕ) : ℤ :=
  (A309954.P15049606844485343321.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A309954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310068.P203163168447749443

`A008706(n)-(A047299(n+1)+A046978(n))`
-/

namespace A310068.P203163168447749443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - (A047299 (n + 1) + A046978 n)

end

end A310068.P203163168447749443

noncomputable section

/-- A310068: Coordination sequence Gal.4.25.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310068.P203163168447749443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A310068 (n : ℕ) : ℤ :=
  A310068.P203163168447749443.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A310068.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310331.P12389006043562410268

`A298024(A047273(n+1))-A265188(n+1)`
-/

namespace A310331.P12389006043562410268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 (A047273 (n + 1)).toNat - A265188 (n + 1)

end

end A310331.P12389006043562410268

noncomputable section

/-- A310331: Coordination sequence Gal.6.77.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310331.P12389006043562410268`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2432 terms. -/
def A310331 (n : ℕ) : ℤ :=
  A310331.P12389006043562410268.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2432 terms. -/
def A310331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310342.P2244144917321736231

`record[A266437(n)+A058207(n)]`
-/

namespace A310342.P2244144917321736231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266437 n + A058207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310342.P2244144917321736231

noncomputable section

/-- A310342: Coordination sequence Gal.5.253.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310342.P2244144917321736231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2556 terms. -/
def A310342 (n : ℕ) : ℤ :=
  A310342.P2244144917321736231.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2556 terms. -/
def A310342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310349.P8859943485980405476

`A298024(n)-A004526(A092092(n+1))`
-/

namespace A310349.P8859943485980405476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n - A004526 (A092092 (n + 1)).toNat

end

end A310349.P8859943485980405476

noncomputable section

/-- A310349: Coordination sequence Gal.5.254.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310349.P8859943485980405476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2542 terms. -/
def A310349 (n : ℕ) : ℤ :=
  A310349.P8859943485980405476.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2542 terms. -/
def A310349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310358.P14915247389207343671

`A219529(n)-A006368(A004396(n))`
-/

namespace A310358.P14915247389207343671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A006368 (A004396 n).toNat

end

end A310358.P14915247389207343671

noncomputable section

/-- A310358: Coordination sequence Gal.4.99.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310358.P14915247389207343671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2471 terms. -/
def A310358 (n : ℕ) : ℤ :=
  A310358.P14915247389207343671.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2471 terms. -/
def A310358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310372.P13571883006595967654

`A004275(A004776(2*(n+1)))`
-/

namespace A310372.P13571883006595967654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A004776 (2 * (n + 1))).toNat

end

end A310372.P13571883006595967654

noncomputable section

/-- A310372: Coordination sequence Gal.4.52.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310372.P13571883006595967654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2473 terms. -/
def A310372 (n : ℕ) : ℤ :=
  A310372.P13571883006595967654.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2473 terms. -/
def A310372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310375.P16852032750516594143

`A151988(A008486(n))+n`
-/

namespace A310375.P16852032750516594143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (A008486 n).toNat + (n : ℤ)

end

end A310375.P16852032750516594143

noncomputable section

/-- A310375: Coordination sequence Gal.5.82.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310375.P16852032750516594143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2467 terms. -/
def A310375 (n : ℕ) : ℤ :=
  A310375.P16852032750516594143.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2467 terms. -/
def A310375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310411.P12923110571559906962

`A060464(A008486(n)+1)+n`
-/

namespace A310411.P12923110571559906962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060464 (A008486 n + 1).toNat + (n : ℤ)

end

end A310411.P12923110571559906962

noncomputable section

/-- A310411: Coordination sequence Gal.4.72.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310411.P12923110571559906962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2410 terms. -/
def A310411 (n : ℕ) : ℤ :=
  A310411.P12923110571559906962.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2410 terms. -/
def A310411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310430.P7342347051689276617

`A301293(n)+A077814(n)`
-/

namespace A310430.P7342347051689276617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n + A077814 n

end

end A310430.P7342347051689276617

noncomputable section

/-- A310430: Coordination sequence Gal.3.41.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310430.P7342347051689276617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2478 terms. -/
def A310430 (n : ℕ) : ℤ :=
  A310430.P7342347051689276617.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2478 terms. -/
def A310430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310439.P17127283864855311022

`A151988(A008486(n))+A047263(n+1)`
-/

namespace A310439.P17127283864855311022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (A008486 n).toNat + A047263 (n + 1)

end

end A310439.P17127283864855311022

noncomputable section

/-- A310439: Coordination sequence Gal.6.321.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310439.P17127283864855311022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2430 terms. -/
def A310439 (n : ℕ) : ℤ :=
  A310439.P17127283864855311022.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2430 terms. -/
def A310439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310461.P9129682600112881039

`A219529(n)-A004525(A004396(n))`
-/

namespace A310461.P9129682600112881039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A004525 (A004396 n).toNat

end

end A310461.P9129682600112881039

noncomputable section

/-- A310461: Coordination sequence Gal.6.350.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310461.P9129682600112881039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2359 terms. -/
def A310461 (n : ℕ) : ℤ :=
  A310461.P9129682600112881039.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2359 terms. -/
def A310461.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310466.P461030892065603312

`A219529(n)-A046978(A004396(n))`
-/

namespace A310466.P461030892065603312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A046978 (A004396 n).toNat

end

end A310466.P461030892065603312

noncomputable section

/-- A310466: Coordination sequence Gal.6.343.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310466.P461030892065603312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2241 terms. -/
def A310466 (n : ℕ) : ℤ :=
  A310466.P461030892065603312.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2241 terms. -/
def A310466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310502.P9099728291858349393

`A008458(n)-2*A004396(A004396(n))`
-/

namespace A310502.P9099728291858349393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - 2 * A004396 (A004396 n).toNat

end

end A310502.P9099728291858349393

noncomputable section

/-- A310502: Coordination sequence Gal.5.132.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310502.P9099728291858349393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A310502 (n : ℕ) : ℤ :=
  A310502.P9099728291858349393.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A310502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310530.P10773156038924726472

`A008458(n)-2*A004525(A004525(n))`
-/

namespace A310530.P10773156038924726472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - 2 * A004525 (A004525 n).toNat

end

end A310530.P10773156038924726472

noncomputable section

/-- A310530: Coordination sequence Gal.5.134.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310530.P10773156038924726472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A310530 (n : ℕ) : ℤ :=
  A310530.P10773156038924726472.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A310530.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310564.P8518898930016773917

`A257088(A060464(Δ[n²]))`
-/

namespace A310564.P8518898930016773917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (A060464 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A310564.P8518898930016773917

noncomputable section

/-- A310564: Coordination sequence Gal.3.23.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310564.P8518898930016773917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2334 terms. -/
def A310564 (n : ℕ) : ℤ :=
  A310564.P8518898930016773917.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2334 terms. -/
def A310564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310704.P4671266649933956123

`A008574(n)-A124072(A080412(n))`
-/

namespace A310704.P4671266649933956123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A124072 (A080412 n).toNat

end

end A310704.P4671266649933956123

noncomputable section

/-- A310704: Coordination sequence Gal.3.2.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310704.P4671266649933956123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A310704 (n : ℕ) : ℤ :=
  A310704.P4671266649933956123.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A310704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311273.P15887462391195011653

`A191275(n+1)+A072154(n)`
-/

namespace A311273.P15887462391195011653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191275 (n + 1) + A072154 n

end

end A311273.P15887462391195011653

noncomputable section

/-- A311273: Coordination sequence Gal.3.31.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311273.P15887462391195011653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2627 terms. -/
def A311273 (n : ℕ) : ℤ :=
  A311273.P15887462391195011653.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2627 terms. -/
def A311273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311289.P17878922336749957492

`A151988(n)+A008486(n)`
-/

namespace A311289.P17878922336749957492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 n + A008486 n

end

end A311289.P17878922336749957492

noncomputable section

/-- A311289: Coordination sequence Gal.5.107.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311289.P17878922336749957492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2594 terms. -/
def A311289 (n : ℕ) : ℤ :=
  A311289.P17878922336749957492.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2594 terms. -/
def A311289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311426.P12408021461851380809

`A301291(n)-A004396(A004525(n))`
-/

namespace A311426.P12408021461851380809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n - A004396 (A004525 n).toNat

end

end A311426.P12408021461851380809

noncomputable section

/-- A311426: Coordination sequence Gal.6.115.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311426.P12408021461851380809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2611 terms. -/
def A311426 (n : ℕ) : ℤ :=
  A311426.P12408021461851380809.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2611 terms. -/
def A311426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311494.P11293507898518336772

`A030118(n)+A004772(A072154(n))`
-/

namespace A311494.P11293507898518336772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030118 n + A004772 (A072154 n).toNat

end

end A311494.P11293507898518336772

noncomputable section

/-- A311494: Coordination sequence Gal.3.12.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311494.P11293507898518336772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2552 terms. -/
def A311494 (n : ℕ) : ℤ :=
  A311494.P11293507898518336772.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2552 terms. -/
def A311494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311501.P3617403906977629789

`A301291(n)-A004525(A004525(n))`
-/

namespace A311501.P3617403906977629789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n - A004525 (A004525 n).toNat

end

end A311501.P3617403906977629789

noncomputable section

/-- A311501: Coordination sequence Gal.4.38.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311501.P3617403906977629789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2581 terms. -/
def A311501 (n : ℕ) : ℤ :=
  A311501.P3617403906977629789.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2581 terms. -/
def A311501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311801.P4993723668151439416

`round((A301293(n)+A022144(n))/3)`
-/

namespace A311801.P4993723668151439416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A301293 n + A022144 n : ℚ) / 3)

end

end A311801.P4993723668151439416

noncomputable section

/-- A311801: Coordination sequence Gal.6.115.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311801.P4993723668151439416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2626 terms. -/
def A311801 (n : ℕ) : ℤ :=
  A311801.P4993723668151439416.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2626 terms. -/
def A311801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311816.P10667073270982388372

`A008574(n)+Δ[A011862(n)]`
-/

namespace A311816.P10667073270982388372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (f1 (n + 1) - f1 n)

end

end A311816.P10667073270982388372

noncomputable section

/-- A311816: Coordination sequence Gal.5.95.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311816.P10667073270982388372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2579 terms. -/
def A311816 (n : ℕ) : ℤ :=
  A311816.P10667073270982388372.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2579 terms. -/
def A311816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311843.P4745182286114243014

`A008574(n)+Δ[A011861(n)]`
-/

namespace A311843.P4745182286114243014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (f1 (n + 1) - f1 n)

end

end A311843.P4745182286114243014

noncomputable section

/-- A311843: Coordination sequence Gal.4.38.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311843.P4745182286114243014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2577 terms. -/
def A311843 (n : ℕ) : ℤ :=
  A311843.P4745182286114243014.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2577 terms. -/
def A311843.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311914.P11835660157980149675

`A008574(n)+Δ[A011860(n)]`
-/

namespace A311914.P11835660157980149675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (f1 (n + 1) - f1 n)

end

end A311914.P11835660157980149675

noncomputable section

/-- A311914: Coordination sequence Gal.4.58.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311914.P11835660157980149675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2566 terms. -/
def A311914 (n : ℕ) : ℤ :=
  A311914.P11835660157980149675.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2566 terms. -/
def A311914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312065.P12266081500591104946

`A047513(n+1)+A008486(n)`
-/

namespace A312065.P12266081500591104946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1) + A008486 n

end

end A312065.P12266081500591104946

noncomputable section

/-- A312065: Coordination sequence Gal.3.10.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312065.P12266081500591104946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2543 terms. -/
def A312065 (n : ℕ) : ℤ :=
  A312065.P12266081500591104946.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2543 terms. -/
def A312065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312077.P5583150468324327588

`A008574(n)+A004524(A081599(n))`
-/

namespace A312077.P5583150468324327588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004524 (A081599 n).toNat

end

end A312077.P5583150468324327588

noncomputable section

/-- A312077: Coordination sequence Gal.5.65.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312077.P5583150468324327588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2517 terms. -/
def A312077 (n : ℕ) : ℤ :=
  A312077.P5583150468324327588.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2517 terms. -/
def A312077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312113.P6642103030780361102

`A301298(n)-A046978(A004396(n))`
-/

namespace A312113.P6642103030780361102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n - A046978 (A004396 n).toNat

end

end A312113.P6642103030780361102

noncomputable section

/-- A312113: Coordination sequence Gal.6.132.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312113.P6642103030780361102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2447 terms. -/
def A312113 (n : ℕ) : ℤ :=
  A312113.P6642103030780361102.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2447 terms. -/
def A312113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312208.P17267733597513165212

`A008574(n)+n-A253262(n)`
-/

namespace A312208.P17267733597513165212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + ((n : ℤ) - A253262 n)

end

end A312208.P17267733597513165212

noncomputable section

/-- A312208: Coordination sequence Gal.5.69.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312208.P17267733597513165212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. -/
def A312208 (n : ℕ) : ℤ :=
  A312208.P17267733597513165212.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. -/
def A312208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312245.P9424474134865924466

`A047263(n+1)+A311807(n)-A060464(n+1)`
-/

namespace A312245.P9424474134865924466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1) + (A311807 n - A060464 (n + 1))

end

end A312245.P9424474134865924466

noncomputable section

/-- A312245: Coordination sequence Gal.3.31.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312245.P9424474134865924466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2619 terms. -/
def A312245 (n : ℕ) : ℤ :=
  A312245.P9424474134865924466.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2619 terms. -/
def A312245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312475.P17325744144907721022

`A004275(round(A017449(n)/5))`
-/

namespace A312475.P17325744144907721022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (SequenceMachineLib.roundAway ((A017449 n : ℚ) / 5)).toNat

end

end A312475.P17325744144907721022

noncomputable section

/-- A312475: Coordination sequence Gal.3.16.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312475.P17325744144907721022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2531 terms. -/
def A312475 (n : ℕ) : ℤ :=
  A312475.P17325744144907721022.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2531 terms. -/
def A312475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312478.P3776385342878559786

`A296910(n)+A186101(A237420(n))`
-/

namespace A312478.P3776385342878559786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296910 n + A186101 (A237420 n).toNat

end

end A312478.P3776385342878559786

noncomputable section

/-- A312478: Coordination sequence Gal.4.67.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312478.P3776385342878559786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2521 terms. -/
def A312478 (n : ℕ) : ℤ :=
  A312478.P3776385342878559786.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2521 terms. -/
def A312478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312890.P5869710039852604831

`A008574(n)+A004525(round(n/3))`
-/

namespace A312890.P5869710039852604831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004525 (SequenceMachineLib.roundAway ((n : ℚ) / 3)).toNat

end

end A312890.P5869710039852604831

noncomputable section

/-- A312890: Coordination sequence Gal.6.115.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312890.P5869710039852604831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2595 terms. -/
def A312890 (n : ℕ) : ℤ :=
  A312890.P5869710039852604831.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2595 terms. -/
def A312890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312892.P8731984914629007574

`A008574(n)+A004525(A057354(n+1))`
-/

namespace A312892.P8731984914629007574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004525 (A057354 (n + 1)).toNat

end

end A312892.P8731984914629007574

noncomputable section

/-- A312892: Coordination sequence Gal.5.50.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312892.P8731984914629007574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2590 terms. -/
def A312892 (n : ℕ) : ℤ :=
  A312892.P8731984914629007574.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2590 terms. -/
def A312892.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312893.P922128372979076951

`A004396(A298786(n))+2*n`
-/

namespace A312893.P922128372979076951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A298786 n).toNat + (2 * n : ℤ)

end

end A312893.P922128372979076951

noncomputable section

/-- A312893: Coordination sequence Gal.5.95.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312893.P922128372979076951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2585 terms. -/
def A312893 (n : ℕ) : ℤ :=
  A312893.P922128372979076951.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2585 terms. -/
def A312893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312894.P11041919530925850968

`A301293(n)-Δ[A011861(n)]`
-/

namespace A312894.P11041919530925850968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n - (f1 (n + 1) - f1 n)

end

end A312894.P11041919530925850968

noncomputable section

/-- A312894: Coordination sequence Gal.4.38.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312894.P11041919530925850968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2607 terms. -/
def A312894 (n : ℕ) : ℤ :=
  A312894.P11041919530925850968.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2607 terms. -/
def A312894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312895.P3589302732376537873

`round(A008574(n)+2*n/7)`
-/

namespace A312895.P3589302732376537873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008574 n : ℚ) + 2 * ((n : ℚ) / 7))

end

end A312895.P3589302732376537873

noncomputable section

/-- A312895: Coordination sequence Gal.4.58.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312895.P3589302732376537873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2568 terms. -/
def A312895 (n : ℕ) : ℤ :=
  A312895.P3589302732376537873.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2568 terms. -/
def A312895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312896.P16473508619976293498

`A008574(n)+A004396(A004524(n+1))`
-/

namespace A312896.P16473508619976293498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004396 (A004524 (n + 1)).toNat

end

end A312896.P16473508619976293498

noncomputable section

/-- A312896: Coordination sequence Gal.6.130.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312896.P16473508619976293498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2544 terms. -/
def A312896 (n : ℕ) : ℤ :=
  A312896.P16473508619976293498.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2544 terms. -/
def A312896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312907.P8561089575111463148

`A005843(n)+A072154(n)-A134667(n)`
-/

namespace A312907.P8561089575111463148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A072154 n - A134667 n)

end

end A312907.P8561089575111463148

noncomputable section

/-- A312907: Coordination sequence Gal.4.85.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312907.P8561089575111463148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2531 terms. -/
def A312907 (n : ℕ) : ℤ :=
  A312907.P8561089575111463148.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2531 terms. -/
def A312907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312908.P18385197356515419689

`A042965(A298786(n)+1)`
-/

namespace A312908.P18385197356515419689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A298786 n + 1).toNat

end

end A312908.P18385197356515419689

noncomputable section

/-- A312908: Coordination sequence Gal.5.64.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312908.P18385197356515419689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2516 terms. -/
def A312908 (n : ℕ) : ℤ :=
  A312908.P18385197356515419689.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2516 terms. -/
def A312908.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312909.P9930151025395677949

`A008574(n)+A004525(3*round(n/3))`
-/

namespace A312909.P9930151025395677949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004525 (3 * SequenceMachineLib.roundAway ((n : ℚ) / 3)).toNat

end

end A312909.P9930151025395677949

noncomputable section

/-- A312909: Coordination sequence Gal.6.150.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312909.P9930151025395677949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A312909 (n : ℕ) : ℤ :=
  A312909.P9930151025395677949.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A312909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312932.P265636690513476108

`round(A008574(n)/(1-1/10))`
-/

namespace A312932.P265636690513476108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008574 n : ℚ) / (1 - (1 : ℚ) / 10))

end

end A312932.P265636690513476108

noncomputable section

/-- A312932: Coordination sequence Gal.5.81.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312932.P265636690513476108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A312932 (n : ℕ) : ℤ :=
  A312932.P265636690513476108.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A312932.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A312948.P565331137883369299

`A151988(n)+A312928(n)-n`
-/

namespace A312948.P565331137883369299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 n + (A312928 n - (n : ℤ))

end

end A312948.P565331137883369299

noncomputable section

/-- A312948: Coordination sequence Gal.5.66.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A312948.P565331137883369299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A312948 (n : ℕ) : ℤ :=
  A312948.P565331137883369299.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A312948.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313045.P11830860627486211470

`A008458(n)-comp[A047486(2*(n+1))]`
-/

namespace A313045.P11830860627486211470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A313045.P11830860627486211470

noncomputable section

/-- A313045: Coordination sequence Gal.6.258.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313045.P11830860627486211470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2512 terms. -/
def A313045 (n : ℕ) : ℤ :=
  A313045.P11830860627486211470.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2512 terms. -/
def A313045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313051.P5280053628599878746

`A312549(n)+A238470(n)`
-/

namespace A313051.P5280053628599878746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312549 n + A238470 n

end

end A313051.P5280053628599878746

noncomputable section

/-- A313051: Coordination sequence Gal.3.33.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313051.P5280053628599878746`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2476 terms. -/
def A313051 (n : ℕ) : ℤ :=
  A313051.P5280053628599878746.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2476 terms. -/
def A313051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313174.P15113801269401988722

`A301293(n)+A087509(A006368(n))`
-/

namespace A313174.P15113801269401988722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n + A087509 (A006368 n).toNat

end

end A313174.P15113801269401988722

noncomputable section

/-- A313174: Coordination sequence Gal.6.478.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313174.P15113801269401988722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2444 terms. -/
def A313174 (n : ℕ) : ℤ :=
  A313174.P15113801269401988722.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2444 terms. -/
def A313174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313193.P12410048015465673857

`A301672(n)+∑[A021913(n)]`
-/

namespace A313193.P12410048015465673857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313193.P12410048015465673857

noncomputable section

/-- A313193: Coordination sequence Gal.4.106.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313193.P12410048015465673857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2477 terms. -/
def A313193 (n : ℕ) : ℤ :=
  A313193.P12410048015465673857.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2477 terms. -/
def A313193.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313416.P3381920737884461264

`A298024(n)-A056594(n+1)`
-/

namespace A313416.P3381920737884461264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n - A056594 (n + 1)

end

end A313416.P3381920737884461264

noncomputable section

/-- A313416: Coordination sequence Gal.4.106.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313416.P3381920737884461264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2421 terms. -/
def A313416 (n : ℕ) : ℤ :=
  A313416.P3381920737884461264.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2421 terms. -/
def A313416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313546.P16396448915990125891

`A312933(n)+A004525(A004396(n))`
-/

namespace A313546.P16396448915990125891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312933 n + A004525 (A004396 n).toNat

end

end A313546.P16396448915990125891

noncomputable section

/-- A313546: Coordination sequence Gal.6.156.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313546.P16396448915990125891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2411 terms. -/
def A313546 (n : ℕ) : ℤ :=
  A313546.P16396448915990125891.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2411 terms. -/
def A313546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313575.P17258877174368691050

`round(A301291(n)+n/3)`
-/

namespace A313575.P17258877174368691050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A301291 n : ℚ) + (n : ℚ) / 3)

end

end A313575.P17258877174368691050

noncomputable section

/-- A313575: Coordination sequence Gal.6.202.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313575.P17258877174368691050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2422 terms. -/
def A313575 (n : ℕ) : ℤ :=
  A313575.P17258877174368691050.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2422 terms. -/
def A313575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313613.P7914765852516180846

`A074232(A008574(n)-n)+n`
-/

namespace A313613.P7914765852516180846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074232 (A008574 n - (n : ℤ)).toNat + (n : ℤ)

end

end A313613.P7914765852516180846

noncomputable section

/-- A313613: Coordination sequence Gal.4.72.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313613.P7914765852516180846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A313613 (n : ℕ) : ℤ :=
  A313613.P7914765852516180846.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. -/
def A313613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313635.P6006493494866348002

`A312943(n)+A004525(n)`
-/

namespace A313635.P6006493494866348002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312943 n + A004525 n

end

end A313635.P6006493494866348002

noncomputable section

/-- A313635: Coordination sequence Gal.4.54.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313635.P6006493494866348002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2379 terms. -/
def A313635 (n : ℕ) : ℤ :=
  A313635.P6006493494866348002.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2379 terms. -/
def A313635.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313646.P5789065148866305681

`A312950(n)+A004525(n)`
-/

namespace A313646.P5789065148866305681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312950 n + A004525 n

end

end A313646.P5789065148866305681

noncomputable section

/-- A313646: Coordination sequence Gal.6.205.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313646.P5789065148866305681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A313646 (n : ℕ) : ℤ :=
  A313646.P5789065148866305681.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. -/
def A313646.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313660.P5112024612694540974

`A313568(n)+A237420(Δ[A011858(n)])`
-/

namespace A313660.P5112024612694540974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313568 n + A237420 (f1 (n + 1) - f1 n).toNat

end

end A313660.P5112024612694540974

noncomputable section

/-- A313660: Coordination sequence Gal.4.126.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313660.P5112024612694540974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1743 terms. -/
def A313660 (n : ℕ) : ℤ :=
  A313660.P5112024612694540974.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1743 terms. -/
def A313660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313703.P15146623144074543038

`A008574(n)+A004396(A042965(n+1))`
-/

namespace A313703.P15146623144074543038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004396 (A042965 (n + 1)).toNat

end

end A313703.P15146623144074543038

noncomputable section

/-- A313703: Coordination sequence Gal.5.129.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313703.P15146623144074543038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2400 terms. -/
def A313703 (n : ℕ) : ℤ :=
  A313703.P15146623144074543038.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2400 terms. -/
def A313703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313722.P17589787555355658090

`A008706(n)-Δ[A011875(n)]`
-/

namespace A313722.P17589787555355658090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011875 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - (f1 (n + 1) - f1 n)

end

end A313722.P17589787555355658090

noncomputable section

/-- A313722: Coordination sequence Gal.6.248.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313722.P17589787555355658090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2378 terms. -/
def A313722 (n : ℕ) : ℤ :=
  A313722.P17589787555355658090.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2378 terms. -/
def A313722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313730.P14992937081356029682

`A008458(n)-comp[12*n+6]`
-/

namespace A313730.P14992937081356029682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A313730.P14992937081356029682

noncomputable section

/-- A313730: Coordination sequence Gal.6.234.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313730.P14992937081356029682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. -/
def A313730 (n : ℕ) : ℤ :=
  A313730.P14992937081356029682.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. -/
def A313730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313737.P13552186845538033859

`A065033(2*n)+A047263(3*n+1)+A002264(A004773(n+1))`
-/

namespace A313737.P13552186845538033859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) + (A047263 (3 * n + 1) + A002264 (A004773 (n + 1)).toNat)

end

end A313737.P13552186845538033859

noncomputable section

/-- A313737: Coordination sequence Gal.6.363.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313737.P13552186845538033859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2337 terms. -/
def A313737 (n : ℕ) : ℤ :=
  A313737.P13552186845538033859.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2337 terms. -/
def A313737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313738.P18419223100438122022

`round(A008596(A008574(n))/11)`
-/

namespace A313738.P18419223100438122022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008596 (A008574 n).toNat : ℚ) / 11)

end

end A313738.P18419223100438122022

noncomputable section

/-- A313738: Coordination sequence Gal.6.158.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313738.P18419223100438122022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2350 terms. -/
def A313738 (n : ℕ) : ℤ :=
  A313738.P18419223100438122022.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2350 terms. -/
def A313738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313744.P13494615761715777669

`A219529(n)-A004396(n-A004525(n))`
-/

namespace A313744.P13494615761715777669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A004396 ((n : ℤ) - A004525 n).toNat

end

end A313744.P13494615761715777669

noncomputable section

/-- A313744: Coordination sequence Gal.6.345.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313744.P13494615761715777669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2372 terms. -/
def A313744 (n : ℕ) : ℤ :=
  A313744.P13494615761715777669.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2372 terms. -/
def A313744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313774.P13874371645225150671

`A312933(n)+round(2*n/3)`
-/

namespace A313774.P13874371645225150671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312933 n + SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))

end

end A313774.P13874371645225150671

noncomputable section

/-- A313774: Coordination sequence Gal.6.622.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313774.P13874371645225150671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A313774 (n : ℕ) : ℤ :=
  A313774.P13874371645225150671.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A313774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313780.P7722541564752106714

`round(A008574(n)+8*n/7)`
-/

namespace A313780.P7722541564752106714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008574 n : ℚ) + 8 * ((n : ℚ) / 7))

end

end A313780.P7722541564752106714

noncomputable section

/-- A313780: Coordination sequence Gal.3.23.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313780.P7722541564752106714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2320 terms. -/
def A313780 (n : ℕ) : ℤ :=
  A313780.P7722541564752106714.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2320 terms. -/
def A313780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313786.P15752277737034767631

`A008706(n)+A002265(A266794(n))`
-/

namespace A313786.P15752277737034767631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + A002265 (A266794 n).toNat

end

end A313786.P15752277737034767631

noncomputable section

/-- A313786: Coordination sequence Gal.4.128.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313786.P15752277737034767631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2321 terms. -/
def A313786 (n : ℕ) : ℤ :=
  A313786.P15752277737034767631.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2321 terms. -/
def A313786.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313849.P16006681991081837481

`A219529(n)+A134667(A047363(2*n+1))`
-/

namespace A313849.P16006681991081837481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n + A134667 (A047363 (2 * n + 1)).toNat

end

end A313849.P16006681991081837481

noncomputable section

/-- A313849: Coordination sequence Gal.5.309.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313849.P16006681991081837481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A313849 (n : ℕ) : ℤ :=
  A313849.P16006681991081837481.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A313849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313879.P8717891439709458694

`A312933(n)+A004525(A004396(n)+n)`
-/

namespace A313879.P8717891439709458694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312933 n + A004525 (A004396 n + (n : ℤ)).toNat

end

end A313879.P8717891439709458694

noncomputable section

/-- A313879: Coordination sequence Gal.6.343.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313879.P8717891439709458694`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2265 terms. -/
def A313879 (n : ℕ) : ℤ :=
  A313879.P8717891439709458694.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2265 terms. -/
def A313879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313889.P12222202445446498340

`A312943(n)+A004396(A047263(n+1))`
-/

namespace A313889.P12222202445446498340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312943 n + A004396 (A047263 (n + 1)).toNat

end

end A313889.P12222202445446498340

noncomputable section

/-- A313889: Coordination sequence Gal.6.652.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313889.P12222202445446498340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2294 terms. -/
def A313889 (n : ℕ) : ℤ :=
  A313889.P12222202445446498340.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2294 terms. -/
def A313889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313892.P4540167751234149793

`A004396(A008574(2*n)-A316569(n))`
-/

namespace A313892.P4540167751234149793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A008574 (2 * n) - A316569 n).toNat

end

end A313892.P4540167751234149793

noncomputable section

/-- A313892: Coordination sequence Gal.5.309.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313892.P4540167751234149793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1251 terms. -/
def A313892 (n : ℕ) : ℤ :=
  A313892.P4540167751234149793.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1251 terms. -/
def A313892.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313907.P17726981698790331686

`A301718(n)-A057354(A130823(n+2))`
-/

namespace A313907.P17726981698790331686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n - A057354 (A130823 (n + 2)).toNat

end

end A313907.P17726981698790331686

noncomputable section

/-- A313907: Coordination sequence Gal.5.315.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313907.P17726981698790331686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2217 terms. -/
def A313907 (n : ℕ) : ℤ :=
  A313907.P17726981698790331686.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2217 terms. -/
def A313907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313923.P4927546755448951901

`A310529(n)+A238469(n)`
-/

namespace A313923.P4927546755448951901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310529 n + A238469 n

end

end A313923.P4927546755448951901

noncomputable section

/-- A313923: Coordination sequence Gal.4.139.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313923.P4927546755448951901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2254 terms. -/
def A313923 (n : ℕ) : ℤ :=
  A313923.P4927546755448951901.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2254 terms. -/
def A313923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313954.P7479337481479020677

`A072154(2*n)+∑[A021913(n)]`
-/

namespace A313954.P7479337481479020677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313954.P7479337481479020677

noncomputable section

/-- A313954: Coordination sequence Gal.3.55.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313954.P7479337481479020677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2276 terms. -/
def A313954 (n : ℕ) : ℤ :=
  A313954.P7479337481479020677.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2276 terms. -/
def A313954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313955.P18254009820693885045

`A313862(n)+Δ[A011865(n)]`
-/

namespace A313955.P18254009820693885045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313862 n + (f1 (n + 1) - f1 n)

end

end A313955.P18254009820693885045

noncomputable section

/-- A313955: Coordination sequence Gal.4.144.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313955.P18254009820693885045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2288 terms. -/
def A313955 (n : ℕ) : ℤ :=
  A313955.P18254009820693885045.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2288 terms. -/
def A313955.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313967.P4638487005320637361

`A072154(2*n)+A057354(A004773(n+1))`
-/

namespace A313967.P4638487005320637361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (2 * n) + A057354 (A004773 (n + 1)).toNat

end

end A313967.P4638487005320637361

noncomputable section

/-- A313967: Coordination sequence Gal.5.315.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313967.P4638487005320637361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A313967 (n : ℕ) : ℤ :=
  A313967.P4638487005320637361.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. -/
def A313967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313982.P4456833723093480440

`A312549(n)+n`
-/

namespace A313982.P4456833723093480440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312549 n + (n : ℤ)

end

end A313982.P4456833723093480440

noncomputable section

/-- A313982: Coordination sequence Gal.3.57.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313982.P4456833723093480440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2224 terms. -/
def A313982 (n : ℕ) : ℤ :=
  A313982.P4456833723093480440.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2224 terms. -/
def A313982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314015.P14627959362492580989

`A301729(A298786(n))`
-/

namespace A314015.P14627959362492580989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301729 (A298786 n).toNat

end

end A314015.P14627959362492580989

noncomputable section

/-- A314015: Coordination sequence Gal.4.100.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314015.P14627959362492580989`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2347 terms. -/
def A314015 (n : ℕ) : ℤ :=
  A314015.P14627959362492580989.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2347 terms. -/
def A314015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314034.P16932690787039607146

`A219529(n)-Δ[A011862(n)]`
-/

namespace A314034.P16932690787039607146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - (f1 (n + 1) - f1 n)

end

end A314034.P16932690787039607146

noncomputable section

/-- A314034: Coordination sequence Gal.5.132.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314034.P16932690787039607146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2317 terms. -/
def A314034 (n : ℕ) : ℤ :=
  A314034.P16932690787039607146.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2317 terms. -/
def A314034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314040.P6532766928928957764

`A191275(A008486(n)+1)`
-/

namespace A314040.P6532766928928957764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191275 (A008486 n + 1).toNat

end

end A314040.P6532766928928957764

noncomputable section

/-- A314040: Coordination sequence Gal.4.133.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314040.P6532766928928957764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2344 terms. -/
def A314040 (n : ℕ) : ℤ :=
  A314040.P6532766928928957764.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2344 terms. -/
def A314040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314049.P18135787733633464436

`A313568(n)+Δ[A011858(n)]`
-/

namespace A314049.P18135787733633464436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313568 n + (f1 (n + 1) - f1 n)

end

end A314049.P18135787733633464436

noncomputable section

/-- A314049: Coordination sequence Gal.3.51.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314049.P18135787733633464436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2325 terms. -/
def A314049 (n : ℕ) : ℤ :=
  A314049.P18135787733633464436.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2325 terms. -/
def A314049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314061.P15550018159768013123

`A312943(n)+A134119(4*n)`
-/

namespace A314061.P15550018159768013123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312943 n + A134119 (4 * n)

end

end A314061.P15550018159768013123

noncomputable section

/-- A314061: Coordination sequence Gal.6.647.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314061.P15550018159768013123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2274 terms. -/
def A314061 (n : ℕ) : ℤ :=
  A314061.P15550018159768013123.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2274 terms. -/
def A314061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314067.P8522433514397796165

`A093390(A004767(n))+A008574(n)`
-/

namespace A314067.P8522433514397796165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093390 (A004767 n).toNat + A008574 n

end

end A314067.P8522433514397796165

noncomputable section

/-- A314067: Coordination sequence Gal.3.53.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314067.P8522433514397796165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A314067 (n : ℕ) : ℤ :=
  A314067.P8522433514397796165.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A314067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314096.P5315638873282229111

`A191276(A033627(n+2))`
-/

namespace A314096.P5315638873282229111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191276 (A033627 (n + 2)).toNat

end

end A314096.P5315638873282229111

noncomputable section

/-- A314096: Coordination sequence Gal.4.73.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314096.P5315638873282229111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2340 terms. -/
def A314096 (n : ℕ) : ℤ :=
  A314096.P5315638873282229111.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2340 terms. -/
def A314096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314117.P6288149183709967192

`ceil(A158666(n)/A017401(n))`
-/

namespace A314117.P6288149183709967192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158666 n : ℚ) / (A017401 n : ℚ)⌉

end

end A314117.P6288149183709967192

noncomputable section

/-- A314117: Coordination sequence Gal.6.330.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314117.P6288149183709967192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2316 terms. -/
def A314117 (n : ℕ) : ℤ :=
  A314117.P6288149183709967192.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2316 terms. -/
def A314117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314151.P18144862648953795625

`A312933(n)+n`
-/

namespace A314151.P18144862648953795625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312933 n + (n : ℤ)

end

end A314151.P18144862648953795625

noncomputable section

/-- A314151: Coordination sequence Gal.6.621.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314151.P18144862648953795625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A314151 (n : ℕ) : ℤ :=
  A314151.P18144862648953795625.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2269 terms. -/
def A314151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314188.P6409328397070527992

`A072154(n)+A276283(n)-1`
-/

namespace A314188.P6409328397070527992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 n + (A276283 n - 1)

end

end A314188.P6409328397070527992

noncomputable section

/-- A314188: Coordination sequence Gal.4.145.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314188.P6409328397070527992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2273 terms. -/
def A314188 (n : ℕ) : ℤ :=
  A314188.P6409328397070527992.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2273 terms. -/
def A314188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314191.P6792675617802763548

`A008574(n)+A004525(A047363(2*n+1))`
-/

namespace A314191.P6792675617802763548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004525 (A047363 (2 * n + 1)).toNat

end

end A314191.P6792675617802763548

noncomputable section

/-- A314191: Coordination sequence Gal.5.292.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314191.P6792675617802763548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2248 terms. -/
def A314191 (n : ℕ) : ℤ :=
  A314191.P6792675617802763548.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2248 terms. -/
def A314191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314218.P5748656243468499932

`A219529(n)+Δ[A011862(n)]`
-/

namespace A314218.P5748656243468499932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n + (f1 (n + 1) - f1 n)

end

end A314218.P5748656243468499932

noncomputable section

/-- A314218: Coordination sequence Gal.5.304.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314218.P5748656243468499932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2234 terms. -/
def A314218 (n : ℕ) : ℤ :=
  A314218.P5748656243468499932.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2234 terms. -/
def A314218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314347.P7578346678599695922

`A151988(2*n)+A008486(A004396(n))`
-/

namespace A314347.P7578346678599695922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (2 * n) + A008486 (A004396 n).toNat

end

end A314347.P7578346678599695922

noncomputable section

/-- A314347: Coordination sequence Gal.4.85.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314347.P7578346678599695922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A314347 (n : ℕ) : ℤ :=
  A314347.P7578346678599695922.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. -/
def A314347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314672.P11952212366419125291

`A008574(n)+A004525(A004525(n))`
-/

namespace A314672.P11952212366419125291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004525 (A004525 n).toNat

end

end A314672.P11952212366419125291

noncomputable section

/-- A314672: Coordination sequence Gal.4.38.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314672.P11952212366419125291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2598 terms. -/
def A314672 (n : ℕ) : ℤ :=
  A314672.P11952212366419125291.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2598 terms. -/
def A314672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314674.P17643702068041950173

`A312289(n)+A175629(n)`
-/

namespace A314674.P17643702068041950173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312289 n + A175629 n

end

end A314674.P17643702068041950173

noncomputable section

/-- A314674: Coordination sequence Gal.4.58.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314674.P17643702068041950173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2569 terms. -/
def A314674 (n : ℕ) : ℤ :=
  A314674.P17643702068041950173.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2569 terms. -/
def A314674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314677.P709044874121363319

`A047424(n+1)+A008486(n)`
-/

namespace A314677.P709044874121363319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047424 (n + 1) + A008486 n

end

end A314677.P709044874121363319

noncomputable section

/-- A314677: Coordination sequence Gal.3.10.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314677.P709044874121363319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2581 terms. -/
def A314677 (n : ℕ) : ℤ :=
  A314677.P709044874121363319.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2581 terms. -/
def A314677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314710.P10185339567335354607

`A301298(n)-Δ[A011862(n)]`
-/

namespace A314710.P10185339567335354607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n - (f1 (n + 1) - f1 n)

end

end A314710.P10185339567335354607

noncomputable section

/-- A314710: Coordination sequence Gal.5.64.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314710.P10185339567335354607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2511 terms. -/
def A314710 (n : ℕ) : ℤ :=
  A314710.P10185339567335354607.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2511 terms. -/
def A314710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314754.P13873104734098981522

`A008486(2*n)-A004525(A047363(2*n+1))`
-/

namespace A314754.P13873104734098981522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) - A004525 (A047363 (2 * n + 1)).toNat

end

end A314754.P13873104734098981522

noncomputable section

/-- A314754: Coordination sequence Gal.5.82.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314754.P13873104734098981522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2456 terms. -/
def A314754 (n : ℕ) : ℤ :=
  A314754.P13873104734098981522.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2456 terms. -/
def A314754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314776.P3434978247879640605

`A257088(A004525(n))+4*n`
-/

namespace A314776.P3434978247879640605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (A004525 n).toNat + (4 * n : ℤ)

end

end A314776.P3434978247879640605

noncomputable section

/-- A314776: Coordination sequence Gal.6.478.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314776.P3434978247879640605`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2464 terms. -/
def A314776 (n : ℕ) : ℤ :=
  A314776.P3434978247879640605.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2464 terms. -/
def A314776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314830.P17814670870789309722

`A301672(n)+A004396(A004525(n))`
-/

namespace A314830.P17814670870789309722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n + A004396 (A004525 n).toNat

end

end A314830.P17814670870789309722

noncomputable section

/-- A314830: Coordination sequence Gal.6.150.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314830.P17814670870789309722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2488 terms. -/
def A314830 (n : ℕ) : ℤ :=
  A314830.P17814670870789309722.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2488 terms. -/
def A314830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314836.P16168506338930918816

`abs(A008591(n)-A312933(n))`
-/

namespace A314836.P16168506338930918816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008591 n - A312933 n|

end

end A314836.P16168506338930918816

noncomputable section

/-- A314836: Coordination sequence Gal.6.131.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314836.P16168506338930918816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2525 terms. -/
def A314836 (n : ℕ) : ℤ :=
  A314836.P16168506338930918816.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2525 terms. -/
def A314836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314847.P14702112134639075295

`A301291(n)+Δ[A011865(n)]`
-/

namespace A314847.P14702112134639075295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n + (f1 (n + 1) - f1 n)

end

end A314847.P14702112134639075295

noncomputable section

/-- A314847: Coordination sequence Gal.6.193.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314847.P14702112134639075295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2474 terms. -/
def A314847 (n : ℕ) : ℤ :=
  A314847.P14702112134639075295.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2474 terms. -/
def A314847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314886.P4715699633682166519

`A008574(n)+A004525(A047263(n+1))`
-/

namespace A314886.P4715699633682166519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004525 (A047263 (n + 1)).toNat

end

end A314886.P4715699633682166519

noncomputable section

/-- A314886: Coordination sequence Gal.5.114.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314886.P4715699633682166519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2420 terms. -/
def A314886 (n : ℕ) : ℤ :=
  A314886.P4715699633682166519.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2420 terms. -/
def A314886.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314941.P1130173180913522709

`A008574(n)+n-A077814(n)`
-/

namespace A314941.P1130173180913522709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + ((n : ℤ) - A077814 n)

end

end A314941.P1130173180913522709

noncomputable section

/-- A314941: Coordination sequence Gal.3.41.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314941.P1130173180913522709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2448 terms. -/
def A314941 (n : ℕ) : ℤ :=
  A314941.P1130173180913522709.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2448 terms. -/
def A314941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315020.P9897744658843174856

`A314829(n)+Δ[A011861(n)]`
-/

namespace A315020.P9897744658843174856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314829 n + (f1 (n + 1) - f1 n)

end

end A315020.P9897744658843174856

noncomputable section

/-- A315020: Coordination sequence Gal.4.76.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315020.P9897744658843174856`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2449 terms. -/
def A315020 (n : ℕ) : ℤ :=
  A315020.P9897744658843174856.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2449 terms. -/
def A315020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315026.P16538661950104496033

`A301298(n)+Δ[A011865(n)]`
-/

namespace A315026.P16538661950104496033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n + (f1 (n + 1) - f1 n)

end

end A315026.P16538661950104496033

noncomputable section

/-- A315026: Coordination sequence Gal.6.337.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315026.P16538661950104496033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2402 terms. -/
def A315026 (n : ℕ) : ℤ :=
  A315026.P16538661950104496033.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2402 terms. -/
def A315026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315032.P2646316992499694624

`A008458(n)-A004525(A047588(2*n+1))`
-/

namespace A315032.P2646316992499694624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004525 (A047588 (2 * n + 1)).toNat

end

end A315032.P2646316992499694624

noncomputable section

/-- A315032: Coordination sequence Gal.4.72.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315032.P2646316992499694624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2419 terms. -/
def A315032 (n : ℕ) : ℤ :=
  A315032.P2646316992499694624.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2419 terms. -/
def A315032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315050.P7466709824589789068

`A042965(n+1+ceil(abs(1-8*n)/3))`
-/

namespace A315050.P7466709824589789068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 ((n + 1 : ℤ) + ⌈(|1 - (8 * n : ℤ)| : ℚ) / 3⌉).toNat

end

end A315050.P7466709824589789068

noncomputable section

/-- A315050: Coordination sequence Gal.5.140.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315050.P7466709824589789068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2408 terms. -/
def A315050 (n : ℕ) : ℤ :=
  A315050.P7466709824589789068.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2408 terms. -/
def A315050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315061.P13322944318282454910

`A311943(n)+A004396(n)`
-/

namespace A315061.P13322944318282454910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311943 n + A004396 n

end

end A315061.P13322944318282454910

noncomputable section

/-- A315061: Coordination sequence Gal.5.130.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315061.P13322944318282454910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2348 terms. -/
def A315061 (n : ℕ) : ℤ :=
  A315061.P13322944318282454910.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2348 terms. -/
def A315061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315253.P3103999631941486934

`A301298(n)+A046978(A004396(n))`
-/

namespace A315253.P3103999631941486934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n + A046978 (A004396 n).toNat

end

end A315253.P3103999631941486934

noncomputable section

/-- A315253: Coordination sequence Gal.6.132.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315253.P3103999631941486934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2453 terms. -/
def A315253 (n : ℕ) : ℤ :=
  A315253.P3103999631941486934.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2453 terms. -/
def A315253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315259.P12271899657189483663

`A314829(n)+A004525(n)`
-/

namespace A315259.P12271899657189483663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314829 n + A004525 n

end

end A315259.P12271899657189483663

noncomputable section

/-- A315259: Coordination sequence Gal.4.54.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315259.P12271899657189483663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2388 terms. -/
def A315259 (n : ℕ) : ℤ :=
  A315259.P12271899657189483663.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2388 terms. -/
def A315259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315273.P1536519079128265166

`A008574(n)+A242062(n)+n`
-/

namespace A315273.P1536519079128265166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A242062 n + (n : ℤ))

end

end A315273.P1536519079128265166

noncomputable section

/-- A315273: Coordination sequence Gal.4.73.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315273.P1536519079128265166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A315273 (n : ℕ) : ℤ :=
  A315273.P1536519079128265166.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. -/
def A315273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315274.P10788429054278481974

`A301291(n)+A004396(n)`
-/

namespace A315274.P10788429054278481974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301291 n + A004396 n

end

end A315274.P10788429054278481974

noncomputable section

/-- A315274: Coordination sequence Gal.6.354.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315274.P10788429054278481974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2313 terms. -/
def A315274 (n : ℕ) : ℤ :=
  A315274.P10788429054278481974.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2313 terms. -/
def A315274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315307.P8009587205543921801

`2*A314837(n)-A008574(n)`
-/

namespace A315307.P8009587205543921801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314837 n - A008574 n

end

end A315307.P8009587205543921801

noncomputable section

/-- A315307: Coordination sequence Gal.6.616.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315307.P8009587205543921801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2355 terms. -/
def A315307 (n : ℕ) : ℤ :=
  A315307.P8009587205543921801.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2355 terms. -/
def A315307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315309.P3002234101704231272

`A060464(A008574(n)+1)`
-/

namespace A315309.P3002234101704231272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060464 (A008574 n + 1).toNat

end

end A315309.P3002234101704231272

noncomputable section

/-- A315309: Coordination sequence Gal.4.133.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315309.P3002234101704231272`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2320 terms. -/
def A315309 (n : ℕ) : ℤ :=
  A315309.P3002234101704231272.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2320 terms. -/
def A315309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315315.P14535342207384651808

`A314098(n)+A102283(n)`
-/

namespace A315315.P14535342207384651808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314098 n + A102283 n

end

end A315315.P14535342207384651808

noncomputable section

/-- A315315: Coordination sequence Gal.6.198.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315315.P14535342207384651808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2243 terms. -/
def A315315 (n : ℕ) : ℤ :=
  A315315.P14535342207384651808.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2243 terms. -/
def A315315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315537.P7494962949586735905

`ceil(A158676(n)/A017401(n))`
-/

namespace A315537.P7494962949586735905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158676 n : ℚ) / (A017401 n : ℚ)⌉

end

end A315537.P7494962949586735905

noncomputable section

/-- A315537: Coordination sequence Gal.6.641.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315537.P7494962949586735905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2220 terms. -/
def A315537 (n : ℕ) : ℤ :=
  A315537.P7494962949586735905.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2220 terms. -/
def A315537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315598.P6908489528099819853

`A008458(A057357(n+1)+A004525(n))`
-/

namespace A315598.P6908489528099819853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A057357 (n + 1) + A004525 n).toNat

end

end A315598.P6908489528099819853

noncomputable section

/-- A315598: Coordination sequence Gal.3.57.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315598.P6908489528099819853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2239 terms. -/
def A315598 (n : ℕ) : ℤ :=
  A315598.P6908489528099819853.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2239 terms. -/
def A315598.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315610.P15546644345769821061

`A311807(n)+A277618(n)`
-/

namespace A315610.P15546644345769821061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311807 n + A277618 n

end

end A315610.P15546644345769821061

noncomputable section

/-- A315610: Coordination sequence Gal.5.256.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315610.P15546644345769821061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2364 terms. -/
def A315610 (n : ℕ) : ℤ :=
  A315610.P15546644345769821061.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2364 terms. -/
def A315610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315654.P465217877465462128

`A047326(A008574(n)+1)`
-/

namespace A315654.P465217877465462128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047326 (A008574 n + 1).toNat

end

end A315654.P465217877465462128

noncomputable section

/-- A315654: Coordination sequence Gal.3.49.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315654.P465217877465462128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2221 terms. -/
def A315654 (n : ℕ) : ℤ :=
  A315654.P465217877465462128.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2221 terms. -/
def A315654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315656.P845046901227409408

`A008458(n)-2*A077814(A004396(n))`
-/

namespace A315656.P845046901227409408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - 2 * A077814 (A004396 n).toNat

end

end A315656.P845046901227409408

noncomputable section

/-- A315656: Coordination sequence Gal.6.667.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315656.P845046901227409408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2231 terms. -/
def A315656 (n : ℕ) : ℤ :=
  A315656.P845046901227409408.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2231 terms. -/
def A315656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315668.P3744435370898828979

`A008574(n)+A253262(n)+n`
-/

namespace A315668.P3744435370898828979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A253262 n + (n : ℤ))

end

end A315668.P3744435370898828979

noncomputable section

/-- A315668: Coordination sequence Gal.5.69.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315668.P3744435370898828979`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2380 terms. -/
def A315668 (n : ℕ) : ℤ :=
  A315668.P3744435370898828979.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2380 terms. -/
def A315668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315688.P5634328764802733599

`A219529(n)+A046978(A004396(n))`
-/

namespace A315688.P5634328764802733599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n + A046978 (A004396 n).toNat

end

end A315688.P5634328764802733599

noncomputable section

/-- A315688: Coordination sequence Gal.6.343.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315688.P5634328764802733599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A315688 (n : ℕ) : ℤ :=
  A315688.P5634328764802733599.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A315688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315691.P16034797588587239357

`A008458(n)-A004524(A081599(n))`
-/

namespace A315691.P16034797588587239357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004524 (A081599 n).toNat

end

end A315691.P16034797588587239357

noncomputable section

/-- A315691: Coordination sequence Gal.5.306.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315691.P16034797588587239357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A315691 (n : ℕ) : ℤ :=
  A315691.P16034797588587239357.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A315691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315693.P3604265791243145229

`A047424(n+1)+A298786(n)+n`
-/

namespace A315693.P3604265791243145229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047424 (n + 1) + (A298786 n + (n : ℤ))

end

end A315693.P3604265791243145229

noncomputable section

/-- A315693: Coordination sequence Gal.3.50.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315693.P3604265791243145229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A315693 (n : ℕ) : ℤ :=
  A315693.P3604265791243145229.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A315693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315709.P16063274037664583401

`round(A008598(A008574(n))/11)`
-/

namespace A315709.P16063274037664583401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008598 (A008574 n).toNat : ℚ) / 11)

end

end A315709.P16063274037664583401

noncomputable section

/-- A315709: Coordination sequence Gal.6.627.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315709.P16063274037664583401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. -/
def A315709 (n : ℕ) : ℤ :=
  A315709.P16063274037664583401.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. -/
def A315709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315734.P13720608880116082785

`A004275(A080734(n+1))`
-/

namespace A315734.P13720608880116082785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A080734 (n + 1)).toNat

end

end A315734.P13720608880116082785

noncomputable section

/-- A315734: Coordination sequence Gal.4.136.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315734.P13720608880116082785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2202 terms. -/
def A315734 (n : ℕ) : ℤ :=
  A315734.P13720608880116082785.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2202 terms. -/
def A315734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315760.P12014470375947906454

`A004525(n)+A315741(n)-A004396(A004525(n))`
-/

namespace A315760.P12014470375947906454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A315741 n - A004396 (A004525 n).toNat)

end

end A315760.P12014470375947906454

noncomputable section

/-- A315760: Coordination sequence Gal.6.638.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315760.P12014470375947906454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2236 terms. -/
def A315760 (n : ℕ) : ℤ :=
  A315760.P12014470375947906454.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2236 terms. -/
def A315760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315765.P2144105475337667791

`A008458(A047263(n+1)-Δ[A011861(n)])`
-/

namespace A315765.P2144105475337667791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A047263 (n + 1) - (f1 (n + 1) - f1 n)).toNat

end

end A315765.P2144105475337667791

noncomputable section

/-- A315765: Coordination sequence Gal.4.146.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315765.P2144105475337667791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2223 terms. -/
def A315765 (n : ℕ) : ℤ :=
  A315765.P2144105475337667791.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2223 terms. -/
def A315765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315886.P13104561643966838140

`A163980(A047592(n+1))+A004273(n)`
-/

namespace A315886.P13104561643966838140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163980 (A047592 (n + 1)).toNat + A004273 n

end

end A315886.P13104561643966838140

noncomputable section

/-- A315886: Coordination sequence Gal.6.527.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315886.P13104561643966838140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2592 terms. -/
def A315886 (n : ℕ) : ℤ :=
  A315886.P13104561643966838140.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2592 terms. -/
def A315886.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315889.P11537963570160076459

`A008574(round(8*n/5))-2*n`
-/

namespace A315889.P11537963570160076459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (SequenceMachineLib.roundAway (8 * ((n : ℚ) / 5))).toNat - (2 * n : ℤ)

end

end A315889.P11537963570160076459

noncomputable section

/-- A315889: Coordination sequence Gal.5.253.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315889.P11537963570160076459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1690 terms. -/
def A315889 (n : ℕ) : ℤ :=
  A315889.P11537963570160076459.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1690 terms. -/
def A315889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316047.P5627716830039855321

`A008486(round(A301694(n)/3))`
-/

namespace A316047.P5627716830039855321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.roundAway ((A301694 n : ℚ) / 3)).toNat

end

end A316047.P5627716830039855321

noncomputable section

/-- A316047: Coordination sequence Gal.6.374.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A316047.P5627716830039855321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2301 terms. -/
def A316047 (n : ℕ) : ℤ :=
  A316047.P5627716830039855321.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2301 terms. -/
def A316047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316100.P16865601850055860707

`lt[lt[n, A129527(n)], A000203(n+1)]`
-/

namespace A316100.P16865601850055860707
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129527 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f4 j) n

end

end A316100.P16865601850055860707

noncomputable section

/-- A316100: Numbers k such that k is deficient but k+1 is abundant, that is, a deficient number followed by an abundant number.

Offset 1, canonical program `A316100.P16865601850055860707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1239 terms. -/
def A316100 (n : ℕ) : ℤ :=
  (A316100.P16865601850055860707.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1239 terms. -/
def A316100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316160.P13123242928267186193

`2*Δ[A060747(n)*A111297(n)]`
-/

namespace A316160.P13123242928267186193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n * A111297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A316160.P13123242928267186193

noncomputable section

/-- A316160: Number of pairs of compositions of n corresponding to a seaweed algebra of index n-3.

Offset 3, canonical program `A316160.P13123242928267186193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A316160 (n : ℕ) : ℤ :=
  A316160.P13123242928267186193.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A316160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316261.P8405252330229681363

`record[A005993(C(n+2, 2)%(n+1))+n]`
-/

namespace A316261.P8405252330229681363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005993 (Nat.choose (n + 2) 2 % (n + 1)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316261.P8405252330229681363

noncomputable section

/-- A316261: The number of ways to induce a single pinch on a compact 2-manifold with n handles. (Note: The manifold is embedded in Euclidean 2-space, and each pinch partitions it into at most two submanifolds.)

Offset 0, canonical program `A316261.P8405252330229681363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316261 (n : ℕ) : ℤ :=
  A316261.P8405252330229681363.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316317.P4616381369030779267

`A301694(n)-A047599(n+1)`
-/

namespace A316317.P4616381369030779267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301694 n - A047599 (n + 1)

end

end A316317.P4616381369030779267

noncomputable section

/-- A316317: Coordination sequence for trivalent node in chamfered version of square grid.

Offset 0, canonical program `A316317.P4616381369030779267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316317 (n : ℕ) : ℤ :=
  A316317.P4616381369030779267.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316340.P16686177254776734771

`A005206(n)-xor(1, A005206(n+1)-3)`
-/

namespace A316340.P16686177254776734771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 n - Int.xor 1 (A005206 (n + 1) - 3)

end

end A316340.P16686177254776734771

noncomputable section

/-- A316340: Image of 1 under repeated application of the morphism 1 -> 12312, 2 -> 341, 3 -> 34134, 4 -> 123.

Offset 0, canonical program `A316340.P16686177254776734771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316340 (n : ℕ) : ℤ :=
  A316340.P16686177254776734771.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316357.P9502573526371032130

`∑[A316316(n)]`
-/

namespace A316357.P9502573526371032130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316357.P9502573526371032130

noncomputable section

/-- A316357: Partial sums of A316316.

Offset 0, canonical program `A316357.P9502573526371032130`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316357 (n : ℕ) : ℤ :=
  A316357.P9502573526371032130.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A316828.P16128822760412873821

`(A071044(n)-1)%3`
-/

namespace A316828.P16128822760412873821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071044 n - 1) 3

end

end A316828.P16128822760412873821

noncomputable section

/-- A316828: Image of the Thue-Morse sequence A010060 under the morphism {1 -> 1,2; 0 -> 0,2}.

Offset 0, canonical program `A316828.P16128822760412873821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316828 (n : ℕ) : ℤ :=
  A316828.P16128822760412873821.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A316828.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317050.P12862040302435564271

`A053985(A003188(n))`
-/

namespace A317050.P12862040302435564271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 (A003188 n).toNat

end

end A317050.P12862040302435564271

noncomputable section

/-- A317050: a(0) = 0 and for any n >= 0, a(n+1) is obtained by changing the rightmost possible digit in the negabinary representation of a(n) so as to get a value not yet in the sequence.

Offset 0, canonical program `A317050.P12862040302435564271`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053985, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317050 (n : ℕ) : ℤ :=
  A317050.P12862040302435564271.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053985, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317050.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A317648.P15112088407625146715

`A110654(A287155(2*(n+1)))`
-/

namespace A317648.P15112088407625146715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A287155 (2 * (n + 1))).toNat

end

end A317648.P15112088407625146715

noncomputable section

/-- A317648: a(1) = a(2) = 1; for n >= 3, a(n) = a(t(n)) + a(n-t(n)) where t = A004001.

Offset 1, canonical program `A317648.P15112088407625146715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A317648 (n : ℕ) : ℤ :=
  A317648.P15112088407625146715.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A317648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317749.P15379956229493575883

`A032741(n)+A032741(a(n-1))+2` with `a(0)=1`
-/

namespace A317749.P15379956229493575883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A032741 n + (A032741 (a (n - 1)).toNat + 2)

end

end A317749.P15379956229493575883

noncomputable section

/-- A317749: a(n+1) = d(n) + d(a(n)) with a(1)=1, where d(n) is the number of the divisors of n.

Offset 1, canonical program `A317749.P15379956229493575883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317749 (n : ℕ) : ℤ :=
  A317749.P15379956229493575883.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A317749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318039.P7161067264386899341

`A317890(n+1)+1`
-/

namespace A318039.P7161067264386899341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317890 (n + 1) + 1

end

end A318039.P7161067264386899341

noncomputable section

/-- A318039: Number of nX2 0..1 arrays with every element unequal to 0, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

Offset 1, canonical program `A318039.P7161067264386899341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. -/
def A318039 (n : ℕ) : ℤ :=
  A318039.P7161067264386899341.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. -/
def A318039.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318162.P10619803318737600839

`Δ[n²]*A165817(n)`
-/

namespace A318162.P10619803318737600839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A165817 n

end

end A318162.P10619803318737600839

noncomputable section

/-- A318162: Number of compositions of 2n-1 into exactly 2n-1 nonnegative parts with largest part n.

Offset 1, canonical program `A318162.P10619803318737600839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A318162 (n : ℕ) : ℤ :=
  A318162.P10619803318737600839.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A318162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318163.P4570111851606319831

`a(n-1)-a(A029578(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A318163.P4570111851606319831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - a (A029578 (n - 1)).toNat

end

end A318163.P4570111851606319831

noncomputable section

/-- A318163: a(0) = a(3) = 0, a(1) = a(2) = 1; for n >= 2, a(2*n) = -a(n-1) and a(2*n+1) = -a(n-1)-a(n).

Offset 0, canonical program `A318163.P4570111851606319831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318163 (n : ℕ) : ℤ :=
  A318163.P4570111851606319831.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318163.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318368.P4332297916626157429

`∑{d}[n+1, #*A007179(#)]`
-/

namespace A318368.P4332297916626157429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A007179 d

end

end A318368.P4332297916626157429

noncomputable section

/-- A318368: a(n) = Sum_{d|n} (-1)^(n/d+1)*d*2^(d-1).

Offset 1, canonical program `A318368.P4332297916626157429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A318368 (n : ℕ) : ℤ :=
  A318368.P4332297916626157429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A318368.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A318743.P15297176175404902628

`∑[∑{d}[n+1, A005917(#)]]`
-/

namespace A318743.P15297176175404902628
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A005917 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318743.P15297176175404902628

noncomputable section

/-- A318743: a(n) = Sum_{k=1..n} floor(n/k)^4.

Offset 1, canonical program `A318743.P15297176175404902628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318743 (n : ℕ) : ℤ :=
  A318743.P15297176175404902628.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318791.P10031734239820775619

`A060566(3*n+1)`
-/

namespace A318791.P10031734239820775619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060566 (3 * n + 1)

end

end A318791.P10031734239820775619

noncomputable section

/-- A318791: Prime generating polynomial: a(n) = 9*n^2 - 249*n + 1763.

Offset 1, canonical program `A318791.P10031734239820775619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A318791 (n : ℕ) : ℤ :=
  A318791.P10031734239820775619.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A318791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318828.P2519863586055671682

`n+1-A063994(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318828.P2519863586055671682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A063994 (n + 1)

end

end A318828.P2519863586055671682

noncomputable section

/-- A318828: a(n) = n - A063994(n) = n - Product_{primes p dividing n} gcd(p-1, n-1).

Offset 1, canonical program `A318828.P2519863586055671682`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318828 (n : ℕ) : ℤ :=
  A318828.P2519863586055671682.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318828.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318934.P10002525055604418372

`A003817(n)+A042950(floor(log2(2*n+1)))+n+1`
-/

namespace A318934.P10002525055604418372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n + (A042950 (Nat.log 2 (2 * n + 1)) + (n + 1 : ℤ))

end

end A318934.P10002525055604418372

noncomputable section

/-- A318934: Numbers whose binary expansion begins with exactly two 1's.

Offset 1, canonical program `A318934.P10002525055604418372`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318934 (n : ℕ) : ℤ :=
  A318934.P10002525055604418372.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318934.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318952.P11663603652040292718

`∑{d}[n+1, A000203(n+1)%A000203(#)]`
-/

namespace A318952.P11663603652040292718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A000203 (n + 1)) (A000203 d)

end

end A318952.P11663603652040292718

noncomputable section

/-- A318952: a(n) = Sum_{d|n} (sigma(n) mod sigma(d)).

Offset 1, canonical program `A318952.P11663603652040292718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318952 (n : ℕ) : ℤ :=
  A318952.P11663603652040292718.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319074.P3718773338656599450

`(A000040(n+1)^(n+1)-1)/(A000040(n+1)-1)`
-/

namespace A319074.P3718773338656599450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) ^ (n + 1) - 1 : ℚ) / (A000040 (n + 1) - 1 : ℚ)

end

end A319074.P3718773338656599450

noncomputable section

/-- A319074: a(n) is the sum of the first n nonnegative powers of the n-th prime.

Offset 1, canonical program `A319074.P3718773338656599450`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319074 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A319074.P3718773338656599450.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319074.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319373.P4266076748036600597

`∑[A009001(n)*A109613(n)]`
-/

namespace A319373.P4266076748036600597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 n * A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319373.P4266076748036600597

noncomputable section

/-- A319373: a(n) = 1*2 - 3*4 + 5*6 - 7*8 + 9*10 - 11*12 + 13*14 - ... + (up to n).

Offset 1, canonical program `A319373.P4266076748036600597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319373 (n : ℕ) : ℤ :=
  A319373.P4266076748036600597.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319431.P10212227212782014410

`A319430(lt[1, A319430(n)])`
-/

namespace A319431.P10212227212782014410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319430 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319430 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A319431.P10212227212782014410

noncomputable section

/-- A319431: The first differences (A319430) of the tribonacci representation numbers (A003726 or A278038) consists of runs of 1's separated by the terms of the present sequence.

Offset 1, canonical program `A319431.P10212227212782014410`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8035 terms. -/
def A319431 (n : ℕ) : ℤ :=
  A319431.P10212227212782014410.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8035 terms. -/
def A319431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319597.P15066160713591870138

`A028387(A000040(n+1)-1)`
-/

namespace A319597.P15066160713591870138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 (A000040 (n + 1) - 1).toNat

end

end A319597.P15066160713591870138

noncomputable section

/-- A319597: Number of conjugacy classes for a non-abelian group of order p^3, where p is prime: a(n) = p^2 + p - 1 where p = prime(n).

Offset 1, canonical program `A319597.P15066160713591870138`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319597 (n : ℕ) : ℤ :=
  A319597.P15066160713591870138.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319597.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319866.P15824373507839325677

`a(n-2)+2*A128918(n)` with `a(0)=2, a(1)=2`
-/

namespace A319866.P15824373507839325677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 2) + 2 * A128918 n

end

end A319866.P15824373507839325677

noncomputable section

/-- A319866: a(n) = 2*1 + 4*3 + 6*5 + 8*7 + 10*9 + 12*11 + ... + (up to the n-th term).

Offset 1, canonical program `A319866.P15824373507839325677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319866 (n : ℕ) : ℤ :=
  A319866.P15824373507839325677.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319879.P677260879233120515

`A000027(A027709(n)+3*n+1)`
-/

namespace A319879.P677260879233120515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A027709 n + (3 * n + 1 : ℤ)).toNat

end

end A319879.P677260879233120515

noncomputable section

/-- A319879: a(n) = minimal number m of unit squares needed to make a figure formed from squares (joined edge to edge) which has n holes.

Offset 0, canonical program `A319879.P677260879233120515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319879 (n : ℕ) : ℤ :=
  A319879.P677260879233120515.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319924.P4321362157346301630

`A005430(n)+1`
-/

namespace A319924.P4321362157346301630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005430 n + 1

end

end A319924.P4321362157346301630

noncomputable section

/-- A319924: a(n) = A143565(2n,n) for n > 0, a(0) = 1.

Offset 0, canonical program `A319924.P4321362157346301630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A319924 (n : ℕ) : ℤ :=
  A319924.P4321362157346301630.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A319924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319927.P17786843195982564548

`eq[1, A189996(2*A105570(n))]`
-/

namespace A319927.P17786843195982564548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189996 (2 * A105570 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319927.P17786843195982564548

noncomputable section

/-- A319927: Numbers k such that the sum of the squares of the odd non-unitary divisors of k divides the sum of the squares of the non-unitary divisors of k.

Offset 1, canonical program `A319927.P17786843195982564548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 708 terms. -/
def A319927 (n : ℕ) : ℤ :=
  (A319927.P17786843195982564548.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 708 terms. -/
def A319927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319956.P2346561494383374932

`char[comp[2^n+n]]+gcd(2, A004273(n))`
-/

namespace A319956.P2346561494383374932
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + Int.gcd 2 (A004273 n)

end

end A319956.P2346561494383374932

noncomputable section

/-- A319956: Image of 3 under repeated application of the morphism 1 -> 1, 2 -> 22, 3 -> 312.

Offset 0, canonical program `A319956.P2346561494383374932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319956 (n : ℕ) : ℤ :=
  (A319956.P2346561494383374932.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319974.P4036882474331244479

`∑[A008679(n)-A001057(n)]`
-/

namespace A319974.P4036882474331244479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 n - A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319974.P4036882474331244479

noncomputable section

/-- A319974: Expansion of (1-x^3+x^4+x^6)/(b(2)*b(3)*b(4)) where b(n) = 1-x^n.

Offset 0, canonical program `A319974.P4036882474331244479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319974 (n : ℕ) : ℤ :=
  A319974.P4036882474331244479.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320075.P14108991417829388174

`∑{d}[n+1, A007427(#)*A113999((n+1)/#)]`
-/

namespace A320075.P14108991417829388174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A113999 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A320075.P14108991417829388174

noncomputable section

/-- A320075: Number of length n primitive (=aperiodic or period n) 10-ary words which are earlier in lexicographic order than any other word derived by cyclic shifts of the alphabet.

Offset 1, canonical program `A320075.P14108991417829388174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A320075 (n : ℕ) : ℤ :=
  A320075.P14108991417829388174.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A320075.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320278.P10936433761191186733

`A172471(A172471(n)+n)%A003059(n+1)`
-/

namespace A320278.P10936433761191186733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172471 (A172471 n + (n : ℤ)).toNat) (A003059 (n + 1))

end

end A320278.P10936433761191186733

noncomputable section

/-- A320278: a(n) is the number of positive integers 0 < i < n such that i + n is a square.

Offset 0, canonical program `A320278.P10936433761191186733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320278 (n : ℕ) : ℤ :=
  A320278.P10936433761191186733.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320431.P327921365060665001

`2*A070260(n+1)%A060890(n)+1`
-/

namespace A320431.P327921365060665001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A070260 (n + 1)) (A060890 n) + 1

end

end A320431.P327921365060665001

noncomputable section

/-- A320431: The number of tiles inside a regular n-gon created by lines that run from each of the vertices of the n edges orthogonal to these edges.

Offset 3, canonical program `A320431.P327921365060665001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320431 (n : ℕ) : ℤ :=
  A320431.P327921365060665001.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320486.P7452552774313601492

`A289207(A320485(n)+2)`
-/

namespace A320486.P7452552774313601492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A320485 n + 2).toNat

end

end A320486.P7452552774313601492

noncomputable section

/-- A320486: Keep just the digits of n that appear exactly once; write 0 if all digits disappear.

Offset 0, canonical program `A320486.P7452552774313601492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320486 (n : ℕ) : ℤ :=
  A320486.P7452552774313601492.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320592.P4882590432271682318

`A266769(n)-A026810(n)`
-/

namespace A320592.P4882590432271682318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266769 n - A026810 n

end

end A320592.P4882590432271682318

noncomputable section

/-- A320592: Number of partitions of n with four parts in which no part occurs more than twice.

Offset 6, canonical program `A320592.P4882590432271682318`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320592 (n : ℕ) : ℤ :=
  A320592.P4882590432271682318.a (n - 6)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320857.P17934183647824238584

`∑[A112448(A142150(n))]`
-/

namespace A320857.P17934183647824238584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112448 (A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A320857.P17934183647824238584

noncomputable section

/-- A320857: a(n) = Pi(8,5)(n) + Pi(8,7)(n) - Pi(8,1)(n) - Pi(8,3)(n) where Pi(a,b)(x) denotes the number of primes in the arithmetic progression a*k + b less than or equal to x.

Offset 1, canonical program `A320857.P17934183647824238584`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320857 (n : ℕ) : ℤ :=
  A320857.P17934183647824238584.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321129.P12956729988665629902

`floor(A165202(n)/A000034(A002264(n)))`
-/

namespace A321129.P12956729988665629902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A165202 n : ℚ) / (A000034 (A002264 n).toNat : ℚ)⌋

end

end A321129.P12956729988665629902

noncomputable section

/-- A321129: Numerator of Sum_{k=1..n} (k*sin((Pi*k)/3))/sqrt(3).

Offset 1, canonical program `A321129.P12956729988665629902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321129 (n : ℕ) : ℤ :=
  A321129.P12956729988665629902.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321140.P752392159174760789

`∑{d}[n+1, A001158(#)]`
-/

namespace A321140.P752392159174760789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001158 d

end

end A321140.P752392159174760789

noncomputable section

/-- A321140: a(n) = Sum_{d|n} sigma_3(d).

Offset 1, canonical program `A321140.P752392159174760789`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321140 (n : ℕ) : ℤ :=
  A321140.P752392159174760789.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321202.P14532592162250782064

`A117905(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A321202.P14532592162250782064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A117905 n + a (n - 2)

end

end A321202.P14532592162250782064

noncomputable section

/-- A321202: Row sums of the irregular triangle A321201.

Offset 2, canonical program `A321202.P14532592162250782064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321202 (n : ℕ) : ℤ :=
  A321202.P14532592162250782064.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321202.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321322.P14680156201706380527

`∑{d}[n+1, A000290(#)*A007427((n+1)/#)]`
-/

namespace A321322.P14680156201706380527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000290 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A321322.P14680156201706380527

noncomputable section

/-- A321322: a(n) = Sum_{d|n} mu(n/d)*J_2(d), where J_2() is the Jordan function (A007434).

Offset 1, canonical program `A321322.P14680156201706380527`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321322 (n : ℕ) : ℤ :=
  A321322.P14680156201706380527.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321324.P8873558422711522564

`abs(A082784(n)+Δ[A173721(abs(1-n))])`
-/

namespace A321324.P8873558422711522564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173721 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A082784 n + (f1 (n + 1) - f1 n)|

end

end A321324.P8873558422711522564

noncomputable section

/-- A321324: a(n) = (n^2 - c(n)) / 7 + 1 where c(n) = c(-n) = c(n+7) for all n in Z and a(n) = 1 if 0 <= n <=3 except a(1) = 0.

Offset 0, canonical program `A321324.P8873558422711522564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321324 (n : ℕ) : ℤ :=
  A321324.P8873558422711522564.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321341.P17519375806666714139

`A008619(A293990(n)%A037915(n))`
-/

namespace A321341.P17519375806666714139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.tmod (A293990 n) (A037915 n)).toNat

end

end A321341.P17519375806666714139

noncomputable section

/-- A321341: An unbounded sequence which is 1 infinitely often, with the property that for any four consecutive terms the maximum term is the sum of the two minimum terms.

Offset 0, canonical program `A321341.P17519375806666714139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321341 (n : ℕ) : ℤ :=
  A321341.P17519375806666714139.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321370.P2848080016975336999

`A187339(n+1)+A022839(n+1)`
-/

namespace A321370.P2848080016975336999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187339 (n + 1) + A022839 (n + 1)

end

end A321370.P2848080016975336999

noncomputable section

/-- A321370: n + [n*s/r] + [n*t/r], where r = 1, s = cos(2*Pi/5), t = sec(2*Pi/5).

Offset 1, canonical program `A321370.P2848080016975336999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321370 (n : ℕ) : ℤ :=
  A321370.P2848080016975336999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321372.P8160546771668638215

`A187339(n+1)-A008619(A108598(n+1))`
-/

namespace A321372.P8160546771668638215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187339 (n + 1) - A008619 (A108598 (n + 1)).toNat

end

end A321372.P8160546771668638215

noncomputable section

/-- A321372: n + [n*r/t] + [n*s/t], where r = 1, s = cos(2*Pi/5), t = sec(2*Pi/5).

Offset 1, canonical program `A321372.P8160546771668638215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5528 terms. -/
def A321372 (n : ℕ) : ℤ :=
  A321372.P8160546771668638215.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5528 terms. -/
def A321372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321543.P5394241305421290770

`∑{d}[n+1, A162395(#)]`
-/

namespace A321543.P5394241305421290770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A162395 d

end

end A321543.P5394241305421290770

noncomputable section

/-- A321543: a(n) = Sum_{d|n} (-1)^(d-1)*d^2.

Offset 1, canonical program `A321543.P5394241305421290770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321543 (n : ℕ) : ℤ :=
  A321543.P5394241305421290770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321545.P12467316956730240130

`∑{d}[n+1, #²²*A162395(#)]`
-/

namespace A321545.P12467316956730240130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d ^ 2) ^ 2 : ℤ) * A162395 d

end

end A321545.P12467316956730240130

noncomputable section

/-- A321545: a(n) = Sum_{d|n} (-1)^(d-1)*d^6.

Offset 1, canonical program `A321545.P12467316956730240130`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321545 (n : ℕ) : ℤ :=
  A321545.P12467316956730240130.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321545.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321546.P12649713767068310389

`∑{d}[n+1, #*#²²*A162395(#)]`
-/

namespace A321546.P12649713767068310389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * (((d ^ 2) ^ 2 : ℤ) * A162395 d)

end

end A321546.P12649713767068310389

noncomputable section

/-- A321546: a(n) = Sum_{d|n} (-1)^(d-1)*d^7.

Offset 1, canonical program `A321546.P12649713767068310389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321546 (n : ℕ) : ℤ :=
  A321546.P12649713767068310389.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321675.P11611611303101211705

`A143128(10^n)`
-/

namespace A321675.P11611611303101211705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143128 (10 ^ n)

end

end A321675.P11611611303101211705

noncomputable section

/-- A321675: a(n) = Sum_{k=1..10^n} k*sigma(k).

Offset 0, canonical program `A321675.P11611611303101211705`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143128, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A321675 (n : ℕ) : ℤ :=
  A321675.P11611611303101211705.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A143128, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A321675.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A321817.P15016838120887643165

`∑{d}[n+1, ((n+1)%A005843(#))^6]`
-/

namespace A321817.P15016838120887643165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (n + 1 : ℤ) (A005843 d) ^ 6

end

end A321817.P15016838120887643165

noncomputable section

/-- A321817: a(n) = Sum_{d|n, n/d odd} d^6 for n > 0.

Offset 1, canonical program `A321817.P15016838120887643165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321817 (n : ℕ) : ℤ :=
  A321817.P15016838120887643165.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321857.P2619691618955025817

`∑[-A080891(∑{p}[n+1, C(#, n)])]`
-/

namespace A321857.P2619691618955025817
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A080891 (∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321857.P2619691618955025817

noncomputable section

/-- A321857: a(n) = Pi(5,2)(n) + Pi(5,3)(n) - Pi(5,1)(n) - Pi(5,4)(n) where Pi(a,b)(x) denotes the number of primes in the arithmetic progression a*k + b less than or equal to x.

Offset 1, canonical program `A321857.P2619691618955025817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321857 (n : ℕ) : ℤ :=
  A321857.P2619691618955025817.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321859.P11466113994403305771

`∑[-A175629(∑{p}[n+1, C(#, n)])]`
-/

namespace A321859.P11466113994403305771
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A175629 (∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321859.P11466113994403305771

noncomputable section

/-- A321859: Number of primes congruent to 3, 5, 6 modulo 7 and <= n minus number of primes congruent to 1, 2, 4 modulo 7 and <= n.

Offset 1, canonical program `A321859.P11466113994403305771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321859 (n : ℕ) : ℤ :=
  A321859.P11466113994403305771.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321860.P17563916367894010708

`∑[-A011582(∑{p}[n+1, C(#, n)])]`
-/

namespace A321860.P17563916367894010708
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A011582 (∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321860.P17563916367894010708

noncomputable section

/-- A321860: Number of primes congruent to 2, 6, 7, 8, 10 modulo 11 and <= n minus number of primes congruent to 1, 3, 4, 5, 9 modulo 11 and <= n.

Offset 1, canonical program `A321860.P17563916367894010708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321860 (n : ℕ) : ℤ :=
  A321860.P17563916367894010708.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321862.P7303955421962956964

`∑[1-(A000040(n+1)²+1)%5]`
-/

namespace A321862.P7303955421962956964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A000040 (n + 1) ^ 2 + 1) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321862.P7303955421962956964

noncomputable section

/-- A321862: a(n) = A321857(prime(n)).

Offset 1, canonical program `A321862.P7303955421962956964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321862 (n : ℕ) : ℤ :=
  A321862.P7303955421962956964.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321863.P1638923899209457201

`∑[round(A000040(n+1)/3)%4-1]`
-/

namespace A321863.P1638923899209457201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A000040 (n + 1) : ℚ) / 3)) 4 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321863.P1638923899209457201

noncomputable section

/-- A321863: a(n) = A321858(prime(n)).

Offset 1, canonical program `A321863.P1638923899209457201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321863 (n : ℕ) : ℤ :=
  A321863.P1638923899209457201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321865.P4320882648814004340

`∑[round(sin(((11*n-A000040(n+1))^5)%11))]`
-/

namespace A321865.P4320882648814004340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (Int.tmod (((11 * n : ℤ) - A000040 (n + 1)) ^ 5) 11 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A321865.P4320882648814004340

noncomputable section

/-- A321865: a(n) = A321860(prime(n)).

Offset 1, canonical program `A321865.P4320882648814004340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321865 (n : ℕ) : ℤ :=
  A321865.P4320882648814004340.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321885.P14494806622824550803

`A212356(a(n-1))+n` with `a(0)=1, a(1)=3`
-/

namespace A321885.P14494806622824550803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A212356 (a (n - 1)).toNat + (n : ℤ)

end

end A321885.P14494806622824550803

noncomputable section

/-- A321885: a(1) = 1, a(n) = n + d(a(n-1)).

Offset 1, canonical program `A321885.P14494806622824550803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A321885 (n : ℕ) : ℤ :=
  A321885.P14494806622824550803.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A321885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321957.P11069985352720129063

`8^n-A066380(n)`
-/

namespace A321957.P11069985352720129063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) - A066380 n

end

end A321957.P11069985352720129063

noncomputable section

/-- A321957: a(n) = binomial(3*n, n + 1)*hypergeom([1, 1 - 2*n], [2 + n], -1).

Offset 0, canonical program `A321957.P11069985352720129063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A321957 (n : ℕ) : ℤ :=
  A321957.P11069985352720129063.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A321957.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322015.P15707370486887507958

`(n+1)*A014707(n)`
-/

namespace A322015.P15707370486887507958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A014707 n

end

end A322015.P15707370486887507958

noncomputable section

/-- A322015: If A003188(n+1) < A003188(n), then a(n) = n+1, otherwise a(n) = 0.

Offset 0, canonical program `A322015.P15707370486887507958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322015 (n : ℕ) : ℤ :=
  A322015.P15707370486887507958.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322016.P2278703337151116336

`(n-1)*A082410(n+1)`
-/

namespace A322016.P2278703337151116336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A082410 (n + 1)

end

end A322016.P2278703337151116336

noncomputable section

/-- A322016: a(0) = 0; for n > 0, if A003188(n) > A003188(n-1) then a(n) = n-1, otherwise a(n) = 0.

Offset 0, canonical program `A322016.P2278703337151116336`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322016 (n : ℕ) : ℤ :=
  A322016.P2278703337151116336.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322016.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322018.P15339692018877451877

`A028310(n)-Δ[and(n, -n)]`
-/

namespace A322018.P15339692018877451877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (f1 (n + 1) - f1 n)

end

end A322018.P15339692018877451877

noncomputable section

/-- A322018: a(n) = A006068(A129760(A003188(n))).

Offset 0, canonical program `A322018.P15339692018877451877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322018 (n : ℕ) : ℤ :=
  A322018.P15339692018877451877.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322175.P18275701556869106149

`a(n-1)*A007427(n)` with `a(0)=1`
-/

namespace A322175.P18275701556869106149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A007427 n

end

end A322175.P18275701556869106149

noncomputable section

/-- A322175: Determinant of the symmetric n X n matrix M defined by M(i,j) = mu(gcd(i,j)) for 1 <= i,j <= n where mu is the Moebius function.

Offset 0, canonical program `A322175.P18275701556869106149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322175 (n : ℕ) : ℤ :=
  A322175.P18275701556869106149.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322185.P8829666999664919020

`∑{d}[2*(n+1), #*A001405(2*n+1)]`
-/

namespace A322185.P8829666999664919020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A001405 (2 * n + 1)

end

end A322185.P8829666999664919020

noncomputable section

/-- A322185: a(n) = sigma(2*n) * binomial(2*n,n)/2, for n >= 1.

Offset 1, canonical program `A322185.P8829666999664919020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A322185 (n : ℕ) : ℤ :=
  A322185.P8829666999664919020.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A322185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322187.P1965569117878174367

`∑{d}[n+1, A001700(#-1)*A193356((n+1)/#)]`
-/

namespace A322187.P1965569117878174367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001700 (d - 1) * A193356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322187.P1965569117878174367

noncomputable section

/-- A322187: a(n) is the coefficient of x^n*y^n/n in log( Product_{n>=1} 1/(1 - x^(2*n-1) - y^(2*n-1)) ), for n >= 1.

Offset 1, canonical program `A322187.P1965569117878174367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A322187 (n : ℕ) : ℤ :=
  A322187.P1965569117878174367.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A322187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322203.P6177819774650873781

`∑{d}[n+1, #*A001700((n+1)/#-1)]`
-/

namespace A322203.P6177819774650873781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A001700 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A322203.P6177819774650873781

noncomputable section

/-- A322203: a(n) = coefficient of x^n*y^n/n in Sum_{n>=1} -log(1 - (x^n + y^n)), for n >= 1.

Offset 1, canonical program `A322203.P6177819774650873781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A322203 (n : ℕ) : ℤ :=
  A322203.P6177819774650873781.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A322203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322303.P6523526261375080362

`A000045(eq[2, ∑{e}[n, #]])`
-/

namespace A322303.P6523526261375080362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A322303.P6523526261375080362

noncomputable section

/-- A322303: a(n) = Fibonacci(semiprime(n)).

Offset 1, canonical program `A322303.P6523526261375080362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A322303 (n : ℕ) : ℤ :=
  A322303.P6523526261375080362.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A322303.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322533.P7587936727415565415

`∑[A022921(n)+2]`
-/

namespace A322533.P7587936727415565415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022921 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322533.P7587936727415565415

noncomputable section

/-- A322533: Position of 1/3^n in the sequence of all numbers 1/2^m, 1/3^m, 2/3^m arranged in decreasing order.

Offset 1, canonical program `A322533.P7587936727415565415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322533 (n : ℕ) : ℤ :=
  A322533.P7587936727415565415.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322535.P5933145085970879367

`A229735(Δ[n²])`
-/

namespace A322535.P5933145085970879367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229735 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A322535.P5933145085970879367

noncomputable section

/-- A322535: Number of arrays of 8 integers in -n..n with sum zero.

Offset 0, canonical program `A322535.P5933145085970879367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A322535 (n : ℕ) : ℤ :=
  A322535.P5933145085970879367.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A322535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322664.P17586322298630474412

`∑{d}[n+1, A000290(#)*A069513((n+1)/#)]`
-/

namespace A322664.P17586322298630474412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000290 d * A069513 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322664.P17586322298630474412

noncomputable section

/-- A322664: a(n) = n^2 * Sum_{p^k|n} Sum_{j=1..k} 1/p^(2*j), where p are primes dividing n with multiplicity k.

Offset 1, canonical program `A322664.P17586322298630474412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322664 (n : ℕ) : ℤ :=
  A322664.P17586322298630474412.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A322829.P17064721799762698939

`A102283(n)*A175629(n)`
-/

namespace A322829.P17064721799762698939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 n * A175629 n

end

end A322829.P17064721799762698939

noncomputable section

/-- A322829: a(n) = Jacobi (or Kronecker) symbol (n/21).

Offset 0, canonical program `A322829.P17064721799762698939`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175629, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322829 (n : ℕ) : ℤ :=
  A322829.P17064721799762698939.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175629, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A322829.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A322885.P8921599766518576260

`∏{e}[n+1, A001399(#)]`
-/

namespace A322885.P8921599766518576260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001399 (Nat.factorization (f1 n) p)

end

end A322885.P8921599766518576260

noncomputable section

/-- A322885: Number of 3-generated Abelian groups of order n.

Offset 1, canonical program `A322885.P8921599766518576260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322885 (n : ℕ) : ℤ :=
  A322885.P8921599766518576260.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A322885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323011.P8265024053046190997

`A172103(n+1)-A172104(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A323011.P8265024053046190997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172103 (n + 1) - A172104 (n + 1)

end

end A323011.P8265024053046190997

noncomputable section

/-- A323011: a(n) = A172103(n) - A172104(n).

Offset 1, canonical program `A323011.P8265024053046190997`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A172103, A172104, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323011 (n : ℕ) : ℤ :=
  A323011.P8265024053046190997.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A172103, A172104, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A323011.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A323152.P11338555144213092166

`A000045(C(2, A054024(n+1)²))`
-/

namespace A323152.P11338555144213092166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (A054024 (n + 1) ^ 2).toNat)

end

end A323152.P11338555144213092166

noncomputable section

/-- A323152: a(n) = 1 if sigma(n) is divisible by all proper divisors of n, 0 otherwise.

Offset 1, canonical program `A323152.P11338555144213092166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323152 (n : ℕ) : ℤ :=
  A323152.P11338555144213092166.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323152.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323162.P4199434762193306250

`A066247(or(1, n))`
-/

namespace A323162.P4199434762193306250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (Nat.lor 1 n)

end

end A323162.P4199434762193306250

noncomputable section

/-- A323162: a(n) = 1 if both n and n-1 are composite, 0 otherwise.

Offset 1, canonical program `A323162.P4199434762193306250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323162 (n : ℕ) : ℤ :=
  A323162.P4199434762193306250.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323249.P5120099028923717865

`eq[A032741(n), A131185(A267027(n+1))]`
-/

namespace A323249.P5120099028923717865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131185 (A267027 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A323249.P5120099028923717865

noncomputable section

/-- A323249: Sequence lists numbers k > 1 such that k^2 == d(k) (mod sigma(k)), where d = A000005 and sigma = A000203.

Offset 1, canonical program `A323249.P5120099028923717865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 180 terms. -/
def A323249 (n : ℕ) : ℤ :=
  (A323249.P5120099028923717865.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 180 terms. -/
def A323249.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323262.P15495717463669417341

`Δ[A323261(n)]-∑[A323261(n)]`
-/

namespace A323262.P15495717463669417341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323261 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323261 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A323262.P15495717463669417341

noncomputable section

/-- A323262: The sequence denoted by a_n used in the calculation of A323260.

Offset 1, canonical program `A323262.P15495717463669417341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A323262 (n : ℕ) : ℤ :=
  A323262.P15495717463669417341.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A323262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323269.P6039144852991048100

`A323261(n)+∑[A323261(n+1)]`
-/

namespace A323269.P6039144852991048100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323261 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323269.P6039144852991048100

noncomputable section

/-- A323269: The sequence denoted by h_n used in the calculation of A323260.

Offset 1, canonical program `A323269.P6039144852991048100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A323269 (n : ℕ) : ℤ :=
  A323269.P6039144852991048100.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A323269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323519.P5612337136972433233

`∑{e}[n+1, #]!/∏{e}[n+1, #!]*A010052(∑{e}[n+1, #])`
-/

namespace A323519.P5612337136972433233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ) * (A010052 (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p) : ℚ)

end

end A323519.P5612337136972433233

noncomputable section

/-- A323519: a(n) is the number of ways to fill a square matrix with the multiset of prime factors of n, if the number of prime factors (counted with multiplicity) is a perfect square, and a(n) = 0 otherwise.

Offset 1, canonical program `A323519.P5612337136972433233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323519 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A323519.P5612337136972433233.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323599.P7337034044960425061

`∑{p}[n+1, A000203((n+1)/#)]`
-/

namespace A323599.P7337034044960425061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat

end

end A323599.P7337034044960425061

noncomputable section

/-- A323599: Dirichlet convolution of the identity function with omega.

Offset 1, canonical program `A323599.P7337034044960425061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323599 (n : ℕ) : ℤ :=
  A323599.P7337034044960425061.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A323599.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323756.P17761962567917672659

`3-(A091830(n+2)+1)%3`
-/

namespace A323756.P17761962567917672659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - Int.tmod (A091830 (n + 2) + 1) 3

end

end A323756.P17761962567917672659

noncomputable section

/-- A323756: a(1) = 2; for n >= 2, if a(n-1) has not yet been assigned, then a(n-1) = 1 and a(2*n-1) = 2, otherwise a(2*n) = 3.

Offset 1, canonical program `A323756.P17761962567917672659`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A323756 (n : ℕ) : ℤ :=
  A323756.P17761962567917672659.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A323756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323845.P11496382381672516873

`A167993(n+1)+A056449(n)`
-/

namespace A323845.P11496382381672516873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167993 (n + 1) + A056449 n

end

end A323845.P11496382381672516873

noncomputable section

/-- A323845: Number of inequivalent height 1 degree n polynomials with nonzero constant term.

Offset 1, canonical program `A323845.P11496382381672516873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A323845 (n : ℕ) : ℤ :=
  A323845.P11496382381672516873.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A323845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323951.P8813911197345809289

`A001609(abs(1-n)+1)+char[2]-n`
-/

namespace A323951.P8813911197345809289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001609 (|1 - (n : ℤ)| + 1).toNat + (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - (n : ℤ))

end

end A323951.P8813911197345809289

noncomputable section

/-- A323951: Number of ways to split an n-cycle into connected subgraphs, all having at least three vertices.

Offset 0, canonical program `A323951.P8813911197345809289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 603 terms. -/
def A323951 (n : ℕ) : ℤ :=
  A323951.P8813911197345809289.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 603 terms. -/
def A323951.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A323989.P17465591494244090833

`∑[A000079(n+1-A156253(n+1))]%3`
-/

namespace A323989.P17465591494244090833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 ((n + 1 : ℤ) - A156253 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A323989.P17465591494244090833

noncomputable section

/-- A323989: Partial alternating sums modulo 3 of the Kolakoski sequence A000002.

Offset 1, canonical program `A323989.P17465591494244090833`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A323989 (n : ℕ) : ℤ :=
  A323989.P17465591494244090833.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A323989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324129.P6185180708440290240

`A059841(n)+A045925(n)`
-/

namespace A324129.P6185180708440290240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + A045925 n

end

end A324129.P6185180708440290240

noncomputable section

/-- A324129: a(n) = n*Fibonacci(n) + ((-1)^n + 1)/2.

Offset 0, canonical program `A324129.P6185180708440290240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. -/
def A324129 (n : ℕ) : ℤ :=
  A324129.P6185180708440290240.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. -/
def A324129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324275.P309282359006458569

`A007590(A007494(n+2))-(n+2)`
-/

namespace A324275.P309282359006458569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (A007494 (n + 2)).toNat - (n + 2 : ℤ)

end

end A324275.P309282359006458569

noncomputable section

/-- A324275: Numbers k for which A324274(k) is 0, i.e., starting squares in A324274 that yield a path of infinite length.

Offset 1, canonical program `A324275.P309282359006458569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6665 terms. -/
def A324275 (n : ℕ) : ℤ :=
  A324275.P309282359006458569.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6665 terms. -/
def A324275.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324377.P15215388195248965144

`gcd(A005187(n), A191871(A005187(n)))`
-/

namespace A324377.P15215388195248965144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005187 n) (A191871 (A005187 n).toNat)

end

end A324377.P15215388195248965144

noncomputable section

/-- A324377: a(0) = 0; for n > 0, a(n) = A000265(A005187(n)).

Offset 0, canonical program `A324377.P15215388195248965144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A324377 (n : ℕ) : ℤ :=
  (A324377.P15215388195248965144.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5004 terms. -/
def A324377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324631.P5598610693582606053

`A004306(n+4)-A000211(n+4)`
-/

namespace A324631.P5598610693582606053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004306 (n + 4) - A000211 (n + 4)

end

end A324631.P5598610693582606053

noncomputable section

/-- A324631: Number of permutations p of [n] such that four is the maximum of the number of elements in any integer interval [p(i)..i+n*[i

Offset 4, canonical program `A324631.P5598610693582606053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 373 terms. -/
def A324631 (n : ℕ) : ℤ :=
  A324631.P5598610693582606053.a (n - 4)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 373 terms. -/
def A324631.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324772.P18169006912300606666

`abs(1-A104521(n))`
-/

namespace A324772.P18169006912300606666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A104521 n|

end

end A324772.P18169006912300606666

noncomputable section

/-- A324772: The "Octanacci" sequence: Trajectory of 0 under the morphism 0->{0,1,0}, 1->{0}.

Offset 0, canonical program `A324772.P18169006912300606666`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324772 (n : ℕ) : ℤ :=
  A324772.P18169006912300606666.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324848.P15119566397967557698

`∑{d}[n+1, val(n+1, A000040(#))]`
-/

namespace A324848.P15119566397967557698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (n + 1) (A000040 d).toNat

end

end A324848.P15119566397967557698

noncomputable section

/-- A324848: Number of prime indices of n (counted with multiplicity) that divide n.

Offset 1, canonical program `A324848.P15119566397967557698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324848 (n : ℕ) : ℤ :=
  (A324848.P15119566397967557698.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324852.P9108547436775433016

`∑{d}[n+1, A019431(val((n+1)², A000040(#)))]`
-/

namespace A324852.P9108547436775433016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A019431 (SequenceMachineLib.valuation ((n + 1) ^ 2) (A000040 d).toNat)

end

end A324852.P9108547436775433016

noncomputable section

/-- A324852: Number of distinct prime indices of n that divide n.

Offset 1, canonical program `A324852.P9108547436775433016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324852 (n : ℕ) : ℤ :=
  A324852.P9108547436775433016.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324903.P14499500524068216409

`A059841(A017665(n+1))`
-/

namespace A324903.P14499500524068216409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A017665 (n + 1)).toNat

end

end A324903.P14499500524068216409

noncomputable section

/-- A324903: a(n) = 1 if A007814(sigma(n)) > A007814(n), 0 otherwise. Here A007814(n) gives the 2-adic valuation of n.

Offset 1, canonical program `A324903.P14499500524068216409`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017665, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324903 (n : ℕ) : ℤ :=
  A324903.P14499500524068216409.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017665, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324903.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324908.P5093313347073934333

`A000035(n+1)*(1-A010052(n+1))`
-/

namespace A324908.P5093313347073934333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * (1 - A010052 (n + 1))

end

end A324908.P5093313347073934333

noncomputable section

/-- A324908: a(n) = 1 if n is an odd number which is not a square, 0 otherwise.

Offset 1, canonical program `A324908.P5093313347073934333`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324908 (n : ℕ) : ℤ :=
  A324908.P5093313347073934333.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A324908.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324986.P12524945559188802949

`∑{d}[n+1, A064840(#)]`
-/

namespace A324986.P12524945559188802949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064840 d

end

end A324986.P12524945559188802949

noncomputable section

/-- A324986: a(n) = Sum_{d|n} (tau(d)*sigma(d)) where tau(k) = the number of divisors of k (A000005) and sigma(k) = the sum of the divisors of k (A000203).

Offset 1, canonical program `A324986.P12524945559188802949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324986 (n : ℕ) : ℤ :=
  A324986.P12524945559188802949.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325029.P11066408375137913507

`∑{d}[n+1, A076722(#)]`
-/

namespace A325029.P11066408375137913507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A076722 d

end

end A325029.P11066408375137913507

noncomputable section

/-- A325029: a(n) = Sum_{d|n} (sigma(d)*pod(d)) where sigma(k) = the sum of the divisors of k (A000203) and pod(k) = the product of the divisors of k (A007955).

Offset 1, canonical program `A325029.P11066408375137913507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A325029 (n : ℕ) : ℤ :=
  A325029.P11066408375137913507.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A325029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325260.P13011178329351078032

`A127002(n+4)+Δ[A267528(n+1)]`
-/

namespace A325260.P13011178329351078032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127002 (n + 4) + (f1 (n + 1) - f1 n)

end

end A325260.P13011178329351078032

noncomputable section

/-- A325260: Number of integer partitions of n whose omega-sequence covers an initial interval of positive integers.

Offset 0, canonical program `A325260.P13011178329351078032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A325260 (n : ℕ) : ℤ :=
  A325260.P13011178329351078032.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A325260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325314.P1683321656325189174

`n+1-A162296(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A325314.P1683321656325189174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A162296 (n + 1)

end

end A325314.P1683321656325189174

noncomputable section

/-- A325314: a(n) = n - A162296(n), where A162296(n) is the sum of divisors of n that have a square factor.

Offset 1, canonical program `A325314.P1683321656325189174`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162296, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325314 (n : ℕ) : ℤ :=
  A325314.P1683321656325189174.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162296, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325314.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325459.P11168469447053430677

`A070824(n)+a(n-1)` with `a(0)=0`
-/

namespace A325459.P11168469447053430677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A070824 n + a (n - 1)

end

end A325459.P11168469447053430677

noncomputable section

/-- A325459: Sum of numbers of nontrivial divisors (greater than 1 and less than k) of k for k = 1..n.

Offset 0, canonical program `A325459.P11168469447053430677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325459 (n : ℕ) : ℤ :=
  A325459.P11168469447053430677.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325469.P15952648157714405911

`∑{d}[n+1, A000007(A000203(#)%#)]`
-/

namespace A325469.P15952648157714405911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000007 (Int.tmod (A000203 d) (d : ℤ)).toNat

end

end A325469.P15952648157714405911

noncomputable section

/-- A325469: a(n) is the number of divisors d of n such that d divides sigma(d).

Offset 1, canonical program `A325469.P15952648157714405911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325469 (n : ℕ) : ℤ :=
  A325469.P15952648157714405911.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325473.P15099245965244273231

`A192804(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A325473.P15099245965244273231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A192804 (n - 1) + a (n - 1)

end

end A325473.P15099245965244273231

noncomputable section

/-- A325473: Number of compositions of n with no part divisible by 3 and an even number of parts congruent to 4 or 5 modulo 6.

Offset 0, canonical program `A325473.P15099245965244273231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 381 terms. -/
def A325473 (n : ℕ) : ℤ :=
  A325473.P15099245965244273231.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 381 terms. -/
def A325473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325482.P18230021522589642406

`∑[A238803(n+2)]`
-/

namespace A325482.P18230021522589642406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238803 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A325482.P18230021522589642406

noncomputable section

/-- A325482: Number of colored set partitions of [n] where colors of the elements of subsets are distinct and in increasing order and exactly two colors are used.

Offset 2, canonical program `A325482.P18230021522589642406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A325482 (n : ℕ) : ℤ :=
  A325482.P18230021522589642406.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A325482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326121.P12241620532846043604

`A055225(n+1)-(n+1)`
-/

namespace A326121.P12241620532846043604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055225 (n + 1) - (n + 1 : ℤ)

end

end A326121.P12241620532846043604

noncomputable section

/-- A326121: Expansion of Sum_{k>=1} k^2 * x^(2*k) / (1 - k * x^k).

Offset 1, canonical program `A326121.P12241620532846043604`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055225, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326121 (n : ℕ) : ℤ :=
  A326121.P12241620532846043604.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055225, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326121.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A326133.P4300014578678543539

`lt[A005187(n+1), A000203(n+1)]+1`
-/

namespace A326133.P4300014578678543539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A326133.P4300014578678543539

noncomputable section

/-- A326133: Numbers n for which sigma(n) > A005187(n).

Offset 1, canonical program `A326133.P4300014578678543539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4960 terms. -/
def A326133 (n : ℕ) : ℤ :=
  (A326133.P4300014578678543539.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4960 terms. -/
def A326133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279775.P51189756934604812

`eq[10, A326746(5*n)]`
-/

namespace A279775.P51189756934604812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (5 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A279775.P51189756934604812

noncomputable section

/-- A279775: Numbers k such that the sum of digits of 5k equals 10.

Offset 1, canonical program `A279775.P51189756934604812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A279775 (n : ℕ) : ℤ :=
  (A279775.P51189756934604812.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A279775.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280392.P11267800191044072622

`A280399(2*(n+1))`
-/

namespace A280392.P11267800191044072622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280399 (2 * (n + 1))

end

end A280392.P11267800191044072622

noncomputable section

/-- A280392: Number of nX2 0..2 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

Offset 1, canonical program `A280392.P11267800191044072622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A280392 (n : ℕ) : ℤ :=
  A280392.P11267800191044072622.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A280392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281217.P4722299089049354569

`(A126646(n+1)-A283217(n+1))/2`
-/

namespace A281217.P4722299089049354569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126646 (n + 1) - A283217 (n + 1) : ℚ) / 2

end

end A281217.P4722299089049354569

noncomputable section

/-- A281217: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 342", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A281217.P4722299089049354569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A281217 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A281217.P4722299089049354569.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A281217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A282416.P15373099460086230700

`A286507(A193356(n+1))*A289404(n)`
-/

namespace A282416.P15373099460086230700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286507 (A193356 (n + 1)).toNat * A289404 n

end

end A282416.P15373099460086230700

noncomputable section

/-- A282416: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 469", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A282416.P15373099460086230700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282416 (n : ℕ) : ℤ :=
  A282416.P15373099460086230700.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A282416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283709.P12501239008037404575

`A283650(n)+A290682(n)-A289098(n)`
-/

namespace A283709.P12501239008037404575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283650 n + (A290682 n - A289098 n)

end

end A283709.P12501239008037404575

noncomputable section

/-- A283709: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 721", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A283709.P12501239008037404575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A283709 (n : ℕ) : ℤ :=
  A283709.P12501239008037404575.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A283709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A283799.P17285316347300436378

`A114752(n+1)*A369082(n)`
-/

namespace A283799.P17285316347300436378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114752 (n + 1) * A369082 n

end

end A283799.P17285316347300436378

noncomputable section

/-- A283799: Number of dispersed Dyck prefixes of length 2n and height n.

Offset 0, canonical program `A283799.P17285316347300436378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A283799 (n : ℕ) : ℤ :=
  A283799.P17285316347300436378.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A283799.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284065.P4824403330227561387

`eq[4, val(A348783(n), 5)]`
-/

namespace A284065.P4824403330227561387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A348783 n).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284065.P4824403330227561387

noncomputable section

/-- A284065: Numbers whose smallest decimal digit is 4.

Offset 1, canonical program `A284065.P4824403330227561387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 774 terms. -/
def A284065 (n : ℕ) : ℤ :=
  (A284065.P4824403330227561387.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 774 terms. -/
def A284065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284066.P17499782741659184884

`eq[5, val(A348783(n), 5)]`
-/

namespace A284066.P17499782741659184884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A348783 n).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284066.P17499782741659184884

noncomputable section

/-- A284066: Numbers whose smallest decimal digit is 5.

Offset 1, canonical program `A284066.P17499782741659184884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. -/
def A284066 (n : ℕ) : ℤ :=
  (A284066.P17499782741659184884.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. -/
def A284066.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284067.P11523281303812964618

`eq[6, val(A348783(n), 5)]`
-/

namespace A284067.P11523281303812964618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A348783 n).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A284067.P11523281303812964618

noncomputable section

/-- A284067: Numbers whose smallest decimal digit is 6.

Offset 1, canonical program `A284067.P11523281303812964618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. -/
def A284067 (n : ℕ) : ℤ :=
  (A284067.P11523281303812964618.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. -/
def A284067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284389.P815293320764787049

`abs(1-(A284393(floor(n/2)+1)+n))+1`
-/

namespace A284389.P815293320764787049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (A284393 (⌊(n : ℚ) / 2⌋ + 1).toNat + (n : ℤ))| + 1

end

end A284389.P815293320764787049

noncomputable section

/-- A284389: Positions of 0 in A284388; complement of A284390.

Offset 1, canonical program `A284389.P815293320764787049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284389 (n : ℕ) : ℤ :=
  A284389.P815293320764787049.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284390.P9301026201937159324

`1+A284393(n+2)`
-/

namespace A284390.P9301026201937159324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A284393 (n + 2)

end

end A284390.P9301026201937159324

noncomputable section

/-- A284390: Positions of 1 in A284388; complement of A284389.

Offset 1, canonical program `A284390.P9301026201937159324`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284393, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284390 (n : ℕ) : ℤ :=
  A284390.P9301026201937159324.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284393, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A284390.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284392.P11541041188866984198

`A284393(A008619(n)+1)+1+n`
-/

namespace A284392.P11541041188866984198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284393 (A008619 n + 1).toNat + 1 + (n : ℤ)

end

end A284392.P11541041188866984198

noncomputable section

/-- A284392: Positions of 0 in A284391; complement of A284393.

Offset 1, canonical program `A284392.P11541041188866984198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284392 (n : ℕ) : ℤ :=
  A284392.P11541041188866984198.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284392.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A284674.P839106522253429785

`char[A284676(n+1)-1]`
-/

namespace A284674.P839106522253429785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284676 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A284674.P839106522253429785

noncomputable section

/-- A284674: 0-limiting word of the morphism 0->1, 1-> 0111.

Offset 1, canonical program `A284674.P839106522253429785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284674 (n : ℕ) : ℤ :=
  (A284674.P839106522253429785.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A284674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285097.P8430036968409566481

`val(A322250(A028310(n)), 2)`
-/

namespace A285097.P8430036968409566481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A322250 (A028310 n).toNat).toNat 2

end

end A285097.P8430036968409566481

noncomputable section

/-- A285097: a(n) = difference between the positions of two least significant 1-bits in base-2 representation of n, or 0 if there are less than two 1-bits in n (when n is either zero or a power of 2).

Offset 0, canonical program `A285097.P8430036968409566481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A285097 (n : ℕ) : ℤ :=
  (A285097.P8430036968409566481.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A285097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285613.P3860841327362332497

`lcm(A285612(n), A286508(n))`
-/

namespace A285613.P3860841327362332497
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A285612 n) (A286508 n)

end

end A285613.P3860841327362332497

noncomputable section

/-- A285613: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 62", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A285613.P3860841327362332497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A285613 (n : ℕ) : ℤ :=
  (A285613.P3860841327362332497.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A285613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A286993.P11468751688728453655

`char[A286995(n+1)-1]`
-/

namespace A286993.P11468751688728453655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286995 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286993.P11468751688728453655

noncomputable section

/-- A286993: {0->000, 111->1}-transform of the Sturmian word A080764.

Offset 1, canonical program `A286993.P11468751688728453655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286993 (n : ℕ) : ℤ :=
  (A286993.P11468751688728453655.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A286993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287132.P3849054294059386704

`and(A287193(n), A288763(n))`
-/

namespace A287132.P3849054294059386704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A287193 n) (A288763 n)

end

end A287132.P3849054294059386704

noncomputable section

/-- A287132: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 245", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A287132.P3849054294059386704`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A287132 (n : ℕ) : ℤ :=
  A287132.P3849054294059386704.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A287132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287190.P14141146628365090120

`A094026(and(A267352(n), A287192(n)))`
-/

namespace A287190.P14141146628365090120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (Int.land (A267352 n) (A287192 n)).toNat

end

end A287190.P14141146628365090120

noncomputable section

/-- A287190: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 253", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A287190.P14141146628365090120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A287190 (n : ℕ) : ℤ :=
  A287190.P14141146628365090120.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A287190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A287742.P2808893076939197849

`A289404(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A287742.P2808893076939197849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A289404 n - a (n - 2)

end

end A287742.P2808893076939197849

noncomputable section

/-- A287742: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 342", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A287742.P2808893076939197849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A287742 (n : ℕ) : ℤ :=
  A287742.P2808893076939197849.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A287742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A288698.P14992563560725253655

`A288700(n)^log2(10)`
-/

namespace A288698.P14992563560725253655
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A288700 n : ℝ) ^ (Real.logb 2 (10 : ℝ))

end

end A288698.P14992563560725253655

noncomputable section

/-- A288698: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 494", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A288698.P14992563560725253655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A288698 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A288698.P14992563560725253655.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A288698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290070.P6745444455141305829

`A290111(n)-n%2`
-/

namespace A290070.P6745444455141305829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290111 n - ((n % 2 : ℕ) : ℤ)

end

end A290070.P6745444455141305829

noncomputable section

/-- A290070: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 641", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290070.P6745444455141305829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290070 (n : ℕ) : ℤ :=
  A290070.P6745444455141305829.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290194.P11582240368816189477

`and(A290113(n), A290828(n))`
-/

namespace A290194.P11582240368816189477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A290113 n) (A290828 n)

end

end A290194.P11582240368816189477

noncomputable section

/-- A290194: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 705", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290194.P11582240368816189477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A290194 (n : ℕ) : ℤ :=
  A290194.P11582240368816189477.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A290194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290198.P6667121910537351259

`A290682(n)-C(n, C(2, n))`
-/

namespace A290198.P6667121910537351259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290682 n - (Nat.choose n (Nat.choose 2 n) : ℤ)

end

end A290198.P6667121910537351259

noncomputable section

/-- A290198: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 721", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290198.P6667121910537351259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A290198 (n : ℕ) : ℤ :=
  A290198.P6667121910537351259.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A290198.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A290680.P12839473319531467674

`A094026(and(2*n+1, A290682(n)))`
-/

namespace A290680.P12839473319531467674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (Int.land (2 * n + 1 : ℤ) (A290682 n)).toNat

end

end A290680.P12839473319531467674

noncomputable section

/-- A290680: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 929", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A290680.P12839473319531467674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290680 (n : ℕ) : ℤ :=
  A290680.P12839473319531467674.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A290680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293335.P20930666671311790

`∑[A293336(abs(1-n))]`
-/

namespace A293335.P20930666671311790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293336 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293335.P20930666671311790

noncomputable section

/-- A293335: Least integer k such that k/2^n > sqrt(1/5).

Offset 0, canonical program `A293335.P20930666671311790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A293335 (n : ℕ) : ℤ :=
  A293335.P20930666671311790.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A293335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294092.P9409228317905178263

`∩[A142198(n+1), A295835(n+1)]`
-/

namespace A294092.P9409228317905178263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142198 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A294092.P9409228317905178263

noncomputable section

/-- A294092: Numbers k == 119 (mod 120) such that 2^((k-1)/2), 3^((k-1)/2) and 5^((k-1)/2) are congruent to 1 (mod k).

Offset 1, canonical program `A294092.P9409228317905178263`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4986 terms. -/
def A294092 (n : ℕ) : ℤ :=
  (A294092.P9409228317905178263.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4986 terms. -/
def A294092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294245.P1504552052113873009

`A294246(2*n+1)-∑[lcm(n, -1%∏{e}[n, #])]`
-/

namespace A294245.P1504552052113873009
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (Int.tmod (-1) ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294246 (2 * n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A294245.P1504552052113873009

noncomputable section

/-- A294245: Sum of the larger parts of the partitions of 2n into two parts with larger part nonsquarefree.

Offset 1, canonical program `A294245.P1504552052113873009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A294245 (n : ℕ) : ℤ :=
  A294245.P1504552052113873009.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A294245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A295506.P4264135978440819762

`∑{d}[n+1, A007427(#)*A339685((n+1)/#)]`
-/

namespace A295506.P4264135978440819762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A339685 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A295506.P4264135978440819762

noncomputable section

/-- A295506: a(n) = Sum_{d|n} mu(n/d)*5^(d-1).

Offset 1, canonical program `A295506.P4264135978440819762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A295506 (n : ℕ) : ℤ :=
  A295506.P4264135978440819762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A295506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297258.P3376126013704301010

`lt[A010875(n+1), A339256(A028310(n))]+1`
-/

namespace A297258.P3376126013704301010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339256 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A297258.P3376126013704301010

noncomputable section

/-- A297258: Numbers whose base-6 digits have greater down-variation than up-variation; see Comments.

Offset 1, canonical program `A297258.P3376126013704301010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4256 terms. -/
def A297258 (n : ℕ) : ℤ :=
  (A297258.P3376126013704301010.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4256 terms. -/
def A297258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297259.P16638468961794563216

`eq[A010875(n), A339256(A028310(n))]`
-/

namespace A297259.P16638468961794563216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339256 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A297259.P16638468961794563216

noncomputable section

/-- A297259: Numbers whose base-6 digits have equal down-variation and up-variation; see Comments.

Offset 1, canonical program `A297259.P16638468961794563216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1671 terms. -/
def A297259 (n : ℕ) : ℤ :=
  (A297259.P16638468961794563216.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1671 terms. -/
def A297259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297260.P8324532918351366393

`lt[A339256(A028310(n)), A010875(n)]`
-/

namespace A297260.P8324532918351366393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339256 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297260.P8324532918351366393

noncomputable section

/-- A297260: Numbers whose base-6 digits have greater up-variation than down-variation; see Comments.

Offset 1, canonical program `A297260.P8324532918351366393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4073 terms. -/
def A297260 (n : ℕ) : ℤ :=
  (A297260.P8324532918351366393.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4073 terms. -/
def A297260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A298215.P6096607446506039463

`A304349(n+1)+and(-2, 2^n)`
-/

namespace A298215.P6096607446506039463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304349 (n + 1) + Int.land (-2) (2 ^ n : ℤ)

end

end A298215.P6096607446506039463

noncomputable section

/-- A298215: Number of nX2 0..1 arrays with every element equal to 0, 1, 2, 4 or 5 king-move adjacent elements, with upper left element zero.

Offset 1, canonical program `A298215.P6096607446506039463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 264 terms. -/
def A298215 (n : ℕ) : ℤ :=
  A298215.P6096607446506039463.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 264 terms. -/
def A298215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300909.P640743007146312883

`∑{d}[n+1, #*A374016(#)]`
-/

namespace A300909.P640743007146312883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A374016 d

end

end A300909.P640743007146312883

noncomputable section

/-- A300909: Sum of 4th powers dividing n.

Offset 1, canonical program `A300909.P640743007146312883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300909 (n : ℕ) : ℤ :=
  A300909.P640743007146312883.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301697.P14130087515424846907

`A312950(2*n)+n-5*n`
-/

namespace A301697.P14130087515424846907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312950 (2 * n) + ((n : ℤ) - (5 * n : ℤ))

end

end A301697.P14130087515424846907

noncomputable section

/-- A301697: Coordination sequence for node of type V2 in "krj" 2-D tiling (or net).

Offset 0, canonical program `A301697.P14130087515424846907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2293 terms. -/
def A301697 (n : ℕ) : ℤ :=
  A301697.P14130087515424846907.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2293 terms. -/
def A301697.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301716.P177371536151067765

`A008458(A219529(n)-A312928(n))`
-/

namespace A301716.P177371536151067765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A219529 n - A312928 n).toNat

end

end A301716.P177371536151067765

noncomputable section

/-- A301716: Coordination sequence for node of type V1 in "kre" 2-D tiling (or net).

Offset 0, canonical program `A301716.P177371536151067765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2241 terms. -/
def A301716 (n : ℕ) : ℤ :=
  A301716.P177371536151067765.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2241 terms. -/
def A301716.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A301717.P10797501216361738203

`∑[A008458(A219529(n)-A312928(n))]`
-/

namespace A301717.P10797501216361738203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A219529 n - A312928 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A301717.P10797501216361738203

noncomputable section

/-- A301717: Partial sums of A301716.

Offset 0, canonical program `A301717.P10797501216361738203`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301717 (n : ℕ) : ℤ :=
  A301717.P10797501216361738203.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A301717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306979.P3142410444248294790

`A397768(a(n-1))` with `a(0)=0`
-/

namespace A306979.P3142410444248294790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A397768 (a (n - 1)).toNat

end

end A306979.P3142410444248294790

noncomputable section

/-- A306979: a(1) = 0; a(n) is the sum of powers of 2 where the exponents are the digits of a(n-1).

Offset 1, canonical program `A306979.P3142410444248294790`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306979 (n : ℕ) : ℤ :=
  A306979.P3142410444248294790.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A306979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A307893.P7001022775789678280

`A324529(n+1)/(n+1)`
-/

namespace A307893.P7001022775789678280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324529 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A307893.P7001022775789678280

noncomputable section

/-- A307893: a(n) = lcm(sigma(n), pod(n)) / n, where sigma (k) = the sum of divisors of k (A000203) and pod(n) = the product of divisors of k (A007955).

Offset 1, canonical program `A307893.P7001022775789678280`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324529, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A307893 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A307893.P7001022775789678280.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324529, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A307893.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A310393.P12744869705430097846

`A312933(n)+A004525(n-A004396(n))`
-/

namespace A310393.P12744869705430097846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312933 n + A004525 ((n : ℤ) - A004396 n).toNat

end

end A310393.P12744869705430097846

noncomputable section

/-- A310393: Coordination sequence Gal.6.193.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310393.P12744869705430097846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2474 terms. -/
def A310393 (n : ℕ) : ℤ :=
  A310393.P12744869705430097846.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2474 terms. -/
def A310393.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310397.P3562784380377388061

`A312943(n)+A004525(n-A004525(n))`
-/

namespace A310397.P3562784380377388061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312943 n + A004525 ((n : ℤ) - A004525 n).toNat

end

end A310397.P3562784380377388061

noncomputable section

/-- A310397: Coordination sequence Gal.4.76.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310397.P3562784380377388061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2449 terms. -/
def A310397 (n : ℕ) : ℤ :=
  A310397.P3562784380377388061.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2449 terms. -/
def A310397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310400.P64997417812132731

`A312933(n)+∑[A022003(n)]`
-/

namespace A310400.P64997417812132731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312933 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310400.P64997417812132731

noncomputable section

/-- A310400: Coordination sequence Gal.6.337.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310400.P64997417812132731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2396 terms. -/
def A310400 (n : ℕ) : ℤ :=
  A310400.P64997417812132731.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2396 terms. -/
def A310400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310405.P7222715361017571782

`A312950(n)+∑[A022003(n)]`
-/

namespace A310405.P7222715361017571782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312950 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310405.P7222715361017571782

noncomputable section

/-- A310405: Coordination sequence Gal.6.339.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310405.P7222715361017571782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. -/
def A310405 (n : ℕ) : ℤ :=
  A310405.P7222715361017571782.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. -/
def A310405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310416.P7113790097451163259

`xor(A010673(n), A315135(n))`
-/

namespace A310416.P7113790097451163259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010673 n) (A315135 n)

end

end A310416.P7113790097451163259

noncomputable section

/-- A310416: Coordination sequence Gal.6.367.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310416.P7113790097451163259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2378 terms. -/
def A310416 (n : ℕ) : ℤ :=
  A310416.P7113790097451163259.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2378 terms. -/
def A310416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310419.P9463274316213645996

`2*A312943(n)-A008574(n)`
-/

namespace A310419.P9463274316213645996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A312943 n - A008574 n

end

end A310419.P9463274316213645996

noncomputable section

/-- A310419: Coordination sequence Gal.5.130.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310419.P9463274316213645996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2355 terms. -/
def A310419 (n : ℕ) : ℤ :=
  A310419.P9463274316213645996.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2355 terms. -/
def A310419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310458.P15201393240750991380

`A312943(n)+∑[A021913(n)]`
-/

namespace A310458.P15201393240750991380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312943 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310458.P15201393240750991380

noncomputable section

/-- A310458: Coordination sequence Gal.4.78.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310458.P15201393240750991380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2355 terms. -/
def A310458 (n : ℕ) : ℤ :=
  A310458.P15201393240750991380.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2355 terms. -/
def A310458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310459.P10560031629199160211

`A312950(n)+∑[A021913(n)]`
-/

namespace A310459.P10560031629199160211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312950 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310459.P10560031629199160211

noncomputable section

/-- A310459: Coordination sequence Gal.6.341.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310459.P10560031629199160211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A310459 (n : ℕ) : ℤ :=
  A310459.P10560031629199160211.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A310459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A310472.P9362779939822034128

`A312933(n)+n-A004525(A004396(n))`
-/

namespace A310472.P9362779939822034128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312933 n + ((n : ℤ) - A004525 (A004396 n).toNat)

end

end A310472.P9362779939822034128

noncomputable section

/-- A310472: Coordination sequence Gal.6.347.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A310472.P9362779939822034128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2318 terms. -/
def A310472 (n : ℕ) : ℤ :=
  A310472.P9362779939822034128.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2318 terms. -/
def A310472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311088.P16529327285930187099

`A046978(n)+A313090(n)-n`
-/

namespace A311088.P16529327285930187099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 n + (A313090 n - (n : ℤ))

end

end A311088.P16529327285930187099

noncomputable section

/-- A311088: Coordination sequence Gal.4.25.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311088.P16529327285930187099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2471 terms. -/
def A311088 (n : ℕ) : ℤ :=
  A311088.P16529327285930187099.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2471 terms. -/
def A311088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311475.P11971039949641938868

`A312950(n)-∑[A022003(n)]`
-/

namespace A311475.P11971039949641938868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312950 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311475.P11971039949641938868

noncomputable section

/-- A311475: Coordination sequence Gal.6.118.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311475.P11971039949641938868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2581 terms. -/
def A311475 (n : ℕ) : ℤ :=
  A311475.P11971039949641938868.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2581 terms. -/
def A311475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311634.P232310208684928047

`A313568(n)-A253262(n)`
-/

namespace A311634.P232310208684928047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313568 n - A253262 n

end

end A311634.P232310208684928047

noncomputable section

/-- A311634: Coordination sequence Gal.6.233.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311634.P232310208684928047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. -/
def A311634 (n : ℕ) : ℤ :=
  A311634.P232310208684928047.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. -/
def A311634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A311964.P9332770168287071000

`abs(A008593(n)-(A315697(n)+n))`
-/

namespace A311964.P9332770168287071000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - (A315697 n + (n : ℤ))|

end

end A311964.P9332770168287071000

noncomputable section

/-- A311964: Coordination sequence Gal.6.131.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A311964.P9332770168287071000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2492 terms. -/
def A311964 (n : ℕ) : ℤ :=
  A311964.P9332770168287071000.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2492 terms. -/
def A311964.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313046.P8828103927133743341

`A314838(n)-A238470(A266303(n))`
-/

namespace A313046.P8828103927133743341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314838 n - A238470 (A266303 n).toNat

end

end A313046.P8828103927133743341

noncomputable section

/-- A313046: Coordination sequence Gal.6.454.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313046.P8828103927133743341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2476 terms. -/
def A313046 (n : ℕ) : ℤ :=
  A313046.P8828103927133743341.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2476 terms. -/
def A313046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313070.P12498649127613810780

`A315541(n)-(A004396(n)+A004396(A004396(n)))`
-/

namespace A313070.P12498649127613810780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315541 n - (A004396 n + A004396 (A004396 n).toNat)

end

end A313070.P12498649127613810780

noncomputable section

/-- A313070: Coordination sequence Gal.6.460.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313070.P12498649127613810780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2201 terms. -/
def A313070 (n : ℕ) : ℤ :=
  A313070.P12498649127613810780.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2201 terms. -/
def A313070.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313316.P1127431857597112958

`A313321(n)-A142150(A004525(n))`
-/

namespace A313316.P1127431857597112958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313321 n - A142150 (A004525 n).toNat

end

end A313316.P1127431857597112958

noncomputable section

/-- A313316: Coordination sequence Gal.6.282.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313316.P1127431857597112958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. -/
def A313316 (n : ℕ) : ℤ :=
  A313316.P1127431857597112958.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2414 terms. -/
def A313316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313480.P5748992067713966907

`A315685(n)-n`
-/

namespace A313480.P5748992067713966907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315685 n - (n : ℤ)

end

end A313480.P5748992067713966907

noncomputable section

/-- A313480: Coordination sequence Gal.4.41.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313480.P5748992067713966907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2495 terms. -/
def A313480 (n : ℕ) : ℤ :=
  A313480.P5748992067713966907.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2495 terms. -/
def A313480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313487.P15288592894226833753

`A315701(n)-A047588(n+1)`
-/

namespace A313487.P15288592894226833753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315701 n - A047588 (n + 1)

end

end A313487.P15288592894226833753

noncomputable section

/-- A313487: Coordination sequence Gal.4.42.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313487.P15288592894226833753`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A313487 (n : ℕ) : ℤ :=
  A313487.P15288592894226833753.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A313487.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313533.P10490888896929360716

`A315697(n)-n`
-/

namespace A313533.P10490888896929360716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315697 n - (n : ℤ)

end

end A313533.P10490888896929360716

noncomputable section

/-- A313533: Coordination sequence Gal.6.131.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313533.P10490888896929360716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A313533 (n : ℕ) : ℤ :=
  A313533.P10490888896929360716.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. -/
def A313533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313893.P866188297290375688

`A314838(n)+n-A004525(A004525(n))`
-/

namespace A313893.P866188297290375688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314838 n + ((n : ℤ) - A004525 (A004525 n).toNat)

end

end A313893.P866188297290375688

noncomputable section

/-- A313893: Coordination sequence Gal.5.310.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313893.P866188297290375688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. -/
def A313893 (n : ℕ) : ℤ :=
  A313893.P866188297290375688.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. -/
def A313893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314024.P187168839629835134

`A315697(n)-A004396(n)`
-/

namespace A314024.P187168839629835134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315697 n - A004396 n

end

end A314024.P187168839629835134

noncomputable section

/-- A314024: Coordination sequence Gal.6.156.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314024.P187168839629835134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2422 terms. -/
def A314024 (n : ℕ) : ℤ :=
  A314024.P187168839629835134.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2422 terms. -/
def A314024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314071.P11668273062377731027

`A004396(A315707(n)+A265188(n+1))`
-/

namespace A314071.P11668273062377731027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315707 n + A265188 (n + 1)).toNat

end

end A314071.P11668273062377731027

noncomputable section

/-- A314071: Coordination sequence Gal.5.311.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314071.P11668273062377731027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1251 terms. -/
def A314071 (n : ℕ) : ℤ :=
  A314071.P11668273062377731027.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1251 terms. -/
def A314071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314090.P9494810813166851977

`A315685(n)-A004525(n)`
-/

namespace A314090.P9494810813166851977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315685 n - A004525 n

end

end A314090.P9494810813166851977

noncomputable section

/-- A314090: Coordination sequence Gal.4.54.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314090.P9494810813166851977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2376 terms. -/
def A314090 (n : ℕ) : ℤ :=
  A314090.P9494810813166851977.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2376 terms. -/
def A314090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314120.P12703466800442840178

`A315707(n)-A004525(n)`
-/

namespace A314120.P12703466800442840178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315707 n - A004525 n

end

end A314120.P12703466800442840178

noncomputable section

/-- A314120: Coordination sequence Gal.3.55.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314120.P12703466800442840178`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2299 terms. -/
def A314120 (n : ℕ) : ℤ :=
  A314120.P12703466800442840178.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2299 terms. -/
def A314120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314148.P108321532251745212

`abs(A008592(n)-A314838(n))`
-/

namespace A314148.P108321532251745212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314838 n|

end

end A314148.P108321532251745212

noncomputable section

/-- A314148: Coordination sequence Gal.4.139.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314148.P108321532251745212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2280 terms. -/
def A314148 (n : ℕ) : ℤ :=
  A314148.P108321532251745212.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2280 terms. -/
def A314148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314149.P1429782019199352520

`abs(A008592(n)-A314837(n))`
-/

namespace A314149.P1429782019199352520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A314837 n|

end

end A314149.P1429782019199352520

noncomputable section

/-- A314149: Coordination sequence Gal.6.620.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314149.P1429782019199352520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2253 terms. -/
def A314149 (n : ℕ) : ℤ :=
  A314149.P1429782019199352520.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2253 terms. -/
def A314149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314692.P15104501043436561296

`A342851(2*n+1)+A067251(2*n+1)`
-/

namespace A314692.P15104501043436561296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342851 (2 * n + 1) + A067251 (2 * n + 1)

end

end A314692.P15104501043436561296

noncomputable section

/-- A314692: Coordination sequence Gal.5.81.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314692.P15104501043436561296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2513 terms. -/
def A314692 (n : ℕ) : ℤ :=
  A314692.P15104501043436561296.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2513 terms. -/
def A314692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314707.P15635996145671668947

`A314837(n)-Δ[A011864(n)]`
-/

namespace A314707.P15635996145671668947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314837 n - (f1 (n + 1) - f1 n)

end

end A314707.P15635996145671668947

noncomputable section

/-- A314707: Coordination sequence Gal.6.129.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314707.P15635996145671668947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2503 terms. -/
def A314707 (n : ℕ) : ℤ :=
  A314707.P15635996145671668947.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2503 terms. -/
def A314707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A314825.P2531780756375799267

`A315517(n)-n`
-/

namespace A314825.P2531780756375799267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315517 n - (n : ℤ)

end

end A314825.P2531780756375799267

noncomputable section

/-- A314825: Coordination sequence Gal.6.118.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A314825.P2531780756375799267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A314825 (n : ℕ) : ℤ :=
  A314825.P2531780756375799267.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A314825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318608.P7923253369301000760

`(1-and(2, n))*A323239(n+1)`
-/

namespace A318608.P7923253369301000760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 2 n : ℤ)) * A323239 (n + 1)

end

end A318608.P7923253369301000760

noncomputable section

/-- A318608: Moebius function mu(n) defined for the Gaussian integers.

Offset 1, canonical program `A318608.P7923253369301000760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318608 (n : ℕ) : ℤ :=
  A318608.P7923253369301000760.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318874.P6528447508863848521

`∑{d}[n+1, A374134(#)]`
-/

namespace A318874.P6528447508863848521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A374134 d

end

end A318874.P6528447508863848521

noncomputable section

/-- A318874: Number of divisors d of n for which 2*phi(d) > d.

Offset 1, canonical program `A318874.P6528447508863848521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318874 (n : ℕ) : ℤ :=
  A318874.P6528447508863848521.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318874.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318875.P8998156499210049195

`∑{d}[n+1, A323170(#)]`
-/

namespace A318875.P8998156499210049195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323170 d

end

end A318875.P8998156499210049195

noncomputable section

/-- A318875: Number of divisors d of n for which 2*phi(d) < d.

Offset 1, canonical program `A318875.P8998156499210049195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318875 (n : ℕ) : ℤ :=
  A318875.P8998156499210049195.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318876.P9287769333122657800

`∑{d}[n+1, #*A374134(#)]`
-/

namespace A318876.P9287769333122657800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A374134 d

end

end A318876.P9287769333122657800

noncomputable section

/-- A318876: Sum of divisors d of n for which 2*phi(d) > d.

Offset 1, canonical program `A318876.P9287769333122657800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318876 (n : ℕ) : ℤ :=
  A318876.P9287769333122657800.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318877.P9970862317618563708

`∑{d}[n+1, #*A323170(#)]`
-/

namespace A318877.P9970862317618563708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A323170 d

end

end A318877.P9970862317618563708

noncomputable section

/-- A318877: Sum of divisors d of n for which 2*phi(d) < d.

Offset 1, canonical program `A318877.P9970862317618563708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318877 (n : ℕ) : ℤ :=
  A318877.P9970862317618563708.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319258.P16680523646916634004

`∑[gcd(n, A335129(n+4))*A335129(n+4)]`
-/

namespace A319258.P16680523646916634004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A335129 (n + 4)) : ℤ) * A335129 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319258.P16680523646916634004

noncomputable section

/-- A319258: a(n) = 1 + 2*3 + 4 + 5*6 + 7 + 8*9 + 10 + 11*12 + ... + (up to n).

Offset 1, canonical program `A319258.P16680523646916634004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A319258 (n : ℕ) : ℤ :=
  A319258.P16680523646916634004.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A319258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320071.P2683966818165125701

`∑{d}[n+1, A007427(#)*A339686((n+1)/#)]`
-/

namespace A320071.P2683966818165125701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A339686 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A320071.P2683966818165125701

noncomputable section

/-- A320071: Number of length n primitive (=aperiodic or period n) 6-ary words which are earlier in lexicographic order than any other word derived by cyclic shifts of the alphabet.

Offset 1, canonical program `A320071.P2683966818165125701`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A320071 (n : ℕ) : ℤ :=
  A320071.P2683966818165125701.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A320071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320072.P6136818762582118294

`∑{d}[n+1, A007427(#)*A339687((n+1)/#)]`
-/

namespace A320072.P6136818762582118294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A339687 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A320072.P6136818762582118294

noncomputable section

/-- A320072: Number of length n primitive (=aperiodic or period n) 7-ary words which are earlier in lexicographic order than any other word derived by cyclic shifts of the alphabet.

Offset 1, canonical program `A320072.P6136818762582118294`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A320072 (n : ℕ) : ℤ :=
  A320072.P6136818762582118294.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A320072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320073.P573126222224900176

`∑{d}[n+1, A007427(#)*A339688((n+1)/#)]`
-/

namespace A320073.P573126222224900176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A339688 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A320073.P573126222224900176

noncomputable section

/-- A320073: Number of length n primitive (=aperiodic or period n) 8-ary words which are earlier in lexicographic order than any other word derived by cyclic shifts of the alphabet.

Offset 1, canonical program `A320073.P573126222224900176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A320073 (n : ℕ) : ℤ :=
  A320073.P573126222224900176.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A320073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320074.P12082803860178623221

`∑{d}[n+1, A007427(#)*A339689((n+1)/#)]`
-/

namespace A320074.P12082803860178623221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A339689 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A320074.P12082803860178623221

noncomputable section

/-- A320074: Number of length n primitive (=aperiodic or period n) 9-ary words which are earlier in lexicographic order than any other word derived by cyclic shifts of the alphabet.

Offset 1, canonical program `A320074.P12082803860178623221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A320074 (n : ℕ) : ℤ :=
  A320074.P12082803860178623221.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A320074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320577.P11809975775811549557

`(n+3)/3*A321773(n+3)`
-/

namespace A320577.P11809975775811549557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / 3 * (A321773 (n + 3) : ℚ)

end

end A320577.P11809975775811549557

noncomputable section

/-- A320577: Number of isosceles triangles whose vertices are the vertices of a regular n-gon.

Offset 3, canonical program `A320577.P11809975775811549557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320577 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A320577.P11809975775811549557.a (n - 3))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320632.P12850052149328175340

`eq[1, A379958(n+1)]+1`
-/

namespace A320632.P12850052149328175340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379958 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A320632.P12850052149328175340

noncomputable section

/-- A320632: Numbers k such that there exists a pair of factorizations of k into factors > 1 where no factor of one divides any factor of the other.

Offset 1, canonical program `A320632.P12850052149328175340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320632 (n : ℕ) : ℤ :=
  (A320632.P12850052149328175340.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321013.P13730474975989391293

`A338649(n+1)-A338652(n+1)`
-/

namespace A321013.P13730474975989391293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338649 (n + 1) - A338652 (n + 1)

end

end A321013.P13730474975989391293

noncomputable section

/-- A321013: a(n) = how many of {6,7,8} divide n.

Offset 1, canonical program `A321013.P13730474975989391293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321013 (n : ℕ) : ℤ :=
  A321013.P13730474975989391293.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321015.P1134771040265211832

`∑{d}[n+1, A387540(#)]`
-/

namespace A321015.P1134771040265211832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A387540 d

end

end A321015.P1134771040265211832

noncomputable section

/-- A321015: Number of isohedral Voronoi parallelotopes in R^n.

Offset 1, canonical program `A321015.P1134771040265211832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A321015 (n : ℕ) : ℤ :=
  A321015.P1134771040265211832.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A321015.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A321555.P2088311004678496036

`2*A321819(n+1)-A013958(n+1)`
-/

namespace A321555.P2088311004678496036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A321819 (n + 1) - A013958 (n + 1)

end

end A321555.P2088311004678496036

noncomputable section

/-- A321555: a(n) = Sum_{d|n} (-1)^(n/d+1)*d^10.

Offset 1, canonical program `A321555.P2088311004678496036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321555 (n : ℕ) : ℤ :=
  A321555.P2088311004678496036.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A321555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325102.P14679269037956445384

`2*A325103(n)`
-/

namespace A325102.P14679269037956445384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A325103 n

end

end A325102.P14679269037956445384

noncomputable section

/-- A325102: Number of ordered pairs of positive integers up to n with no binary carries.

Offset 0, canonical program `A325102.P14679269037956445384`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325102 (n : ℕ) : ℤ :=
  A325102.P14679269037956445384.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A325102.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A325423.P4379105431595009186

`lt[A260196(n), A340793(2*n+1)]`
-/

namespace A325423.P4379105431595009186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A325423.P4379105431595009186

noncomputable section

/-- A325423: Numbers k such that sigma(2*k+1) >= sigma(2*k).

Offset 1, canonical program `A325423.P4379105431595009186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. -/
def A325423 (n : ℕ) : ℤ :=
  (A325423.P4379105431595009186.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. -/
def A325423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A280292.P17147228295463227534

`A001414(n+1)-A008472(n+1)`
-/

namespace A280292.P17147228295463227534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) - A008472 (n + 1)

end

end A280292.P17147228295463227534

noncomputable section

/-- A280292: a(n) = sopfr(n) - sopf(n).

Offset 1, canonical program `A280292.P17147228295463227534`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A008472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A280292 (n : ℕ) : ℤ :=
  A280292.P17147228295463227534.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A008472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A280292.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A281594.P9064033195026317982

`A007947(A000108(n))`
-/

namespace A281594.P9064033195026317982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A000108 n).toNat

end

end A281594.P9064033195026317982

noncomputable section

/-- A281594: The radical of the Catalan number which is the largest squarefree number dividing binomial(2*n,n)/(n+1).

Offset 0, canonical program `A281594.P9064033195026317982`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A281594 (n : ℕ) : ℤ :=
  A281594.P9064033195026317982.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A281594.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A283998.P9614756584148287979

`A005187(n)-A283996(n)`
-/

namespace A283998.P9614756584148287979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n - A283996 n

end

end A283998.P9614756584148287979

noncomputable section

/-- A283998: a(n) = n AND A005187(floor(n/2)), where AND is bitwise-and (A004198).

Offset 0, canonical program `A283998.P9614756584148287979`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283996, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283998 (n : ℕ) : ℤ :=
  A283998.P9614756584148287979.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A283996, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A283998.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A284847.P9193682019044104553

`A003159(A004525(n+1))+A004525(n+2)+n`
-/

namespace A284847.P9193682019044104553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (A004525 (n + 1)).toNat + (A004525 (n + 2) + (n : ℤ))

end

end A284847.P9193682019044104553

noncomputable section

/-- A284847: Positions of 1 in the {1100->0}-transform of A010060; complement of A284820.

Offset 1, canonical program `A284847.P9193682019044104553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A284847 (n : ℕ) : ℤ :=
  A284847.P9193682019044104553.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A284847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A285329.P11356628492723450614

`A013928(A007947(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A285329.P11356628492723450614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A007947 (n + 1)).toNat

end

end A285329.P11356628492723450614

noncomputable section

/-- A285329: a(n) = A013928(A007947(n)).

Offset 1, canonical program `A285329.P11356628492723450614`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A013928, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A285329 (n : ℕ) : ℤ :=
  A285329.P11356628492723450614.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A013928, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A285329.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A285769.P12128075102545262245

`A007947(n+1)^A005361(n+1)`
-/

namespace A285769.P12128075102545262245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) ^ (A005361 (n + 1) : ℤ)

end

end A285769.P12128075102545262245

noncomputable section

/-- A285769: (Product of distinct prime factors)^(Product of prime exponents).

Offset 1, canonical program `A285769.P12128075102545262245`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A285769 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A285769.P12128075102545262245.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A285769.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A285879.P12342465036758239665

`∑[A323239(n+1)]`
-/

namespace A285879.P12342465036758239665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A285879.P12342465036758239665

noncomputable section

/-- A285879: Number of odd squarefree numbers <= n.

Offset 1, canonical program `A285879.P12342465036758239665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285879 (n : ℕ) : ℤ :=
  A285879.P12342465036758239665.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A285879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289495.P8621251357975722322

`A000720(A008706(n+1))-A000720(A008706(n+1)-(n+1))`
-/

namespace A289495.P8621251357975722322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A008706 (n + 1)).toNat - A000720 (A008706 (n + 1) - (n + 1 : ℤ)).toNat

end

end A289495.P8621251357975722322

noncomputable section

/-- A289495: Number of primes in the interval [4n, 5n].

Offset 1, canonical program `A289495.P8621251357975722322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289495 (n : ℕ) : ℤ :=
  A289495.P8621251357975722322.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A289498.P17823275358435890981

`A000720(8*(n+1))-A000720(7*n+6)`
-/

namespace A289498.P17823275358435890981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (8 * (n + 1)) - A000720 (7 * n + 6)

end

end A289498.P17823275358435890981

noncomputable section

/-- A289498: Number of primes in the interval [7n, 8n].

Offset 1, canonical program `A289498.P17823275358435890981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289498 (n : ℕ) : ℤ :=
  A289498.P17823275358435890981.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A289498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A291440.P5300707734010347566

`A000720((n+1)²)-A000720(n+1)²`
-/

namespace A291440.P5300707734010347566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n + 1) ^ 2) - A000720 (n + 1) ^ 2

end

end A291440.P5300707734010347566

noncomputable section

/-- A291440: a(n) = pi(n^2) - pi(n)^2, where pi(n) = A000720(n).

Offset 1, canonical program `A291440.P5300707734010347566`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A291440 (n : ℕ) : ℤ :=
  A291440.P5300707734010347566.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A291440.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A291538.P953882341911641675

`A000720((n+1)^3)-A000720(n+1)^3`
-/

namespace A291538.P953882341911641675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n + 1) ^ 3) - A000720 (n + 1) ^ 3

end

end A291538.P953882341911641675

noncomputable section

/-- A291538: a(n) = PrimePi(n^3) - PrimePi(n)^3, where PrimePi = A000720.

Offset 1, canonical program `A291538.P953882341911641675`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A291538 (n : ℕ) : ℤ :=
  A291538.P953882341911641675.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A291538.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293328.P1628811310292705027

`A293327(n)+1`
-/

namespace A293328.P1628811310292705027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293327 n + 1

end

end A293328.P1628811310292705027

noncomputable section

/-- A293328: Least integer k such that k/2^n > sqrt(1/3).

Offset 0, canonical program `A293328.P1628811310292705027`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293327, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293328 (n : ℕ) : ℤ :=
  A293328.P1628811310292705027.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293327, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293328.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293331.P14628135211363865377

`A221942(2*n)`
-/

namespace A293331.P14628135211363865377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221942 (2 * n)

end

end A293331.P14628135211363865377

noncomputable section

/-- A293331: Greatest integer k such that k/2^n < sqrt(5).

Offset 0, canonical program `A293331.P14628135211363865377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A293331 (n : ℕ) : ℤ :=
  A293331.P14628135211363865377.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A293331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293339.P11332361614021270041

`A293341(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A293339.P11332361614021270041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A293341 (n - 1) + a (n - 1)

end

end A293339.P11332361614021270041

noncomputable section

/-- A293339: Greatest integer k such that k/2^n < 1/e.

Offset 0, canonical program `A293339.P11332361614021270041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A293339 (n : ℕ) : ℤ :=
  A293339.P11332361614021270041.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A293339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293353.P6349425847895213126

`A293352(n)+1`
-/

namespace A293353.P6349425847895213126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293352 n + 1

end

end A293353.P6349425847895213126

noncomputable section

/-- A293353: Least integer k such that k/2^n > Euler's constant (0.577216...).

Offset 0, canonical program `A293353.P6349425847895213126`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293352, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293353 (n : ℕ) : ℤ :=
  A293353.P6349425847895213126.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293352, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A293353.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A293431.P1349061664695987811

`∑{d}[n+1, A147612(#)]`
-/

namespace A293431.P1349061664695987811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A147612 d

end

end A293431.P1349061664695987811

noncomputable section

/-- A293431: a(n) is the number of Jacobsthal numbers dividing n.

Offset 1, canonical program `A293431.P1349061664695987811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293431 (n : ℕ) : ℤ :=
  A293431.P1349061664695987811.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293432.P1360839429234546005

`∑{d}[n+1, #*A147612(#)]`
-/

namespace A293432.P1360839429234546005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A147612 d

end

end A293432.P1360839429234546005

noncomputable section

/-- A293432: Sum of Jacobsthal numbers that divide n.

Offset 1, canonical program `A293432.P1360839429234546005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293432 (n : ℕ) : ℤ :=
  A293432.P1360839429234546005.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A293432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A293833.P17653983058469119188

`Δ[A000720(A020330(n+1))]`
-/

namespace A293833.P17653983058469119188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A020330 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293833.P17653983058469119188

noncomputable section

/-- A293833: Number of primes p with A020330(n) < p < A020330(n+1).

Offset 1, canonical program `A293833.P17653983058469119188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. -/
def A293833 (n : ℕ) : ℤ :=
  A293833.P17653983058469119188.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. -/
def A293833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294879.P13597222505789495960

`∑{d}[n+1, A294878(#)]-A294878(n+1)`
-/

namespace A294879.P13597222505789495960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A294878 d - A294878 (n + 1)

end

end A294879.P13597222505789495960

noncomputable section

/-- A294879: Number of proper divisors of n that are in Perrin sequence, A001608.

Offset 1, canonical program `A294879.P13597222505789495960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294879 (n : ℕ) : ℤ :=
  A294879.P13597222505789495960.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A294879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A294936.P10769920400480544505

`1-A294934(n+1)`
-/

namespace A294936.P10769920400480544505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A294934 (n + 1)

end

end A294936.P10769920400480544505

noncomputable section

/-- A294936: Characteristic function for nondeficient numbers (A023196): a(n) = 1 if A001065(n) >= n, 0 otherwise.

Offset 1, canonical program `A294936.P10769920400480544505`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294934, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294936 (n : ℕ) : ℤ :=
  A294936.P10769920400480544505.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294934, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294936.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A294937.P16064831210993750001

`1-A294935(n+1)`
-/

namespace A294937.P16064831210993750001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A294935 (n + 1)

end

end A294937.P16064831210993750001

noncomputable section

/-- A294937: Characteristic function for abundant numbers (A005101): a(n) = 1 if A001065(n) > n, 0 otherwise.

Offset 1, canonical program `A294937.P16064831210993750001`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294935, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294937 (n : ℕ) : ℤ :=
  A294937.P16064831210993750001.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294935, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A294937.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A295009.P8188260097870525443

`lt[0, A086017(n)]`
-/

namespace A295009.P8188260097870525443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086017 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A295009.P8188260097870525443

noncomputable section

/-- A295009: Numbers k such that the largest digit of k^2 is 9.

Offset 1, canonical program `A295009.P8188260097870525443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5541 terms. -/
def A295009 (n : ℕ) : ℤ :=
  (A295009.P8188260097870525443.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5541 terms. -/
def A295009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297402.P15825475486828403093

`A074723(n+1)/2`
-/

namespace A297402.P15825475486828403093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074723 (n + 1) : ℚ) / 2

end

end A297402.P15825475486828403093

noncomputable section

/-- A297402: a(n) = gcd_{k=1..n} (prime(k+1)^n-1)/2.

Offset 1, canonical program `A297402.P15825475486828403093`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074723, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A297402 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A297402.P15825475486828403093.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074723, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A297402.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A300222.P16406266268068730929

`2*A005836(1+A289814(n))`
-/

namespace A300222.P16406266268068730929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005836 (1 + A289814 n).toNat

end

end A300222.P16406266268068730929

noncomputable section

/-- A300222: In ternary (base-3) representation of n, replace 1's with 0's.

Offset 0, canonical program `A300222.P16406266268068730929`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289814, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A300222 (n : ℕ) : ℤ :=
  A300222.P16406266268068730929.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289814, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A300222.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A300244.P9625396769520001980

`∑{d}[n+1, A005187(#)*A157658((n+1)/#)]`
-/

namespace A300244.P9625396769520001980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A005187 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300244.P9625396769520001980

noncomputable section

/-- A300244: Difference between A005187 and its Möbius transform (A297111).

Offset 1, canonical program `A300244.P9625396769520001980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300244 (n : ℕ) : ℤ :=
  A300244.P9625396769520001980.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300244.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A303278.P12937793510976264127`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A303278 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A303278.P12937793510976264127.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A303278.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A304091.P11057052564092493718

`∑{d}[n+1, A102460(#)]-A102460(n+1)`
-/

namespace A304091.P11057052564092493718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A102460 d - A102460 (n + 1)

end

end A304091.P11057052564092493718

noncomputable section

/-- A304091: a(n) is the number of the proper divisors of n that are Lucas numbers (A000032, with 2 included).

Offset 1, canonical program `A304091.P11057052564092493718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304091 (n : ℕ) : ℤ :=
  A304091.P11057052564092493718.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A304091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A304483.P17392698162710059633

`A000720(n+1)*A000720(2*(n+1))`
-/

namespace A304483.P17392698162710059633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) * A000720 (2 * (n + 1))

end

end A304483.P17392698162710059633

noncomputable section

/-- A304483: a(n) = pi(n)*pi(2n), where pi is A000720: the prime counting function.

Offset 1, canonical program `A304483.P17392698162710059633`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304483 (n : ℕ) : ℤ :=
  A304483.P17392698162710059633.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A304483.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A304768.P12049838083210092088

`1/(n+1)*A007947(n+1)^(1+A051903(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A304768.P12049838083210092088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * (A007947 (n + 1) : ℚ) ^ (1 + A051903 (n + 1) : ℤ)

end

end A304768.P12049838083210092088

noncomputable section

/-- A304768: Augmented integer conjugate of n. a(n) = (1/n) * A007947(n)^(1 + A051903(n)) where A007947 is squarefree kernel and A051903 is maximum prime exponent.

Offset 1, canonical program `A304768.P12049838083210092088`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A304768 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A304768.P12049838083210092088.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A051903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A304768.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A305426.P17358610053433426674

`∑{d}[n+1, A036987(#)]-A036987(n+1)`
-/

namespace A305426.P17358610053433426674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 d - A036987 (n + 1)

end

end A305426.P17358610053433426674

noncomputable section

/-- A305426: Number of proper divisors of n of the form 2^k - 1 for k >= 1.

Offset 1, canonical program `A305426.P17358610053433426674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305426 (n : ℕ) : ℤ :=
  A305426.P17358610053433426674.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A305426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A306199.P1390031981677856011

`lt[A001227(n+1), A001817(n+1)]+1`
-/

namespace A306199.P1390031981677856011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001817 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A306199.P1390031981677856011

noncomputable section

/-- A306199: Numbers k having the property that tau(4*k) < tau(3*k) where tau = A000005.

Offset 1, canonical program `A306199.P1390031981677856011`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1819 terms. -/
def A306199 (n : ℕ) : ℤ :=
  (A306199.P1390031981677856011.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1819 terms. -/
def A306199.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A306328.P7079305387791710767`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A008472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A306328 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A306328.P7079305387791710767.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A008472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A306328.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A307152.P11500915941825313180

`floor((A002144(n+1)+19)/24)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A307152.P11500915941825313180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002144 (n + 1) + 19 : ℚ) / 24⌋

end

end A307152.P11500915941825313180

noncomputable section

/-- A307152: a(n) = floor((A002144(n)+19)/24).

Offset 1, canonical program `A307152.P11500915941825313180`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A307152 (n : ℕ) : ℤ :=
  A307152.P11500915941825313180.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A307152.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A309511.P536721311039358920

`A007590(A110654(n))+A056827(n)%2`
-/

namespace A309511.P536721311039358920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (A110654 n).toNat + Int.tmod (A056827 n) 2

end

end A309511.P536721311039358920

noncomputable section

/-- A309511: Number of odd parts in the partitions of n into 3 parts.

Offset 0, canonical program `A309511.P536721311039358920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5673 terms. -/
def A309511 (n : ℕ) : ℤ :=
  A309511.P536721311039358920.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5673 terms. -/
def A309511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318451.P1128071880896831267

`∑{e}[(n+1)/and(n+1, -(n+1)), A005187(#)]`
-/

namespace A318451.P1128071880896831267
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A005187 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A318451.P1128071880896831267

noncomputable section

/-- A318451: The 2-adic valuation of A318450.

Offset 1, canonical program `A318451.P1128071880896831267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318451 (n : ℕ) : ℤ :=
  A318451.P1128071880896831267.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318458.P13171011643438111848

`A000203(n+1)-A318456(n+1)`
-/

namespace A318458.P13171011643438111848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A318456 (n + 1)

end

end A318458.P13171011643438111848

noncomputable section

/-- A318458: a(n) = n AND A001065(n), where AND is bitwise-and (A004198) & A001065 = sum of proper divisors.

Offset 1, canonical program `A318458.P13171011643438111848`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318456, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318458 (n : ℕ) : ℤ :=
  A318458.P13171011643438111848.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318456, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318458.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318471.P10974853522261478504

`∑{e}[n+1, A000045(#)]`
-/

namespace A318471.P10974853522261478504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000045 (Nat.factorization (f1 n) p)

end

end A318471.P10974853522261478504

noncomputable section

/-- A318471: Additive with a(p^e) = A000045(e).

Offset 1, canonical program `A318471.P10974853522261478504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318471 (n : ℕ) : ℤ :=
  A318471.P10974853522261478504.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318475.P14929770320897648829

`∑{e}[n+1, A000108(#)]`
-/

namespace A318475.P14929770320897648829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000108 (Nat.factorization (f1 n) p)

end

end A318475.P14929770320897648829

noncomputable section

/-- A318475: Additive with a(p^e) = A000108(e).

Offset 1, canonical program `A318475.P14929770320897648829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318475 (n : ℕ) : ℤ :=
  A318475.P14929770320897648829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A318475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A318833.P15994994677912991465

`n+1+A023900(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A318833.P15994994677912991465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A023900 (n + 1)

end

end A318833.P15994994677912991465

noncomputable section

/-- A318833: a(n) = n + A023900(n).

Offset 1, canonical program `A318833.P15994994677912991465`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023900, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318833 (n : ℕ) : ℤ :=
  A318833.P15994994677912991465.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023900, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318833.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A319007.P8965321917248002935

`A319006(n+1)-(n+1)`
-/

namespace A319007.P8965321917248002935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319006 (n + 1) - (n + 1 : ℤ)

end

end A319007.P8965321917248002935

noncomputable section

/-- A319007: Sum of the next n nonnegative integers repeated (A004526).

Offset 1, canonical program `A319007.P8965321917248002935`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A319006, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319007 (n : ℕ) : ℤ :=
  A319007.P8965321917248002935.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A319006, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A319007.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A320001.P12998613339711541630

`A279060(n+1)-A079979(n)`
-/

namespace A320001.P12998613339711541630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279060 (n + 1) - A079979 n

end

end A320001.P12998613339711541630

noncomputable section

/-- A320001: Number of proper divisors of n of the form 6*k + 1.

Offset 1, canonical program `A320001.P12998613339711541630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320001 (n : ℕ) : ℤ :=
  A320001.P12998613339711541630.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A320001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A320667.P12312987098822007039

`A066194(n+2)-A066194(n+1)`
-/

namespace A320667.P12312987098822007039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066194 (n + 2) - A066194 (n + 1)

end

end A320667.P12312987098822007039

noncomputable section

/-- A320667: First differences of A066194.

Offset 1, canonical program `A320667.P12312987098822007039`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066194, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A320667 (n : ℕ) : ℤ :=
  A320667.P12312987098822007039.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066194, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A320667.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A324047.P16299384145559739800

`A000203(n+1)-A106315(n+1)%(n+1)`
-/

namespace A324047.P16299384145559739800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - Int.tmod (A106315 (n + 1)) (n + 1 : ℤ)

end

end A324047.P16299384145559739800

noncomputable section

/-- A324047: a(n) = A000203(n) - A106316(n).

Offset 1, canonical program `A324047.P16299384145559739800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324047 (n : ℕ) : ℤ :=
  A324047.P16299384145559739800.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324245.P9435010914356498556

`A342131(n)%A324036(n)`
-/

namespace A324245.P9435010914356498556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342131 n) (A324036 n)

end

end A324245.P9435010914356498556

noncomputable section

/-- A324245: The modified Collatz map considered by Vaillant and Delarue.

Offset 0, canonical program `A324245.P9435010914356498556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324245 (n : ℕ) : ℤ :=
  A324245.P9435010914356498556.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324245.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324726.P9824168674270206015

`eq[2*(n+1), A318466(n+1)]+1`
-/

namespace A324726.P9824168674270206015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318466 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A324726.P9824168674270206015

noncomputable section

/-- A324726: Numbers k such that 2*k is equal to 2*k OR sigma(k), where OR is bitwise-or, A003986, and sigma is the sum of divisors function.

Offset 1, canonical program `A324726.P9824168674270206015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1334 terms. -/
def A324726 (n : ℕ) : ℤ :=
  (A324726.P9824168674270206015.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1334 terms. -/
def A324726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326142.P15415912859726343761

`A000203(n+1)-A007947(n+1)`
-/

namespace A326142.P15415912859726343761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A007947 (n + 1)

end

end A326142.P15415912859726343761

noncomputable section

/-- A326142: Sum of all other divisors of n except its largest squarefree divisor: a(n) = sigma(n) - A007947(n).

Offset 1, canonical program `A326142.P15415912859726343761`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326142 (n : ℕ) : ℤ :=
  A326142.P15415912859726343761.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A326142.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A317934.P10452850100069077886

`2^A317946(n+1)`
-/

namespace A317934.P10452850100069077886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A317946 (n + 1) : ℤ)

end

end A317934.P10452850100069077886

noncomputable section

/-- A317934: Multiplicative with a(p^n) = 2^A011371(n); denominators for certain "Dirichlet Square Roots" sequences.

Offset 1, canonical program `A317934.P10452850100069077886`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A317946, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317934 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A317934.P10452850100069077886.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A317946, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A317934.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A318454.P11038260069128850637

`2^A318455(n+1)`
-/

namespace A318454.P11038260069128850637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A318455 (n + 1) : ℤ)

end

end A318454.P11038260069128850637

noncomputable section

/-- A318454: Denominators of the sequence whose Dirichlet convolution with itself yields A001227, number of odd divisors of n.

Offset 1, canonical program `A318454.P11038260069128850637`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318455, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318454 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A318454.P11038260069128850637.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318455, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A318454.provenance : SequenceMachineLib.Provenance := .conditional

