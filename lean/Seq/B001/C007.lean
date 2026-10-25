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

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A231620.P1269331257882165954

`A000930(n²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A231620.P1269331257882165954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n ^ 2)

end

end A231620.P1269331257882165954

noncomputable section

/-- A231620: a(n) = A000930(n^2), where A000930 is Narayana's cows sequence.

Offset 0, canonical program `A231620.P1269331257882165954`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000930(n²)` (program `A231620.P1269331257882165954`, by `A231620.P1269331257882165954.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A231620 (n : ℕ) : ℤ :=
  A231620.P1269331257882165954.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000930(n²)` (program `A231620.P1269331257882165954`, by `A231620.P1269331257882165954.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A231620.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A231621.P14005829549989832237

`A000930(n*(n+1)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A231621.P14005829549989832237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (SequenceMachineLib.roundAway ((n * (n + 1) : ℚ) / 2)).toNat

end

end A231621.P14005829549989832237

noncomputable section

/-- A231621: a(n) = A000930(n*(n+1)/2), where A000930 is Narayana's cows sequence.

Offset 0, canonical program `A231621.P14005829549989832237`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000930(n*(n+1)/2)` (program `A231621.P14005829549989832237`, by `A231621.P14005829549989832237.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A231621 (n : ℕ) : ℤ :=
  A231621.P14005829549989832237.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000930(n*(n+1)/2)` (program `A231621.P14005829549989832237`, by `A231621.P14005829549989832237.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A231621.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A244327.P16833651396642504869

`floor(A000217(n+1)/A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A244327.P16833651396642504869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000217 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ)⌋

end

end A244327.P16833651396642504869

noncomputable section

/-- A244327: a(n) = floor((n*(n+1)/2) / sigma(n)) = floor(A000217(n) / A000203(n)).

Offset 1, canonical program `A244327.P16833651396642504869`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A000217(n+1)/A000203(n+1))` (program `A244327.P16833651396642504869`, by `A244327.P16833651396642504869.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A244327 (n : ℕ) : ℤ :=
  A244327.P16833651396642504869.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A000217(n+1)/A000203(n+1))` (program `A244327.P16833651396642504869`, by `A244327.P16833651396642504869.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A244327.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A249071.P16849140940575758352

`A004001(2*(n+1))-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249071.P16849140940575758352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A249071.P16849140940575758352

noncomputable section

/-- A249071: a(n) = A004001(2*n) - n, where A004001 is Hofstadter-Conway $10000 sequence.

Offset 1, canonical program `A249071.P16849140940575758352`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A004001(2*(n+1))-(n+1)` (program `A249071.P16849140940575758352`, by `A249071.P16849140940575758352.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A249071 (n : ℕ) : ℤ :=
  A249071.P16849140940575758352.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A004001(2*(n+1))-(n+1)` (program `A249071.P16849140940575758352`, by `A249071.P16849140940575758352.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A249071.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A251732.P11083506637498144455

`3^n*A123335(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A251732.P11083506637498144455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A123335 n

end

end A251732.P11083506637498144455

noncomputable section

/-- A251732: a(n) = 3^n*A123335(n). Rational parts of the integers in Q(sqrt(2)) giving the length of a Lévy C-curve variant at iteration step n.

Offset 0, canonical program `A251732.P11083506637498144455`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n*A123335(n)` (program `A251732.P11083506637498144455`, by `A251732.P11083506637498144455.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A251732 (n : ℕ) : ℤ :=
  A251732.P11083506637498144455.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n*A123335(n)` (program `A251732.P11083506637498144455`, by `A251732.P11083506637498144455.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A251732.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A253103.P7539890722404104851

`A001045(n+2)^3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A253103.P7539890722404104851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 2) ^ 3

end

end A253103.P7539890722404104851

noncomputable section

/-- A253103: A001045(n)^3.

Offset 2, canonical program `A253103.P7539890722404104851`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001045(n+2)^3` (program `A253103.P7539890722404104851`, by `A253103.P7539890722404104851.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A253103 (n : ℕ) : ℤ :=
  A253103.P7539890722404104851.a (n - 2)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001045(n+2)^3` (program `A253103.P7539890722404104851`, by `A253103.P7539890722404104851.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A253103.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A259104.P10073909568628370232

`A000522(n+2)-A000522(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A259104.P10073909568628370232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 (n + 2) - A000522 n

end

end A259104.P10073909568628370232

noncomputable section

/-- A259104: A000522(n+2)-A000522(n).

Offset 0, canonical program `A259104.P10073909568628370232`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000522(n+2)-A000522(n)` (program `A259104.P10073909568628370232`, by `A259104.P10073909568628370232.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A259104 (n : ℕ) : ℤ :=
  A259104.P10073909568628370232.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000522(n+2)-A000522(n)` (program `A259104.P10073909568628370232`, by `A259104.P10073909568628370232.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A259104.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A267707.P16541266166220000650

`A000217(A000217(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A267707.P16541266166220000650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000217 n + 1).toNat

end

end A267707.P16541266166220000650

noncomputable section

/-- A267707: a(n) = A000217(A000217(n)+1).

Offset 0, canonical program `A267707.P16541266166220000650`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000217(A000217(n)+1)` (program `A267707.P16541266166220000650`, by `A267707.P16541266166220000650.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A267707 (n : ℕ) : ℤ :=
  A267707.P16541266166220000650.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000217(A000217(n)+1)` (program `A267707.P16541266166220000650`, by `A267707.P16541266166220000650.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A267707.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A269796.P2463442920930624806

`4^n*A000108(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A269796.P2463442920930624806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A000108 (n + 1)

end

end A269796.P2463442920930624806

noncomputable section

/-- A269796: a(n) = 4^n * A000108(n+1).

Offset 0, canonical program `A269796.P2463442920930624806`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n*A000108(n+1)` (program `A269796.P2463442920930624806`, by `A269796.P2463442920930624806.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A269796 (n : ℕ) : ℤ :=
  A269796.P2463442920930624806.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n*A000108(n+1)` (program `A269796.P2463442920930624806`, by `A269796.P2463442920930624806.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A269796.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A272231.P5582003079527356277

`round((n+2)/A000720(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A272231.P5582003079527356277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℚ) / (A000720 (n + 2) : ℚ))

end

end A272231.P5582003079527356277

noncomputable section

/-- A272231: a(n) = round(n / pi(n)) = round(n / A000720(n)) where round(x) rounds up.

Offset 2, canonical program `A272231.P5582003079527356277`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round((n+2)/A000720(n+2))` (program `A272231.P5582003079527356277`, by `A272231.P5582003079527356277.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A272231 (n : ℕ) : ℤ :=
  A272231.P5582003079527356277.a (n - 2)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round((n+2)/A000720(n+2))` (program `A272231.P5582003079527356277`, by `A272231.P5582003079527356277.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A272231.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A276914.P5782440633712661028

`n²+2*A000217(A052928(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276914.P5782440633712661028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + 2 * A000217 (A052928 n).toNat

end

end A276914.P5782440633712661028

noncomputable section

/-- A276914: Subsequence of triangular numbers obtained by adding a square and two smaller triangles, a(n) = n^2 + 2*A000217(A052928(n)).

Offset 0, canonical program `A276914.P5782440633712661028`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+2*A000217(A052928(n))` (program `A276914.P5782440633712661028`, by `A276914.P5782440633712661028.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A276914 (n : ℕ) : ℤ :=
  A276914.P5782440633712661028.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+2*A000217(A052928(n))` (program `A276914.P5782440633712661028`, by `A276914.P5782440633712661028.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A276914.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A229198.P8206997386227467298

`A229194(n)-A000045(n)`
-/

namespace A229198.P8206997386227467298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229194 n - A000045 n

end

end A229198.P8206997386227467298

noncomputable section

/-- A229198: Difference between integers nearest to (2^((n-3)/2) + 3^((n-3)/2)) (A229194) and Fibonacci numbers (A000045).

Offset 0, canonical program `A229198.P8206997386227467298`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A229198 (n : ℕ) : ℤ :=
  A229198.P8206997386227467298.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A229198.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A229414.P18002182896284813355

`A001680(3*n)`
-/

namespace A229414.P18002182896284813355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001680 (3 * n)

end

end A229414.P18002182896284813355

noncomputable section

/-- A229414: Number of set partitions of {1,...,3n} into sets of size at most 3.

Offset 0, canonical program `A229414.P18002182896284813355`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A229414 (n : ℕ) : ℤ :=
  A229414.P18002182896284813355.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A229414.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A229912.P4073503391704194822

`A000045(n)+2*A007598(n)`
-/

namespace A229912.P4073503391704194822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + 2 * A007598 n

end

end A229912.P4073503391704194822

noncomputable section

/-- A229912: a(n) = Fibonacci(n) * (2*Fibonacci(n) + 1).

Offset 0, canonical program `A229912.P4073503391704194822`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A229912 (n : ℕ) : ℤ :=
  A229912.P4073503391704194822.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A229912.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A230600.P9476386221300362793

`A000032(2^n-1)`
-/

namespace A230600.P9476386221300362793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 ^ n - 1)

end

end A230600.P9476386221300362793

noncomputable section

/-- A230600: a(n) = Lucas(2^n - 1).

Offset 0, canonical program `A230600.P9476386221300362793`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230600 (n : ℕ) : ℤ :=
  A230600.P9476386221300362793.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230600.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A230601.P4868218983335923162

`A000032(2^n+2)`
-/

namespace A230601.P4868218983335923162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 ^ n + 2)

end

end A230601.P4868218983335923162

noncomputable section

/-- A230601: a(n) = Lucas(2^n + 2).

Offset 0, canonical program `A230601.P4868218983335923162`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230601 (n : ℕ) : ℤ :=
  A230601.P4868218983335923162.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A230601.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A231303.P965024635069111883

`12*A000389(n+3)+A000292(n)`
-/

namespace A231303.P965024635069111883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A000389 (n + 3) + A000292 n

end

end A231303.P965024635069111883

noncomputable section

/-- A231303: Recurrence a(n) = a(n-2) + n^M for M=4, starting with a(0)=0, a(1)=1.

Offset 0, canonical program `A231303.P965024635069111883`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A231303 (n : ℕ) : ℤ :=
  A231303.P965024635069111883.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A231303.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A231559.P16072688482660807086

`floor(A000326(n)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A231559.P16072688482660807086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000326 n : ℚ) / 2⌋

end

end A231559.P16072688482660807086

noncomputable section

/-- A231559: a(n) = floor( A000326(n)/2 ).

Offset 0, canonical program `A231559.P16072688482660807086`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A000326(n)/2)` (program `A231559.P16072688482660807086`, by `A231559.P16072688482660807086.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A231559 (n : ℕ) : ℤ :=
  A231559.P16072688482660807086.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A000326(n)/2)` (program `A231559.P16072688482660807086`, by `A231559.P16072688482660807086.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A231559.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A231601.P16049753195343794936

`A081123(n+1)*A110138(n)`
-/

namespace A231601.P16049753195343794936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (n + 1) * A110138 n

end

end A231601.P16049753195343794936

noncomputable section

/-- A231601: Number of permutations of [n] avoiding ascents from odd to even numbers.

Offset 0, canonical program `A231601.P16049753195343794936`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A231601 (n : ℕ) : ℤ :=
  A231601.P16049753195343794936.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A231601.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A232395.P11128109952145473131

`A068527(A053698(n))`
-/

namespace A232395.P11128109952145473131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A053698 n).toNat

end

end A232395.P11128109952145473131

noncomputable section

/-- A232395: (ceiling(sqrt(n^3 + n^2 + n + 1)))^2 - (n^3 + n^2 + n + 1).

Offset 0, canonical program `A232395.P11128109952145473131`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232395 (n : ℕ) : ℤ :=
  A232395.P11128109952145473131.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232395.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A232500.P15749173745370117261

`A056040(n)*(1-2/(floor(n/2)+1))`
-/

namespace A232500.P15749173745370117261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 n : ℚ) * (1 - 2 / (⌊(n : ℚ) / 2⌋ + 1 : ℚ))

end

end A232500.P15749173745370117261

noncomputable section

/-- A232500: Oscillating orbitals over n sectors (nonpositive values indicating there exist none).

Offset 0, canonical program `A232500.P15749173745370117261`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232500 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A232500.P15749173745370117261.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232500.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A232600.P3720344291566753920

`2*(-1)^n*A045883(n)`
-/

namespace A232600.P3720344291566753920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (-1) ^ n * A045883 n

end

end A232600.P3720344291566753920

noncomputable section

/-- A232600: a(n) = Sum_{k=0..n} k^p*q^k, where p=1, q=-2.

Offset 0, canonical program `A232600.P3720344291566753920`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232600 (n : ℕ) : ℤ :=
  A232600.P3720344291566753920.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232600.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A232617.P5588073349614195493

`A001147(n+1)+A000165(n+1)`
-/

namespace A232617.P5588073349614195493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (n + 1) + A000165 (n + 1)

end

end A232617.P5588073349614195493

noncomputable section

/-- A232617: Product of first n odd numbers plus product of first n even numbers: (2n-1)!! + (2n)!!, where k!! = A006882(k).

Offset 1, canonical program `A232617.P5588073349614195493`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232617 (n : ℕ) : ℤ :=
  A232617.P5588073349614195493.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232617.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A232806.P16277909643424588756

`2*A002065(n)+1`
-/

namespace A232806.P16277909643424588756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002065 n + 1

end

end A232806.P16277909643424588756

noncomputable section

/-- A232806: a(n) = a(n-1)^2/2 + 5/2, a(0) = 1.

Offset 0, canonical program `A232806.P16277909643424588756`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232806 (n : ℕ) : ℤ :=
  A232806.P16277909643424588756.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232806.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A232965.P7853421985222852216

`A000032((n+1)/gcd(n+1, 3))^gcd(n+1, 3)`
-/

namespace A232965.P7853421985222852216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.gcd (n + 1) 3 : ℚ))).toNat ^ Nat.gcd (n + 1) 3

end

end A232965.P7853421985222852216

noncomputable section

/-- A232965: Number of circular n-bit strings that, when circularly shifted by 3 bits, do not have coincident 1's in any position.

Offset 1, canonical program `A232965.P7853421985222852216`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232965 (n : ℕ) : ℤ :=
  A232965.P7853421985222852216.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A232965.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A233208.P7410561698926400389

`floor(1/abs((n+1)*e-A022852(n+1)))`
-/

namespace A233208.P7410561698926400389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / |(n + 1 : ℝ) * Real.exp 1 - (A022852 (n + 1) : ℝ)|⌋

end

end A233208.P7410561698926400389

noncomputable section

/-- A233208: A measure of quality (the higher the better) for the approximation to e by rationals A022852(n)/n.

Offset 1, canonical program `A233208.P7410561698926400389`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A233208 (n : ℕ) : ℤ :=
  A233208.P7410561698926400389.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A233208.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A233273.P5970304182537825218

`A233272(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A233273.P5970304182537825218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233272 (2 * n + 1)

end

end A233273.P5970304182537825218

noncomputable section

/-- A233273: Bisection of A233272: a(n) = A233272(2n+1).

Offset 0, canonical program `A233273.P5970304182537825218`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A233273 (n : ℕ) : ℤ :=
  A233273.P5970304182537825218.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A233273.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A233468.P18238673532543275021

`A010888(A000040(n+2))-A010888(A000040(n+1))`
-/

namespace A233468.P18238673532543275021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A000040 (n + 2)).toNat - A010888 (A000040 (n + 1)).toNat

end

end A233468.P18238673532543275021

noncomputable section

/-- A233468: The digital root of prime(n+1) minus the digital root of prime(n).

Offset 1, canonical program `A233468.P18238673532543275021`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A233468 (n : ℕ) : ℤ :=
  A233468.P18238673532543275021.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A233468.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A233738.P7215724747704707185

`2*A004344(n)/(n+2)`
-/

namespace A233738.P7215724747704707185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A004344 n : ℚ) / (n + 2 : ℚ)

end

end A233738.P7215724747704707185

noncomputable section

/-- A233738: a(n) = 2*binomial(5*n+10, n)/(n+2).

Offset 0, canonical program `A233738.P7215724747704707185`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A233738 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A233738.P7215724747704707185.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A233738.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A234043.P6707574492733478923

`A234042(5*n+1)`
-/

namespace A234043.P6707574492733478923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234042 (5 * n + 1)

end

end A234043.P6707574492733478923

noncomputable section

/-- A234043: a(n) = binomial(5*(n+1),4)/5, with n >= 0.

Offset 0, canonical program `A234043.P6707574492733478923`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A234043 (n : ℕ) : ℤ :=
  A234043.P6707574492733478923.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A234043.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A234317.P7470704803388070308

`A000720(A002275(n+1))`
-/

namespace A234317.P7470704803388070308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A002275 (n + 1)).toNat

end

end A234317.P7470704803388070308

noncomputable section

/-- A234317: Number of primes <= R_n where R_n is 11...111 with n 1's.

Offset 1, canonical program `A234317.P7470704803388070308`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A234317 (n : ℕ) : ℤ :=
  A234317.P7470704803388070308.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A234317.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A234422.P3597506736073895590

`A000720(A007908(n+1))`
-/

namespace A234422.P3597506736073895590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A007908 (n + 1)).toNat

end

end A234422.P3597506736073895590

noncomputable section

/-- A234422: Number of primes <= 123...n.

Offset 1, canonical program `A234422.P3597506736073895590`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A234422 (n : ℕ) : ℤ :=
  A234422.P3597506736073895590.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A234422.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A234598.P11113428965064186318

`A234597(n+4)+A234576(n+4)`
-/

namespace A234598.P11113428965064186318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234597 (n + 4) + A234576 (n + 4)

end

end A234598.P11113428965064186318

noncomputable section

/-- A234598: Cardinality of the Weyl alternation set corresponding to the zero-weight in the adjoint representation of the Lie algebra of so(2n).

Offset 4, canonical program `A234598.P11113428965064186318`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A234598 (n : ℕ) : ℤ :=
  A234598.P11113428965064186318.a (n - 4)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A234598.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A234633.P11207606583156982210

`(n+1)!^3*A110706(n+1)`
-/

namespace A234633.P11207606583156982210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) ^ 3 : ℤ) * A110706 (n + 1)

end

end A234633.P11207606583156982210

noncomputable section

/-- A234633: Numbers of directed Hamiltonian paths in the complete tripartite graph K_{n,n,n}.

Offset 1, canonical program `A234633.P11207606583156982210`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A234633 (n : ℕ) : ℤ :=
  A234633.P11207606583156982210.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A234633.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A234860.P14911441388501793451

`A000203(A068601(n+2))`
-/

namespace A234860.P14911441388501793451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A068601 (n + 2)).toNat

end

end A234860.P14911441388501793451

noncomputable section

/-- A234860: Sum of the divisors of n^3 - 1.

Offset 2, canonical program `A234860.P14911441388501793451`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A234860 (n : ℕ) : ℤ :=
  A234860.P14911441388501793451.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A234860.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A234959.P12234400082203346417

`6^A122841(n+1)`
-/

namespace A234959.P12234400082203346417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A122841 (n + 1) : ℤ)

end

end A234959.P12234400082203346417

noncomputable section

/-- A234959: Highest power of 6 dividing n.

Offset 1, canonical program `A234959.P12234400082203346417`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A234959 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A234959.P12234400082203346417.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A234959.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A235367.P13030772834267686239

`A110660((n+1)²)`
-/

namespace A235367.P13030772834267686239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 ((n + 1) ^ 2)

end

end A235367.P13030772834267686239

noncomputable section

/-- A235367: Sum of positive even numbers up to n^2.

Offset 1, canonical program `A235367.P13030772834267686239`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A235367 (n : ℕ) : ℤ :=
  A235367.P13030772834267686239.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A235367.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A235534.P3376776800515303205

`A001764(2*n)`
-/

namespace A235534.P3376776800515303205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 (2 * n)

end

end A235534.P3376776800515303205

noncomputable section

/-- A235534: a(n) = binomial(6*n, 2*n) / (4*n + 1).

Offset 0, canonical program `A235534.P3376776800515303205`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A235534 (n : ℕ) : ℤ :=
  A235534.P3376776800515303205.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A235534.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A235535.P10117489047087618360

`A001764(3*n)`
-/

namespace A235535.P10117489047087618360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 (3 * n)

end

end A235535.P10117489047087618360

noncomputable section

/-- A235535: a(n) = binomial(9*n, 3*n) / (6*n + 1).

Offset 0, canonical program `A235535.P10117489047087618360`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A235535 (n : ℕ) : ℤ :=
  A235535.P10117489047087618360.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A235535.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A235963.P8917601203416474347

`A180447(n)+A085141(n)`
-/

namespace A235963.P8917601203416474347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180447 n + A085141 n

end

end A235963.P8917601203416474347

noncomputable section

/-- A235963: n appears (n+1)/(1 + (n mod 2)) times.

Offset 0, canonical program `A235963.P8917601203416474347`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A235963 (n : ℕ) : ℤ :=
  A235963.P8917601203416474347.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A235963.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A236283.P7658795798633447851

`A081352(n)-A116940(n)`
-/

namespace A236283.P7658795798633447851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081352 n - A116940 n

end

end A236283.P7658795798633447851

noncomputable section

/-- A236283: The number of orbits of triples of {1,2,...,n} under the action of the dihedral group of order 2n.

Offset 1, canonical program `A236283.P7658795798633447851`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236283 (n : ℕ) : ℤ :=
  A236283.P7658795798633447851.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236283.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A236377.P339874370298689307

`A000330(n)+A127630(n)-A000035(n)`
-/

namespace A236377.P339874370298689307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n + A127630 n - A000035 n

end

end A236377.P339874370298689307

noncomputable section

/-- A236377: Real part of Sum_{k=0..n} (k + i^k)^2, where i=sqrt(-1).

Offset 0, canonical program `A236377.P339874370298689307`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236377 (n : ℕ) : ℤ :=
  A236377.P339874370298689307.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A236377.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A237884.P1196767609388771144

`A056040(n)*floor(n/2)/(floor(n/2)+1)`
-/

namespace A237884.P1196767609388771144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 n * ⌊(n : ℚ) / 2⌋ : ℚ) / (⌊(n : ℚ) / 2⌋ + 1 : ℚ)

end

end A237884.P1196767609388771144

noncomputable section

/-- A237884: a(n) = (n!*m)/(m!*(m+1)!) where m = floor(n/2).

Offset 0, canonical program `A237884.P1196767609388771144`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A237884 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A237884.P1196767609388771144.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A237884.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A238471.P7680531597729402233

`A234042(5*n+2)`
-/

namespace A238471.P7680531597729402233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234042 (5 * n + 2)

end

end A238471.P7680531597729402233

noncomputable section

/-- A238471: a(n) = binomial(5n+6, 4)/5 for n >= 0.

Offset 0, canonical program `A238471.P7680531597729402233`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A238471 (n : ℕ) : ℤ :=
  A238471.P7680531597729402233.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A238471.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A238472.P11742707975439042983

`A234042(5*n+3)`
-/

namespace A238472.P11742707975439042983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234042 (5 * n + 3)

end

end A238472.P11742707975439042983

noncomputable section

/-- A238472: a(n) = binomial(5*n+7, 4)/5 for n >= 0.

Offset 0, canonical program `A238472.P11742707975439042983`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A238472 (n : ℕ) : ℤ :=
  A238472.P11742707975439042983.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A238472.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A238537.P9528414148842263238

`1/5*A000129(3*(n+1))*A001333(n+1)`
-/

namespace A238537.P9528414148842263238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 5 * (A000129 (3 * (n + 1)) : ℚ) * (A001333 (n + 1) : ℚ)

end

end A238537.P9528414148842263238

noncomputable section

/-- A238537: A fourth-order linear divisibility sequence related to the Pell numbers.

Offset 1, canonical program `A238537.P9528414148842263238`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A238537 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A238537.P9528414148842263238.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A238537.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A238684.P14301598205073559122

`A007947(A000045(n+1))`
-/

namespace A238684.P14301598205073559122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A000045 (n + 1)).toNat

end

end A238684.P14301598205073559122

noncomputable section

/-- A238684: a(1) = a(2) = 1; for n > 2, a(n) is the product of prime factors of the n-th Fibonacci number.

Offset 1, canonical program `A238684.P14301598205073559122`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A238684 (n : ℕ) : ℤ :=
  A238684.P14301598205073559122.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A238684.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A239040.P44547061062211156

`A077999(n+3)/2`
-/

namespace A239040.P44547061062211156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077999 (n + 3) : ℚ) / 2

end

end A239040.P44547061062211156

noncomputable section

/-- A239040: Number of n X 1 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it, modulo 4.

Offset 1, canonical program `A239040.P44547061062211156`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239040 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A239040.P44547061062211156.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239040.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A239091.P6341556871755184229

`A061168(n+1)-A011371(n+1)+A000523(n+1)`
-/

namespace A239091.P6341556871755184229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061168 (n + 1) - A011371 (n + 1) + A000523 (n + 1)

end

end A239091.P6341556871755184229

noncomputable section

/-- A239091: Prefix overlap of dictionary consisting of binary expansions of 0 through n.

Offset 1, canonical program `A239091.P6341556871755184229`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239091 (n : ℕ) : ℤ :=
  A239091.P6341556871755184229.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239091.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A239342.P4179228539437932597

`a(n-1)+a(n-2)+A000045(n-2)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A239342.P4179228539437932597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3] fun n a =>
  a (n - 1) + a (n - 2) + A000045 (n - 2)

end

end A239342.P4179228539437932597

noncomputable section

/-- A239342: Number of 1's in all compositions of n into odd parts.

Offset 0, canonical program `A239342.P4179228539437932597`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239342 (n : ℕ) : ℤ :=
  A239342.P4179228539437932597.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239342.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A239364.P1653385995944032070

`2*A078986(n+1)`
-/

namespace A239364.P1653385995944032070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A078986 (n + 1)

end

end A239364.P1653385995944032070

noncomputable section

/-- A239364: Numbers n such that (n^2-4)/10 is a square.

Offset 1, canonical program `A239364.P1653385995944032070`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239364 (n : ℕ) : ℤ :=
  A239364.P1653385995944032070.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239364.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A239609.P13990594251603008149

`A144130(n)²`
-/

namespace A239609.P13990594251603008149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144130 n ^ 2

end

end A239609.P13990594251603008149

noncomputable section

/-- A239609: Sin(arcsin(n)- 3 arccos(n))^2.

Offset 0, canonical program `A239609.P13990594251603008149`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239609 (n : ℕ) : ℤ :=
  A239609.P13990594251603008149.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239609.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A239840.P16672039693929608220

`n!*A000085(n)`
-/

namespace A239840.P16672039693929608220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000085 n

end

end A239840.P16672039693929608220

noncomputable section

/-- A239840: Number of ordered pairs of permutation functions (f,g) on n elements satisfying f(x) = f(g(g(x))).

Offset 0, canonical program `A239840.P16672039693929608220`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239840 (n : ℕ) : ℤ :=
  A239840.P16672039693929608220.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A239840.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A240022.P9851182340327463633

`(n+1)*A070252(n+1)`
-/

namespace A240022.P9851182340327463633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A070252 (n + 1)

end

end A240022.P9851182340327463633

noncomputable section

/-- A240022: Total number of digits in palindromes with n digits.

Offset 1, canonical program `A240022.P9851182340327463633`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240022 (n : ℕ) : ℤ :=
  A240022.P9851182340327463633.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240022.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A240137.P14122888791543597295

`A000326(n)*A000566(n)`
-/

namespace A240137.P14122888791543597295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n * A000566 n

end

end A240137.P14122888791543597295

noncomputable section

/-- A240137: Sum of n consecutive cubes starting from n^3.

Offset 0, canonical program `A240137.P14122888791543597295`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240137 (n : ℕ) : ℤ :=
  A240137.P14122888791543597295.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240137.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A240440.P13847665072072513550

`15*A000579(n+4)`
-/

namespace A240440.P13847665072072513550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A000579 (n + 4)

end

end A240440.P13847665072072513550

noncomputable section

/-- A240440: Number of ways to place 3 points on a triangular grid of side n so that they are not vertices of an equilateral triangle of any orientation.

Offset 1, canonical program `A240440.P13847665072072513550`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240440 (n : ℕ) : ℤ :=
  A240440.P13847665072072513550.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240440.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A240836.P5427845226329489471

`2*A081016(n)`
-/

namespace A240836.P5427845226329489471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081016 n

end

end A240836.P5427845226329489471

noncomputable section

/-- A240836: Numbers n such that n^3 = x*y*z where 2 <= x <= y <= z , n^3+1 = (x-1)*(y+1)*(z+1).

Offset 1, canonical program `A240836.P5427845226329489471`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240836 (n : ℕ) : ℤ :=
  A240836.P5427845226329489471.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240836.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A241527.P6609325551221532550

`A000578(n)+A007051(n)`
-/

namespace A241527.P6609325551221532550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n + A007051 n

end

end A241527.P6609325551221532550

noncomputable section

/-- A241527: a(n) = n^3 + (3^n+1)/2.

Offset 0, canonical program `A241527.P6609325551221532550`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A241527 (n : ℕ) : ℤ :=
  A241527.P6609325551221532550.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A241527.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A241894.P17174019636187558007

`A000982(A005578(n+1))`
-/

namespace A241894.P17174019636187558007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A005578 (n + 1)).toNat

end

end A241894.P17174019636187558007

noncomputable section

/-- A241894: The total number of squares and rectangles appearing in the Thue-Morse sequence (1, 0 version) logical matrices after n stages.

Offset 0, canonical program `A241894.P17174019636187558007`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A241894 (n : ℕ) : ℤ :=
  A241894.P17174019636187558007.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A241894.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A242083.P11427903032979900103

`abs(A083321(A000040(n+1)))`
-/

namespace A242083.P11427903032979900103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A083321 (A000040 (n + 1)).toNat|

end

end A242083.P11427903032979900103

noncomputable section

/-- A242083: a(n) = 3^p - 2^p - 1, where p is prime(n).

Offset 1, canonical program `A242083.P11427903032979900103`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242083 (n : ℕ) : ℤ :=
  A242083.P11427903032979900103.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242083.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A242084.P10015590585242605687

`A054401(A000040(n+1))`
-/

namespace A242084.P10015590585242605687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054401 (A000040 (n + 1)).toNat

end

end A242084.P10015590585242605687

noncomputable section

/-- A242084: 5^p - 4^p - 1, where p is prime.

Offset 1, canonical program `A242084.P10015590585242605687`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242084 (n : ℕ) : ℤ :=
  A242084.P10015590585242605687.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242084.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A242172.P14720321246685490122

`A100071(n+2)/2`
-/

namespace A242172.P14720321246685490122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100071 (n + 2) : ℚ) / 2

end

end A242172.P14720321246685490122

noncomputable section

/-- A242172: a(n) = 2^n*binomial((n + 1 + (n mod 2))/2, 1/2).

Offset 0, canonical program `A242172.P14720321246685490122`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242172 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A242172.P14720321246685490122.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242172.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A242278.P1128140246244468018

`6*A167993(n+1)`
-/

namespace A242278.P1128140246244468018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A167993 (n + 1)

end

end A242278.P1128140246244468018

noncomputable section

/-- A242278: Number of non-palindromic n-tuples of 3 distinct elements.

Offset 1, canonical program `A242278.P1128140246244468018`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242278 (n : ℕ) : ℤ :=
  A242278.P1128140246244468018.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242278.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A242496.P2613612296024816382

`A001519(n+2)-A000032(n+2)+A059841(n)`
-/

namespace A242496.P2613612296024816382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 2) - A000032 (n + 2) + A059841 n

end

end A242496.P2613612296024816382

noncomputable section

/-- A242496: a(n)=sum_{j=0..n} sum_{i=0..j} F(i)*L(j), where F(n)=A000045(n) and L(n)=A000032(n).

Offset 0, canonical program `A242496.P2613612296024816382`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242496 (n : ℕ) : ℤ :=
  A242496.P2613612296024816382.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242496.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A242558.P7844537951495856975

`A001519(n+2)-A000045(n+2)-A059841(n)`
-/

namespace A242558.P7844537951495856975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 2) - A000045 (n + 2) - A059841 n

end

end A242558.P7844537951495856975

noncomputable section

/-- A242558: a(n) = Sum_{j=0..n} Sum_{i=0..j} L(i)*F(j) where L(i)=A000032(i) and F(j)=A000045(j).

Offset 0, canonical program `A242558.P7844537951495856975`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242558 (n : ℕ) : ℤ :=
  A242558.P7844537951495856975.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242558.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A242954.P14541074742461546009

`4^A054893(n)`
-/

namespace A242954.P14541074742461546009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A054893 n : ℤ)

end

end A242954.P14541074742461546009

noncomputable section

/-- A242954: a(n) = Product_{i=1..n} A234957(i).

Offset 0, canonical program `A242954.P14541074742461546009`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242954 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A242954.P14541074742461546009.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242954.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A242986.P9667508585129435527

`6*(n+1)/(3+floor(n/2))*A056040(n)`
-/

namespace A242986.P9667508585129435527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 * (n + 1) : ℚ) / (3 + ⌊(n : ℚ) / 2⌋ : ℚ) * (A056040 n : ℚ)

end

end A242986.P9667508585129435527

noncomputable section

/-- A242986: a(n) = 6*(n+1)!/((3+floor(n/2))*(floor(n/2)!)^2).

Offset 0, canonical program `A242986.P9667508585129435527`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242986 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A242986.P9667508585129435527.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A242986.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A243201.P1770549597896343998

`A003215(n)*A002061(n+1)`
-/

namespace A243201.P1770549597896343998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n * A002061 (n + 1)

end

end A243201.P1770549597896343998

noncomputable section

/-- A243201: Odd octagonal numbers indexed by triangular numbers.

Offset 0, canonical program `A243201.P1770549597896343998`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243201 (n : ℕ) : ℤ :=
  A243201.P1770549597896343998.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243201.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A243254.P9174518129503547561

`A017818(n+12)-A017817(n+12)-A052920(n+12)-A017827(n+12)+A079978(n+12)+A121262(n+12)+A079998(n+12)`
-/

namespace A243254.P9174518129503547561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017818 (n + 12) - A017817 (n + 12) - A052920 (n + 12) - A017827 (n + 12) + A079978 (n + 12) + A121262 (n + 12) + A079998 (n + 12)

end

end A243254.P9174518129503547561

noncomputable section

/-- A243254: Number of compositions of n into parts {3,4,5} when all parts 3,4 and 5 are present.

Offset 12, canonical program `A243254.P9174518129503547561`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243254 (n : ℕ) : ℤ :=
  A243254.P9174518129503547561.a (n - 12)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243254.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A243757.P16530541461814582168

`5^A027868(n)`
-/

namespace A243757.P16530541461814582168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A027868 n : ℤ)

end

end A243757.P16530541461814582168

noncomputable section

/-- A243757: a(n) = Product_{i=1..n} A060904(i).

Offset 0, canonical program `A243757.P16530541461814582168`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243757 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A243757.P16530541461814582168.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243757.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A243758.P2844968170181459511

`6^A054895(n)`
-/

namespace A243758.P2844968170181459511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A054895 n : ℤ)

end

end A243758.P2844968170181459511

noncomputable section

/-- A243758: a(n) = Product_{i=1..n} A234959(i).

Offset 0, canonical program `A243758.P2844968170181459511`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243758 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A243758.P2844968170181459511.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243758.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A243949.P3811031201628958168

`A001850(n)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A243949.P3811031201628958168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 n ^ 2

end

end A243949.P3811031201628958168

noncomputable section

/-- A243949: Squares of the central Delannoy numbers: a(n) = A001850(n)^2.

Offset 0, canonical program `A243949.P3811031201628958168`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243949 (n : ℕ) : ℤ :=
  A243949.P3811031201628958168.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A243949.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A244213.P17304327699620158115

`(-1)^n*(A000032(n)-4)`
-/

namespace A244213.P17304327699620158115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (A000032 n - 4)

end

end A244213.P17304327699620158115

noncomputable section

/-- A244213: Inverse binomial transform of -2 followed by A000032(n+1).

Offset 0, canonical program `A244213.P17304327699620158115`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244213 (n : ℕ) : ℤ :=
  A244213.P17304327699620158115.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244213.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A244309.P10908042367509660093

`A045991(A000045(n))`
-/

namespace A244309.P10908042367509660093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045991 (A000045 n).toNat

end

end A244309.P10908042367509660093

noncomputable section

/-- A244309: a(n) = F(n)^3 - F(n)^2, where F(n) is the n-th Fibonacci number (A000045).

Offset 0, canonical program `A244309.P10908042367509660093`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244309 (n : ℕ) : ℤ :=
  A244309.P10908042367509660093.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244309.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A244310.P14646271545363683586

`A045991(A000032(n))`
-/

namespace A244310.P14646271545363683586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045991 (A000032 n).toNat

end

end A244310.P14646271545363683586

noncomputable section

/-- A244310: a(n) = L(n)^3 - L(n)^2, where L(n) is the n-th Lucas number (A000032).

Offset 0, canonical program `A244310.P14646271545363683586`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244310 (n : ℕ) : ℤ :=
  A244310.P14646271545363683586.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244310.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A244479.P847924530899818169

`A244478(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A244479.P847924530899818169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244478 n : ℚ) / 2

end

end A244479.P847924530899818169

noncomputable section

/-- A244479: A244478(n)/2.

Offset 0, canonical program `A244479.P847924530899818169`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244479 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A244479.P847924530899818169.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A244479.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A245087.P13752011406387249506

`A011371(A000142(n))`
-/

namespace A245087.P13752011406387249506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A000142 n).toNat

end

end A245087.P13752011406387249506

noncomputable section

/-- A245087: Largest number such that 2^a(n) is a divisor of (n!)!.

Offset 0, canonical program `A245087.P13752011406387249506`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245087 (n : ℕ) : ℤ :=
  A245087.P13752011406387249506.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245087.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A245271.P106603522418744146

`A000196(A069921(n))`
-/

namespace A245271.P106603522418744146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A069921 n).toNat

end

end A245271.P106603522418744146

noncomputable section

/-- A245271: a(n) = floor(sqrt(F(n+2)^2 + F(n)^2)), where F(n) = A000045(n).

Offset 0, canonical program `A245271.P106603522418744146`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245271 (n : ℕ) : ℤ :=
  A245271.P106603522418744146.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245271.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A245306.P10234298044598893059

`A007598(n)+1`
-/

namespace A245306.P10234298044598893059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n + 1

end

end A245306.P10234298044598893059

noncomputable section

/-- A245306: a(n) = Fibonacci(n)^2+1.

Offset 0, canonical program `A245306.P10234298044598893059`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245306 (n : ℕ) : ℤ :=
  A245306.P10234298044598893059.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245306.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A245579.P1038564678599800465

`(n+1)*A001227(n+1)`
-/

namespace A245579.P1038564678599800465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001227 (n + 1)

end

end A245579.P1038564678599800465

noncomputable section

/-- A245579: Number of odd divisors of n multiplied by n.

Offset 1, canonical program `A245579.P1038564678599800465`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245579 (n : ℕ) : ℤ :=
  A245579.P1038564678599800465.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A245579.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A246010.P11055632082061828004

`A032527(A000040(n+1))`
-/

namespace A246010.P11055632082061828004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032527 (A000040 (n + 1)).toNat

end

end A246010.P11055632082061828004

noncomputable section

/-- A246010: a(n) = floor(5*prime(n)^2 / 4).

Offset 1, canonical program `A246010.P11055632082061828004`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A246010 (n : ℕ) : ℤ :=
  A246010.P11055632082061828004.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A246010.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A246508.P5095176053694706839

`A010888(A007775(n+1))`
-/

namespace A246508.P5095176053694706839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A007775 (n + 1)).toNat

end

end A246508.P5095176053694706839

noncomputable section

/-- A246508: Digital root of numbers congruent to {1,7,11,13,17,19,23,29} modulo 30.

Offset 1, canonical program `A246508.P5095176053694706839`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A246508 (n : ℕ) : ℤ :=
  A246508.P5095176053694706839.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A246508.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A246930.P2275830749411312343

`A000040(A008594(n+1))`
-/

namespace A246930.P2275830749411312343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A008594 (n + 1)).toNat

end

end A246930.P2275830749411312343

noncomputable section

/-- A246930: a(n) = prime(12*n).

Offset 1, canonical program `A246930.P2275830749411312343`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A246930 (n : ℕ) : ℤ :=
  A246930.P2275830749411312343.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A246930.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A246961.P12274593761469156777

`3^n*A007798(n)+2*A134939(n)`
-/

namespace A246961.P12274593761469156777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A007798 n + 2 * A134939 n

end

end A246961.P12274593761469156777

noncomputable section

/-- A246961: Numerator of the expected number of random moves in Tower of Hanoi problem with n disks starting at a randomly chosen valid configuration and ending with all disks at peg 1.

Offset 0, canonical program `A246961.P12274593761469156777`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A246961 (n : ℕ) : ℤ :=
  A246961.P12274593761469156777.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A246961.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A247014.P13063591398842416797

`2^A000982(n)`
-/

namespace A247014.P13063591398842416797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000982 n : ℤ)

end

end A247014.P13063591398842416797

noncomputable section

/-- A247014: Number of binary centrosymmetric matrices of size n X n.

Offset 0, canonical program `A247014.P13063591398842416797`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247014 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A247014.P13063591398842416797.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247014.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A247194.P11839691143919852225

`A121381(n^3)`
-/

namespace A247194.P11839691143919852225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121381 (n ^ 3)

end

end A247194.P11839691143919852225

noncomputable section

/-- A247194: a(n) = ceiling(Pi*n^3).

Offset 0, canonical program `A247194.P11839691143919852225`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247194 (n : ℕ) : ℤ :=
  A247194.P11839691143919852225.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247194.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A247335.P274043918989071057

`(1+A078986(n))/2`
-/

namespace A247335.P274043918989071057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A078986 n : ℚ) / 2

end

end A247335.P274043918989071057

noncomputable section

/-- A247335: The curvature of touching circles inscribed in a special way in the larger segment of circle of radius 10/9 divided by a chord of length 4/3.

Offset 0, canonical program `A247335.P274043918989071057`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247335 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A247335.P274043918989071057.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247335.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A247619.P7380383791181226722

`5*A027383(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A247619.P7380383791181226722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * A027383 (n - 1) + a (n - 1)

end

end A247619.P7380383791181226722

noncomputable section

/-- A247619: Start with a single pentagon; at n-th generation add a pentagon at each expandable vertex; a(n) is the sum of all label values at n-th generation. (See comment for construction rules.)

Offset 0, canonical program `A247619.P7380383791181226722`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247619 (n : ℕ) : ℤ :=
  A247619.P7380383791181226722.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A247619.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A248924.P995822908973052193

`A000032(n)-(-1)^n*n`
-/

namespace A248924.P995822908973052193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - (-1) ^ n * (n : ℤ)

end

end A248924.P995822908973052193

noncomputable section

/-- A248924: Sequence derived from arithmetic relations between powers of phi (A001622): a(n) = phi^n - (-1)^n * (n - phi^-n).

Offset 0, canonical program `A248924.P995822908973052193`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A248924 (n : ℕ) : ℤ :=
  A248924.P995822908973052193.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A248924.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A248928.P6547511480324052605

`A027434(n+1)²`
-/

namespace A248928.P6547511480324052605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (n + 1) ^ 2

end

end A248928.P6547511480324052605

noncomputable section

/-- A248928: Interleave (2*n+2)^2 with (2*n+3)^2, both listed n+1 times.

Offset 0, canonical program `A248928.P6547511480324052605`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A248928 (n : ℕ) : ℤ :=
  A248928.P6547511480324052605.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A248928.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A249142.P1672742175165314576

`A068527(A068527(n+1))`
-/

namespace A249142.P1672742175165314576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A068527 (n + 1)).toNat

end

end A249142.P1672742175165314576

noncomputable section

/-- A249142: Let k be the difference between the smallest square >= n and n. Sequence gives difference between the smallest square >= k and k.

Offset 1, canonical program `A249142.P1672742175165314576`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249142 (n : ℕ) : ℤ :=
  A249142.P1672742175165314576.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249142.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A249181.P11038538888733313613

`A057137(n)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249181.P11038538888733313613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057137 n ^ 2

end

end A249181.P11038538888733313613

noncomputable section

/-- A249181: a(n) = A057137(n)^2 where A057137 = 0,1,12,123,...,123...90,...

Offset 0, canonical program `A249181.P11038538888733313613`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249181 (n : ℕ) : ℤ :=
  A249181.P11038538888733313613.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249181.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A249348.P13311049649691406593

`(A001147(n+1)²-1)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249348.P13311049649691406593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001147 (n + 1) ^ 2 - 1 : ℚ) / 8

end

end A249348.P13311049649691406593

noncomputable section

/-- A249348: a(n) = (A001147(n+1)^2-1)/8, where A001147(n+1) = 3*5*...*(2n+1).

Offset 0, canonical program `A249348.P13311049649691406593`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249348 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A249348.P13311049649691406593.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249348.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A249349.P16621676827320448782

`(A001147(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249349.P16621676827320448782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001147 (n + 1) - 1 : ℚ) / 2

end

end A249349.P16621676827320448782

noncomputable section

/-- A249349: (A001147(n+1)-1)/2, equals the index of A249348(n) within the triangular numbers A000217.

Offset 0, canonical program `A249349.P16621676827320448782`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249349 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A249349.P16621676827320448782.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249349.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A249356.P6798267095439788159

`8*A200975(n+1)-7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249356.P6798267095439788159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A200975 (n + 1) - 7

end

end A249356.P6798267095439788159

noncomputable section

/-- A249356: 8*A200975(n)-7 where A200975 are the numbers on the diagonals in Ulam's spiral.

Offset 1, canonical program `A249356.P6798267095439788159`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249356 (n : ℕ) : ℤ :=
  A249356.P6798267095439788159.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249356.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A249452.P2619371724854992228

`16*A029744(n+1)-1`
-/

namespace A249452.P2619371724854992228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A029744 (n + 1) - 1

end

end A249452.P2619371724854992228

noncomputable section

/-- A249452: Numbers k such that A249441(k) = 3.

Offset 1, canonical program `A249452.P2619371724854992228`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249452 (n : ℕ) : ℤ :=
  A249452.P2619371724854992228.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249452.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A251655.P6827696213836453210

`A000078(n+2)-A000078(n)`
-/

namespace A251655.P6827696213836453210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n + 2) - A000078 n

end

end A251655.P6827696213836453210

noncomputable section

/-- A251655: 4-step Fibonacci sequence starting with 0, 1, 1, 1.

Offset 0, canonical program `A251655.P6827696213836453210`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251655 (n : ℕ) : ℤ :=
  A251655.P6827696213836453210.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251655.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A251656.P5740695371282096240

`A000078(n+3)-A000078(n+2)-2*A000078(n)`
-/

namespace A251656.P5740695371282096240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n + 3) - A000078 (n + 2) - 2 * A000078 n

end

end A251656.P5740695371282096240

noncomputable section

/-- A251656: 4-step Fibonacci sequence starting with 1,0,1,0.

Offset 0, canonical program `A251656.P5740695371282096240`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251656 (n : ℕ) : ℤ :=
  A251656.P5740695371282096240.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251656.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A251672.P9400077849588543496

`A079262(n+1)-A079262(n)`
-/

namespace A251672.P9400077849588543496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079262 (n + 1) - A079262 n

end

end A251672.P9400077849588543496

noncomputable section

/-- A251672: 8-step Fibonacci sequence starting with 0,0,0,0,0,0,1,0.

Offset 0, canonical program `A251672.P9400077849588543496`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251672 (n : ℕ) : ℤ :=
  A251672.P9400077849588543496.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251672.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A251703.P11193644302280101743

`A000078(n+3)-2*A000078(n+1)-2*A000078(n)`
-/

namespace A251703.P11193644302280101743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n + 3) - 2 * A000078 (n + 1) - 2 * A000078 n

end

end A251703.P11193644302280101743

noncomputable section

/-- A251703: 4-step Fibonacci sequence starting with 1,1,0,0.

Offset 0, canonical program `A251703.P11193644302280101743`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251703 (n : ℕ) : ℤ :=
  A251703.P11193644302280101743.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251703.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A251706.P10800495160873675911

`A001592(n+1)-A001592(n)`
-/

namespace A251706.P10800495160873675911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001592 (n + 1) - A001592 n

end

end A251706.P10800495160873675911

noncomputable section

/-- A251706: 6-step Fibonacci sequence starting with (0,0,0,0,1,0).

Offset 0, canonical program `A251706.P10800495160873675911`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251706 (n : ℕ) : ℤ :=
  A251706.P10800495160873675911.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251706.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A251740.P8481188142973137277

`A079262(n+2)-A079262(n+1)-A079262(n)`
-/

namespace A251740.P8481188142973137277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079262 (n + 2) - A079262 (n + 1) - A079262 n

end

end A251740.P8481188142973137277

noncomputable section

/-- A251740: 8-step Fibonacci sequence starting with 0,0,0,0,0,1,0,0.

Offset 0, canonical program `A251740.P8481188142973137277`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251740 (n : ℕ) : ℤ :=
  A251740.P8481188142973137277.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251740.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A251754.P8536042043638474551

`A010888(A027444(n+1))`
-/

namespace A251754.P8536042043638474551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A027444 (n + 1)).toNat

end

end A251754.P8536042043638474551

noncomputable section

/-- A251754: Digital root of A027444(n) = n + n^2 + n^3, n>=1. Repeat(3, 5, 3, 3, 2, 6, 3, 8, 9).

Offset 1, canonical program `A251754.P8536042043638474551`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251754 (n : ℕ) : ℤ :=
  A251754.P8536042043638474551.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251754.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A251755.P8297826548140478426

`A010888(A002378(n))`
-/

namespace A251755.P8297826548140478426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A002378 n).toNat

end

end A251755.P8297826548140478426

noncomputable section

/-- A251755: Digital root of n + n^2.

Offset 0, canonical program `A251755.P8297826548140478426`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251755 (n : ℕ) : ℤ :=
  A251755.P8297826548140478426.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251755.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A251914.P6618389004869711842

`A046173(n+1)-1`
-/

namespace A251914.P6618389004869711842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046173 (n + 1) - 1

end

end A251914.P6618389004869711842

noncomputable section

/-- A251914: Numbers n such that the sum of the triangular numbers T(n) and T(n+1) is equal to the pentagonal number P(m) for some m.

Offset 1, canonical program `A251914.P6618389004869711842`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251914 (n : ℕ) : ℤ :=
  A251914.P6618389004869711842.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A251914.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A253317.P5561849184342656914

`a(n-A053644(n))+2^(A053644(n)-1)` with `a(0)=0`
-/

namespace A253317.P5561849184342656914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A053644 n).toNat + (2 : ℚ) ^ (A053644 n - 1 : ℤ)

end

end A253317.P5561849184342656914

noncomputable section

/-- A253317: Indices in A261283 where records occur.

Offset 1, canonical program `A253317.P5561849184342656914`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253317 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A253317.P5561849184342656914.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253317.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A253514.P4068282425341631059

`A157877(n+1)²`
-/

namespace A253514.P4068282425341631059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157877 (n + 1) ^ 2

end

end A253514.P4068282425341631059

noncomputable section

/-- A253514: Centered heptagonal numbers (A069099) which are also centered octagonal numbers (A016754).

Offset 1, canonical program `A253514.P4068282425341631059`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253514 (n : ℕ) : ℤ :=
  A253514.P4068282425341631059.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253514.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A253665.P10397001314440624253

`2^n*A056040(n)`
-/

namespace A253665.P10397001314440624253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A056040 n

end

end A253665.P10397001314440624253

noncomputable section

/-- A253665: a(n) = 2^n*n!/(floor(n/2)!)^2.

Offset 0, canonical program `A253665.P10397001314440624253`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253665 (n : ℕ) : ℤ :=
  A253665.P10397001314440624253.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A253665.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A254078.P5488597702140630501

`A003418(n+3)-2`
-/

namespace A254078.P5488597702140630501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (n + 3) - 2

end

end A254078.P5488597702140630501

noncomputable section

/-- A254078: a(n) is the number of steps after which n variables with increasing value ranges all have equal values when the values of all variables are decreased by 1 at each step and the value is set to the maximum value again when the resulting value would be 0.

Offset 2, canonical program `A254078.P5488597702140630501`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254078 (n : ℕ) : ℤ :=
  A254078.P5488597702140630501.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254078.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A254286.P2241292018537070123

`32^n*A048779(n+1)`
-/

namespace A254286.P2241292018537070123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (32 ^ n : ℤ) * A048779 (n + 1)

end

end A254286.P2241292018537070123

noncomputable section

/-- A254286: Expansion of (1 - (1-256*x)^(1/4)) / (64*x).

Offset 0, canonical program `A254286.P2241292018537070123`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254286 (n : ℕ) : ℤ :=
  A254286.P2241292018537070123.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254286.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A254745.P1476520725255344508

`(-1)^n*A078070(n)`
-/

namespace A254745.P1476520725255344508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A078070 n

end

end A254745.P1476520725255344508

noncomputable section

/-- A254745: Chebyshev polynomials of the second kind, U(n,x)^2, evaluated at x = sqrt(3)/2.

Offset 0, canonical program `A254745.P1476520725255344508`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254745 (n : ℕ) : ℤ :=
  A254745.P1476520725255344508.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254745.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A254955.P9309173547505421412

`A000040(A002378(n+1))`
-/

namespace A254955.P9309173547505421412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002378 (n + 1)).toNat

end

end A254955.P9309173547505421412

noncomputable section

/-- A254955: Prime numbers indexed by oblong numbers.

Offset 1, canonical program `A254955.P9309173547505421412`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254955 (n : ℕ) : ℤ :=
  A254955.P9309173547505421412.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A254955.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A255139.P11105971386868030747

`A000142(n)-A000045(n)`
-/

namespace A255139.P11105971386868030747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A000045 n

end

end A255139.P11105971386868030747

noncomputable section

/-- A255139: a(n) = n! - Fibonacci(n).

Offset 0, canonical program `A255139.P11105971386868030747`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255139 (n : ℕ) : ℤ :=
  A255139.P11105971386868030747.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255139.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A255211.P1966564376133299868

`A000292(2*n)-A000292(n)`
-/

namespace A255211.P1966564376133299868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (2 * n) - A000292 n

end

end A255211.P1966564376133299868

noncomputable section

/-- A255211: a(n) = n*(n+1)*(7*n+2)/6.

Offset 0, canonical program `A255211.P1966564376133299868`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(7*n+2)/6` (program `A255211.P8572917254699440244`, by `A255211.P8572917254699440244.correct`). Lean does not check the parsing of the name. -/
def A255211 (n : ℕ) : ℤ :=
  A255211.P1966564376133299868.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(7*n+2)/6` (program `A255211.P8572917254699440244`, by `A255211.P8572917254699440244.correct`). Lean does not check the parsing of the name. -/
def A255211.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A255680.P3449992732875684789

`n*A010872(n)*A010874(n)`
-/

namespace A255680.P3449992732875684789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010872 n * A010874 n

end

end A255680.P3449992732875684789

noncomputable section

/-- A255680: a(n) = n*(n mod 3)*(n mod 5).

Offset 0, canonical program `A255680.P3449992732875684789`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255680 (n : ℕ) : ℤ :=
  A255680.P3449992732875684789.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255680.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A255875.P8052505566076897999

`A232896(n+2)-2`
-/

namespace A255875.P8052505566076897999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232896 (n + 2) - 2

end

end A255875.P8052505566076897999

noncomputable section

/-- A255875: a(n) = Fibonacci(n+2) + n - 2.

Offset 1, canonical program `A255875.P8052505566076897999`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255875 (n : ℕ) : ℤ :=
  A255875.P8052505566076897999.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255875.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A255919.P10709878845704174550

`A003188(A000045(n))`
-/

namespace A255919.P10709878845704174550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A000045 n).toNat

end

end A255919.P10709878845704174550

noncomputable section

/-- A255919: Gray code of Fibonacci(n).

Offset 0, canonical program `A255919.P10709878845704174550`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255919 (n : ℕ) : ℤ :=
  A255919.P10709878845704174550.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255919.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A255932.P1020379480356809158

`2^A292608(n+1)`
-/

namespace A255932.P1020379480356809158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A292608 (n + 1) : ℤ)

end

end A255932.P1020379480356809158

noncomputable section

/-- A255932: a(n) is the denominator of Gamma(n+1/2)^2/(2*n*Pi), the value of an integral with sinh in the denominator.

Offset 1, canonical program `A255932.P1020379480356809158`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255932 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A255932.P1020379480356809158.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A255932.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A256077.P10462771814391243740

`A002275(A000523(n+2))`
-/

namespace A256077.P10462771814391243740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (A000523 (n + 2)).toNat

end

end A256077.P10462771814391243740

noncomputable section

/-- A256077: Repeat 2^d times the repunit A002275(d); d = 1, 2, 3...

Offset 1, canonical program `A256077.P10462771814391243740`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256077 (n : ℕ) : ℤ :=
  A256077.P10462771814391243740.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256077.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A256256.P16031076571279366178

`6*A006046(n)`
-/

namespace A256256.P16031076571279366178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A006046 n

end

end A256256.P16031076571279366178

noncomputable section

/-- A256256: Total number of ON cells after n generations of cellular automaton on triangular grid, starting from a node, in which every 60-degree wedge looks like the Sierpiński's triangle.

Offset 0, canonical program `A256256.P16031076571279366178`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256256 (n : ℕ) : ℤ :=
  A256256.P16031076571279366178.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256256.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A256275.P11952076230129229254

`2^(n+1)²-(1+A119408(n+1))`
-/

namespace A256275.P11952076230129229254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) ^ 2 : ℤ) - (1 + A119408 (n + 1))

end

end A256275.P11952076230129229254

noncomputable section

/-- A256275: Decimal equivalent of the binary string generated by the negation of the n X n identity matrix.

Offset 1, canonical program `A256275.P11952076230129229254`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256275 (n : ℕ) : ℤ :=
  A256275.P11952076230129229254.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256275.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A256462.P1744097057234964275

`A056220(n+1)*A000108(2*n)`
-/

namespace A256462.P1744097057234964275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (n + 1) * A000108 (2 * n)

end

end A256462.P1744097057234964275

noncomputable section

/-- A256462: Double sum of the product of two binomials with even arguments.

Offset 0, canonical program `A256462.P1744097057234964275`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256462 (n : ℕ) : ℤ :=
  A256462.P1744097057234964275.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256462.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A256524.P5463711437794067124

`A001400(3*n)`
-/

namespace A256524.P5463711437794067124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 (3 * n)

end

end A256524.P5463711437794067124

noncomputable section

/-- A256524: Number of partitions of 3n into at most 4 parts.

Offset 0, canonical program `A256524.P5463711437794067124`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256524 (n : ℕ) : ℤ :=
  A256524.P5463711437794067124.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256524.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A256859.P13446523280758156629

`4*A000389(n+3)+A000389(n+5)`
-/

namespace A256859.P13446523280758156629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000389 (n + 3) + A000389 (n + 5)

end

end A256859.P13446523280758156629

noncomputable section

/-- A256859: a(n) = n*(n + 1)*(n + 2)*(n^2 - n + 4)/24.

Offset 1, canonical program `A256859.P13446523280758156629`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(n+2)*(n+3)*((n+1)²-(n+1)+4)/24` (program `A256859.P10780097334924934560`, by `A256859.P10780097334924934560.correct`). Lean does not check the parsing of the name. -/
def A256859 (n : ℕ) : ℤ :=
  A256859.P13446523280758156629.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(n+2)*(n+3)*((n+1)²-(n+1)+4)/24` (program `A256859.P10780097334924934560`, by `A256859.P10780097334924934560.correct`). Lean does not check the parsing of the name. -/
def A256859.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A256860.P17673781534175106502

`5*A000579(n+4)+A000579(n+6)`
-/

namespace A256860.P17673781534175106502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000579 (n + 4) + A000579 (n + 6)

end

end A256860.P17673781534175106502

noncomputable section

/-- A256860: a(n) = n*(n + 1)*(n + 2)*(n + 3)*(n^2 - n + 5)/120.

Offset 1, canonical program `A256860.P17673781534175106502`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(n+2)*(n+3)*(n+4)*((n+1)²-(n+1)+5)/120` (program `A256860.P10947505866312668170`, by `A256860.P10947505866312668170.correct`). Lean does not check the parsing of the name. -/
def A256860 (n : ℕ) : ℤ :=
  A256860.P17673781534175106502.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(n+2)*(n+3)*(n+4)*((n+1)²-(n+1)+5)/120` (program `A256860.P10947505866312668170`, by `A256860.P10947505866312668170.correct`). Lean does not check the parsing of the name. -/
def A256860.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A256885.P10699122829874181603

`A000217(n+1)-A000720(n+1)`
-/

namespace A256885.P10699122829874181603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - A000720 (n + 1)

end

end A256885.P10699122829874181603

noncomputable section

/-- A256885: a(n) = n*(n + 1)/2 - pi(n), where pi(n) = A000720(n) is the prime counting function.

Offset 1, canonical program `A256885.P10699122829874181603`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256885 (n : ℕ) : ℤ :=
  A256885.P10699122829874181603.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256885.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A256956.P5934166374789852245

`A000720(n+1)*A000720(n+2)`
-/

namespace A256956.P5934166374789852245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) * A000720 (n + 2)

end

end A256956.P5934166374789852245

noncomputable section

/-- A256956: a(n) = pi(n) * pi(n+1), where pi(n) is the number of primes <= n.

Offset 1, canonical program `A256956.P5934166374789852245`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256956 (n : ℕ) : ℤ :=
  A256956.P5934166374789852245.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256956.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A256960.P2865654414197589884

`a(n-2)+2*A055099(n-1)+2^(n-1)` with `a(0)=1, a(1)=4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A256960.P2865654414197589884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + (2 * A055099 (n - 1) : ℚ) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A256960.P2865654414197589884

noncomputable section

/-- A256960: a(0)=1, a(1)=4; thereafter a(n) = a(n-2)+2*A055099(n-1)+2^(n-1).

Offset 0, canonical program `A256960.P2865654414197589884`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256960 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A256960.P2865654414197589884.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256960.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A256994.P15075604067325130117

`A005187(a(n-1))` with `a(0)=2`
-/

namespace A256994.P15075604067325130117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A005187 (a (n - 1)).toNat

end

end A256994.P15075604067325130117

noncomputable section

/-- A256994: a(n) = n + 1 when n <= 3, otherwise a(n) = 2^(n-2) + 3; also iterates of A005187 starting from a(1) = 2.

Offset 1, canonical program `A256994.P15075604067325130117`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256994 (n : ℕ) : ℤ :=
  A256994.P15075604067325130117.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A256994.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A257589.P13162561987208134929

`A016754(n)*A000108(n)`
-/

namespace A257589.P13162561987208134929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n * A000108 n

end

end A257589.P13162561987208134929

noncomputable section

/-- A257589: a(n) = (2n+1)^2*Catalan(n).

Offset 0, canonical program `A257589.P13162561987208134929`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257589 (n : ℕ) : ℤ :=
  A257589.P13162561987208134929.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257589.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A257888.P17485197680427452743

`4*A002055(n+5)`
-/

namespace A257888.P17485197680427452743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002055 (n + 5)

end

end A257888.P17485197680427452743

noncomputable section

/-- A257888: Number of nonintersecting (or self-avoiding) rook paths of length 2n+2 joining opposite corners of an n X n grid.

Offset 3, canonical program `A257888.P17485197680427452743`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257888 (n : ℕ) : ℤ :=
  A257888.P17485197680427452743.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A257888.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A258390.P12661270623323865303

`(2^(n+1)-1)*A000108(n+2)`
-/

namespace A258390.P12661270623323865303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 1) : ℤ) - 1) * A000108 (n + 2)

end

end A258390.P12661270623323865303

noncomputable section

/-- A258390: Number of 2n-length strings of balanced parentheses of exactly 2 different types that are introduced in ascending order.

Offset 2, canonical program `A258390.P12661270623323865303`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258390 (n : ℕ) : ℤ :=
  A258390.P12661270623323865303.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258390.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A258433.P14991624798811755883

`A000040(A010785(n+1))`
-/

namespace A258433.P14991624798811755883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A010785 (n + 1)).toNat

end

end A258433.P14991624798811755883

noncomputable section

/-- A258433: Primes with repdigit indices (in decimal).

Offset 1, canonical program `A258433.P14991624798811755883`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258433 (n : ℕ) : ℤ :=
  A258433.P14991624798811755883.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258433.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A258684.P10413141013243438134

`A041105(4*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A258684.P10413141013243438134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041105 (4 * n + 1)

end

end A258684.P10413141013243438134

noncomputable section

/-- A258684: a(n) = A041105(4n+1).

Offset 0, canonical program `A258684.P10413141013243438134`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258684 (n : ℕ) : ℤ :=
  A258684.P10413141013243438134.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258684.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A258711.P7368065458491441993

`A001006(n)%7`
-/

namespace A258711.P7368065458491441993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001006 n) 7

end

end A258711.P7368065458491441993

noncomputable section

/-- A258711: Motzkin numbers A001006 read mod 7.

Offset 0, canonical program `A258711.P7368065458491441993`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258711 (n : ℕ) : ℤ :=
  A258711.P7368065458491441993.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258711.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A258712.P11139065725341983905

`A001006(n)%5`
-/

namespace A258712.P11139065725341983905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001006 n) 5

end

end A258712.P11139065725341983905

noncomputable section

/-- A258712: Motzkin numbers A001006 read mod 5.

Offset 0, canonical program `A258712.P11139065725341983905`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258712 (n : ℕ) : ℤ :=
  A258712.P11139065725341983905.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258712.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A258978.P2625331780401583892

`A053699(A000203(n+1))`
-/

namespace A258978.P2625331780401583892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053699 (A000203 (n + 1)).toNat

end

end A258978.P2625331780401583892

noncomputable section

/-- A258978: a(n) = 1 + sigma(n) + sigma(n)^2 + sigma(n)^3 + sigma(n)^4.

Offset 1, canonical program `A258978.P2625331780401583892`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258978 (n : ℕ) : ℤ :=
  A258978.P2625331780401583892.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A258978.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A259042.P1048538119535149912

`A257179(n+4)`
-/

namespace A259042.P1048538119535149912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257179 (n + 4)

end

end A259042.P1048538119535149912

noncomputable section

/-- A259042: Period 8 sequence [0, 1, 1, 1, 2, 1, 1, 1, ...].

Offset 0, canonical program `A259042.P1048538119535149912`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259042 (n : ℕ) : ℤ :=
  A259042.P1048538119535149912.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259042.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A259108.P15840702835331619672

`2*A000538(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A259108.P15840702835331619672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000538 n

end

end A259108.P15840702835331619672

noncomputable section

/-- A259108: a(n) = 2 * A000538(n).

Offset 0, canonical program `A259108.P15840702835331619672`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259108 (n : ℕ) : ℤ :=
  A259108.P15840702835331619672.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259108.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A259110.P15097758536881816686

`2*A000447(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A259110.P15097758536881816686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000447 n

end

end A259110.P15097758536881816686

noncomputable section

/-- A259110: a(n) = 2*A000447(n).

Offset 0, canonical program `A259110.P15097758536881816686`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000447(n)` (program `A259110.P15097758536881816686`, by `A259110.P15097758536881816686.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A259110 (n : ℕ) : ℤ :=
  A259110.P15097758536881816686.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000447(n)` (program `A259110.P15097758536881816686`, by `A259110.P15097758536881816686.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A259110.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A259251.P9207327000512469518

`A053716(A000203(n+1))`
-/

namespace A259251.P9207327000512469518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053716 (A000203 (n + 1)).toNat

end

end A259251.P9207327000512469518

noncomputable section

/-- A259251: a(n) = 1 + sigma(n) + sigma(n)^2 + sigma(n)^3 + sigma(n)^4 + sigma(n)^5 + sigma(n)^6.

Offset 1, canonical program `A259251.P9207327000512469518`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259251 (n : ℕ) : ℤ :=
  A259251.P9207327000512469518.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259251.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A259264.P5732594436571755968

`A053699(n!)`
-/

namespace A259264.P5732594436571755968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053699 (Nat.factorial n)

end

end A259264.P5732594436571755968

noncomputable section

/-- A259264: Cyclotomic polynomial value Phi(5,n!).

Offset 0, canonical program `A259264.P5732594436571755968`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259264 (n : ℕ) : ℤ :=
  A259264.P5732594436571755968.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259264.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A259308.P10719289397753992737

`1+A000203(n+1)^4`
-/

namespace A259308.P10719289397753992737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000203 (n + 1) ^ 4

end

end A259308.P10719289397753992737

noncomputable section

/-- A259308: a(n) = 1 + sigma(n)^4.

Offset 1, canonical program `A259308.P10719289397753992737`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259308 (n : ℕ) : ℤ :=
  A259308.P10719289397753992737.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259308.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A259317.P9477404971575699287

`2*(2*n+1)*A000538(n)-4*A000330(n)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A259317.P9477404971575699287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (2 * n + 1) : ℤ) * A000538 n - 4 * A000330 n ^ 2

end

end A259317.P9477404971575699287

noncomputable section

/-- A259317: a(n) = 2*(2*n+1)*A000538(n) - 4*A000330(n)^2.

Offset 0, canonical program `A259317.P9477404971575699287`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259317 (n : ℕ) : ℤ :=
  A259317.P9477404971575699287.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259317.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A259319.P1682613436391244870

`2*A002309(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A259319.P1682613436391244870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002309 (n + 1)

end

end A259319.P1682613436391244870

noncomputable section

/-- A259319: a(n) = 2*A002309(n).

Offset 1, canonical program `A259319.P1682613436391244870`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259319 (n : ℕ) : ℤ :=
  A259319.P1682613436391244870.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259319.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A259323.P9882511957773447944

`2*A259322(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A259323.P9882511957773447944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A259322 (n + 1)

end

end A259323.P9882511957773447944

noncomputable section

/-- A259323: a(n) = 2*A259322(n).

Offset 1, canonical program `A259323.P9882511957773447944`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259323 (n : ℕ) : ℤ :=
  A259323.P9882511957773447944.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259323.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A259361.P16495577185531896410

`A000194(n+1)-1`
-/

namespace A259361.P16495577185531896410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (n + 1) - 1

end

end A259361.P16495577185531896410

noncomputable section

/-- A259361: n occurs 2n+2 times.

Offset 0, canonical program `A259361.P16495577185531896410`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259361 (n : ℕ) : ℤ :=
  A259361.P16495577185531896410.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259361.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A259369.P4055161217146310776

`A060883(A000203(n+1))`
-/

namespace A259369.P4055161217146310776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060883 (A000203 (n + 1)).toNat

end

end A259369.P4055161217146310776

noncomputable section

/-- A259369: a(n) = 1 + sigma(n)^3 + sigma(n)^6.

Offset 1, canonical program `A259369.P4055161217146310776`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259369 (n : ℕ) : ℤ :=
  A259369.P4055161217146310776.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259369.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A259410.P7580479100357844483

`A060884(A000203(n+1))`
-/

namespace A259410.P7580479100357844483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060884 (A000203 (n + 1)).toNat

end

end A259410.P7580479100357844483

noncomputable section

/-- A259410: a(n) = 1 - sigma(n) + sigma(n)^2 - sigma(n)^3 + sigma(n)^4.

Offset 1, canonical program `A259410.P7580479100357844483`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259410 (n : ℕ) : ℤ :=
  A259410.P7580479100357844483.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259410.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A259923.P16057684249123722244

`A000040(n+1)^A000720(n+1)`
-/

namespace A259923.P16057684249123722244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (A000720 (n + 1) : ℤ)

end

end A259923.P16057684249123722244

noncomputable section

/-- A259923: a(n) = prime(n)^pi(n).

Offset 1, canonical program `A259923.P16057684249123722244`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259923 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A259923.P16057684249123722244.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A259923.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A260076.P13301301169531904052

`A060883(n!)`
-/

namespace A260076.P13301301169531904052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060883 (Nat.factorial n)

end

end A260076.P13301301169531904052

noncomputable section

/-- A260076: Cyclotomic polynomial value Phi(9,n!).

Offset 0, canonical program `A260076.P13301301169531904052`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A260076 (n : ℕ) : ℤ :=
  A260076.P13301301169531904052.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A260076.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A260077.P8889522141968118746

`A060884(n!)`
-/

namespace A260077.P8889522141968118746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060884 (Nat.factorial n)

end

end A260077.P8889522141968118746

noncomputable section

/-- A260077: Cyclotomic polynomial value Phi(10,n!).

Offset 0, canonical program `A260077.P8889522141968118746`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A260077 (n : ℕ) : ℤ :=
  A260077.P8889522141968118746.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A260077.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A260217.P18320538759642150908

`2*A028243(n+1)`
-/

namespace A260217.P18320538759642150908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028243 (n + 1)

end

end A260217.P18320538759642150908

noncomputable section

/-- A260217: Number of base-3 n-digit pandigital numbers.

Offset 1, canonical program `A260217.P18320538759642150908`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A260217 (n : ℕ) : ℤ :=
  A260217.P18320538759642150908.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A260217.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A260374.P11691029667165819522

`abs(n!-A260373(n))`
-/

namespace A260374.P11691029667165819522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.factorial n : ℤ) - A260373 n|

end

end A260374.P11691029667165819522

noncomputable section

/-- A260374: The distance between n! and the nearest perfect square.

Offset 0, canonical program `A260374.P11691029667165819522`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A260374 (n : ℕ) : ℤ :=
  A260374.P11691029667165819522.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A260374.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A260655.P1454264924499781841

`9^n*A000108(n+1)`
-/

namespace A260655.P1454264924499781841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 ^ n : ℤ) * A000108 (n + 1)

end

end A260655.P1454264924499781841

noncomputable section

/-- A260655: a(n) = 4*36^n*Gamma(n+3/2)/(sqrt(Pi)*(n+2)!).

Offset 0, canonical program `A260655.P1454264924499781841`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A260655 (n : ℕ) : ℤ :=
  A260655.P1454264924499781841.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A260655.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A260657.P11255028026321949958

`A000142(n)-A005394(n)`
-/

namespace A260657.P11255028026321949958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A005394 n

end

end A260657.P11255028026321949958

noncomputable section

/-- A260657: Rounded error in Stirling's formula: a(n) = round(n! - exp(-n)*n^(n+1/2)*sqrt(2*Pi)).

Offset 0, canonical program `A260657.P11255028026321949958`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A260657 (n : ℕ) : ℤ :=
  A260657.P11255028026321949958.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A260657.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A261128.P4897034755433582840

`A053716(n!)`
-/

namespace A261128.P4897034755433582840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053716 (Nat.factorial n)

end

end A261128.P4897034755433582840

noncomputable section

/-- A261128: Cyclotomic polynomial value Phi(7,n!).

Offset 0, canonical program `A261128.P4897034755433582840`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261128 (n : ℕ) : ℤ :=
  A261128.P4897034755433582840.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261128.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A261196.P5202426465422343104

`A002420(n)*2^n*(-1)^(n*(n+1)/2)`
-/

namespace A261196.P5202426465422343104
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A002420 n * (2 ^ n : ℤ) : ℝ) * (-1 : ℝ) ^ ((n * (n + 1) : ℚ) / 2 : ℝ)

end

end A261196.P5202426465422343104

noncomputable section

/-- A261196: Expansion of sqrt(8*x + sqrt(1 + 64*x^2)).

Offset 0, canonical program `A261196.P5202426465422343104`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261196 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A261196.P5202426465422343104.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261196.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A261231.P7877899022308213173

`1+a(2*A054861(n))` with `a(0)=0, a(1)=1`
-/

namespace A261231.P7877899022308213173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a (2 * A054861 n).toNat

end

end A261231.P7877899022308213173

noncomputable section

/-- A261231: a(n) = number of steps to reach 0 when starting from k = n and repeatedly applying the map that replaces k with k - (sum of digits in base-3 representation of k).

Offset 0, canonical program `A261231.P7877899022308213173`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261231 (n : ℕ) : ℤ :=
  (A261231.P7877899022308213173.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261231.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A261471.P3037058945594442936

`A002061(n!)`
-/

namespace A261471.P3037058945594442936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (Nat.factorial n)

end

end A261471.P3037058945594442936

noncomputable section

/-- A261471: Cyclotomic polynomial value Phi(6,n!).

Offset 0, canonical program `A261471.P3037058945594442936`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261471 (n : ℕ) : ℤ :=
  A261471.P3037058945594442936.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261471.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A261809.P13156659062408768575

`A000142(n+1)-A000040(n+1)`
-/

namespace A261809.P13156659062408768575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) - A000040 (n + 1)

end

end A261809.P13156659062408768575

noncomputable section

/-- A261809: a(n) = n! - prime(n).

Offset 1, canonical program `A261809.P13156659062408768575`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261809 (n : ℕ) : ℤ :=
  A261809.P13156659062408768575.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A261809.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A262035.P4175627166341111014

`A262033(2*n+1)-A262034(2*n+1)`
-/

namespace A262035.P4175627166341111014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262033 (2 * n + 1) - A262034 (2 * n + 1)

end

end A262035.P4175627166341111014

noncomputable section

/-- A262035: Number of permutations of [2n+1] beginning with exactly n ascents.

Offset 0, canonical program `A262035.P4175627166341111014`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262035 (n : ℕ) : ℤ :=
  A262035.P4175627166341111014.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262035.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A262184.P505657882986553229

`A000045(n)²-A000045(n)+1`
-/

namespace A262184.P505657882986553229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2 - A000045 n + 1

end

end A262184.P505657882986553229

noncomputable section

/-- A262184: a(n) = Fibonacci(n)^2 - Fibonacci(n) + 1.

Offset 0, canonical program `A262184.P505657882986553229`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262184 (n : ℕ) : ℤ :=
  A262184.P505657882986553229.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262184.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A262221.P9616285065150363173

`A034856(5*n+1)`
-/

namespace A262221.P9616285065150363173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (5 * n + 1)

end

end A262221.P9616285065150363173

noncomputable section

/-- A262221: a(n) = 25*n*(n + 1)/2 + 1.

Offset 0, canonical program `A262221.P9616285065150363173`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `25*n*(n+1)/2+1` (program `A262221.P9898472340897822759`, by `A262221.P9898472340897822759.correct`). Lean does not check the parsing of the name. -/
def A262221 (n : ℕ) : ℤ :=
  A262221.P9616285065150363173.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `25*n*(n+1)/2+1` (program `A262221.P9898472340897822759`, by `A262221.P9898472340897822759.correct`). Lean does not check the parsing of the name. -/
def A262221.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A262247.P16416893810568802159

`A000330(A000040(n+1))`
-/

namespace A262247.P16416893810568802159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A000040 (n + 1)).toNat

end

end A262247.P16416893810568802159

noncomputable section

/-- A262247: Number of squares formed from a square composed of p^2 unit squares where p is n-th prime.

Offset 1, canonical program `A262247.P16416893810568802159`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262247 (n : ℕ) : ℤ :=
  A262247.P16416893810568802159.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262247.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A262376.P17778025391810916089

`A003422(n+1)-A000217(n)`
-/

namespace A262376.P17778025391810916089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 (n + 1) - A000217 n

end

end A262376.P17778025391810916089

noncomputable section

/-- A262376: a(n) = Sum_{k=0..n} (k! - k).

Offset 0, canonical program `A262376.P17778025391810916089`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262376 (n : ℕ) : ℤ :=
  A262376.P17778025391810916089.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262376.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A262397.P3567034082387782464

`floor(A261327(n)/9)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A262397.P3567034082387782464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A261327 n : ℚ) / 9⌋

end

end A262397.P3567034082387782464

noncomputable section

/-- A262397: a(n) = floor(A261327(n)/9).

Offset 0, canonical program `A262397.P3567034082387782464`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262397 (n : ℕ) : ℤ :=
  A262397.P3567034082387782464.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262397.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A262600.P10697025682239794580

`A124302(n)-A001519(n)`
-/

namespace A262600.P10697025682239794580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n - A001519 n

end

end A262600.P10697025682239794580

noncomputable section

/-- A262600: Number of Dyck paths of semilength n and height exactly 4.

Offset 0, canonical program `A262600.P10697025682239794580`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262600 (n : ℕ) : ℤ :=
  A262600.P10697025682239794580.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262600.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A262601.P2774404784725859510

`(n+1)!*(A000522(n)*n+1)`
-/

namespace A262601.P2774404784725859510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * (A000522 n * (n : ℤ) + 1)

end

end A262601.P2774404784725859510

noncomputable section

/-- A262601: a(n) = n!*(e*Gamma(n,1)*(n-1)+1).

Offset 1, canonical program `A262601.P2774404784725859510`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262601 (n : ℕ) : ℤ :=
  A262601.P2774404784725859510.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262601.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A262613.P17621091741924254604

`A000203(A001318(n+1))`
-/

namespace A262613.P17621091741924254604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A001318 (n + 1)).toNat

end

end A262613.P17621091741924254604

noncomputable section

/-- A262613: Sum of divisors of n-th generalized pentagonal number.

Offset 1, canonical program `A262613.P17621091741924254604`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262613 (n : ℕ) : ℤ :=
  A262613.P17621091741924254604.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A262613.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A263053.P1060349985249524718

`2*A052992(n)`
-/

namespace A263053.P1060349985249524718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052992 n

end

end A263053.P1060349985249524718

noncomputable section

/-- A263053: Number of (n+1) X 2 0..1 arrays with each row and column not divisible by 3, read as a binary number with top and left being the most significant bits.

Offset 1, canonical program `A263053.P1060349985249524718`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263053 (n : ℕ) : ℤ :=
  A263053.P1060349985249524718.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263053.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A263418.P3906359032708304120

`a(n-1)+5*A001911(n)` with `a(0)=1`
-/

namespace A263418.P3906359032708304120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 5 * A001911 n

end

end A263418.P3906359032708304120

noncomputable section

/-- A263418: a(n) is the total number of pentagrams in a variant of pentagram fractal after n iterations.

Offset 0, canonical program `A263418.P3906359032708304120`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263418 (n : ℕ) : ℤ :=
  A263418.P3906359032708304120.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263418.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A263846.P12034222114530177158

`A048766(A000040(n+1))`
-/

namespace A263846.P12034222114530177158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A000040 (n + 1)).toNat

end

end A263846.P12034222114530177158

noncomputable section

/-- A263846: Floor of cube root of n-th prime.

Offset 1, canonical program `A263846.P12034222114530177158`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263846 (n : ℕ) : ℤ :=
  A263846.P12034222114530177158.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263846.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A263931.P12716601024892893548

`A000984(n)/A261130(n)`
-/

namespace A263931.P12716601024892893548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (A261130 n : ℚ)

end

end A263931.P12716601024892893548

noncomputable section

/-- A263931: a(n) = binomial(2*n, n) / Product(p prime | n < p <= 2*n).

Offset 0, canonical program `A263931.P12716601024892893548`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263931 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A263931.P12716601024892893548.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263931.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A263986.P11008450882714767519

`A000108(n)-A000045(n)`
-/

namespace A263986.P11008450882714767519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A000045 n

end

end A263986.P11008450882714767519

noncomputable section

/-- A263986: Difference between Catalan numbers and Fibonacci numbers: a(n) = C(n) - F(n).

Offset 0, canonical program `A263986.P11008450882714767519`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263986 (n : ℕ) : ℤ :=
  A263986.P11008450882714767519.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A263986.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A264038.P9507820309913421679

`A014551(n+1)-A000032(n+1)`
-/

namespace A264038.P9507820309913421679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 (n + 1) - A000032 (n + 1)

end

end A264038.P9507820309913421679

noncomputable section

/-- A264038: Convolution of Lucas and Jacobsthal numbers.

Offset 0, canonical program `A264038.P9507820309913421679`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A264038 (n : ℕ) : ℤ :=
  A264038.P9507820309913421679.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A264038.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A264152.P11680780030930013707

`A001813(n)/A006882(n)`
-/

namespace A264152.P11680780030930013707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001813 n : ℚ) / (A006882 n : ℚ)

end

end A264152.P11680780030930013707

noncomputable section

/-- A264152: a(n) = (2^floor(n+n/2)/sqrt(Pi)^mod(n+1,2))*Gamma(n+1/2)/Gamma(n/2+1).

Offset 0, canonical program `A264152.P11680780030930013707`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A264152 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A264152.P11680780030930013707.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A264152.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A264735.P17843105913403271074

`A000040(2^n*(2*(n+1)-1))`
-/

namespace A264735.P17843105913403271074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((2 ^ n : ℤ) * ((2 * (n + 1) : ℤ) - 1)).toNat

end

end A264735.P17843105913403271074

noncomputable section

/-- A264735: a(n) = prime(2^(n-1)*(2*n-1)), n >= 1.

Offset 1, canonical program `A264735.P17843105913403271074`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A264735 (n : ℕ) : ℤ :=
  A264735.P17843105913403271074.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A264735.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A264891.P1113913307012413225

`A000566(A000566(n))`
-/

namespace A264891.P1113913307012413225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (A000566 n).toNat

end

end A264891.P1113913307012413225

noncomputable section

/-- A264891: a(n) = n*(5*n - 3)*(25*n^2 - 15*n - 6)/8.

Offset 0, canonical program `A264891.P1113913307012413225`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A264891 (n : ℕ) : ℤ :=
  A264891.P1113913307012413225.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A264891.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A264894.P11466025763062126121

`A001106(A001106(n))`
-/

namespace A264894.P11466025763062126121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 (A001106 n).toNat

end

end A264894.P11466025763062126121

noncomputable section

/-- A264894: a(n) = n*(7*n - 5)*(49*n^2 - 35*n - 10)/8.

Offset 0, canonical program `A264894.P11466025763062126121`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A264894 (n : ℕ) : ℤ :=
  A264894.P11466025763062126121.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A264894.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A265100.P11859098700391126980

`9*A005836(n+1)+5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265100.P11859098700391126980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A005836 (n + 1) + 5

end

end A265100.P11859098700391126980

noncomputable section

/-- A265100: a(n) = 9*A005836(n) + 5, n >= 1.

Offset 1, canonical program `A265100.P11859098700391126980`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265100 (n : ℕ) : ℤ :=
  A265100.P11859098700391126980.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265100.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A265133.P11312818710983088858

`A059541(n+1)-(n+1)`
-/

namespace A265133.P11312818710983088858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059541 (n + 1) - (n + 1 : ℤ)

end

end A265133.P11312818710983088858

noncomputable section

/-- A265133: Beatty sequence for log(2).

Offset 1, canonical program `A265133.P11312818710983088858`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265133 (n : ℕ) : ℤ :=
  A265133.P11312818710983088858.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265133.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A265185.P13911797425153417806

`2*A056236(n)`
-/

namespace A265185.P13911797425153417806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056236 n

end

end A265185.P13911797425153417806

noncomputable section

/-- A265185: Non-vanishing traces of the powers of the adjacency matrix for the simple Lie algebra B_4: 2 * ((2 + sqrt(2))^n + (2 - sqrt(2))^n).

Offset 0, canonical program `A265185.P13911797425153417806`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265185 (n : ℕ) : ℤ :=
  A265185.P13911797425153417806.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265185.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A265282.P786631912857751493

`A045947(floor(n/2))+A024206(n+1)`
-/

namespace A265282.P786631912857751493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045947 ⌊(n : ℚ) / 2⌋.toNat + A024206 (n + 1)

end

end A265282.P786631912857751493

noncomputable section

/-- A265282: Number of triangles in a certain geometric structure: see "Illustration of initial terms" link for precise definition.

Offset 0, canonical program `A265282.P786631912857751493`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265282 (n : ℕ) : ℤ :=
  A265282.P786631912857751493.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265282.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A265745.P10758348576253649364

`1+a(n-A001045(A130249(n)))` with `a(0)=0, a(1)=1`
-/

namespace A265745.P10758348576253649364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a ((n : ℤ) - A001045 (A130249 n).toNat).toNat

end

end A265745.P10758348576253649364

noncomputable section

/-- A265745: a(n) is the number of Jacobsthal numbers (A001045) needed to sum to n using the greedy algorithm.

Offset 0, canonical program `A265745.P10758348576253649364`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265745 (n : ℕ) : ℤ :=
  (A265745.P10758348576253649364.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265745.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A265746.P6041453824196199215

`3^(A130249(n)-2)+a(n-A001045(A130249(n)))` with `a(0)=0, a(1)=1`
-/

namespace A265746.P6041453824196199215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (3 : ℚ) ^ (A130249 n - 2 : ℤ) + a ((n : ℤ) - A001045 (A130249 n).toNat).toNat

end

end A265746.P6041453824196199215

noncomputable section

/-- A265746: Jacobsthal greedy base (A265747) interpreted as base-3 numbers, then shown in decimal.

Offset 0, canonical program `A265746.P6041453824196199215`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265746 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A265746.P6041453824196199215.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265746.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A265747.P7842850892364262606

`10^(A130249(n)-2)+a(n-A001045(A130249(n)))` with `a(0)=0, a(1)=1`
-/

namespace A265747.P7842850892364262606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (10 : ℚ) ^ (A130249 n - 2 : ℤ) + a ((n : ℤ) - A001045 (A130249 n).toNat).toNat

end

end A265747.P7842850892364262606

noncomputable section

/-- A265747: Numbers written in Jacobsthal greedy base.

Offset 0, canonical program `A265747.P7842850892364262606`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265747 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A265747.P7842850892364262606.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A265747.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A266074.P13498364541412967355

`2*A135276(n)`
-/

namespace A266074.P13498364541412967355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135276 n

end

end A266074.P13498364541412967355

noncomputable section

/-- A266074: Total number of OFF (white) cells after n iterations of the "Rule 3" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266074.P13498364541412967355`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A266074 (n : ℕ) : ℤ :=
  A266074.P13498364541412967355.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A266074.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A266349.P17990688955937145880

`1+A053644(n+1)-A004001(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A266349.P17990688955937145880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A053644 (n + 1) - A004001 (n + 2)

end

end A266349.P17990688955937145880

noncomputable section

/-- A266349: a(n) = 1 + A053644(n) - A004001(n+1) = 1 + A072376(n) - A266348(n).

Offset 1, canonical program `A266349.P17990688955937145880`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A266349 (n : ℕ) : ℤ :=
  A266349.P17990688955937145880.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A266349.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A266491.P12047070723219874249

`n*A130658(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A266491.P12047070723219874249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A130658 n

end

end A266491.P12047070723219874249

noncomputable section

/-- A266491: a(n) = n*A130658(n).

Offset 0, canonical program `A266491.P12047070723219874249`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A266491 (n : ℕ) : ℤ :=
  A266491.P12047070723219874249.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A266491.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A266498.P14967402616786672958

`A002024(3^n+1)`
-/

namespace A266498.P14967402616786672958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (3 ^ n + 1)

end

end A266498.P14967402616786672958

noncomputable section

/-- A266498: Index of the smallest triangular number greater than 3^n.

Offset 0, canonical program `A266498.P14967402616786672958`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A266498 (n : ℕ) : ℤ :=
  A266498.P14967402616786672958.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A266498.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A266956.P5863885163544571678

`A218864(n+1)+1`
-/

namespace A266956.P5863885163544571678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218864 (n + 1) + 1

end

end A266956.P5863885163544571678

noncomputable section

/-- A266956: Numbers m such that 9*m+7 is a square.

Offset 1, canonical program `A266956.P5863885163544571678`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A266956 (n : ℕ) : ℤ :=
  A266956.P5863885163544571678.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A266956.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A267141.P9990484793633317975

`6*A051431(n)`
-/

namespace A267141.P9990484793633317975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A051431 n

end

end A267141.P9990484793633317975

noncomputable section

/-- A267141: Number of weeks in n! seconds, for n >= 10.

Offset 10, canonical program `A267141.P9990484793633317975`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A267141 (n : ℕ) : ℤ :=
  A267141.P9990484793633317975.a (n - 10)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A267141.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A267144.P16510657683815295351

`A000567(A000040(n+1))`
-/

namespace A267144.P16510657683815295351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (A000040 (n + 1)).toNat

end

end A267144.P16510657683815295351

noncomputable section

/-- A267144: Octagonal numbers with prime indices.

Offset 1, canonical program `A267144.P16510657683815295351`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A267144 (n : ℕ) : ℤ :=
  A267144.P16510657683815295351.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A267144.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A267217.P10913398264968307580

`A001107(A000040(n+1))`
-/

namespace A267217.P10913398264968307580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001107 (A000040 (n + 1)).toNat

end

end A267217.P10913398264968307580

noncomputable section

/-- A267217: 10-gonal (or decagonal) numbers with prime indices.

Offset 1, canonical program `A267217.P10913398264968307580`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A267217 (n : ℕ) : ℤ :=
  A267217.P10913398264968307580.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A267217.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A267370.P17383826425187002967

`A002411(n)+A028895(n)`
-/

namespace A267370.P17383826425187002967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n + A028895 n

end

end A267370.P17383826425187002967

noncomputable section

/-- A267370: Partial sums of A140091.

Offset 0, canonical program `A267370.P17383826425187002967`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A267370 (n : ℕ) : ℤ :=
  A267370.P17383826425187002967.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A267370.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A267797.P7624270577655389034

`A000032(A016945(n+1))`
-/

namespace A267797.P7624270577655389034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A016945 (n + 1)).toNat

end

end A267797.P7624270577655389034

noncomputable section

/-- A267797: Lucas numbers of the form (x^3 + y^3) / 2 where x and y are distinct positive integers.

Offset 1, canonical program `A267797.P7624270577655389034`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A267797 (n : ℕ) : ℤ :=
  A267797.P7624270577655389034.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A267797.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A267840.P11665603408340325912

`1/3-A000085(n+1)/2+A115327(n+1)/6`
-/

namespace A267840.P11665603408340325912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 - (A000085 (n + 1) : ℚ) / 2 + (A115327 (n + 1) : ℚ) / 6

end

end A267840.P11665603408340325912

noncomputable section

/-- A267840: Number of symmetric difference-closed 4-sets consisting of the empty set and sets consisting of pairwise disjoint 2-subsets of {1,2,...,n}.

Offset 1, canonical program `A267840.P11665603408340325912`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A267840 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A267840.P11665603408340325912.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A267840.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A267897.P8071461726051862786

`A005096(A000040(n+1))`
-/

namespace A267897.P8071461726051862786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005096 (A000040 (n + 1)).toNat

end

end A267897.P8071461726051862786

noncomputable section

/-- A267897: a(n) = prime(n)! - prime(n).

Offset 1, canonical program `A267897.P8071461726051862786`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A267897 (n : ℕ) : ℤ :=
  A267897.P8071461726051862786.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A267897.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A267898.P17565478472134533887

`A005095(A000040(n+1))`
-/

namespace A267898.P17565478472134533887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005095 (A000040 (n + 1)).toNat

end

end A267898.P17565478472134533887

noncomputable section

/-- A267898: a(n) = prime(n)! + prime(n).

Offset 1, canonical program `A267898.P17565478472134533887`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A267898 (n : ℕ) : ℤ :=
  A267898.P17565478472134533887.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A267898.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A267981.P2581473113123947097

`A000108(n)²*(4*n+2)`
-/

namespace A267981.P2581473113123947097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n ^ 2 * (4 * n + 2 : ℤ)

end

end A267981.P2581473113123947097

noncomputable section

/-- A267981: a(n) = Catalan(n)^2*(4n + 2).

Offset 0, canonical program `A267981.P2581473113123947097`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A267981 (n : ℕ) : ℤ :=
  A267981.P2581473113123947097.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A267981.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A268306.P10270823922185399726

`A133872(n+1)/2+A000073(n+3)/2`
-/

namespace A268306.P10270823922185399726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133872 (n + 1) : ℚ) / 2 + (A000073 (n + 3) : ℚ) / 2

end

end A268306.P10270823922185399726

noncomputable section

/-- A268306: The number of even permutations p of 1,2,...,n such that -1<=p(i)-i<=2 for i=1,2,...,n.

Offset 1, canonical program `A268306.P10270823922185399726`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268306 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A268306.P10270823922185399726.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268306.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A268354.P8951824794683086161

`7^A214411(n+1)`
-/

namespace A268354.P8951824794683086161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A214411 (n + 1) : ℤ)

end

end A268354.P8951824794683086161

noncomputable section

/-- A268354: Highest power of 7 dividing n.

Offset 1, canonical program `A268354.P8951824794683086161`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268354 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A268354.P8951824794683086161.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268354.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A268514.P15426293074144232651

`(A064194(n+1)-1)/2`
-/

namespace A268514.P15426293074144232651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064194 (n + 1) - 1 : ℚ) / 2

end

end A268514.P15426293074144232651

noncomputable section

/-- A268514: a(0)=0; thereafter a(2n+1)=3*a(n)+1, a(2n)=2*a(n)+a(n-1)+1.

Offset 0, canonical program `A268514.P15426293074144232651`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268514 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A268514.P15426293074144232651.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268514.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A268555.P8235004269466494055

`A000984(n)*A001850(n)`
-/

namespace A268555.P8235004269466494055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A001850 n

end

end A268555.P8235004269466494055

noncomputable section

/-- A268555: Diagonal of the rational function of six variables 1/((1 - w - u v - u v w) * (1 - z - x y)).

Offset 0, canonical program `A268555.P8235004269466494055`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268555 (n : ℕ) : ℤ :=
  A268555.P8235004269466494055.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268555.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A268685.P10623415984474932436

`6*A116689(n+1)`
-/

namespace A268685.P10623415984474932436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A116689 (n + 1)

end

end A268685.P10623415984474932436

noncomputable section

/-- A268685: a(n) = 3*(n + 1)*(n + 2)*(3*n + 1)*(3*n + 4)/4.

Offset 0, canonical program `A268685.P10623415984474932436`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268685 (n : ℕ) : ℤ :=
  A268685.P10623415984474932436.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A268685.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A269024.P12608391171988860494

`A269020(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A269024.P12608391171988860494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269020 (n + 1) - (n + 1 : ℤ)

end

end A269024.P12608391171988860494

noncomputable section

/-- A269024: a(n) = A269020(n) - n.

Offset 1, canonical program `A269024.P12608391171988860494`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A269020(n+1)-(n+1)` (program `A269024.P12608391171988860494`, by `A269024.P12608391171988860494.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A269024 (n : ℕ) : ℤ :=
  A269024.P12608391171988860494.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A269020(n+1)-(n+1)` (program `A269024.P12608391171988860494`, by `A269024.P12608391171988860494.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A269024.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A269255.P12237341277011884646

`A083420(n)*A003462(n+1)`
-/

namespace A269255.P12237341277011884646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083420 n * A003462 (n + 1)

end

end A269255.P12237341277011884646

noncomputable section

/-- A269255: a(n) = (2^(2*n+1) - 1)*(3^(n+1) - 1)/2.

Offset 0, canonical program `A269255.P12237341277011884646`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A269255 (n : ℕ) : ℤ :=
  A269255.P12237341277011884646.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A269255.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A269327.P12691883733270740652

`7^A000040(n+1)`
-/

namespace A269327.P12691883733270740652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A269327.P12691883733270740652

noncomputable section

/-- A269327: a(n) = 7^prime(n).

Offset 1, canonical program `A269327.P12691883733270740652`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A269327 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A269327.P12691883733270740652.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A269327.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A270296.P17548243857982245723

`20*A001651(n+1)`
-/

namespace A270296.P17548243857982245723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 * A001651 (n + 1)

end

end A270296.P17548243857982245723

noncomputable section

/-- A270296: Numbers which are representable as a sum of five but no fewer consecutive nonnegative integers.

Offset 1, canonical program `A270296.P17548243857982245723`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A270296 (n : ℕ) : ℤ :=
  A270296.P17548243857982245723.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A270296.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A270297.P13372243168542465082

`28*A229829(n+1)`
-/

namespace A270297.P13372243168542465082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  28 * A229829 (n + 1)

end

end A270297.P13372243168542465082

noncomputable section

/-- A270297: Numbers which are representable as a sum of seven but no fewer consecutive nonnegative integers.

Offset 1, canonical program `A270297.P13372243168542465082`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A270297 (n : ℕ) : ℤ :=
  A270297.P13372243168542465082.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A270297.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A270577.P11460174371161535537

`A000108(2*n)*A000984(n)`
-/

namespace A270577.P11460174371161535537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (2 * n) * A000984 n

end

end A270577.P11460174371161535537

noncomputable section

/-- A270577: Generalized Catalan numbers C(3,n), where the (m,n)-th Catalan is the number of paths in R^m from the origin to the point (n,...,n,(m-1)n) with m kinds of moves such that the path never rises above the hyperplane x_m = x_1+...+x_{m-1}.

Offset 0, canonical program `A270577.P11460174371161535537`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A270577 (n : ℕ) : ℤ :=
  A270577.P11460174371161535537.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A270577.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A271040.P14101773628109120962

`10*A000579(n)`
-/

namespace A271040.P14101773628109120962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A000579 n

end

end A271040.P14101773628109120962

noncomputable section

/-- A271040: Number of different 3 against 3 matches given n players.

Offset 0, canonical program `A271040.P14101773628109120962`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271040 (n : ℕ) : ℤ :=
  A271040.P14101773628109120962.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271040.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A271476.P9140631115465867091

`A093302(n+1)/2`
-/

namespace A271476.P9140631115465867091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093302 (n + 1) : ℚ) / 2

end

end A271476.P9140631115465867091

noncomputable section

/-- A271476: Total number of burnt pancakes flipped using the Min-bar(n) greedy algorithm.

Offset 1, canonical program `A271476.P9140631115465867091`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271476 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A271476.P9140631115465867091.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271476.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A271512.P2900871764372876767

`A000292(A000040(n+1)+1)`
-/

namespace A271512.P2900871764372876767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A000040 (n + 1) + 1).toNat

end

end A271512.P2900871764372876767

noncomputable section

/-- A271512: a(n) = (p+1)*(p+2)*(p+3)/6 where p is the n-th prime.

Offset 1, canonical program `A271512.P2900871764372876767`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271512 (n : ℕ) : ℤ :=
  A271512.P2900871764372876767.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271512.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A271528.P1606489720865875831

`A002276(n)*A002277(n)`
-/

namespace A271528.P1606489720865875831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 n * A002277 n

end

end A271528.P1606489720865875831

noncomputable section

/-- A271528: a(n) = 2*(10^n - 1)^2/27.

Offset 0, canonical program `A271528.P1606489720865875831`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271528 (n : ℕ) : ℤ :=
  A271528.P1606489720865875831.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271528.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A271591.P3174353865751214106

`floor(A000073(n+4)/2^(ceil(log2(A000073(n+4)+1))-2))-2`
-/

namespace A271591.P3174353865751214106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000073 (n + 4) : ℚ) / (2 : ℚ) ^ (⌈Real.logb 2 (A000073 (n + 4) + 1 : ℝ)⌉ - 2 : ℤ)⌋ - 2

end

end A271591.P3174353865751214106

noncomputable section

/-- A271591: Second most significant bit of the tribonacci number A000073(n).

Offset 4, canonical program `A271591.P3174353865751214106`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271591 (n : ℕ) : ℤ :=
  A271591.P3174353865751214106.a (n - 4)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271591.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A271785.P11021279405485774573

`A006355(n+1)+A001629(n+1)`
-/

namespace A271785.P11021279405485774573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 1) + A001629 (n + 1)

end

end A271785.P11021279405485774573

noncomputable section

/-- A271785: a(n) = Sum_{k=0..(n-1)/2} (n+2-k)*binomial(n-1-k,k).

Offset 0, canonical program `A271785.P11021279405485774573`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271785 (n : ℕ) : ℤ :=
  A271785.P11021279405485774573.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271785.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A271994.P3232194357757952267

`A018227(n+2)-2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A271994.P3232194357757952267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018227 (n + 2) - 2

end

end A271994.P3232194357757952267

noncomputable section

/-- A271994: The chalcogen sequence (a(n) = A018227(n)-2).

Offset 2, canonical program `A271994.P3232194357757952267`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271994 (n : ℕ) : ℤ :=
  A271994.P3232194357757952267.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271994.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A271995.P7678876369597040305

`A018227(n+2)-3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A271995.P7678876369597040305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018227 (n + 2) - 3

end

end A271995.P7678876369597040305

noncomputable section

/-- A271995: The Pnictogen sequence: a(n) = A018227(n)-3.

Offset 2, canonical program `A271995.P7678876369597040305`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271995 (n : ℕ) : ℤ :=
  A271995.P7678876369597040305.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271995.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A271996.P11609739420559161612

`A018227(n+2)-4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A271996.P11609739420559161612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018227 (n + 2) - 4

end

end A271996.P11609739420559161612

noncomputable section

/-- A271996: The crystallogen sequence (a(n) = A018227(n)-4).

Offset 2, canonical program `A271996.P11609739420559161612`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271996 (n : ℕ) : ℤ :=
  A271996.P11609739420559161612.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271996.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A271997.P120219686765223320

`A018227(n+2)-5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A271997.P120219686765223320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018227 (n + 2) - 5

end

end A271997.P120219686765223320

noncomputable section

/-- A271997: The icosagen sequence : a(n) = A018227(n)-5, for n >= 2.

Offset 2, canonical program `A271997.P120219686765223320`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271997 (n : ℕ) : ℤ :=
  A271997.P120219686765223320.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A271997.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A272027.P17950759033993077215

`3*A000203(n+1)`
-/

namespace A272027.P17950759033993077215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000203 (n + 1)

end

end A272027.P17950759033993077215

noncomputable section

/-- A272027: a(n) = 3*sigma(n).

Offset 1, canonical program `A272027.P17950759033993077215`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272027 (n : ℕ) : ℤ :=
  A272027.P17950759033993077215.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272027.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A272123.P3384884903232359567

`A014445(n)-A001906(n)`
-/

namespace A272123.P3384884903232359567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014445 n - A001906 n

end

end A272123.P3384884903232359567

noncomputable section

/-- A272123: a(n) = Fibonacci(3n) - Fibonacci(2n).

Offset 0, canonical program `A272123.P3384884903232359567`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272123 (n : ℕ) : ℤ :=
  A272123.P3384884903232359567.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272123.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A272170.P5454619822345200697

`floor(A000045(n+3)/2^(ceil(log2(A000045(n+3)+1))-2))-2`
-/

namespace A272170.P5454619822345200697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 (n + 3) : ℚ) / (2 : ℚ) ^ (⌈Real.logb 2 (A000045 (n + 3) + 1 : ℝ)⌉ - 2 : ℤ)⌋ - 2

end

end A272170.P5454619822345200697

noncomputable section

/-- A272170: Second most significant bit of Fibonacci numbers > 1 written in base 2.

Offset 3, canonical program `A272170.P5454619822345200697`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272170 (n : ℕ) : ℤ :=
  A272170.P5454619822345200697.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272170.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A272263.P14829198746395316325

`A087131(n)-1`
-/

namespace A272263.P14829198746395316325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087131 n - 1

end

end A272263.P14829198746395316325

noncomputable section

/-- A272263: a(n) = numerator of A000032(n) - 1/2^n.

Offset 0, canonical program `A272263.P14829198746395316325`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272263 (n : ℕ) : ℤ :=
  A272263.P14829198746395316325.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272263.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A272439.P9688275424147345473

`A000203(A000032(n))`
-/

namespace A272439.P9688275424147345473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000032 n).toNat

end

end A272439.P9688275424147345473

noncomputable section

/-- A272439: Sum of positive divisors of A000032(n).

Offset 0, canonical program `A272439.P9688275424147345473`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272439 (n : ℕ) : ℤ :=
  A272439.P9688275424147345473.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272439.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A272470.P18354335613044509669

`7*A000040(n+1)`
-/

namespace A272470.P18354335613044509669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A000040 (n + 1)

end

end A272470.P18354335613044509669

noncomputable section

/-- A272470: 7 times the primes.

Offset 1, canonical program `A272470.P18354335613044509669`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272470 (n : ℕ) : ℤ :=
  A272470.P18354335613044509669.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272470.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A272666.P12795134577239707157

`A011371(n)+5*n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A272666.P12795134577239707157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n + (5 * n : ℤ)

end

end A272666.P12795134577239707157

noncomputable section

/-- A272666: a(n) = A011371(n) + 5*n.

Offset 0, canonical program `A272666.P12795134577239707157`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272666 (n : ℕ) : ℤ :=
  A272666.P12795134577239707157.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A272666.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A273055.P2819132108516866513

`A002426(2*n+1)`
-/

namespace A273055.P2819132108516866513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 (2 * n + 1)

end

end A273055.P2819132108516866513

noncomputable section

/-- A273055: a(n) = Sum_{k=0..n} binomial(2*k, k) * binomial(2*n+1, 2*k).

Offset 0, canonical program `A273055.P2819132108516866513`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273055 (n : ℕ) : ℤ :=
  A273055.P2819132108516866513.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273055.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A273187.P6364872259732564638

`24+25*A001541(n+1)`
-/

namespace A273187.P6364872259732564638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 + 25 * A001541 (n + 1)

end

end A273187.P6364872259732564638

noncomputable section

/-- A273187: a(n) is the third number in a triple consisting of 3 numbers, which when squared are part of a right diagonal of magic square of squares.

Offset 0, canonical program `A273187.P6364872259732564638`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273187 (n : ℕ) : ℤ :=
  A273187.P6364872259732564638.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273187.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A273373.P16330932660018588641

`A090773(n+1)²`
-/

namespace A273373.P16330932660018588641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090773 (n + 1) ^ 2

end

end A273373.P16330932660018588641

noncomputable section

/-- A273373: Squares ending in digit 6.

Offset 1, canonical program `A273373.P16330932660018588641`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273373 (n : ℕ) : ℤ :=
  A273373.P16330932660018588641.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273373.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A273374.P17226260759646083903

`A063226(n+1)²`
-/

namespace A273374.P17226260759646083903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (n + 1) ^ 2

end

end A273374.P17226260759646083903

noncomputable section

/-- A273374: Squares ending in digit 9.

Offset 1, canonical program `A273374.P17226260759646083903`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273374 (n : ℕ) : ℤ :=
  A273374.P17226260759646083903.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273374.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A273397.P6776923368005567381

`A000045(A000108(n))`
-/

namespace A273397.P6776923368005567381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000108 n).toNat

end

end A273397.P6776923368005567381

noncomputable section

/-- A273397: a(n) = Fibonacci(Catalan(n)).

Offset 0, canonical program `A273397.P6776923368005567381`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273397 (n : ℕ) : ℤ :=
  A273397.P6776923368005567381.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273397.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A273398.P14451358136939616418

`A000108(A000045(n))`
-/

namespace A273398.P14451358136939616418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A000045 n).toNat

end

end A273398.P14451358136939616418

noncomputable section

/-- A273398: a(n) = Catalan(Fibonacci(n)).

Offset 0, canonical program `A273398.P14451358136939616418`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273398 (n : ℕ) : ℤ :=
  A273398.P14451358136939616418.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273398.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A273399.P2234011479383046362

`A000108(A000108(n))`
-/

namespace A273399.P2234011479383046362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A000108 n).toNat

end

end A273399.P2234011479383046362

noncomputable section

/-- A273399: a(n) = Catalan(Catalan(n)).

Offset 0, canonical program `A273399.P2234011479383046362`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273399 (n : ℕ) : ℤ :=
  A273399.P2234011479383046362.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273399.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A273625.P3508756453264777210

`(A001906(n+1)+A001906(2*(n+1))+A001906(3*(n+1)))/12`
-/

namespace A273625.P3508756453264777210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001906 (n + 1) + A001906 (2 * (n + 1)) + A001906 (3 * (n + 1)) : ℚ) / 12

end

end A273625.P3508756453264777210

noncomputable section

/-- A273625: a(n) = (1/12)*(Fibonacci(2*n) + Fibonacci(4*n) + Fibonacci(6*n)).

Offset 1, canonical program `A273625.P3508756453264777210`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273625 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A273625.P3508756453264777210.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273625.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A273626.P16343949251584966982

`(A082405(n+1)+A001109(n+1))/7`
-/

namespace A273626.P16343949251584966982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082405 (n + 1) + A001109 (n + 1) : ℚ) / 7

end

end A273626.P16343949251584966982

noncomputable section

/-- A273626: A fourth-order divisibility sequence: a(n) = (1/14)*(Pell(4*n) + Pell(2*n)).

Offset 1, canonical program `A273626.P16343949251584966982`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273626 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A273626.P16343949251584966982.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273626.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A273627.P628070964889003123

`1/8*(A000129(4*(n+1))-2*A000129(2*(n+1)))`
-/

namespace A273627.P628070964889003123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 8 * (A000129 (4 * (n + 1)) - 2 * A000129 (2 * (n + 1)) : ℚ)

end

end A273627.P628070964889003123

noncomputable section

/-- A273627: A divisibility sequence: (1/8)*(Pell(4*n) - 2*Pell(2*n)).

Offset 1, canonical program `A273627.P628070964889003123`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273627 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A273627.P628070964889003123.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273627.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A273820.P12866763565535476415

`A003418(2^(n+1)-1)`
-/

namespace A273820.P12866763565535476415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (2 ^ (n + 1) - 1)

end

end A273820.P12866763565535476415

noncomputable section

/-- A273820: Least common multiple of (2^n, 2^n + 1, ..., 2^(n+1) - 1).

Offset 0, canonical program `A273820.P12866763565535476415`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273820 (n : ℕ) : ℤ :=
  A273820.P12866763565535476415.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273820.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A273960.P11387709209113560683

`A000040(n+1)*A033999(n+1)`
-/

namespace A273960.P11387709209113560683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A033999 (n + 1)

end

end A273960.P11387709209113560683

noncomputable section

/-- A273960: a(n) = (-1)^n*prime(n).

Offset 1, canonical program `A273960.P11387709209113560683`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273960 (n : ℕ) : ℤ :=
  A273960.P11387709209113560683.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273960.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A273974.P8732007486651234185

`A000720(A000108(n))`
-/

namespace A273974.P8732007486651234185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000108 n).toNat

end

end A273974.P8732007486651234185

noncomputable section

/-- A273974: Number of primes <= n-th Catalan number.

Offset 0, canonical program `A273974.P8732007486651234185`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273974 (n : ℕ) : ℤ :=
  A273974.P8732007486651234185.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A273974.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A274104.P7123589224199202206

`A014137(n+1)+(n+1)*A000108(n+1)-1`
-/

namespace A274104.P7123589224199202206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 (n + 1) + (n + 1 : ℤ) * A000108 (n + 1) - 1

end

end A274104.P7123589224199202206

noncomputable section

/-- A274104: a(n) = Sum_{k=0..n} (3*k+2)*Catalan(k).

Offset 0, canonical program `A274104.P7123589224199202206`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274104 (n : ℕ) : ℤ :=
  A274104.P7123589224199202206.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274104.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A274325.P6992868875536074226

`A008619(n^5)`
-/

namespace A274325.P6992868875536074226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n ^ 5)

end

end A274325.P6992868875536074226

noncomputable section

/-- A274325: Number of partitions of n^5 into at most two parts.

Offset 0, canonical program `A274325.P6992868875536074226`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274325 (n : ℕ) : ℤ :=
  A274325.P6992868875536074226.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274325.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A274535.P4233430454223343819

`5*A000203(n+1)`
-/

namespace A274535.P4233430454223343819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000203 (n + 1)

end

end A274535.P4233430454223343819

noncomputable section

/-- A274535: a(n) = 5*sigma(n).

Offset 1, canonical program `A274535.P4233430454223343819`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274535 (n : ℕ) : ℤ :=
  A274535.P4233430454223343819.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274535.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A274634.P7133056127629872112

`(n+1)!*A003436(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A274634.P7133056127629872112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A003436 (n + 1)

end

end A274634.P7133056127629872112

noncomputable section

/-- A274634: a(n) = n!*A003436(n).

Offset 1, canonical program `A274634.P7133056127629872112`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274634 (n : ℕ) : ℤ :=
  A274634.P7133056127629872112.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274634.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A274766.P3261647422136751783

`A002275(n)*A002275(n+1)`
-/

namespace A274766.P3261647422136751783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n * A002275 (n + 1)

end

end A274766.P3261647422136751783

noncomputable section

/-- A274766: Multiplication of pair of contiguous repunits, i.e., (0*1, 1*11, 11*111, 111*1111, 1111*11111, ...).

Offset 0, canonical program `A274766.P3261647422136751783`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274766 (n : ℕ) : ℤ :=
  A274766.P3261647422136751783.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274766.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A274922.P9821768908038600101

`(-1)^n*A028310(n)`
-/

namespace A274922.P9821768908038600101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A028310 n

end

end A274922.P9821768908038600101

noncomputable section

/-- A274922: a(n) = (-1)^n * n if n>0, a(0) = 1.

Offset 0, canonical program `A274922.P9821768908038600101`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274922 (n : ℕ) : ℤ :=
  A274922.P9821768908038600101.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A274922.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A275047.P408053448138579622

`A188662(n)*A000984(n)`
-/

namespace A275047.P408053448138579622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188662 n * A000984 n

end

end A275047.P408053448138579622

noncomputable section

/-- A275047: Diagonal of the rational function 1/(1-(1+w)(xy + xz + yz)) [even-indexed terms only].

Offset 0, canonical program `A275047.P408053448138579622`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A275047 (n : ℕ) : ℤ :=
  A275047.P408053448138579622.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A275047.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A275704.P12174991893892858084

`A010888(A028387(n))`
-/

namespace A275704.P12174991893892858084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A028387 n).toNat

end

end A275704.P12174991893892858084

noncomputable section

/-- A275704: Digital root of n + (n+1)^2.

Offset 0, canonical program `A275704.P12174991893892858084`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A275704 (n : ℕ) : ℤ :=
  A275704.P12174991893892858084.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A275704.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A275766.P834557470017193565

`A003463(2*(n+2))`
-/

namespace A275766.P834557470017193565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 (2 * (n + 2))

end

end A275766.P834557470017193565

noncomputable section

/-- A275766: a(n) = (5^(2*(n + 1)) - 1)/4.

Offset 1, canonical program `A275766.P834557470017193565`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A275766 (n : ℕ) : ℤ :=
  A275766.P834557470017193565.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A275766.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A275854.P5496768946083056562

`A000124(n)^n`
-/

namespace A275854.P5496768946083056562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n ^ n

end

end A275854.P5496768946083056562

noncomputable section

/-- A275854: Number of labeled directed graphs on n nodes (allowing self loops) such that the out-degree of each node is at most 2.

Offset 0, canonical program `A275854.P5496768946083056562`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A275854 (n : ℕ) : ℤ :=
  A275854.P5496768946083056562.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A275854.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276092.P18415584103762021999

`a(n-1)*A000040(n)^(A000040(n)-1)` with `a(0)=1`
-/

namespace A276092.P18415584103762021999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (A000040 n : ℚ) ^ (A000040 n - 1 : ℤ)

end

end A276092.P18415584103762021999

noncomputable section

/-- A276092: a(n) = Product_{i=1..n} prime(i)^(prime(i)-1), a(0)=1.

Offset 0, canonical program `A276092.P18415584103762021999`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276092 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A276092.P18415584103762021999.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276092.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276095.P7997153681006801748

`A072878(n+1)²`
-/

namespace A276095.P7997153681006801748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072878 (n + 1) ^ 2

end

end A276095.P7997153681006801748

noncomputable section

/-- A276095: A nonlinear recurrence of order 4: a(1)=a(2)=a(3)=a(4)=1; a(n)=(a(n-1)+a(n-2)+a(n-3))^2/a(n-4).

Offset 1, canonical program `A276095.P7997153681006801748`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276095 (n : ℕ) : ℤ :=
  A276095.P7997153681006801748.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276095.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276097.P18322687685694777596

`A072879(n+1)²`
-/

namespace A276097.P18322687685694777596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072879 (n + 1) ^ 2

end

end A276097.P18322687685694777596

noncomputable section

/-- A276097: A nonlinear recurrence of order 5: a(1)=a(2)=a(3)=a(4)=a(5)=1; a(n)=(a(n-1)+a(n-2)+a(n-3)+a(n-4))^2/a(n-5).

Offset 1, canonical program `A276097.P18322687685694777596`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276097 (n : ℕ) : ℤ :=
  A276097.P18322687685694777596.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276097.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276195.P11905812276051658324

`A000040(A000720(A011545(n)-1)+1)`
-/

namespace A276195.P11905812276051658324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A011545 n - 1).toNat + 1).toNat

end

end A276195.P11905812276051658324

noncomputable section

/-- A276195: Smallest prime >= decimal expansion of Pi truncated to n places (A011545).

Offset 0, canonical program `A276195.P11905812276051658324`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276195 (n : ℕ) : ℤ :=
  A276195.P11905812276051658324.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276195.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276196.P14246465269572759540

`A000040(A000720(A011543(n)-1)+1)`
-/

namespace A276196.P14246465269572759540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A011543 n - 1).toNat + 1).toNat

end

end A276196.P14246465269572759540

noncomputable section

/-- A276196: Smallest prime >= decimal expansion of e truncated to n places (A011543).

Offset 0, canonical program `A276196.P14246465269572759540`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276196 (n : ℕ) : ℤ :=
  A276196.P14246465269572759540.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276196.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276256.P16495692336009215844

`A276258(n+1)²`
-/

namespace A276256.P16495692336009215844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276258 (n + 1) ^ 2

end

end A276256.P16495692336009215844

noncomputable section

/-- A276256: A nonlinear recurrence of order 3: a(1)=a(2)=a(3)=1; a(n)=(a(n-1)+a(n-2)+1)^2/a(n-3).

Offset 1, canonical program `A276256.P16495692336009215844`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276256 (n : ℕ) : ℤ :=
  A276256.P16495692336009215844.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276256.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276257.P7331088886659733407

`A276259(n+1)²`
-/

namespace A276257.P7331088886659733407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276259 (n + 1) ^ 2

end

end A276257.P7331088886659733407

noncomputable section

/-- A276257: a(1) = a(2) = a(3) = a(4) = 1; for n>4, a(n) = ( a(n-1)+a(n-2)+a(n-3)+1 )^2 / a(n-4).

Offset 1, canonical program `A276257.P7331088886659733407`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276257 (n : ℕ) : ℤ :=
  A276257.P7331088886659733407.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276257.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276268.P3832215897934294218

`A276267(n)²`
-/

namespace A276268.P3832215897934294218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276267 n ^ 2

end

end A276268.P3832215897934294218

noncomputable section

/-- A276268: a(0) = a(1) = a(2) = a(3) = 1; for n>3, a(n) = ( a(n-1)*a(n-2)*a(n-3) + 1 )^2 / a(n-4).

Offset 0, canonical program `A276268.P3832215897934294218`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276268 (n : ℕ) : ℤ :=
  A276268.P3832215897934294218.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276268.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276453.P9955206926902377942

`A051786(n)*A051786(n+1)*A051786(n+2)`
-/

namespace A276453.P9955206926902377942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051786 n * A051786 (n + 1) * A051786 (n + 2)

end

end A276453.P9955206926902377942

noncomputable section

/-- A276453: a(n) = (a(n-1)+1)*(a(n-2)+1)*(a(n-3)+1)/a(n-4) with a(0) = a(1) = 1, a(2) = 2, a(3) = 6.

Offset 0, canonical program `A276453.P9955206926902377942`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276453 (n : ℕ) : ℤ :=
  A276453.P9955206926902377942.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276453.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276482.P11782156945687614591

`A000142(n)*A008548(n)`
-/

namespace A276482.P11782156945687614591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A008548 n

end

end A276482.P11782156945687614591

noncomputable section

/-- A276482: a(n) = 5^n*Gamma(n+1/5)*Gamma(n+1)/Gamma(1/5).

Offset 0, canonical program `A276482.P11782156945687614591`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276482 (n : ℕ) : ℤ :=
  A276482.P11782156945687614591.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276482.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276659.P3187042620927487117

`a(n-1)+A058877(n+1)` with `a(0)=0`
-/

namespace A276659.P3187042620927487117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A058877 (n + 1)

end

end A276659.P3187042620927487117

noncomputable section

/-- A276659: Accumulation of the upper left triangle used in binomial transform of nonnegative integers.

Offset 0, canonical program `A276659.P3187042620927487117`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276659 (n : ℕ) : ℤ :=
  A276659.P3187042620927487117.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276659.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276666.P223053164440974407

`A000984(n+1)-3*A000984(n)`
-/

namespace A276666.P223053164440974407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1) - 3 * A000984 n

end

end A276666.P223053164440974407

noncomputable section

/-- A276666: a(n) = (n-1)*Catalan(n).

Offset 0, canonical program `A276666.P223053164440974407`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276666 (n : ℕ) : ℤ :=
  A276666.P223053164440974407.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276666.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276785.P5311190698958443462

`2^n-A210021(n)`
-/

namespace A276785.P5311190698958443462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A210021 n

end

end A276785.P5311190698958443462

noncomputable section

/-- A276785: Number of binary strings of length n containing the substring 11011.

Offset 0, canonical program `A276785.P5311190698958443462`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276785 (n : ℕ) : ℤ :=
  A276785.P5311190698958443462.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276785.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276960.P2113863334697293408

`A000262(n)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276960.P2113863334697293408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n ^ 2

end

end A276960.P2113863334697293408

noncomputable section

/-- A276960: a(n) = A000262(n)^2.

Offset 0, canonical program `A276960.P2113863334697293408`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276960 (n : ℕ) : ℤ :=
  A276960.P2113863334697293408.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276960.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A276964.P13301482771124687693

`A000262(n)*A000262(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A276964.P13301482771124687693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n * A000262 (n + 1)

end

end A276964.P13301482771124687693

noncomputable section

/-- A276964: a(n) = A000262(n)*A000262(n+1).

Offset 0, canonical program `A276964.P13301482771124687693`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276964 (n : ℕ) : ℤ :=
  A276964.P13301482771124687693.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A276964.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A277062.P11518591224059598292

`A000720(A000032(n))`
-/

namespace A277062.P11518591224059598292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000032 n).toNat

end

end A277062.P11518591224059598292

noncomputable section

/-- A277062: Number of primes <= n-th Lucas number.

Offset 0, canonical program `A277062.P11518591224059598292`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277062 (n : ℕ) : ℤ :=
  A277062.P11518591224059598292.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277062.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A277105.P4249415682091381104

`9*A116970(n+2)`
-/

namespace A277105.P4249415682091381104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A116970 (n + 2)

end

end A277105.P4249415682091381104

noncomputable section

/-- A277105: a(n) = (27*3^n - 63)/2.

Offset 1, canonical program `A277105.P4249415682091381104`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277105 (n : ℕ) : ℤ :=
  A277105.P4249415682091381104.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277105.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A277279.P9444588253784968232

`A210098(2*n+1)`
-/

namespace A277279.P9444588253784968232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210098 (2 * n + 1)

end

end A277279.P9444588253784968232

noncomputable section

/-- A277279: Somos-4 sequence variant: a(n) = (a(n-1)*a(n-3) - a(n-2)^2)/a(n-4), a(0) = 1, a(1) = 1, a(2) = 2, a(3) = -1.

Offset 0, canonical program `A277279.P9444588253784968232`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277279 (n : ℕ) : ℤ :=
  A277279.P9444588253784968232.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277279.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A277351.P13613904926195031193

`(n+2)*2^A070939(n+1)+n+1`
-/

namespace A277351.P13613904926195031193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * (2 : ℚ) ^ (A070939 (n + 1) : ℤ) + (n + 1 : ℚ)

end

end A277351.P13613904926195031193

noncomputable section

/-- A277351: Value of (n+1,n) concatenated in binary representation.

Offset 1, canonical program `A277351.P13613904926195031193`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277351 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A277351.P13613904926195031193.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277351.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A277543.P14051601711625620625

`A010874(A132739(n+1))`
-/

namespace A277543.P14051601711625620625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A132739 (n + 1)).toNat

end

end A277543.P14051601711625620625

noncomputable section

/-- A277543: a(n) = n/5^m mod 5, where 5^m is the greatest power of 5 that divides n.

Offset 1, canonical program `A277543.P14051601711625620625`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277543 (n : ℕ) : ℤ :=
  A277543.P14051601711625620625.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277543.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A277644.P15546226932184128949

`A000196(A032528(n+1))`
-/

namespace A277644.P15546226932184128949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A032528 (n + 1)).toNat

end

end A277644.P15546226932184128949

noncomputable section

/-- A277644: Beatty sequence for sqrt(6)/2.

Offset 1, canonical program `A277644.P15546226932184128949`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277644 (n : ℕ) : ℤ :=
  A277644.P15546226932184128949.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277644.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A277645.P18154289466191058935

`3*(n+1)+A000196(A033581(n+1))`
-/

namespace A277645.P18154289466191058935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) + A000196 (A033581 (n + 1)).toNat

end

end A277645.P18154289466191058935

noncomputable section

/-- A277645: Beatty sequence for 3+sqrt(6).

Offset 1, canonical program `A277645.P18154289466191058935`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277645 (n : ℕ) : ℤ :=
  A277645.P18154289466191058935.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277645.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A277823.P16868301371846557949

`A048724(A065621(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277823.P16868301371846557949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 (A065621 (n + 1)).toNat

end

end A277823.P16868301371846557949

noncomputable section

/-- A277823: a(n) = A048724(A065621(n)).

Offset 1, canonical program `A277823.P16868301371846557949`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277823 (n : ℕ) : ℤ :=
  A277823.P16868301371846557949.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277823.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A277825.P4005437013768950350

`A048725(A065621(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277825.P4005437013768950350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048725 (A065621 (n + 1)).toNat

end

end A277825.P4005437013768950350

noncomputable section

/-- A277825: a(n) = A048725(A065621(n)) = A048720(A065621(n),5).

Offset 1, canonical program `A277825.P4005437013768950350`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277825 (n : ℕ) : ℤ :=
  A277825.P4005437013768950350.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277825.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A277935.P11391963306517879859

`2*A000389(n+4)`
-/

namespace A277935.P11391963306517879859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000389 (n + 4)

end

end A277935.P11391963306517879859

noncomputable section

/-- A277935: Number of ways 2*n-1 people can vote on three candidates so that the Condorcet paradox arises.

Offset 1, canonical program `A277935.P11391963306517879859`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277935 (n : ℕ) : ℤ :=
  A277935.P11391963306517879859.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A277935.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A278114.P18402708392266180151

`A000720(A001105(n+1))`
-/

namespace A278114.P18402708392266180151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001105 (n + 1)).toNat

end

end A278114.P18402708392266180151

noncomputable section

/-- A278114: Number of primes <= 2n^2.

Offset 1, canonical program `A278114.P18402708392266180151`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A278114 (n : ℕ) : ℤ :=
  A278114.P18402708392266180151.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A278114.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A278615.P1388989089013917215

`A271893(n)+A271894(n)+A271895(n)`
-/

namespace A278615.P1388989089013917215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271893 n + A271894 n + A271895 n

end

end A278615.P1388989089013917215

noncomputable section

/-- A278615: Sum of terms in level n of TRIP - Stern sequence associated with permutation triple (e,13,23).

Offset 0, canonical program `A278615.P1388989089013917215`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A278615 (n : ℕ) : ℤ :=
  A278615.P1388989089013917215.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A278615.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A279046.P3303134512408684315

`n!*a(n-1)+(-1)^n*A000178(n-1)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A279046.P3303134512408684315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  (Nat.factorial n : ℤ) * a (n - 1) + (-1) ^ n * A000178 (n - 1)

end

end A279046.P3303134512408684315

noncomputable section

/-- A279046: a(n) = A000178(n) * Sum_{k=0..n} (-1)^k/k!.

Offset 0, canonical program `A279046.P3303134512408684315`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A279046 (n : ℕ) : ℤ :=
  A279046.P3303134512408684315.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A279046.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A279260.P12155716219962346154

`6*A084175(n)`
-/

namespace A279260.P12155716219962346154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A084175 n

end

end A279260.P12155716219962346154

noncomputable section

/-- A279260: Numbers which are cyclops palindromic in their binary reflected Gray code representation.

Offset 0, canonical program `A279260.P12155716219962346154`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A279260 (n : ℕ) : ℤ :=
  A279260.P12155716219962346154.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A279260.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A233271.P6647705363235310695

`A233272(a(n-1))` with `a(0)=0`
-/

namespace A233271.P6647705363235310695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A233272 (a (n - 1)).toNat

end

end A233271.P6647705363235310695

noncomputable section

/-- A233271: a(0)=0; thereafter a(n+1) = a(n) + 1 + number of 0's in binary representation of a(n), counted with A080791.

Offset 0, canonical program `A233271.P6647705363235310695`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A233271 (n : ℕ) : ℤ :=
  A233271.P6647705363235310695.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A233271.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A238328.P7282730348117426873

`4*(n+1)*A238340(n+1)`
-/

namespace A238328.P7282730348117426873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) * A238340 (n + 1)

end

end A238328.P7282730348117426873

noncomputable section

/-- A238328: Sum of all the parts in the partitions of 4n into 4 parts.

Offset 1, canonical program `A238328.P7282730348117426873`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A238328 (n : ℕ) : ℤ :=
  A238328.P7282730348117426873.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A238328.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A240226.P5965855895015904533

`4^A244415(n+1)`
-/

namespace A240226.P5965855895015904533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A244415 (n + 1) : ℤ)

end

end A240226.P5965855895015904533

noncomputable section

/-- A240226: 4-adic value of 1/n, n >= 1.

Offset 1, canonical program `A240226.P5965855895015904533`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240226 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A240226.P5965855895015904533.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A240226.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A249457.P4380148840988544029

`5*(A249862(n)+3^n)`
-/

namespace A249457.P4380148840988544029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A249862 n + (3 ^ n : ℤ))

end

end A249457.P4380148840988544029

noncomputable section

/-- A249457: The numerator of curvatures of touching circles inscribed in a special way in the larger segment of a unit circle divided by a chord of length sqrt(84)/5.

Offset 0, canonical program `A249457.P4380148840988544029`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249457 (n : ℕ) : ℤ :=
  A249457.P4380148840988544029.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249457.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A249458.P10090392725250684682

`5*(A249864(n)+7^n)`
-/

namespace A249458.P10090392725250684682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A249864 n + (7 ^ n : ℤ))

end

end A249458.P10090392725250684682

noncomputable section

/-- A249458: The numerators of curvatures of touching circles inscribed in a special way in the smaller segment of unit circle divided by a chord of length sqrt(84)/5.

Offset 0, canonical program `A249458.P10090392725250684682`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249458 (n : ℕ) : ℤ :=
  A249458.P10090392725250684682.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A249458.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A228920.P7829172958353520928

`2^(n+1)*A038503(n+1)`
-/

namespace A228920.P7829172958353520928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A038503 (n + 1)

end

end A228920.P7829172958353520928

noncomputable section

/-- A228920: Number of solutions to Sum_{i=1..n} x_i^2 == 0 (mod 4) with x_i in 0..3.

Offset 1, canonical program `A228920.P7829172958353520928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A228920 (n : ℕ) : ℤ :=
  A228920.P7829172958353520928.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A228920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229025.P15258114464244423388

`A028115(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A229025.P15258114464244423388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028115 n + 2 * a (n - 1)

end

end A229025.P15258114464244423388

noncomputable section

/-- A229025: Expansion of 1/((1-2x)(1-4x)(1-5x)(1-7x)(1-8x)).

Offset 0, canonical program `A229025.P15258114464244423388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A229025 (n : ℕ) : ℤ :=
  A229025.P15258114464244423388.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. -/
def A229025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229063.P1740680241374049437

`floor(A066023(n+1)/sqrt(18))`
-/

namespace A229063.P1740680241374049437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A066023 (n + 1) : ℝ) / Real.sqrt (18 : ℝ)⌋

end

end A229063.P1740680241374049437

noncomputable section

/-- A229063: Volume of the Johnson square pyramid (rounded down) with all the edge lengths equal to n.

Offset 1, canonical program `A229063.P1740680241374049437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. -/
def A229063 (n : ℕ) : ℤ :=
  A229063.P1740680241374049437.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 220 terms. -/
def A229063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229081.P3807567821886474592

`record[gcd(n+1, A022847(A022847(n+1)))]`
-/

namespace A229081.P3807567821886474592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A022847 (A022847 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229081.P3807567821886474592

noncomputable section

/-- A229081: Numbers n such that there exists a square m^2 with 3n^2 - n <= m^2 <= 3n^2 + n.

Offset 1, canonical program `A229081.P3807567821886474592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A229081 (n : ℕ) : ℤ :=
  (A229081.P3807567821886474592.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A229081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229274.P5680792210633206878

`3*p?[A047370(3*n+5)]`
-/

namespace A229274.P5680792210633206878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047370 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229274.P5680792210633206878

noncomputable section

/-- A229274: Composite squarefree numbers n such that p+tau(n) divides n-sigma(n), where p are the prime factors of n, tau(n) = A000005(n) and sigma(n) = A000203(n).

Offset 1, canonical program `A229274.P5680792210633206878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 435 terms. -/
def A229274 (n : ℕ) : ℤ :=
  A229274.P5680792210633206878.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 435 terms. -/
def A229274.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229337.P13277258750618214647

`A020696(n+1)-1`
-/

namespace A229337.P13277258750618214647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020696 (n + 1) - 1

end

end A229337.P13277258750618214647

noncomputable section

/-- A229337: Sum of products of elements of nonempty subsets of divisors of n.

Offset 1, canonical program `A229337.P13277258750618214647`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020696, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A229337 (n : ℕ) : ℤ :=
  A229337.P13277258750618214647.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020696, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A229337.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A229339.P17445840520596043980

`gcd(3-A061084(n), ∑[A061084(n)])`
-/

namespace A229339.P17445840520596043980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (3 - A061084 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229339.P17445840520596043980

noncomputable section

/-- A229339: GCD of all sums of n consecutive Lucas numbers.

Offset 1, canonical program `A229339.P17445840520596043980`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A229339 (n : ℕ) : ℤ :=
  (A229339.P17445840520596043980.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A229339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229506.P14398497466748086925

`(A008776(n+2)-A008776(n))*A229587(n+1)`
-/

namespace A229506.P14398497466748086925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008776 (n + 2) - A008776 n) * A229587 (n + 1)

end

end A229506.P14398497466748086925

noncomputable section

/-- A229506: Number of defective 3-colorings of an n X 4 0..2 array connected diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

Offset 1, canonical program `A229506.P14398497466748086925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A229506 (n : ℕ) : ℤ :=
  A229506.P14398497466748086925.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A229506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229572.P8736048714096368551

`abs((1-n-6*n)*A011782(n))`
-/

namespace A229572.P8736048714096368551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - (n : ℤ) - (6 * n : ℤ)) * A011782 n|

end

end A229572.P8736048714096368551

noncomputable section

/-- A229572: Number of defective 4-colorings of an n X 2 0..3 array connected horizontally, vertically, diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..3 order.

Offset 1, canonical program `A229572.P8736048714096368551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. -/
def A229572 (n : ℕ) : ℤ :=
  A229572.P8736048714096368551.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. -/
def A229572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229582.P17646191819240093177

`A229587(2*(n+1))`
-/

namespace A229582.P17646191819240093177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229587 (2 * (n + 1))

end

end A229582.P17646191819240093177

noncomputable section

/-- A229582: Number of defective 3-colorings of an n X 4 0..2 array connected horizontally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

Offset 1, canonical program `A229582.P17646191819240093177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A229582 (n : ℕ) : ℤ :=
  A229582.P17646191819240093177.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A229582.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229786.P9575253401389881351

`A000040(n+1)%23`
-/

namespace A229786.P9575253401389881351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 23

end

end A229786.P9575253401389881351

noncomputable section

/-- A229786: a(n) = n-th prime modulo 23.

Offset 1, canonical program `A229786.P9575253401389881351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229786 (n : ℕ) : ℤ :=
  A229786.P9575253401389881351.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229786.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229787.P9072737370582349556

`A000040(n+1)%24`
-/

namespace A229787.P9072737370582349556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 24

end

end A229787.P9072737370582349556

noncomputable section

/-- A229787: a(n) = n-th prime modulo 24.

Offset 1, canonical program `A229787.P9072737370582349556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229787 (n : ℕ) : ℤ :=
  A229787.P9072737370582349556.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A229787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A229947.P4592846590888887576

`p?[A230462(n+1)]`
-/

namespace A229947.P4592846590888887576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229947.P4592846590888887576

noncomputable section

/-- A229947: Primes congruent to {1, 11, 13, 17, 19, 29} mod 30.

Offset 1, canonical program `A229947.P4592846590888887576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3842 terms. -/
def A229947 (n : ℕ) : ℤ :=
  A229947.P4592846590888887576.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3842 terms. -/
def A229947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230024.P6081935907338950513

`((n+1)^A010873(n+1))%16`
-/

namespace A230024.P6081935907338950513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A010873 (n + 1) : ℤ))) 16

end

end A230024.P6081935907338950513

noncomputable section

/-- A230024: Final nonzero digit of n^n in base 16.

Offset 1, canonical program `A230024.P6081935907338950513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4157 terms. -/
def A230024 (n : ℕ) : ℤ :=
  A230024.P6081935907338950513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4157 terms. -/
def A230024.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230076.P12907884634970271226

`(A007521(n+1)-1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A230076.P12907884634970271226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007521 (n + 1) - 1 : ℚ) / 4

end

end A230076.P12907884634970271226

noncomputable section

/-- A230076: a(n) = (A007521(n)-1)/4.

Offset 1, canonical program `A230076.P12907884634970271226`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230076 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A230076.P12907884634970271226.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230076.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A230102.P14819412051623608779

`A230099(a(n-1))` with `a(0)=1`
-/

namespace A230102.P14819412051623608779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A230099 (a (n - 1)).toNat

end

end A230102.P14819412051623608779

noncomputable section

/-- A230102: a(0)=1; thereafter a(n+1) = a(n) + (product of digits of a(n)).

Offset 0, canonical program `A230102.P14819412051623608779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230102 (n : ℕ) : ℤ :=
  A230102.P14819412051623608779.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230113.P115488730651242556

`A211253(A007775(n+1))%9`
-/

namespace A230113.P115488730651242556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211253 (A007775 (n + 1)).toNat) 9

end

end A230113.P115488730651242556

noncomputable section

/-- A230113: Digital root of summed Fibonacci and Lucas digital roots indexed by numbers not divisible by 2, 3 or 5.

Offset 1, canonical program `A230113.P115488730651242556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A230113 (n : ℕ) : ℤ :=
  A230113.P115488730651242556.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A230113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230137.P8347840085871938097

`A100071(n)+A001787(n)`
-/

namespace A230137.P8347840085871938097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100071 n + A001787 n

end

end A230137.P8347840085871938097

noncomputable section

/-- A230137: a(n)/2^n is the expected value of the maximum of the number of heads and the number of tails when n fair coins are tossed.

Offset 0, canonical program `A230137.P8347840085871938097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A230137 (n : ℕ) : ℤ :=
  A230137.P8347840085871938097.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A230137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230276.P8189018374968012443

`n²-3*A069905(n+1)`
-/

namespace A230276.P8189018374968012443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 3 * A069905 (n + 1)

end

end A230276.P8189018374968012443

noncomputable section

/-- A230276: Voids left after packing 5-curves coins patterns into fountain of coins with base n.

Offset 1, canonical program `A230276.P8189018374968012443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230276 (n : ℕ) : ℤ :=
  A230276.P8189018374968012443.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230301.P11949614508306179088

`A010061(n+1)+1`
-/

namespace A230301.P11949614508306179088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010061 (n + 1) + 1

end

end A230301.P11949614508306179088

noncomputable section

/-- A230301: Positive numbers not of the form m + wt(m-1), m >= 1.

Offset 1, canonical program `A230301.P11949614508306179088`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230301 (n : ℕ) : ℤ :=
  A230301.P11949614508306179088.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230301.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A230369.P7741936576236999319

`gcd(1-A099456(n+1), A099456(n))`
-/

namespace A230369.P7741936576236999319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A099456 (n + 1)) (A099456 n)

end

end A230369.P7741936576236999319

noncomputable section

/-- A230369: A strong divisibility sequence associated with the algebraic integer 2 + i.

Offset 1, canonical program `A230369.P7741936576236999319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 285 terms. -/
def A230369 (n : ℕ) : ℤ :=
  (A230369.P7741936576236999319.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 285 terms. -/
def A230369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230548.P5656994079022896520

`A010762(n+2)+Δ[A004523(A004526(n))]`
-/

namespace A230548.P5656994079022896520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010762 (n + 2) + (f1 (n + 1) - f1 n)

end

end A230548.P5656994079022896520

noncomputable section

/-- A230548: Twin hearts patterns packing into n X n coins.

Offset 2, canonical program `A230548.P5656994079022896520`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A230548 (n : ℕ) : ℤ :=
  A230548.P5656994079022896520.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A230548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230577.P4839669968900257948

`eq[5, A069283(n)]`
-/

namespace A230577.P4839669968900257948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A230577.P4839669968900257948

noncomputable section

/-- A230577: Positive integers that have exactly 6 odd divisors.

Offset 1, canonical program `A230577.P4839669968900257948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 811 terms. -/
def A230577 (n : ℕ) : ℤ :=
  (A230577.P4839669968900257948.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 811 terms. -/
def A230577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230594.P14479731149764464359

`∑{d}[n+1, A080339(#)*A080339((n+1)/#)]`
-/

namespace A230594.P14479731149764464359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A080339 d * A080339 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A230594.P14479731149764464359

noncomputable section

/-- A230594: Number of ways to write n as n = x*y, where x, y = noncomposite numbers (A008578), 1 <= x <= n, 1 <= y <= n.

Offset 1, canonical program `A230594.P14479731149764464359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230594 (n : ℕ) : ℤ :=
  A230594.P14479731149764464359.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230594.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230771.P1390251623776861171

`∪[A000079(n), A020695(n)]`
-/

namespace A230771.P1390251623776861171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A230771.P1390251623776861171

noncomputable section

/-- A230771: Union of Fibonacci numbers and powers of 2.

Offset 1, canonical program `A230771.P1390251623776861171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 808 terms. -/
def A230771 (n : ℕ) : ℤ :=
  (A230771.P1390251623776861171.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 808 terms. -/
def A230771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230774.P14716185316073664911

`a(n-1)+val(n, A000040(a(n-1))²)` with `a(0)=1`
-/

namespace A230774.P14716185316073664911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + SequenceMachineLib.valuation n (A000040 (a (n - 1)) ^ 2).toNat

end

end A230774.P14716185316073664911

noncomputable section

/-- A230774: Number of primes less than first prime above square root of n.

Offset 1, canonical program `A230774.P14716185316073664911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230774 (n : ℕ) : ℤ :=
  (A230774.P14716185316073664911.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A230774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231003.P8402459544255823097

`comp[A231000(n)]`
-/

namespace A231003.P8402459544255823097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231000 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A231003.P8402459544255823097

noncomputable section

/-- A231003: Number of years after which it is not possible to have a date falling on the same day of the week, in the Julian calendar.

Offset 1, canonical program `A231003.P8402459544255823097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231003 (n : ℕ) : ℤ :=
  (A231003.P8402459544255823097.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231151.P17080161268396402534

`A231149(n+2)+1`
-/

namespace A231151.P17080161268396402534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231149 (n + 2) + 1

end

end A231151.P17080161268396402534

noncomputable section

/-- A231151: Least integer k such that n+1 + ... + n+k > 1 + ... + n.

Offset 2, canonical program `A231151.P17080161268396402534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A231151 (n : ℕ) : ℤ :=
  A231151.P17080161268396402534.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A231151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231367.P1796647954828476227

`floor(sqrt(A231366(n)))`
-/

namespace A231367.P1796647954828476227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A231366 n)

end

end A231367.P1796647954828476227

noncomputable section

/-- A231367: a(n) = 1 if A024816(m) = n has a solution for some m, where A024816(m) = sums of non-divisors of m = antisigma(m), otherwise 0.

Offset 0, canonical program `A231367.P1796647954828476227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231367 (n : ℕ) : ℤ :=
  A231367.P1796647954828476227.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A231367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231444.P13244204290273250743

`A199142(2*(n+2))`
-/

namespace A231444.P13244204290273250743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199142 (2 * (n + 2))

end

end A231444.P13244204290273250743

noncomputable section

/-- A231444: Number of (n+1) X (1+1) 0..3 arrays with no element unequal to a strict majority of its horizontal and antidiagonal neighbors, with values 0..3 introduced in row major order.

Offset 1, canonical program `A231444.P13244204290273250743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A231444 (n : ℕ) : ℤ :=
  A231444.P13244204290273250743.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A231444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231547.P1957663487271201341

`lt[A039653(A014681(n))+n, A039653(n)]`
-/

namespace A231547.P1957663487271201341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (A014681 n).toNat + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A231547.P1957663487271201341

noncomputable section

/-- A231547: Numbers n such that n < sigma(n) - sigma(n-1).

Offset 1, canonical program `A231547.P1957663487271201341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1785 terms. -/
def A231547 (n : ℕ) : ℤ :=
  (A231547.P1957663487271201341.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1785 terms. -/
def A231547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232017.P13088024248350548098

`A202882(2*(n+1))`
-/

namespace A232017.P13088024248350548098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202882 (2 * (n + 1))

end

end A232017.P13088024248350548098

noncomputable section

/-- A232017: Number of n X 2 0..2 arrays with no element less than a strict majority of its horizontal and antidiagonal neighbors.

Offset 1, canonical program `A232017.P13088024248350548098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A232017 (n : ℕ) : ℤ :=
  A232017.P13088024248350548098.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. -/
def A232017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232091.P4560155968691293298

`A008238(A027709(n))`
-/

namespace A232091.P4560155968691293298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008238 (A027709 n).toNat

end

end A232091.P4560155968691293298

noncomputable section

/-- A232091: Smallest square or promic (oblong) number greater than or equal to n.

Offset 0, canonical program `A232091.P4560155968691293298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232091 (n : ℕ) : ℤ :=
  A232091.P4560155968691293298.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232324.P14003359635588126761

`∑[A061579(A061579(n+1))]%A000203(n+1)`
-/

namespace A232324.P14003359635588126761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A061579 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000203 (n + 1))

end

end A232324.P14003359635588126761

noncomputable section

/-- A232324: n(n+1)/2 modulo sigma(n).

Offset 1, canonical program `A232324.P14003359635588126761`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9869 terms. -/
def A232324 (n : ℕ) : ℤ :=
  A232324.P14003359635588126761.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9869 terms. -/
def A232324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232485.P5428179291815119424

`A230099(a(n-1))` with `a(0)=3`
-/

namespace A232485.P5428179291815119424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A230099 (a (n - 1)).toNat

end

end A232485.P5428179291815119424

noncomputable section

/-- A232485: a(1) = 3; thereafter a(n+1) = a(n) + product of digits of a(n).

Offset 1, canonical program `A232485.P5428179291815119424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232485 (n : ℕ) : ℤ :=
  A232485.P5428179291815119424.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A232485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232493.P17536983822345669617

`(A254006(n)+A122007(n+1))*A000079(n)`
-/

namespace A232493.P17536983822345669617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A254006 n + A122007 (n + 1)) * A000079 n

end

end A232493.P17536983822345669617

noncomputable section

/-- A232493: If n mod 2 = 0 then 2^n*3^(n-1)+2^(n+1)*3^(n/2-1) otherwise 2^n*3^(n-1)+2^n*3^((n-1)/2).

Offset 0, canonical program `A232493.P17536983822345669617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A232493 (n : ℕ) : ℤ :=
  A232493.P17536983822345669617.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. -/
def A232493.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232590.P5068963047489497062

`abs(Δ[A078042(n)+(n+1)²])`
-/

namespace A232590.P5068963047489497062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078042 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A232590.P5068963047489497062

noncomputable section

/-- A232590: Number of (1+1)X(n+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or antidiagonally, with no adjacent elements equal.

Offset 1, canonical program `A232590.P5068963047489497062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. -/
def A232590 (n : ℕ) : ℤ :=
  A232590.P5068963047489497062.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. -/
def A232590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232622.P7750197207995084292

`(A259592(n)+A101265(n+1))/2`
-/

namespace A232622.P7750197207995084292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259592 n + A101265 (n + 1) : ℚ) / 2

end

end A232622.P7750197207995084292

noncomputable section

/-- A232622: Number of incongruent domino tilings of the 3 X (2n) board.

Offset 0, canonical program `A232622.P7750197207995084292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A232622 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A232622.P7750197207995084292.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A232622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A232771.P13410807256980959240

`∑[A005246(A004772(n+1))]-1`
-/

namespace A232771.P13410807256980959240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 (A004772 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A232771.P13410807256980959240

noncomputable section

/-- A232771: Values of x satisfying x^2 = floor(y^2/3 + y).

Offset 1, canonical program `A232771.P13410807256980959240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. -/
def A232771 (n : ℕ) : ℤ :=
  A232771.P13410807256980959240.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. -/
def A232771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233000.P9625870352812873065

`A000211(A109043(n))^gcd(2, n)`
-/

namespace A233000.P9625870352812873065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 (A109043 n).toNat ^ Nat.gcd 2 n

end

end A233000.P9625870352812873065

noncomputable section

/-- A233000: Let L(n) = Fibonacci(n-1)+Fibonacci(n+1) (cf. A000045, A000032); if n is even then a(n) = (L(n)+2)^2 otherwise a(n) = L(2*n)+2.

Offset 0, canonical program `A233000.P9625870352812873065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A233000 (n : ℕ) : ℤ :=
  A233000.P9625870352812873065.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A233000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233020.P9075068120088020693

`3*A015535(n+1)`
-/

namespace A233020.P9075068120088020693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A015535 (n + 1)

end

end A233020.P9075068120088020693

noncomputable section

/-- A233020: Number of n X 2 0..3 arrays with no element x(i,j) adjacent to value 3-x(i,j) horizontally, vertically, diagonally or antidiagonally, and top left element zero.

Offset 1, canonical program `A233020.P9075068120088020693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A233020 (n : ℕ) : ℤ :=
  A233020.P9075068120088020693.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A233020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233036.P569561181648300758

`and(A182531(n+1)+1, A182531(n+1))`
-/

namespace A233036.P569561181648300758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A182531 (n + 1) + 1) (A182531 (n + 1))

end

end A233036.P569561181648300758

noncomputable section

/-- A233036: The maximum number of I-tetrominoes that can be packed into an n X n array of squares when rotation is allowed.

Offset 1, canonical program `A233036.P569561181648300758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233036 (n : ℕ) : ℤ :=
  A233036.P569561181648300758.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233592.P7488321416657803819

`eq[1, floor(lcm(2*n, A053186(n))/(n+1))]`
-/

namespace A233592.P7488321416657803819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.lcm (2 * n : ℤ) (A053186 n) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A233592.P7488321416657803819

noncomputable section

/-- A233592: Positive integers k such that the continued fraction expansion sqrt(k) = c(1) + c(1)/(c(2) + c(2)/(c(3) + c(3)/...)) is periodic.

Offset 1, canonical program `A233592.P7488321416657803819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A233592 (n : ℕ) : ℤ :=
  (A233592.P7488321416657803819.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A233592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A233809.P14943293429112306030

`∑[A000040(n+1)*A087960(n)]`
-/

namespace A233809.P14943293429112306030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A087960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A233809.P14943293429112306030

noncomputable section

/-- A233809: a(n) = Sum_{k=1..n} prime(k) * s(k), where s(k) = (-1)^(floor(k/2)).

Offset 1, canonical program `A233809.P14943293429112306030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233809 (n : ℕ) : ℤ :=
  A233809.P14943293429112306030.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A233809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234587.P3112918179012221040

`A098181(n-a(A004526(n+1)))` with `a(0)=1, a(1)=1`
-/

namespace A234587.P3112918179012221040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A098181 ((n : ℤ) - a (A004526 (n + 1)).toNat).toNat

end

end A234587.P3112918179012221040

noncomputable section

/-- A234587: Odd-indexed terms of A234586.

Offset 1, canonical program `A234587.P3112918179012221040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A234587 (n : ℕ) : ℤ :=
  A234587.P3112918179012221040.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A234587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234639.P10335545487523328048

`record[(n+1)*A000203(A000203(A000203(n+1)))%2]`
-/

namespace A234639.P10335545487523328048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A000203 (A000203 (A000203 (n + 1)).toNat).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234639.P10335545487523328048

noncomputable section

/-- A234639: Numbers n for which sigma(sigma(sigma(n))) is odd.

Offset 1, canonical program `A234639.P10335545487523328048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A234639 (n : ℕ) : ℤ :=
  A234639.P10335545487523328048.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A234639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234850.P3773910976127958889

`p?[A014692(n+1)]`
-/

namespace A234850.P3773910976127958889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234850.P3773910976127958889

noncomputable section

/-- A234850: Primes in A014692, i.e., of the form prime(k)-k+1, for some k.

Offset 1, canonical program `A234850.P3773910976127958889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 974 terms. -/
def A234850 (n : ℕ) : ℤ :=
  A234850.P3773910976127958889.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 974 terms. -/
def A234850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234851.P8996763833196832844

`lt[(1-∑{e}[A014692(n+1), #])², 1]+1`
-/

namespace A234851.P8996763833196832844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A234851.P8996763833196832844

noncomputable section

/-- A234851: Indices of primes in A014692, i.e., numbers k such that prime(k)-k+1 is prime.

Offset 1, canonical program `A234851.P8996763833196832844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 974 terms. -/
def A234851 (n : ℕ) : ℤ :=
  (A234851.P8996763833196832844.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 974 terms. -/
def A234851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234875.P10616451242970156290

`xor(2*(a(n-1)+n%2)-1, A153643(n+2))` with `a(0)=32`
-/

namespace A234875.P10616451242970156290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [32] fun n a =>
  Int.xor (2 * (a (n - 1) + ((n % 2 : ℕ) : ℤ)) - 1) (A153643 (n + 2))

end

end A234875.P10616451242970156290

noncomputable section

/-- A234875: Number of (n+1) X (1+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

Offset 1, canonical program `A234875.P10616451242970156290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. -/
def A234875 (n : ℕ) : ℤ :=
  A234875.P10616451242970156290.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. -/
def A234875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A234914.P9419333935807630534

`4*(A061534(n+2)+1)`
-/

namespace A234914.P9419333935807630534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A061534 (n + 2) + 1)

end

end A234914.P9419333935807630534

noncomputable section

/-- A234914: Number of (n+1) X (1+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2, with no adjacent elements equal (constant-stress tilted 1 X 1 tilings).

Offset 1, canonical program `A234914.P9419333935807630534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. -/
def A234914 (n : ℕ) : ℤ :=
  A234914.P9419333935807630534.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. -/
def A234914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235037.P2716469781095852394

`∑[C(2, A059288(n+1)²)]`
-/

namespace A235037.P2716469781095852394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A059288 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235037.P2716469781095852394

noncomputable section

/-- A235037: Number of terms of A014847 that are not greater than n.

Offset 1, canonical program `A235037.P2716469781095852394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A235037 (n : ℕ) : ℤ :=
  (A235037.P2716469781095852394.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A235037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235204.P8837262474928507807

`round(A087057(n+1)²/2)`
-/

namespace A235204.P8837262474928507807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A087057 (n + 1) ^ 2 : ℚ) / 2)

end

end A235204.P8837262474928507807

noncomputable section

/-- A235204: Number of integer lattice points inside the square ABCD with side length n>0 with A(0|0), B(n*sqrt(2)/2| n*sqrt(2)/2), C(0| n*sqrt(2)) and D(-n*sqrt(2)/2| n*sqrt(2)/2).

Offset 1, canonical program `A235204.P8837262474928507807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A235204 (n : ℕ) : ℤ :=
  A235204.P8837262474928507807.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A235204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235226.P5349840113162180698

`∩[A227793(n+1), A017233(n)]`
-/

namespace A235226.P5349840113162180698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017233 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235226.P5349840113162180698

noncomputable section

/-- A235226: Numbers whose sum of digits is 15.

Offset 1, canonical program `A235226.P5349840113162180698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2375 terms. -/
def A235226 (n : ℕ) : ℤ :=
  (A235226.P5349840113162180698.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2375 terms. -/
def A235226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235229.P14870552725123267920

`∩[A227793(n+1), A017185(n)]`
-/

namespace A235229.P14870552725123267920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235229.P14870552725123267920

noncomputable section

/-- A235229: Numbers whose sum of digits is 20.

Offset 1, canonical program `A235229.P14870552725123267920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3256 terms. -/
def A235229 (n : ℕ) : ℤ :=
  (A235229.P14870552725123267920.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3256 terms. -/
def A235229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235282.P12075057285622094097

`4*(A038754(n+2)+A029744(2*(n+1)))`
-/

namespace A235282.P12075057285622094097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A038754 (n + 2) + A029744 (2 * (n + 1)))

end

end A235282.P12075057285622094097

noncomputable section

/-- A235282: Number of (n+1) X (1+1) 0..3 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 4 (constant-stress 1 X 1 tilings).

Offset 1, canonical program `A235282.P12075057285622094097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A235282 (n : ℕ) : ℤ :=
  A235282.P12075057285622094097.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A235282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235337.P13547820392319958820

`A001844(A049472(n+1))`
-/

namespace A235337.P13547820392319958820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (A049472 (n + 1)).toNat

end

end A235337.P13547820392319958820

noncomputable section

/-- A235337: Number of integer lattice points inside the square ABCD with side length n>0 with A(-n*sqrt(2)/2| 0), B(n*sqrt(2)/2| 0), C(0| n*sqrt(2)/2) and D(-n*sqrt(2)/2| 0).

Offset 1, canonical program `A235337.P13547820392319958820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A235337 (n : ℕ) : ℤ :=
  A235337.P13547820392319958820.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A235337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235467.P16967607584721991000

`p?[A023717(A000040(n+1))]`
-/

namespace A235467.P16967607584721991000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235467.P16967607584721991000

noncomputable section

/-- A235467: Primes whose base-4 representation also is the base-3 representation of a prime.

Offset 1, canonical program `A235467.P16967607584721991000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A235467 (n : ℕ) : ℤ :=
  A235467.P16967607584721991000.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A235467.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235468.P5946997078443756873

`p?[A037453(A000040(n+1))]`
-/

namespace A235468.P5946997078443756873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037453 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235468.P5946997078443756873

noncomputable section

/-- A235468: Primes whose base-5 representation also is the base-3 representation of a prime.

Offset 1, canonical program `A235468.P5946997078443756873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. -/
def A235468 (n : ℕ) : ℤ :=
  A235468.P5946997078443756873.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. -/
def A235468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235497.P16290766832587102791

`A105814(n+1)+A068824(n+1)`
-/

namespace A235497.P16290766832587102791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105814 (n + 1) + A068824 (n + 1)

end

end A235497.P16290766832587102791

noncomputable section

/-- A235497: 2n concatenated with n.

Offset 1, canonical program `A235497.P16290766832587102791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235497 (n : ℕ) : ℤ :=
  A235497.P16290766832587102791.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235878.P2398778198100713250

`A245023(n+2)+A081808(n+3)`
-/

namespace A235878.P2398778198100713250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245023 (n + 2) + A081808 (n + 3)

end

end A235878.P2398778198100713250

noncomputable section

/-- A235878: Number of (n+1) X (2+1) 0..2 arrays with the minimum plus the upper median equal to the lower median plus the maximum in every 2 X 2 subblock.

Offset 1, canonical program `A235878.P2398778198100713250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A235878 (n : ℕ) : ℤ :=
  A235878.P2398778198100713250.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. -/
def A235878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235895.P2333483615985084343

`A007483(n+2)+A000079(n+2)²`
-/

namespace A235895.P2333483615985084343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007483 (n + 2) + A000079 (n + 2) ^ 2

end

end A235895.P2333483615985084343

noncomputable section

/-- A235895: Number of (n+1) X (1+1) 0..2 arrays with the minimum plus the maximum equal to the lower median plus the upper median in every 2 X 2 subblock.

Offset 1, canonical program `A235895.P2333483615985084343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A235895 (n : ℕ) : ℤ :=
  A235895.P2333483615985084343.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A235895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235944.P3001479549671488632

`dr(A030133(n)²)`
-/

namespace A235944.P3001479549671488632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A030133 n ^ 2)

end

end A235944.P3001479549671488632

noncomputable section

/-- A235944: Digital roots of squares of Lucas numbers.

Offset 0, canonical program `A235944.P3001479549671488632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235944 (n : ℕ) : ℤ :=
  (A235944.P3001479549671488632.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236185.P4307672231705502787

`Δ[A070884(n)]`
-/

namespace A236185.P4307672231705502787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A236185.P4307672231705502787

noncomputable section

/-- A236185: Differences between terms of compacting Eratosthenes sieve for prime(4) = 7.

Offset 1, canonical program `A236185.P4307672231705502787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A236185 (n : ℕ) : ℤ :=
  A236185.P4307672231705502787.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A236185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236191.P6410617248716895503

`A000045(n)*A033999(A004482(n))`
-/

namespace A236191.P6410617248716895503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A033999 (A004482 n).toNat

end

end A236191.P6410617248716895503

noncomputable section

/-- A236191: a(n) = (-1)^floor( (n-1) / 3 ) * F(n), where F = Fibonacci.

Offset 0, canonical program `A236191.P6410617248716895503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A236191 (n : ℕ) : ℤ :=
  A236191.P6410617248716895503.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A236191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236291.P10993209874262571537

`A011782(n)+C(n, A347558(n+2))`
-/

namespace A236291.P10993209874262571537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (Nat.choose n (A347558 (n + 2)).toNat : ℤ)

end

end A236291.P10993209874262571537

noncomputable section

/-- A236291: Number of length n binary words that contain an even number of 0's or exactly two 1's.

Offset 0, canonical program `A236291.P10993209874262571537`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A236291 (n : ℕ) : ℤ :=
  A236291.P10993209874262571537.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A236291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236370.P9565244450043832367

`∑[A026381(n+2)]+n*(n+1)²`
-/

namespace A236370.P9565244450043832367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026381 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n * (n + 1) ^ 2 : ℤ)

end

end A236370.P9565244450043832367

noncomputable section

/-- A236370: Sum of the largest parts in the partitions of 3n into 3 parts.

Offset 1, canonical program `A236370.P9565244450043832367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236370 (n : ℕ) : ℤ :=
  A236370.P9565244450043832367.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236387.P11788203029548530517

`eq[1, A196199(A039653(n)+2)]`
-/

namespace A236387.P11788203029548530517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (A039653 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A236387.P11788203029548530517

noncomputable section

/-- A236387: Numbers n such that sigma(n) is an oblong number.

Offset 1, canonical program `A236387.P11788203029548530517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. -/
def A236387 (n : ℕ) : ℤ :=
  (A236387.P11788203029548530517.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. -/
def A236387.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236758.P18436612115019287046

`∑[A230980(n)+A082460(n+1)]`
-/

namespace A236758.P18436612115019287046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n + A082460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236758.P18436612115019287046

noncomputable section

/-- A236758: Number of partitions of 3*n into 3 parts with smallest part prime.

Offset 1, canonical program `A236758.P18436612115019287046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236758 (n : ℕ) : ℤ :=
  A236758.P18436612115019287046.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236856.P12242245037929288109

`A173185(n)-1`
-/

namespace A236856.P12242245037929288109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173185 n - 1

end

end A236856.P12242245037929288109

noncomputable section

/-- A236856: Partial sums of A003418 starting summing from A003418(1), with a(0) = 0.

Offset 0, canonical program `A236856.P12242245037929288109`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173185, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A236856 (n : ℕ) : ℤ :=
  A236856.P12242245037929288109.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173185, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A236856.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A236866.P17788189984368847866

`eq[1, ∑{e}[A007775(n+2), #]]+2`
-/

namespace A236866.P17788189984368847866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A236866.P17788189984368847866

noncomputable section

/-- A236866: Positions of primes in A007775 (numbers not divisible by 2, 3 or 5).

Offset 1, canonical program `A236866.P17788189984368847866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3965 terms. -/
def A236866 (n : ℕ) : ℤ :=
  (A236866.P17788189984368847866.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3965 terms. -/
def A236866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A236916.P14910980737374846545

`ceil((A046978(n)+n)/2)`
-/

namespace A236916.P14910980737374846545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A046978 n + (n : ℤ) : ℚ) / 2⌉

end

end A236916.P14910980737374846545

noncomputable section

/-- A236916: The first "octad" is 0, 1, 2, 2, 2, 2, 3, 3; thereafter add 4 to get the next octad.

Offset 0, canonical program `A236916.P14910980737374846545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236916 (n : ℕ) : ℤ :=
  A236916.P14910980737374846545.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A236916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237514.P3967440001977244503

`A020914(comp[floor((n+1)/(log2(3)-1))])`
-/

namespace A237514.P3967440001977244503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / (Real.logb 2 (3 : ℝ) - 1)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A237514.P3967440001977244503

noncomputable section

/-- A237514: Numbers k such that 2^(k-1) < 3^(m-1) < 2^k < 3^m < 2^(k+1), for some m > 2, a(1) = 1.

Offset 1, canonical program `A237514.P3967440001977244503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8302 terms. -/
def A237514 (n : ℕ) : ℤ :=
  A237514.P3967440001977244503.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8302 terms. -/
def A237514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237654.P9038227127362551737

`abs(∑[A077916(n)])`
-/

namespace A237654.P9038227127362551737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077916 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A237654.P9038227127362551737

noncomputable section

/-- A237654: G.f.: exp( Sum_{n>=1} 5*Fibonacci(n-1)*Fibonacci(n+1) * x^n/n ).

Offset 0, canonical program `A237654.P9038227127362551737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A237654 (n : ℕ) : ℤ :=
  A237654.P9038227127362551737.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A237654.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A237670.P18018902008574357370

`∑{d}[n+1, A000108(#)]`
-/

namespace A237670.P18018902008574357370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000108 d

end

end A237670.P18018902008574357370

noncomputable section

/-- A237670: Inverse Moebius transform of Catalan numbers.

Offset 1, canonical program `A237670.P18018902008574357370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A237670 (n : ℕ) : ℤ :=
  A237670.P18018902008574357370.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A237670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238005.P18247132531721363031

`A003056(n+1)-(A069283(n+1)+1)`
-/

namespace A238005.P18247132531721363031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 1) - (A069283 (n + 1) + 1)

end

end A238005.P18247132531721363031

noncomputable section

/-- A238005: Number of partitions of n into distinct parts such that (greatest part) - (least part) = (number of parts).

Offset 1, canonical program `A238005.P18247132531721363031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238005 (n : ℕ) : ℤ :=
  A238005.P18247132531721363031.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238187.P12208281190577049950

`A133209(n)+A077860(n)`
-/

namespace A238187.P12208281190577049950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133209 n + A077860 n

end

end A238187.P12208281190577049950

noncomputable section

/-- A238187: Gaussian norm of 1+(1+i)^n.

Offset 0, canonical program `A238187.P12208281190577049950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A238187 (n : ℕ) : ℤ :=
  A238187.P12208281190577049950.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A238187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238468.P4933202717561499868

`∑[-A234044(abs(4-n))]`
-/

namespace A238468.P4933202717561499868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A234044 |4 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A238468.P4933202717561499868

noncomputable section

/-- A238468: Period 7: repeat [0, 0, -1, 1, -1, 1, 0].

Offset 0, canonical program `A238468.P4933202717561499868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238468 (n : ℕ) : ℤ :=
  A238468.P4933202717561499868.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238525.P9528007354923680125

`(n+2)%A001414(n+2)`
-/

namespace A238525.P9528007354923680125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A001414 (n + 2))

end

end A238525.P9528007354923680125

noncomputable section

/-- A238525: n modulo sopfr(n), where sopfr(n) is the sum of the prime factors of n, with multiplicity.

Offset 2, canonical program `A238525.P9528007354923680125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238525 (n : ℕ) : ℤ :=
  A238525.P9528007354923680125.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238525.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238527.P10086126541978314139

`p?[(n+2)%A001414(n+2)]`
-/

namespace A238527.P10086126541978314139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A001414 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A238527.P10086126541978314139

noncomputable section

/-- A238527: Prime values of A238525.

Offset 1, canonical program `A238527.P10086126541978314139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238527 (n : ℕ) : ℤ :=
  A238527.P10086126541978314139.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238527.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238706.P10107481637763201362

`A238702(n+1)-ceil((n+1)*(4*n+2)/3)`
-/

namespace A238706.P10107481637763201362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238702 (n + 1) - ⌈((n + 1) * (4 * n + 2) : ℚ) / 3⌉

end

end A238706.P10107481637763201362

noncomputable section

/-- A238706: Sum of the smallest parts of the partitions of 4n into 4 parts with smallest part greater than 1.

Offset 1, canonical program `A238706.P10107481637763201362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238706 (n : ℕ) : ℤ :=
  A238706.P10107481637763201362.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A238845.P1323273595676224108

`abs(val(n+1, 2)+1-A070939(n))`
-/

namespace A238845.P1323273595676224108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) - A070939 n|

end

end A238845.P1323273595676224108

noncomputable section

/-- A238845: Prefix overlap between binary expansions of n and n+1.

Offset 0, canonical program `A238845.P1323273595676224108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238845 (n : ℕ) : ℤ :=
  A238845.P1323273595676224108.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A238845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239057.P3481581294101736723

`A239056(n+1)-A238705(n+1)`
-/

namespace A239057.P3481581294101736723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239056 (n + 1) - A238705 (n + 1)

end

end A239057.P3481581294101736723

noncomputable section

/-- A239057: Sum of the parts in the partitions of 4n into 4 parts with smallest part equal to 1 minus the number of these partitions.

Offset 1, canonical program `A239057.P3481581294101736723`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A239056, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239057 (n : ℕ) : ℤ :=
  A239057.P3481581294101736723.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A239056, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239057.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A239195.P10978294607467254277

`∑[A004773(n+1)*(A004773(n)+1)]`
-/

namespace A239195.P10978294607467254277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (n + 1) * (A004773 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239195.P10978294607467254277

noncomputable section

/-- A239195: Sum of the next to smallest parts in the partitions of 4n into 4 parts with smallest part = 1.

Offset 1, canonical program `A239195.P10978294607467254277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239195 (n : ℕ) : ℤ :=
  A239195.P10978294607467254277.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239195.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239438.P9771006155411572266

`A008750(n)+A107750(n)-A274616(n)`
-/

namespace A239438.P9771006155411572266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008750 n + (A107750 n - A274616 n)

end

end A239438.P9771006155411572266

noncomputable section

/-- A239438: Maximal number of points that can be placed on a triangular grid of side n so that there is no pair of adjacent points.

Offset 1, canonical program `A239438.P9771006155411572266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239438 (n : ℕ) : ℤ :=
  A239438.P9771006155411572266.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239532.P15803227667658989209

`6*A239530(n+1)²`
-/

namespace A239532.P15803227667658989209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A239530 (n + 1) ^ 2

end

end A239532.P15803227667658989209

noncomputable section

/-- A239532: Number of (n+1) X (3+1) 0..2 arrays with no element equal to all horizontal neighbors or unequal to all vertical neighbors, and new values 0..2 introduced in row major order.

Offset 1, canonical program `A239532.P15803227667658989209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A239532 (n : ℕ) : ℤ :=
  A239532.P15803227667658989209.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A239532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239700.P18371025009612969375

`gcd(A004273(n²), A013984(n))`
-/

namespace A239700.P18371025009612969375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004273 (n ^ 2)) (A013984 n)

end

end A239700.P18371025009612969375

noncomputable section

/-- A239700: Given: 1. alphabet of 3 elements {x1,x2,x3}; 2. vector V of size L(V) = 10; Let w(x1) = number of failed trials before the last event x1. For all the possible configurations {w(x1),w(x2),w(x3)} admitted in vectors of L(V)=10, the sequence gives the number of vectors having the same configuration {w(x1),w(x2),w(x3)}.

Offset 1, canonical program `A239700.P18371025009612969375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A239700 (n : ℕ) : ℤ :=
  (A239700.P18371025009612969375.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A239700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239876.P14147958566961035666

`∑[A229110(n+1)]`
-/

namespace A239876.P14147958566961035666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A239876.P14147958566961035666

noncomputable section

/-- A239876: Partial sums of A229110, where A229110(n) = antisigma(n) mod n = A024816(n) mod n.

Offset 1, canonical program `A239876.P14147958566961035666`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239876 (n : ℕ) : ℤ :=
  A239876.P14147958566961035666.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A239876.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239907.P2924034239393918742

`n-A329320(n)`
-/

namespace A239907.P2924034239393918742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A329320 n

end

end A239907.P2924034239393918742

noncomputable section

/-- A239907: Let cn(n,k) denote the number of times 11..1 (k 1's) appears in the binary representation of n; a(n) = n - cn(n,1) + cn(n,2) - cn(n,3) + cn(n,4) - ... .

Offset 0, canonical program `A239907.P2924034239393918742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A239907 (n : ℕ) : ℤ :=
  A239907.P2924034239393918742.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A239907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239935.P844760797483781974

`lt[Δ[A004166(n)], 0]`
-/

namespace A239935.P844760797483781974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004166 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A239935.P844760797483781974

noncomputable section

/-- A239935: Numbers k such that DigitSum(3^k) > DigitSum(3^(k+1)).

Offset 1, canonical program `A239935.P844760797483781974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4840 terms. -/
def A239935 (n : ℕ) : ℤ :=
  (A239935.P844760797483781974.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4840 terms. -/
def A239935.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240025.P6086676864116806394

`A000007(A055087(n))`
-/

namespace A240025.P6086676864116806394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A055087 n).toNat

end

end A240025.P6086676864116806394

noncomputable section

/-- A240025: Characteristic function of quarter squares, cf. A002620.

Offset 0, canonical program `A240025.P6086676864116806394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240025 (n : ℕ) : ℤ :=
  A240025.P6086676864116806394.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240117.P7257571435940234037

`round((A138986(n+5)/3+1)/2)`
-/

namespace A240117.P7257571435940234037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A138986 (n + 5) : ℚ) / 3 + 1) / 2)

end

end A240117.P7257571435940234037

noncomputable section

/-- A240117: Schoenheim lower bound L(n,6,2).

Offset 6, canonical program `A240117.P7257571435940234037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. -/
def A240117 (n : ℕ) : ℤ :=
  A240117.P7257571435940234037.a (n - 6)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. -/
def A240117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240351.P973440033418318766

`A056594(lcm(16, n)/16)`
-/

namespace A240351.P973440033418318766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (SequenceMachineLib.roundAway ((Nat.lcm 16 n : ℚ) / 16)).toNat

end

end A240351.P973440033418318766

noncomputable section

/-- A240351: Inverse of 64th cyclotomic polynomial.

Offset 0, canonical program `A240351.P973440033418318766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240351 (n : ℕ) : ℤ :=
  A240351.P973440033418318766.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240597.P7116661834484253592

`eq[1, dr(A000203(n+1)-n)]+1`
-/

namespace A240597.P7116661834484253592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000203 (n + 1) - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A240597.P7116661834484253592

noncomputable section

/-- A240597: Numbers k such that sigma(k) == k (mod 9).

Offset 1, canonical program `A240597.P7116661834484253592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4952 terms. -/
def A240597 (n : ℕ) : ℤ :=
  (A240597.P7116661834484253592.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4952 terms. -/
def A240597.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240707.P11826631267229493597

`∑[A001844(2*n)]-A307559(2*(n+1))`
-/

namespace A240707.P11826631267229493597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A307559 (2 * (n + 1))

end

end A240707.P11826631267229493597

noncomputable section

/-- A240707: Sum of the middle parts in the partitions of 4n-1 into 3 parts.

Offset 1, canonical program `A240707.P11826631267229493597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A240707 (n : ℕ) : ℤ :=
  A240707.P11826631267229493597.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A240707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A240923.P7245222179821891144

`A017665(n+1)-A000203(A017666(n+1))`
-/

namespace A240923.P7245222179821891144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (n + 1) - A000203 (A017666 (n + 1)).toNat

end

end A240923.P7245222179821891144

noncomputable section

/-- A240923: a(n) = numerator(sigma(n)/n) - sigma(denominator(sigma(n)/n)).

Offset 1, canonical program `A240923.P7245222179821891144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240923 (n : ℕ) : ℤ :=
  A240923.P7245222179821891144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A240923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241205.P15385239283493477032

`∑[∑[C(A002522(n), 3)/10]]`
-/

namespace A241205.P15385239283493477032
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A002522 n).toNat 3 : ℚ) / 10

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241205.P15385239283493477032

noncomputable section

/-- A241205: Sum of x*y^2*z^3 for positive integers x,y,z with x + y + z = n.

Offset 1, canonical program `A241205.P15385239283493477032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241205 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A241205.P15385239283493477032.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241205.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241264.P6428799366880575153

`lt[∑{p}[A155769(n), #], A002620(n)]`
-/

namespace A241264.P6428799366880575153
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155769 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A241264.P6428799366880575153

noncomputable section

/-- A241264: Numbers k such that 2*k^2 + 2*k - 41 is not a prime.

Offset 1, canonical program `A241264.P6428799366880575153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. -/
def A241264 (n : ℕ) : ℤ :=
  (A241264.P6428799366880575153.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 440 terms. -/
def A241264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241404.P1829195198016813191

`n+1+A061602(n+1)`
-/

namespace A241404.P1829195198016813191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A061602 (n + 1)

end

end A241404.P1829195198016813191

noncomputable section

/-- A241404: Sum of n and the sum of the factorials of its digits.

Offset 1, canonical program `A241404.P1829195198016813191`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A241404 (n : ℕ) : ℤ :=
  A241404.P1829195198016813191.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A241404.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A241452.P5049079082097694883

`A039623(A028310(abs(1-n)))-1`
-/

namespace A241452.P5049079082097694883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039623 (A028310 |1 - (n : ℤ)|.toNat).toNat - 1

end

end A241452.P5049079082097694883

noncomputable section

/-- A241452: a(n) = pg(3, n) + pg(4, n) + ... + pg(n, n) where pg(m, n) is the n-th m-th-order polygonal number.

Offset 0, canonical program `A241452.P5049079082097694883`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241452 (n : ℕ) : ℤ :=
  A241452.P5049079082097694883.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241478.P14446686761118758760

`A002697(n)+A000984(n)`
-/

namespace A241478.P14446686761118758760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 n + A000984 n

end

end A241478.P14446686761118758760

noncomputable section

/-- A241478: a(n) = 4^n*(n/4 + binomial(n-1/2, -1/2)).

Offset 0, canonical program `A241478.P14446686761118758760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A241478 (n : ℕ) : ℤ :=
  A241478.P14446686761118758760.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A241478.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241620.P14664840407874116712

`A114239(n+1)+∑[A006542(n+4)]`
-/

namespace A241620.P14664840407874116712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006542 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114239 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241620.P14664840407874116712

noncomputable section

/-- A241620: Number of length 5+2 0..n arrays with no consecutive three elements summing to more than n.

Offset 1, canonical program `A241620.P14664840407874116712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241620 (n : ℕ) : ℤ :=
  A241620.P14664840407874116712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241683.P1819739658731117607

`A001045(floor(n²/(n+1)))*A167030(n)`
-/

namespace A241683.P1819739658731117607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat * A167030 n

end

end A241683.P1819739658731117607

noncomputable section

/-- A241683: Total number of 2 X 2 squares appearing in the Thue-Morse sequence logical matrices after n stages.

Offset 0, canonical program `A241683.P1819739658731117607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A241683 (n : ℕ) : ℤ :=
  A241683.P1819739658731117607.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A241683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241684.P6345737068075447725

`4*round((A005578(n+1)/4)²)`
-/

namespace A241684.P6345737068075447725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.roundAway (((A005578 (n + 1) : ℚ) / 4) ^ 2)

end

end A241684.P6345737068075447725

noncomputable section

/-- A241684: The total number of rectangles appearing in the Thue-Morse sequence logical matrices after n stages.

Offset 0, canonical program `A241684.P6345737068075447725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A241684 (n : ℕ) : ℤ :=
  A241684.P6345737068075447725.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A241684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241688.P16119182718281067787

`∑[2*A213494(n)]`
-/

namespace A241688.P16119182718281067787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241688.P16119182718281067787

noncomputable section

/-- A241688: Number of Sidon subsets of {1,...,n} of size 4.

Offset 1, canonical program `A241688.P16119182718281067787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241688 (n : ℕ) : ℤ :=
  A241688.P16119182718281067787.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241759.P1551437819905614216

`1-A189820(A074940(n+1))`
-/

namespace A241759.P1551437819905614216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A189820 (A074940 (n + 1)).toNat

end

end A241759.P1551437819905614216

noncomputable section

/-- A241759: Number of partitions of n into distinct parts of the form 3^k - 2^k, cf. A001047.

Offset 0, canonical program `A241759.P1551437819905614216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241759 (n : ℕ) : ℤ :=
  A241759.P1551437819905614216.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A241759.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241892.P12101613970399667759

`A005578(n)+A084152(n)-A011782(n)`
-/

namespace A241892.P12101613970399667759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n + (A084152 n - A011782 n)

end

end A241892.P12101613970399667759

noncomputable section

/-- A241892: Total number of 2 X 2 squares appearing in the Thue-Morse sequence logical matrices (1, 0 version) after n stages.

Offset 0, canonical program `A241892.P12101613970399667759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A241892 (n : ℕ) : ℤ :=
  A241892.P12101613970399667759.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A241892.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A241893.P363522728590733482

`4*floor((A005578(n+1)/4)²)`
-/

namespace A241893.P363522728590733482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ⌊((A005578 (n + 1) : ℚ) / 4) ^ 2⌋

end

end A241893.P363522728590733482

noncomputable section

/-- A241893: The total number of rectangles appearing in the Thue-Morse sequence logical matrices (1, 0 version) after n stages.

Offset 0, canonical program `A241893.P363522728590733482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A241893 (n : ℕ) : ℤ :=
  A241893.P363522728590733482.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A241893.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242094.P3645573167155968656

`comp[A004957(comp[A003233(n+1)])]`
-/

namespace A242094.P3645573167155968656
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003233 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A242094.P3645573167155968656

noncomputable section

/-- A242094: Complement of A003249.

Offset 1, canonical program `A242094.P3645573167155968656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242094 (n : ℕ) : ℤ :=
  (A242094.P3645573167155968656.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242096.P10773511550970548791

`A230980(A057979(n))`
-/

namespace A242096.P10773511550970548791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A057979 n).toNat

end

end A242096.P10773511550970548791

noncomputable section

/-- A242096: a(n) = (n mod 2) * pi( ceiling(n/2)-1 ), where pi is the prime counting function (A000720).

Offset 0, canonical program `A242096.P10773511550970548791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242096 (n : ℕ) : ℤ :=
  A242096.P10773511550970548791.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242098.P10308857904202637910

`eq[1, A105700((n+1)%floor(sqrt(n+1)))]+1`
-/

namespace A242098.P10308857904202637910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 ((n + 1) % Nat.sqrt (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A242098.P10308857904202637910

noncomputable section

/-- A242098: Numbers n such that the residue of n modulo floor(sqrt(n)) is prime.

Offset 1, canonical program `A242098.P10308857904202637910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242098 (n : ℕ) : ℤ :=
  (A242098.P10308857904202637910.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242119.P14714208386071255234

`A000040(n+1)%18`
-/

namespace A242119.P14714208386071255234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 18

end

end A242119.P14714208386071255234

noncomputable section

/-- A242119: Primes modulo 18.

Offset 1, canonical program `A242119.P14714208386071255234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242119 (n : ℕ) : ℤ :=
  A242119.P14714208386071255234.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242119.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242121.P4021894191771558325

`A000040(n+1)%21`
-/

namespace A242121.P4021894191771558325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 21

end

end A242121.P4021894191771558325

noncomputable section

/-- A242121: a(n) = n-th prime modulo 21.

Offset 1, canonical program `A242121.P4021894191771558325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242121 (n : ℕ) : ℤ :=
  A242121.P4021894191771558325.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242122.P16237057767984609906

`A000040(n+1)%22`
-/

namespace A242122.P16237057767984609906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 22

end

end A242122.P16237057767984609906

noncomputable section

/-- A242122: a(n) = n-th prime modulo 22.

Offset 1, canonical program `A242122.P16237057767984609906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242122 (n : ℕ) : ℤ :=
  A242122.P16237057767984609906.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242123.P4777588080624664964

`A000040(n+1)%25`
-/

namespace A242123.P4777588080624664964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 25

end

end A242123.P4777588080624664964

noncomputable section

/-- A242123: a(n) = n-th prime modulo 25.

Offset 1, canonical program `A242123.P4777588080624664964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242123 (n : ℕ) : ℤ :=
  A242123.P4777588080624664964.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242123.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242124.P12660772852566305349

`A000040(n+1)%26`
-/

namespace A242124.P12660772852566305349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 26

end

end A242124.P12660772852566305349

noncomputable section

/-- A242124: a(n) = n-th prime modulo 26.

Offset 1, canonical program `A242124.P12660772852566305349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242124 (n : ℕ) : ℤ :=
  A242124.P12660772852566305349.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242125.P4403768967938311355

`A000040(n+1)%27`
-/

namespace A242125.P4403768967938311355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 27

end

end A242125.P4403768967938311355

noncomputable section

/-- A242125: a(n) = n-th prime modulo 27.

Offset 1, canonical program `A242125.P4403768967938311355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242125 (n : ℕ) : ℤ :=
  A242125.P4403768967938311355.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242126.P7023242085800595695

`A000040(n+1)%28`
-/

namespace A242126.P7023242085800595695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 28

end

end A242126.P7023242085800595695

noncomputable section

/-- A242126: a(n) = n-th prime modulo 28.

Offset 1, canonical program `A242126.P7023242085800595695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242126 (n : ℕ) : ℤ :=
  A242126.P7023242085800595695.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242127.P18416423254723093719

`A000040(n+1)%29`
-/

namespace A242127.P18416423254723093719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 29

end

end A242127.P18416423254723093719

noncomputable section

/-- A242127: a(n) = n-th prime modulo 29.

Offset 1, canonical program `A242127.P18416423254723093719`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242127 (n : ℕ) : ℤ :=
  A242127.P18416423254723093719.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242191.P6053039216167152241

`6^(n+2)-A001552(n+1)`
-/

namespace A242191.P6053039216167152241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ (n + 2) : ℤ) - A001552 (n + 1)

end

end A242191.P6053039216167152241

noncomputable section

/-- A242191: Expected value of the highest die when n six-sided dice are rolled, multiplied by 6^n.

Offset 1, canonical program `A242191.P6053039216167152241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A242191 (n : ℕ) : ℤ :=
  A242191.P6053039216167152241.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A242191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242454.P17030880495983827344

`∩[A085802(n+1), A000217(n)]`
-/

namespace A242454.P17030880495983827344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085802 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A242454.P17030880495983827344

noncomputable section

/-- A242454: Triangular numbers T such that sum of digits of T is semiprime.

Offset 1, canonical program `A242454.P17030880495983827344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A242454 (n : ℕ) : ℤ :=
  (A242454.P17030880495983827344.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A242454.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242480.P3191042440145874501

`A142150(n+1)+A054024(n+1)+A229110(n+1)`
-/

namespace A242480.P3191042440145874501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (n + 1) + A054024 (n + 1) + A229110 (n + 1)

end

end A242480.P3191042440145874501

noncomputable section

/-- A242480: a(n) = (n*(n+1)/2) mod n + sigma(n) mod n + antisigma(n) mod n.

Offset 1, canonical program `A242480.P3191042440145874501`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054024, A229110, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A242480 (n : ℕ) : ℤ :=
  A242480.P3191042440145874501.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054024, A229110, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A242480.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A242586.P10140578431717822349

`A026378(n)+a(n-1)` with `a(0)=1`
-/

namespace A242586.P10140578431717822349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026378 n + a (n - 1)

end

end A242586.P10140578431717822349

noncomputable section

/-- A242586: Expansion of 1/(2*sqrt(1-x))*(1/sqrt(1-x)+1/(sqrt(1-5*x))).

Offset 0, canonical program `A242586.P10140578431717822349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A242586 (n : ℕ) : ℤ :=
  A242586.P10140578431717822349.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A242586.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242643.P954385137842474462

`∑{d}[n+1, #*A101272(#)]`
-/

namespace A242643.P954385137842474462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A101272 d

end

end A242643.P954385137842474462

noncomputable section

/-- A242643: a(n) = Sum_{d|n, d <= 6} d^2 + 6*Sum_{d|n, d>6} d.

Offset 1, canonical program `A242643.P954385137842474462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242643 (n : ℕ) : ℤ :=
  A242643.P954385137842474462.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242709.P9346738360422744419

`∑[n²*A008619(n)]+∑[n]`
-/

namespace A242709.P9346738360422744419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A008619 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A242709.P9346738360422744419

noncomputable section

/-- A242709: Nonequivalent ways to place two different markers (e.g., a pair of Go stones, black and white) on an n X n grid.

Offset 1, canonical program `A242709.P9346738360422744419`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242709 (n : ℕ) : ℤ :=
  A242709.P9346738360422744419.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242818.P12293616583883546733

`A000898(n)/2^ceil(n/2)`
-/

namespace A242818.P12293616583883546733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000898 n : ℚ) / (2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ)

end

end A242818.P12293616583883546733

noncomputable section

/-- A242818: a(n) = 2^floor(n/2) n! [x^n] exp(x+x^2/4), where [x^n] f(x) denotes the coefficient of x^n in the expansion of f(x).

Offset 0, canonical program `A242818.P12293616583883546733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A242818 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A242818.P12293616583883546733.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A242818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242854.P18083849071613528463

`A005843(n)*A242853(n)-A242852(n)`
-/

namespace A242854.P18083849071613528463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n * A242853 n - A242852 n

end

end A242854.P18083849071613528463

noncomputable section

/-- A242854: a(n) = 512*n^9 - 1024*n^7 + 672*n^5 - 160*n^3 + 10*n.

Offset 0, canonical program `A242854.P18083849071613528463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242854 (n : ℕ) : ℤ :=
  A242854.P18083849071613528463.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A242854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A242930.P12542841034490309898

`p?[4*A219257(n+1)+1]`
-/

namespace A242930.P12542841034490309898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A219257 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A242930.P12542841034490309898

noncomputable section

/-- A242930: Primes of the form (k^2+7)/11.

Offset 1, canonical program `A242930.P12542841034490309898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A242930 (n : ℕ) : ℤ :=
  A242930.P12542841034490309898.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A242930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243130.P9855249893936968093

`A242850(n)²-A144139(n)²`
-/

namespace A243130.P9855249893936968093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242850 n ^ 2 - A144139 n ^ 2

end

end A243130.P9855249893936968093

noncomputable section

/-- A243130: a(n) = 1024*n^10 - 2304*n^8 + 1792*n^6 - 560*n^4 + 60*n^2 - 1.

Offset 0, canonical program `A243130.P9855249893936968093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243130 (n : ℕ) : ℤ :=
  A243130.P9855249893936968093.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243174.P13861354254685975125

`eq[char[A005752(n)], A061347(n+1)]`
-/

namespace A243174.P13861354254685975125
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005752 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A243174.P13861354254685975125

noncomputable section

/-- A243174: Nonnegative integers of the form x^2 + 5*x*y - 5*y^2 (discriminant 45).

Offset 1, canonical program `A243174.P13861354254685975125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 648 terms. -/
def A243174 (n : ℕ) : ℤ :=
  (A243174.P13861354254685975125.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 648 terms. -/
def A243174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243473.P145029483165858518

`A017665(n+1)-A017666(n+1)`
-/

namespace A243473.P145029483165858518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (n + 1) - A017666 (n + 1)

end

end A243473.P145029483165858518

noncomputable section

/-- A243473: a(n) = numerator(sigma(n)/n) - denominator(sigma(n)/n) where sigma(n) = sum of divisors of n.

Offset 1, canonical program `A243473.P145029483165858518`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017665, A017666, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A243473 (n : ℕ) : ℤ :=
  A243473.P145029483165858518.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017665, A017666, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A243473.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A243588.P9950600176943645000

`p?[gcd(A033583(n+1), A160942(n+1))]`
-/

namespace A243588.P9950600176943645000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033583 (n + 1)) (A160942 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A243588.P9950600176943645000

noncomputable section

/-- A243588: Primes p such that sum of digits + 9 is prime.

Offset 1, canonical program `A243588.P9950600176943645000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 418 terms. -/
def A243588 (n : ℕ) : ℤ :=
  (A243588.P9950600176943645000.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 418 terms. -/
def A243588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243589.P10297874337052836463

`xor(A006257(n+1), A038572(n+1))`
-/

namespace A243589.P10297874337052836463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A006257 (n + 1)) (A038572 (n + 1))

end

end A243589.P10297874337052836463

noncomputable section

/-- A243589: Numbers returned when each binary digit of n is replaced by the sum modulo 2 of the digits to its (wrapped) left and (wrapped) right.

Offset 1, canonical program `A243589.P10297874337052836463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243589 (n : ℕ) : ℤ :=
  A243589.P10297874337052836463.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A243589.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243890.P4692966572407633764

`p?[A212428(2*n+3)+n]`
-/

namespace A243890.P4692966572407633764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212428 (2 * n + 3) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243890.P4692966572407633764

noncomputable section

/-- A243890: Primes of the form 2*n^2+38*n+17.

Offset 1, canonical program `A243890.P4692966572407633764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A243890 (n : ℕ) : ℤ :=
  A243890.P4692966572407633764.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A243890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243891.P305816657358226771

`p?[A132763(2*(n+4))-A056220(n)]`
-/

namespace A243891.P305816657358226771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132763 (2 * (n + 4)) - A056220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A243891.P305816657358226771

noncomputable section

/-- A243891: Primes of the form 2*n^2 + 62*n + 29.

Offset 1, canonical program `A243891.P305816657358226771`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A243891 (n : ℕ) : ℤ :=
  A243891.P305816657358226771.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A243891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A243895.P9736630362790892113

`A001749(n*(n+4)+3)/4`
-/

namespace A243895.P9736630362790892113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (n * (n + 4) + 3) : ℚ) / 4

end

end A243895.P9736630362790892113

noncomputable section

/-- A243895: a(n) = prime(n^2-1).

Offset 2, canonical program `A243895.P9736630362790892113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A243895 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A243895.P9736630362790892113.a (n - 2))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A243895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244098.P17071830825429301538

`∑{d}[n+1, A168324(#)]+1`
-/

namespace A244098.P17071830825429301538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A168324 d + 1

end

end A244098.P17071830825429301538

noncomputable section

/-- A244098: Total number of divisors of all the ordered prime factorizations of an integer.

Offset 1, canonical program `A244098.P17071830825429301538`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244098 (n : ℕ) : ℤ :=
  A244098.P17071830825429301538.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244149.P42596727420393069

`floor(Δ[n²]/A214606(n+1))`
-/

namespace A244149.P42596727420393069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (A214606 (n + 1) : ℚ)⌋

end

end A244149.P42596727420393069

noncomputable section

/-- A244149: a(n) = 2*(n*denominator(((n-1)*(n^2)+2^(n+1)-4)/(2*n))-n)/n+1.

Offset 1, canonical program `A244149.P42596727420393069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244149 (n : ℕ) : ℤ :=
  A244149.P42596727420393069.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244307.P4582279451583344782

`∑[∑[∑[A080513(n)²-(n+1)]]]`
-/

namespace A244307.P4582279451583344782
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n ^ 2 - (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244307.P4582279451583344782

noncomputable section

/-- A244307: Sum over each antidiagonal of A244306.

Offset 1, canonical program `A244307.P4582279451583344782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244307 (n : ℕ) : ℤ :=
  A244307.P4582279451583344782.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244326.P16585438140887289108

`lt[5*(n+1)/2, A000203(n+1)]+1`
-/

namespace A244326.P16585438140887289108
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * ((n + 1 : ℚ) / 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A244326.P16585438140887289108

noncomputable section

/-- A244326: Numbers k such that floor(antisigma(k)/k) < floor(antisigma(k - 1)/(k - 1)).

Offset 1, canonical program `A244326.P16585438140887289108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4408 terms. -/
def A244326 (n : ℕ) : ℤ :=
  (A244326.P16585438140887289108.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4408 terms. -/
def A244326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244340.P781435136372845571

`abs(A235707(n+1)%A001478(n+1))`
-/

namespace A244340.P781435136372845571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A235707 (n + 1)) (A001478 (n + 1))|

end

end A244340.P781435136372845571

noncomputable section

/-- A244340: Floor( n^2*log(n) ) mod n.

Offset 1, canonical program `A244340.P781435136372845571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244340 (n : ℕ) : ℤ :=
  A244340.P781435136372845571.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244497.P10835936318056941169

`A085463(n+1)-A011888(n)`
-/

namespace A244497.P10835936318056941169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085463 (n + 1) - A011888 n

end

end A244497.P10835936318056941169

noncomputable section

/-- A244497: Number of magic labelings of the prism graph I X C_5 with magic sum n.

Offset 0, canonical program `A244497.P10835936318056941169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244497 (n : ℕ) : ℤ :=
  A244497.P10835936318056941169.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244713.P3135267856663616854

`∪[∑[A040073(n+2)], A016777(n)]`
-/

namespace A244713.P3135267856663616854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040073 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A244713.P3135267856663616854

noncomputable section

/-- A244713: Positive numbers primitively represented by the binary quadratic form (1, 1, -2).

Offset 1, canonical program `A244713.P3135267856663616854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244713 (n : ℕ) : ℤ :=
  (A244713.P3135267856663616854.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244763.P5327502581973112065

`∩[A141885(n+1), A141937(n+1)]`
-/

namespace A244763.P5327502581973112065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141937 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244763.P5327502581973112065

noncomputable section

/-- A244763: Prime numbers ending in the prime number 13.

Offset 1, canonical program `A244763.P5327502581973112065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1995 terms. -/
def A244763 (n : ℕ) : ℤ :=
  (A244763.P5327502581973112065.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1995 terms. -/
def A244763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244765.P13638012274075522273

`∩[A141887(n+1), A141942(n+1)]`
-/

namespace A244765.P13638012274075522273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244765.P13638012274075522273

noncomputable section

/-- A244765: Prime numbers ending in the prime number 19.

Offset 1, canonical program `A244765.P13638012274075522273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2007 terms. -/
def A244765 (n : ℕ) : ℤ :=
  (A244765.P13638012274075522273.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2007 terms. -/
def A244765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244768.P4568832735318401239

`∩[A141886(n+1), A141936(n+1)]`
-/

namespace A244768.P4568832735318401239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244768.P4568832735318401239

noncomputable section

/-- A244768: Prime numbers ending in the prime number 37.

Offset 1, canonical program `A244768.P4568832735318401239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2011 terms. -/
def A244768 (n : ℕ) : ℤ :=
  (A244768.P4568832735318401239.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2011 terms. -/
def A244768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244769.P9226794016113281846

`∩[A105854(n+1), A141941(n+1)]`
-/

namespace A244769.P9226794016113281846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244769.P9226794016113281846

noncomputable section

/-- A244769: Prime numbers ending in the prime number 43.

Offset 1, canonical program `A244769.P9226794016113281846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1991 terms. -/
def A244769 (n : ℕ) : ℤ :=
  (A244769.P9226794016113281846.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1991 terms. -/
def A244769.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244776.P17075600255975937437

`∩[A105854(n+1), A141933(n+1)]`
-/

namespace A244776.P17075600255975937437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244776.P17075600255975937437

noncomputable section

/-- A244776: Prime numbers ending in the prime number 83.

Offset 1, canonical program `A244776.P17075600255975937437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1995 terms. -/
def A244776 (n : ℕ) : ℤ :=
  (A244776.P17075600255975937437.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1995 terms. -/
def A244776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244798.P1024524685187747021

`A072527(A000040(n+1))`
-/

namespace A244798.P1024524685187747021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072527 (A000040 (n + 1)).toNat

end

end A244798.P1024524685187747021

noncomputable section

/-- A244798: Number of moduli m such that (prime(n) mod m) = 3.

Offset 1, canonical program `A244798.P1024524685187747021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A244798 (n : ℕ) : ℤ :=
  A244798.P1024524685187747021.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A244798.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244869.P6429433672219191574

`A244864(n)-A011888(n)`
-/

namespace A244869.P6429433672219191574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244864 n - A011888 n

end

end A244869.P6429433672219191574

noncomputable section

/-- A244869: Number of magic labelings with magic sum n of first graph shown in link.

Offset 0, canonical program `A244869.P6429433672219191574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244869 (n : ℕ) : ℤ :=
  A244869.P6429433672219191574.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244870.P12300476770002142081

`∑[∑[∑[A008253(n)+n²]]]`
-/

namespace A244870.P12300476770002142081
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008253 n + (n ^ 2 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244870.P12300476770002142081

noncomputable section

/-- A244870: Number of magic labelings with magic sum n of 2nd graph shown in link.

Offset 0, canonical program `A244870.P12300476770002142081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244870 (n : ℕ) : ℤ :=
  A244870.P12300476770002142081.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244904.P15426718486549657250

`A100795(Δ[A070333(n)])`
-/

namespace A244904.P15426718486549657250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100795 (f1 (n + 1) - f1 n).toNat

end

end A244904.P15426718486549657250

noncomputable section

/-- A244904: Number of length 1 0..n arrays with each partial sum starting from the beginning no more than sqrt(2) standard deviations from its mean.

Offset 1, canonical program `A244904.P15426718486549657250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A244904 (n : ℕ) : ℤ :=
  A244904.P15426718486549657250.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A244904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245001.P3349015915289072323

`A001405(n+1)+A001006(n)`
-/

namespace A245001.P3349015915289072323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (n + 1) + A001006 n

end

end A245001.P3349015915289072323

noncomputable section

/-- A245001: Number of standard Young tableaux with n cells and 3 as last value in the first row.

Offset 3, canonical program `A245001.P3349015915289072323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A245001 (n : ℕ) : ℤ :=
  A245001.P3349015915289072323.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A245001.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245031.P8285924998747403516

`∑[gcd(2, n)*A004189(n)]`
-/

namespace A245031.P8285924998747403516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A004189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245031.P8285924998747403516

noncomputable section

/-- A245031: Numbers m such that 3*m+1 and 8*m+1 are both squares.

Offset 1, canonical program `A245031.P8285924998747403516`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A245031 (n : ℕ) : ℤ :=
  A245031.P8285924998747403516.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A245031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245135.P16030247341081708525

`Δ[∑[n+1]*A131941(n+1)]`
-/

namespace A245135.P16030247341081708525
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A131941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245135.P16030247341081708525

noncomputable section

/-- A245135: Number of length 5 0..n arrays least squares fitting to a zero slope straight line, with a single point taken as having zero slope.

Offset 1, canonical program `A245135.P16030247341081708525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A245135 (n : ℕ) : ℤ :=
  A245135.P16030247341081708525.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A245135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245222.P5497392532380044089

`gcd(Δ[A198081(n)], A215781(n))`
-/

namespace A245222.P5497392532380044089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A215781 n)

end

end A245222.P5497392532380044089

noncomputable section

/-- A245222: Continued fraction expansion of the constant c in A245221; c = sup{f(n,1)}, where f(1,x) = x + 1 and thereafter f(n,x) = x + 1 if n is in A022838, else f(n,x) = 1/x.

Offset 0, canonical program `A245222.P5497392532380044089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245222 (n : ℕ) : ℤ :=
  (A245222.P5497392532380044089.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245231.P11366617668053575801

`A047203(n+1)+Δ[A132292(n+1)]`
-/

namespace A245231.P11366617668053575801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047203 (n + 1) + (f1 (n + 1) - f1 n)

end

end A245231.P11366617668053575801

noncomputable section

/-- A245231: Maximum frustration of complete bipartite graph K(n,4).

Offset 1, canonical program `A245231.P11366617668053575801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A245231 (n : ℕ) : ℤ :=
  A245231.P11366617668053575801.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A245231.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245282.P6452615831386113322

`∑{d}[n+1, A000045(#+1)]`
-/

namespace A245282.P6452615831386113322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000045 (d + 1)

end

end A245282.P6452615831386113322

noncomputable section

/-- A245282: G.f.: Sum_{n>=1} Fibonacci(n+1) * x^n / (1 - x^n).

Offset 1, canonical program `A245282.P6452615831386113322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A245282 (n : ℕ) : ℤ :=
  A245282.P6452615831386113322.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A245282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245356.P3604867257649377348

`4*A072493(n+1)`
-/

namespace A245356.P3604867257649377348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A072493 (n + 1)

end

end A245356.P3604867257649377348

noncomputable section

/-- A245356: Number of numbers whose base-4/3 expansion (see A024631) has n digits.

Offset 1, canonical program `A245356.P3604867257649377348`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072493, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245356 (n : ℕ) : ℤ :=
  A245356.P3604867257649377348.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072493, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245356.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245357.P4416678491672085733

`5*A120160(n+1)`
-/

namespace A245357.P4416678491672085733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A120160 (n + 1)

end

end A245357.P4416678491672085733

noncomputable section

/-- A245357: Number of numbers whose base 5/4 expansion (see A024634) has n digits.

Offset 1, canonical program `A245357.P4416678491672085733`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120160, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245357 (n : ℕ) : ℤ :=
  A245357.P4416678491672085733.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120160, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245357.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245383.P11295058152896661121

`eq[2, A105700(abs(A187844(n)))]`
-/

namespace A245383.P11295058152896661121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 |A187844 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A245383.P11295058152896661121

noncomputable section

/-- A245383: Numbers n whose product of decimal digits is a semiprime.

Offset 1, canonical program `A245383.P11295058152896661121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 312 terms. -/
def A245383 (n : ℕ) : ℤ :=
  (A245383.P11295058152896661121.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 312 terms. -/
def A245383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245399.P8496903241108357948

`6*A120170(n+1)`
-/

namespace A245399.P8496903241108357948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A120170 (n + 1)

end

end A245399.P8496903241108357948

noncomputable section

/-- A245399: Number of nonnegative integers with property that their base 6/5 expansion (see A024638) has n digits.

Offset 1, canonical program `A245399.P8496903241108357948`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120170, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245399 (n : ℕ) : ℤ :=
  A245399.P8496903241108357948.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120170, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245399.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245400.P14935792558701192917

`9*A120194(n+1)`
-/

namespace A245400.P14935792558701192917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A120194 (n + 1)

end

end A245400.P14935792558701192917

noncomputable section

/-- A245400: Number of nonnegative integers with property that their base 9/8 expansion (see A024656) has n digits.

Offset 1, canonical program `A245400.P14935792558701192917`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120194, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245400 (n : ℕ) : ℤ :=
  A245400.P14935792558701192917.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120194, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245400.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245401.P11796803760799320921

`8*A120186(n+1)`
-/

namespace A245401.P11796803760799320921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A120186 (n + 1)

end

end A245401.P11796803760799320921

noncomputable section

/-- A245401: Number of nonnegative integers with property that their base 8/7 expansion (see A024649) has n digits.

Offset 1, canonical program `A245401.P11796803760799320921`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120186, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245401 (n : ℕ) : ℤ :=
  A245401.P11796803760799320921.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120186, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245401.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245402.P7550969198272451745

`7*A120178(n+1)`
-/

namespace A245402.P7550969198272451745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A120178 (n + 1)

end

end A245402.P7550969198272451745

noncomputable section

/-- A245402: Number of nonnegative integers with property that their base 7/6 expansion (see A024643) has n digits.

Offset 1, canonical program `A245402.P7550969198272451745`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120178, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245402 (n : ℕ) : ℤ :=
  A245402.P7550969198272451745.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120178, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245402.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245403.P11721745227114113463

`10*A120202(n+1)`
-/

namespace A245403.P11721745227114113463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A120202 (n + 1)

end

end A245403.P11721745227114113463

noncomputable section

/-- A245403: Number of nonnegative integers with property that their base 10/9 expansion (see A024664) has n digits.

Offset 1, canonical program `A245403.P11721745227114113463`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120202, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245403 (n : ℕ) : ℤ :=
  A245403.P11721745227114113463.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120202, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245403.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245471.P2587707209557720129

`xor(lcm(2, n+1), xor(n+1, A152271(n)))`
-/

namespace A245471.P2587707209557720129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.lcm 2 (n + 1) : ℤ) (Int.xor (n + 1 : ℤ) (A152271 n))

end

end A245471.P2587707209557720129

noncomputable section

/-- A245471: If n is odd, then a(n) = A065621(n+1). If n is even, then a(n) = n/2.

Offset 1, canonical program `A245471.P2587707209557720129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245471 (n : ℕ) : ℤ :=
  A245471.P2587707209557720129.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245552.P13288612625142451457

`Δ[A123578(floor(n/2))²]`
-/

namespace A245552.P13288612625142451457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 ⌊(n : ℚ) / 2⌋.toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245552.P13288612625142451457

noncomputable section

/-- A245552: G.f.: Sum_{n>=0} (2*n+1)*x^(n^2+n+1).

Offset 0, canonical program `A245552.P13288612625142451457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245552 (n : ℕ) : ℤ :=
  A245552.P13288612625142451457.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245560.P16423341925158403688

`∑[ceil((n+3)*2^(n-2))]-A100071(n)`
-/

namespace A245560.P16423341925158403688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 3 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A100071 n

end

end A245560.P16423341925158403688

noncomputable section

/-- A245560: Row sums of triangle in A144480.

Offset 0, canonical program `A245560.P16423341925158403688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A245560 (n : ℕ) : ℤ :=
  A245560.P16423341925158403688.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A245560.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245573.P8574744713059270409

`A090223(n+1)-(A059995(n)+A057355(n))`
-/

namespace A245573.P8574744713059270409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 (n + 1) - (A059995 n + A057355 n)

end

end A245573.P8574744713059270409

noncomputable section

/-- A245573: Minimal coin changing sequence for denominations 1, 2, 5 and 10 cents.

Offset 0, canonical program `A245573.P8574744713059270409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245573 (n : ℕ) : ℤ :=
  A245573.P8574744713059270409.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245656.P15725278773398703278

`A000007(A054025(n+1))`
-/

namespace A245656.P15725278773398703278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A054025 (n + 1)).toNat

end

end A245656.P15725278773398703278

noncomputable section

/-- A245656: Characteristic function of arithmetic numbers, cf. A003601.

Offset 1, canonical program `A245656.P15725278773398703278`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245656 (n : ℕ) : ℤ :=
  A245656.P15725278773398703278.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054025, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A245656.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A245679.P15014101552485976953

`C(n, n²)-1+A006325(n)`
-/

namespace A245679.P15014101552485976953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (n ^ 2) : ℤ) - 1 + A006325 n

end

end A245679.P15014101552485976953

noncomputable section

/-- A245679: a(n) = pg(n, 3) + pg(n, 4) + ... + pg(n, n) where pg(n, m) is the m-th n-th-order polygonal number.

Offset 0, canonical program `A245679.P15014101552485976953`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245679 (n : ℕ) : ℤ :=
  A245679.P15014101552485976953.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245783.P3831324765394607800

`A080806(A042963(n+1))-A098297(n)`
-/

namespace A245783.P3831324765394607800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080806 (A042963 (n + 1)).toNat - A098297 n

end

end A245783.P3831324765394607800

noncomputable section

/-- A245783: Numbers n such that the hexagonal number H(n) is equal to the sum of the pentagonal numbers P(m) and P(m+1) for some m.

Offset 1, canonical program `A245783.P3831324765394607800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A245783 (n : ℕ) : ℤ :=
  A245783.P3831324765394607800.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A245783.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245789.P13312650202951324483

`A000203(2^(n-C(∑[char[∑[n]]], 2)))^(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A245789.P13312650202951324483
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))).toNat : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ)

end

end A245789.P13312650202951324483

noncomputable section

/-- A245789: Rectangular array A read by upward antidiagonals: A(k,n) = (2^k-1)^n, n,k >= 1.

Offset 1, canonical program `A245789.P13312650202951324483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A245789 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A245789.P13312650202951324483.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A245789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245799.P3433551107463058925

`A014448(n)-A000045(n)`
-/

namespace A245799.P3433551107463058925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014448 n - A000045 n

end

end A245799.P3433551107463058925

noncomputable section

/-- A245799: a(n) = Lucas(3*n) - Fibonacci(n).

Offset 0, canonical program `A245799.P3433551107463058925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A245799 (n : ℕ) : ℤ :=
  A245799.P3433551107463058925.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A245799.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245871.P12093525415730841866

`2*(n+1)*(∑[n+4]+2)-Δ[A052938(n)]`
-/

namespace A245871.P12093525415730841866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j + 2) : ℕ) : ℤ) - (f2 (n + 1) - f2 n)

end

end A245871.P12093525415730841866

noncomputable section

/-- A245871: Number of length 2+2 0..n arrays with some pair in every consecutive three terms totalling exactly n.

Offset 1, canonical program `A245871.P12093525415730841866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245871 (n : ℕ) : ℤ :=
  A245871.P12093525415730841866.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245909.P3732275511422578405

`A240975(A000040(n+1))`
-/

namespace A245909.P3732275511422578405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240975 (A000040 (n + 1)).toNat

end

end A245909.P3732275511422578405

noncomputable section

/-- A245909: The number of distinct prime factors of prime(n)^3-1.

Offset 1, canonical program `A245909.P3732275511422578405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A245909 (n : ℕ) : ℤ :=
  A245909.P3732275511422578405.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A245909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245920.P3971738519078735846

`2-A241422(n)`
-/

namespace A245920.P3971738519078735846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A241422 n

end

end A245920.P3971738519078735846

noncomputable section

/-- A245920: Limit-reverse of the (2,1)-version of the infinite Fibonacci word A014675 with first term as initial block.

Offset 0, canonical program `A245920.P3971738519078735846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A245920 (n : ℕ) : ℤ :=
  A245920.P3971738519078735846.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A245920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245933.P6671253405021218211

`A006337(n+15)`
-/

namespace A245933.P6671253405021218211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (n + 15)

end

end A245933.P6671253405021218211

noncomputable section

/-- A245933: Limit-reverse of A006337 (the difference sequence of Beatty sequence for sqrt(2)), with first term as initial block.

Offset 1, canonical program `A245933.P6671253405021218211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A245933 (n : ℕ) : ℤ :=
  A245933.P6671253405021218211.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. -/
def A245933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245977.P8645664375542382364

`A059426(n+1)`
-/

namespace A245977.P8645664375542382364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059426 (n + 1)

end

end A245977.P8645664375542382364

noncomputable section

/-- A245977: Limit-reverse of the infinite Fibonacci word A014675 = (s(0),s(1),...) = (2,1,2,2,1,2,1,2, ...) using initial block (s(2),s(3)) = (2,2).

Offset 0, canonical program `A245977.P8645664375542382364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A245977 (n : ℕ) : ℤ :=
  A245977.P8645664375542382364.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A245977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245994.P6895593453724742497

`8*A015451(n+3)`
-/

namespace A245994.P6895593453724742497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A015451 (n + 3)

end

end A245994.P6895593453724742497

noncomputable section

/-- A245994: Number of length n+2 0..7 arrays with no pair in any consecutive three terms totalling exactly 7.

Offset 1, canonical program `A245994.P6895593453724742497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. -/
def A245994 (n : ℕ) : ℤ :=
  A245994.P6895593453724742497.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. -/
def A245994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246074.P4921777873160455435

`∑[A011782(floor(n/6))]`
-/

namespace A246074.P4921777873160455435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 ⌊(n : ℚ) / 6⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246074.P4921777873160455435

noncomputable section

/-- A246074: Paradigm Shift Sequence for a (-4,5) production scheme with replacement.

Offset 1, canonical program `A246074.P4921777873160455435`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1983 terms. -/
def A246074 (n : ℕ) : ℤ :=
  A246074.P4921777873160455435.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1983 terms. -/
def A246074.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246075.P3779961468004013155

`∑[A011782(floor(n/7))]`
-/

namespace A246075.P3779961468004013155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 ⌊(n : ℚ) / 7⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246075.P3779961468004013155

noncomputable section

/-- A246075: Paradigm shift sequence for a (-3,5) production scheme with replacement.

Offset 1, canonical program `A246075.P3779961468004013155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2312 terms. -/
def A246075 (n : ℕ) : ℤ :=
  A246075.P3779961468004013155.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2312 terms. -/
def A246075.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246081.P9953062268493866683

`∑[A182522(A131737(floor(n/3)))]`
-/

namespace A246081.P9953062268493866683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (A131737 ⌊(n : ℚ) / 3⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246081.P9953062268493866683

noncomputable section

/-- A246081: Paradigm shift sequence for (0,3) production scheme with replacement.

Offset 1, canonical program `A246081.P9953062268493866683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1877 terms. -/
def A246081 (n : ℕ) : ℤ :=
  A246081.P9953062268493866683.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1877 terms. -/
def A246081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246082.P3848407960839280997

`∑[A182522(A131737(floor(n/4)))]`
-/

namespace A246082.P3848407960839280997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (A131737 ⌊(n : ℚ) / 4⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246082.P3848407960839280997

noncomputable section

/-- A246082: Paradigm shift sequence for (0,4) production scheme with replacement.

Offset 1, canonical program `A246082.P3848407960839280997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A246082 (n : ℕ) : ℤ :=
  A246082.P3848407960839280997.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A246082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246083.P14460450737891075093

`∑[A182522(A131737(floor(n/5)))]`
-/

namespace A246083.P14460450737891075093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182522 (A131737 ⌊(n : ℚ) / 5⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A246083.P14460450737891075093

noncomputable section

/-- A246083: Paradigm shift sequence for (0,5) production scheme with replacement.

Offset 1, canonical program `A246083.P14460450737891075093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3122 terms. -/
def A246083 (n : ℕ) : ℤ :=
  A246083.P14460450737891075093.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3122 terms. -/
def A246083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246140.P13755815379108080124

`A006337(n+8)`
-/

namespace A246140.P13755815379108080124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (n + 8)

end

end A246140.P13755815379108080124

noncomputable section

/-- A246140: Limiting block extension of A006337 (difference sequence of the Beatty sequence for sqrt(2)) with first term as initial block.

Offset 1, canonical program `A246140.P13755815379108080124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 550 terms. -/
def A246140 (n : ℕ) : ℤ :=
  A246140.P13755815379108080124.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 550 terms. -/
def A246140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246302.P4390895032775024967

`abs(1-A246301(n+1))`
-/

namespace A246302.P4390895032775024967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A246301 (n + 1)|

end

end A246302.P4390895032775024967

noncomputable section

/-- A246302: Numbers k such that cos(k) < cos(k+1) < cos(k+2) < cos(k+3) > cos(k+4).

Offset 1, canonical program `A246302.P4390895032775024967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246302 (n : ℕ) : ℤ :=
  A246302.P4390895032775024967.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246302.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246305.P8271741949091332252

`abs(1-A246304(n+1))`
-/

namespace A246305.P8271741949091332252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A246304 (n + 1)|

end

end A246305.P8271741949091332252

noncomputable section

/-- A246305: Numbers k such that cos(k) > cos(k+1) > cos(k+2) < cos(k+3).

Offset 1, canonical program `A246305.P8271741949091332252`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246305 (n : ℕ) : ℤ :=
  A246305.P8271741949091332252.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246305.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246389.P893148227588508086

`eq[n*A000493(n+1), A000493(n)]`
-/

namespace A246389.P893148227588508086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000493 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246389.P893148227588508086

noncomputable section

/-- A246389: Nonnegative integers k satisfying sin(k) >= 0 and sin(k+1) >= 0.

Offset 0, canonical program `A246389.P893148227588508086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A246389 (n : ℕ) : ℤ :=
  (A246389.P893148227588508086.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A246389.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246394.P5096704532663512882

`A004083(n+1)-1`
-/

namespace A246394.P5096704532663512882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004083 (n + 1) - 1

end

end A246394.P5096704532663512882

noncomputable section

/-- A246394: Nonnegative integers k satisfying cos(k) <= 0 and cos(k+1) >= 0.

Offset 0, canonical program `A246394.P5096704532663512882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246394 (n : ℕ) : ℤ :=
  A246394.P5096704532663512882.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246394.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246407.P13205545743441053020

`comp[A246404(n+1)]`
-/

namespace A246407.P13205545743441053020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A246407.P13205545743441053020

noncomputable section

/-- A246407: Nonnegative integers k satisfying sec(k) > sec(k+1).

Offset 1, canonical program `A246407.P13205545743441053020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246407 (n : ℕ) : ℤ :=
  (A246407.P13205545743441053020.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246407.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246410.P11643950596936545398

`A246404(n+7)-11`
-/

namespace A246410.P11643950596936545398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246404 (n + 7) - 11

end

end A246410.P11643950596936545398

noncomputable section

/-- A246410: Positive integers k satisfying csc(k) < csc(k+1).

Offset 1, canonical program `A246410.P11643950596936545398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9994 terms. -/
def A246410 (n : ℕ) : ℤ :=
  A246410.P11643950596936545398.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9994 terms. -/
def A246410.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246416.P13972767773548800976

`A212831(lcm(2, n)/2)`
-/

namespace A246416.P13972767773548800976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212831 (SequenceMachineLib.roundAway ((Nat.lcm 2 n : ℚ) / 2)).toNat

end

end A246416.P13972767773548800976

noncomputable section

/-- A246416: A permutation of essentially the duplicate nonnegative numbers: a(4n) = n + 1/2 - (-1)^n/2, a(2n+1) = a(4n+2) = 2n+1.

Offset 0, canonical program `A246416.P13972767773548800976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246416 (n : ℕ) : ℤ :=
  A246416.P13972767773548800976.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246444.P16006796968537660622

`eq[0, A344858(n)]`
-/

namespace A246444.P16006796968537660622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344858 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A246444.P16006796968537660622

noncomputable section

/-- A246444: Nonnegative integers k satisfying sin(k) > sec(k).

Offset 1, canonical program `A246444.P16006796968537660622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A246444 (n : ℕ) : ℤ :=
  (A246444.P16006796968537660622.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A246444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246604.P5603396420743086449

`A000108(n)-n`
-/

namespace A246604.P5603396420743086449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - (n : ℤ)

end

end A246604.P5603396420743086449

noncomputable section

/-- A246604: a(n) = Catalan(n) - n.

Offset 0, canonical program `A246604.P5603396420743086449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A246604 (n : ℕ) : ℤ :=
  A246604.P5603396420743086449.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A246604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246831.P9729897708689004359

`n*(A062383(3*n)+3)`
-/

namespace A246831.P9729897708689004359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A062383 (3 * n) + 3)

end

end A246831.P9729897708689004359

noncomputable section

/-- A246831: a(n) is the concatenation of n and 3n in binary.

Offset 0, canonical program `A246831.P9729897708689004359`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A246831 (n : ℕ) : ℤ :=
  A246831.P9729897708689004359.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A246831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246864.P17921176171896131481

`((n+1)^4+1)%A000040(n+1)`
-/

namespace A246864.P17921176171896131481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1) ^ 4 + 1 : ℤ) (A000040 (n + 1))

end

end A246864.P17921176171896131481

noncomputable section

/-- A246864: (n^4+1) mod prime(n).

Offset 1, canonical program `A246864.P17921176171896131481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246864 (n : ℕ) : ℤ :=
  A246864.P17921176171896131481.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246887.P10401687073052114988

`A135492(n+5)²`
-/

namespace A246887.P10401687073052114988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135492 (n + 5) ^ 2

end

end A246887.P10401687073052114988

noncomputable section

/-- A246887: Number of length n+4 0..3 arrays with some pair in every consecutive five terms totalling exactly 3.

Offset 1, canonical program `A246887.P10401687073052114988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A246887 (n : ℕ) : ℤ :=
  A246887.P10401687073052114988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A246887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246908.P14110516356856020014

`A246456(n+1)-A000203(n+1)`
-/

namespace A246908.P14110516356856020014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246456 (n + 1) - A000203 (n + 1)

end

end A246908.P14110516356856020014

noncomputable section

/-- A246908: a(n) = sigma(n + sigma(n)) - sigma(n).

Offset 1, canonical program `A246908.P14110516356856020014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246908 (n : ℕ) : ℤ :=
  A246908.P14110516356856020014.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246908.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246965.P5539066629223825607

`A138918(n+1)+1`
-/

namespace A246965.P5539066629223825607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138918 (n + 1) + 1

end

end A246965.P5539066629223825607

noncomputable section

/-- A246965: Numbers n such that 19*n-(n+19) is a prime.

Offset 1, canonical program `A246965.P5539066629223825607`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246965 (n : ℕ) : ℤ :=
  A246965.P5539066629223825607.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246965.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A247051.P1256998068142214065

`A247049(n)-a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A247051.P1256998068142214065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  A247049 n - a (n - 3)

end

end A247051.P1256998068142214065

noncomputable section

/-- A247051: Rectangular array read upwards by columns: T = T(n,k) = number of paths from (0,2) to (n,k), where 0 <= k <= 2, consisting of segments given by the vectors (1,1), (1,2), (1,-1).

Offset 0, canonical program `A247051.P1256998068142214065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A247051 (n : ℕ) : ℤ :=
  A247051.P1256998068142214065.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A247051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247168.P7862381625369425862

`A001672(n+2)-A001672(n+1)`
-/

namespace A247168.P7862381625369425862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001672 (n + 2) - A001672 (n + 1)

end

end A247168.P7862381625369425862

noncomputable section

/-- A247168: Number of times n occurs in the sequence floor(log_Pi(i)) with i=1,2,3,... .

Offset 1, canonical program `A247168.P7862381625369425862`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001672, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A247168 (n : ℕ) : ℤ :=
  A247168.P7862381625369425862.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001672, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A247168.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A247223.P5447369034591034024

`xor(n, A186741(n))-n`
-/

namespace A247223.P5447369034591034024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A186741 n) - (n : ℤ)

end

end A247223.P5447369034591034024

noncomputable section

/-- A247223: Expansion of f(-x^5, -x^7) in powers of x where f() is a Ramanujan theta function.

Offset 0, canonical program `A247223.P5447369034591034024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247223 (n : ℕ) : ℤ :=
  A247223.P5447369034591034024.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247309.P2599378051457868025

`A212804(round(2*n/3))`
-/

namespace A247309.P2599378051457868025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat

end

end A247309.P2599378051457868025

noncomputable section

/-- A247309: Rectangular array read upwards by columns: T = T(n,k) = number of paths from (0,1) to (n,k), where 0 <= k <= 2, consisting of segments given by the vectors (1,1), (1,0), (1,-1), (1,-2).

Offset 0, canonical program `A247309.P2599378051457868025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 723 terms. -/
def A247309 (n : ℕ) : ℤ :=
  A247309.P2599378051457868025.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 723 terms. -/
def A247309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247310.P1069587211851915091

`A000045(or(1, n)²%3*A008611(n))`
-/

namespace A247310.P1069587211851915091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (((Nat.lor 1 n ^ 2 % 3 : ℕ) : ℤ) * A008611 n).toNat

end

end A247310.P1069587211851915091

noncomputable section

/-- A247310: Rectangular array read upwards by columns: T = T(n,k) = number of paths from (0,1) to (n,k), where 0 <= k <= 2, consisting of segments given by the vectors (1,1), (1,2), (1,-1), (1,-2), where no segment is followed by a segment in the same direction.

Offset 0, canonical program `A247310.P1069587211851915091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A247310 (n : ℕ) : ℤ :=
  A247310.P1069587211851915091.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A247310.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247343.P16054937885260863727

`∑{d}[n+1, A007427(#)*A007427((n+1)/#)]`
-/

namespace A247343.P16054937885260863727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A247343.P16054937885260863727

noncomputable section

/-- A247343: Moebius transform applied four times to sequence 1,0,0,0,....

Offset 1, canonical program `A247343.P16054937885260863727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247343 (n : ℕ) : ℤ :=
  A247343.P16054937885260863727.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A247343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247380.P8040246546011606999

`A117495(n+2)-A117495(n+1)`
-/

namespace A247380.P8040246546011606999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117495 (n + 2) - A117495 (n + 1)

end

end A247380.P8040246546011606999

noncomputable section

/-- A247380: First differences of A117495.

Offset 1, canonical program `A247380.P8040246546011606999`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117495, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A247380 (n : ℕ) : ℤ :=
  A247380.P8040246546011606999.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117495, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A247380.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A247396.P2802040727128324426

`floor(Δ[A247395(n)/2])`
-/

namespace A247396.P2802040727128324426
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247395 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A247396.P2802040727128324426

noncomputable section

/-- A247396: Number of even numbers in classes of classification of the positive numbers defined in comment in A247395.

Offset 0, canonical program `A247396.P2802040727128324426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A247396 (n : ℕ) : ℤ :=
  A247396.P2802040727128324426.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A247396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247534.P210613567024888419

`A168388(3*(n+1))+∑[A168329(n+1)]`
-/

namespace A247534.P210613567024888419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168388 (3 * (n + 1)) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247534.P210613567024888419

noncomputable section

/-- A247534: Number of length 2+3 0..n arrays with some disjoint pairs in every consecutive four terms having the same sum.

Offset 1, canonical program `A247534.P210613567024888419`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A247534 (n : ℕ) : ℤ :=
  A247534.P210613567024888419.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A247534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247971.P7265328738669470030

`A002265(A022853(n+1))+1`
-/

namespace A247971.P7265328738669470030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A022853 (n + 1)).toNat + 1

end

end A247971.P7265328738669470030

noncomputable section

/-- A247971: Least k such that 4*k/v(2*k)^2 - Pi < 1/n, where the sequence v is defined in Comments.

Offset 1, canonical program `A247971.P7265328738669470030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A247971 (n : ℕ) : ℤ :=
  A247971.P7265328738669470030.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A247971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247985.P168603640335283338

`A002264(A121384(3*(n+1))+4)`
-/

namespace A247985.P168603640335283338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A121384 (3 * (n + 1)) + 4).toNat

end

end A247985.P168603640335283338

noncomputable section

/-- A247985: Least number k such that product{(k^2 + h)/(k^2 - h), h = 1..k} - e < 1/n.

Offset 1, canonical program `A247985.P168603640335283338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A247985 (n : ℕ) : ℤ :=
  A247985.P168603640335283338.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A247985.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247986.P10895639339843770612

`floor(A098005(3*n+2)/3)`
-/

namespace A247986.P10895639339843770612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A098005 (3 * n + 2) : ℚ) / 3⌋

end

end A247986.P10895639339843770612

noncomputable section

/-- A247986: Numbers k such that A247985(k+1) - A247985(k) = 2.

Offset 1, canonical program `A247986.P10895639339843770612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 400 terms. -/
def A247986 (n : ℕ) : ℤ :=
  A247986.P10895639339843770612.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 400 terms. -/
def A247986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248086.P7756710170363644050

`A130472(n)+A023607(n)`
-/

namespace A248086.P7756710170363644050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 n + A023607 n

end

end A248086.P7756710170363644050

noncomputable section

/-- A248086: Sum of the eccentricities of all vertices in the Lucas cube Lambda(n).

Offset 0, canonical program `A248086.P7756710170363644050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A248086 (n : ℕ) : ℤ :=
  A248086.P7756710170363644050.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A248086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248100.P11130185085253701806

`A025277(n+3)`
-/

namespace A248100.P11130185085253701806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025277 (n + 3)

end

end A248100.P11130185085253701806

noncomputable section

/-- A248100: Number of ordered trees with n edges such that non-leaf vertices at even levels have outdegree 1 and those at odd levels have outdegree 2.

Offset 0, canonical program `A248100.P11130185085253701806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 394 terms. -/
def A248100 (n : ℕ) : ℤ :=
  A248100.P11130185085253701806.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 394 terms. -/
def A248100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248104.P800852553454407909

`A081706(2*n+1)+gcd(2, n)`
-/

namespace A248104.P800852553454407909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081706 (2 * n + 1) + (Nat.gcd 2 n : ℤ)

end

end A248104.P800852553454407909

noncomputable section

/-- A248104: Positions of 0,1,0 in the Thue-Morse sequence (A010060).

Offset 1, canonical program `A248104.P800852553454407909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A248104 (n : ℕ) : ℤ :=
  A248104.P800852553454407909.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A248104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248111.P13117839986049929942

`A278814(A100775(n))`
-/

namespace A248111.P13117839986049929942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278814 (A100775 n).toNat

end

end A248111.P13117839986049929942

noncomputable section

/-- A248111: Least k such that ((k+2)/(k-2))^k - e^4 < 1/n.

Offset 1, canonical program `A248111.P13117839986049929942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A248111 (n : ℕ) : ℤ :=
  A248111.P13117839986049929942.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A248111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248183.P9609418635540790916

`floor(sqrt(A194920(n+1)+A000982(n)))`
-/

namespace A248183.P9609418635540790916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A194920 (n + 1) + A000982 n)

end

end A248183.P9609418635540790916

noncomputable section

/-- A248183: Least k such that 1/4 - Sum_{h = 1..k} 1/(h*(h+1)*(h+2)) < 1/n^2.

Offset 1, canonical program `A248183.P9609418635540790916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A248183 (n : ℕ) : ℤ :=
  A248183.P9609418635540790916.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A248183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248221.P13614101816324531720

`(A142508(n+1)-1)/52`
-/

namespace A248221.P13614101816324531720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142508 (n + 1) - 1 : ℚ) / 52

end

end A248221.P13614101816324531720

noncomputable section

/-- A248221: Numbers m such that 52*m + 1 is prime.

Offset 1, canonical program `A248221.P13614101816324531720`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A142508, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248221 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A248221.P13614101816324531720.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A142508, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A248221.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A248228.P7528585357857807524

`A248227(a(n-1)+4)+n` with `a(0)=1`
-/

namespace A248228.P7528585357857807524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A248227 (a (n - 1) + 4).toNat + (n : ℤ)

end

end A248228.P7528585357857807524

noncomputable section

/-- A248228: Numbers k such that A248227(k+1) = A248227(k).

Offset 1, canonical program `A248228.P7528585357857807524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A248228 (n : ℕ) : ℤ :=
  A248228.P7528585357857807524.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A248228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248229.P17492069791970711960

`record[Δ[2*A248227(n+2)]+n]`
-/

namespace A248229.P17492069791970711960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A248227 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248229.P17492069791970711960

noncomputable section

/-- A248229: Numbers k such that A248227(k+1) = A248227(k) + 1.

Offset 1, canonical program `A248229.P17492069791970711960`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 713 terms. -/
def A248229 (n : ℕ) : ℤ :=
  A248229.P17492069791970711960.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 713 terms. -/
def A248229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248230.P9224601394266845668

`floor(A027602(2*(n+1))/8)`
-/

namespace A248230.P9224601394266845668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A027602 (2 * (n + 1)) : ℚ) / 8⌋

end

end A248230.P9224601394266845668

noncomputable section

/-- A248230: a(n) = floor(1/(zeta(4) - Sum_{h=1..n} 1/h^4)).

Offset 1, canonical program `A248230.P9224601394266845668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A248230 (n : ℕ) : ℤ :=
  A248230.P9224601394266845668.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A248230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248232.P4856940846005422243

`A248231(A001954(n))+n`
-/

namespace A248232.P4856940846005422243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (A001954 n).toNat + (n : ℤ)

end

end A248232.P4856940846005422243

noncomputable section

/-- A248232: Numbers k such that A248231(k+1) = A248231(k).

Offset 1, canonical program `A248232.P4856940846005422243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A248232 (n : ℕ) : ℤ :=
  A248232.P4856940846005422243.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A248232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248336.P3979322780880307297

`∪[A178501(2*n), A178501(2*n)+A002276(n)]`
-/

namespace A248336.P3979322780880307297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178501 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178501 (2 * n) + A002276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A248336.P3979322780880307297

noncomputable section

/-- A248336: Smallest number m such that the Levenshtein distance of m and its reversal equals n.

Offset 0, canonical program `A248336.P3979322780880307297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A248336 (n : ℕ) : ℤ :=
  (A248336.P3979322780880307297.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A248336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248356.P367414254056679440

`comp[floor(A248358(n+1)/2)]`
-/

namespace A248356.P367414254056679440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A248358 (n + 1) : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A248356.P367414254056679440

noncomputable section

/-- A248356: Numbers k such that A248355(k+1) = A248355(k).

Offset 1, canonical program `A248356.P367414254056679440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A248356 (n : ℕ) : ℤ :=
  (A248356.P367414254056679440.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A248356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248357.P6477843238657653900

`floor(A248358(n+4)/2)`
-/

namespace A248357.P6477843238657653900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A248358 (n + 4) : ℚ) / 2⌋

end

end A248357.P6477843238657653900

noncomputable section

/-- A248357: Numbers k such that A248355(k+1) = A248355(k) + 1.

Offset 1, canonical program `A248357.P6477843238657653900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A248357 (n : ℕ) : ℤ :=
  A248357.P6477843238657653900.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A248357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248419.P9185861201192963104

`comp[A248421(n+3)-2]`
-/

namespace A248419.P9185861201192963104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248421 (n + 3) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A248419.P9185861201192963104

noncomputable section

/-- A248419: Numbers k such that A248418(k+1) = A248418(k).

Offset 1, canonical program `A248419.P9185861201192963104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A248419 (n : ℕ) : ℤ :=
  (A248419.P9185861201192963104.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A248419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248420.P8447675986398564391

`A248421(n+6)-2`
-/

namespace A248420.P8447675986398564391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248421 (n + 6) - 2

end

end A248420.P8447675986398564391

noncomputable section

/-- A248420: Numbers k such that A248418(k+1) = A248418(k) + 1.

Offset 1, canonical program `A248420.P8447675986398564391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A248420 (n : ℕ) : ℤ :=
  A248420.P8447675986398564391.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A248420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248422.P13301175043225490051

`A127421(2*n+3)-1`
-/

namespace A248422.P13301175043225490051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (2 * n + 3) - 1

end

end A248422.P13301175043225490051

noncomputable section

/-- A248422: Even integers concatenated with themselves.

Offset 1, canonical program `A248422.P13301175043225490051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A248422 (n : ℕ) : ℤ :=
  A248422.P13301175043225490051.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A248422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248429.P13996543522747922926

`A072944(n+7)+5`
-/

namespace A248429.P13996543522747922926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072944 (n + 7) + 5

end

end A248429.P13996543522747922926

noncomputable section

/-- A248429: Number of length n+2 0..4 arrays with every three consecutive terms having the sum of some two elements equal to twice the third.

Offset 1, canonical program `A248429.P13996543522747922926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 492 terms. -/
def A248429 (n : ℕ) : ℤ :=
  A248429.P13996543522747922926.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 492 terms. -/
def A248429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248499.P16177502757618689065

`eq[1, gcd(n, A059995(n))]`
-/

namespace A248499.P16177502757618689065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A059995 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248499.P16177502757618689065

noncomputable section

/-- A248499: Numbers m that are coprime to A059995(m): floor(m/10).

Offset 1, canonical program `A248499.P16177502757618689065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5823 terms. -/
def A248499 (n : ℕ) : ℤ :=
  (A248499.P16177502757618689065.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5823 terms. -/
def A248499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248501.P6617891412935947150

`eq[1, gcd(n, A002265(A002265(n)))]`
-/

namespace A248501.P6617891412935947150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A002265 (A002265 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248501.P6617891412935947150

noncomputable section

/-- A248501: Numbers m that are coprime to floor(m/16).

Offset 1, canonical program `A248501.P6617891412935947150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5839 terms. -/
def A248501 (n : ℕ) : ℤ :=
  (A248501.P6617891412935947150.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5839 terms. -/
def A248501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248527.P3361420579525358352

`∩[A155086(n+1), A298784(n)]`
-/

namespace A248527.P3361420579525358352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298784 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248527.P3361420579525358352

noncomputable section

/-- A248527: Numbers k such that the smallest prime divisor of k^2+1 is 13.

Offset 1, canonical program `A248527.P3361420579525358352`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1538 terms. -/
def A248527 (n : ℕ) : ℤ :=
  (A248527.P3361420579525358352.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1538 terms. -/
def A248527.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248533.P12172224158410862603

`6*A288732(n)+89`
-/

namespace A248533.P12172224158410862603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A288732 n + 89

end

end A248533.P12172224158410862603

noncomputable section

/-- A248533: Number of length n+3 0..4 arrays with every four consecutive terms having the sum of some three elements equal to three times the fourth.

Offset 1, canonical program `A248533.P12172224158410862603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1307 terms. -/
def A248533 (n : ℕ) : ℤ :=
  A248533.P12172224158410862603.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1307 terms. -/
def A248533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248566.P11564736642265823741

`record[A008611(A006369(n)+A000523(n+1))]`
-/

namespace A248566.P11564736642265823741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A006369 n + A000523 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248566.P11564736642265823741

noncomputable section

/-- A248566: Numbers k such that A248565(k+1) = A248565(k) + 1.

Offset 1, canonical program `A248566.P11564736642265823741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A248566 (n : ℕ) : ℤ :=
  A248566.P11564736642265823741.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A248566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248567.P6131162230624126847

`A107907(A028310(3*n+2))+A001478(n+1)`
-/

namespace A248567.P6131162230624126847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107907 (A028310 (3 * n + 2)).toNat + A001478 (n + 1)

end

end A248567.P6131162230624126847

noncomputable section

/-- A248567: Numbers k such that A248565(k+1) = A248565(k) + 2.

Offset 1, canonical program `A248567.P6131162230624126847`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A248567 (n : ℕ) : ℤ :=
  A248567.P6131162230624126847.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A248567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248740.P10624449381643573524

`A000045(n)%1000`
-/

namespace A248740.P10624449381643573524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 n) 1000

end

end A248740.P10624449381643573524

noncomputable section

/-- A248740: a(n) = Fibonacci(n) mod 1000.

Offset 0, canonical program `A248740.P10624449381643573524`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A248740 (n : ℕ) : ℤ :=
  A248740.P10624449381643573524.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A248740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248875.P14786987382872610295

`gcd(2, A156253(n))+3*a(n-1)` with `a(0)=0`
-/

namespace A248875.P14786987382872610295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Int.gcd 2 (A156253 n) + 3 * a (n - 1)

end

end A248875.P14786987382872610295

noncomputable section

/-- A248875: First n elements of the Kolakoski sequence read as a ternary number.

Offset 0, canonical program `A248875.P14786987382872610295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A248875 (n : ℕ) : ℤ :=
  (A248875.P14786987382872610295.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. -/
def A248875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A248911.P12540125950108847035

`floor(A000040(n+1)-(n+2)*log(n+1))`
-/

namespace A248911.P12540125950108847035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℝ) - (n + 2 : ℝ) * Real.log (n + 1 : ℝ)⌋

end

end A248911.P12540125950108847035

noncomputable section

/-- A248911: a(n) = floor( prime(n) - (n+1)*log(n) ).

Offset 1, canonical program `A248911.P12540125950108847035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A248911 (n : ℕ) : ℤ :=
  A248911.P12540125950108847035.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A248911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249040.P13332248197705166820

`1-A249041(n+1)+n`
-/

namespace A249040.P13332248197705166820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A249041 (n + 1) + (n : ℤ)

end

end A249040.P13332248197705166820

noncomputable section

/-- A249040: Number of even terms in first n terms of A249039.

Offset 1, canonical program `A249040.P13332248197705166820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249040 (n : ℕ) : ℤ :=
  A249040.P13332248197705166820.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249040.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249073.P7124989258507197905

`∪[2*(n+1)^6, ∑[A022522(n)]]`
-/

namespace A249073.P7124989258507197905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022522 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A249073.P7124989258507197905

noncomputable section

/-- A249073: Ordered union of the sets {h^6, h >=1} and {2*k^6, k >=1}.

Offset 1, canonical program `A249073.P7124989258507197905`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249073 (n : ℕ) : ℤ :=
  (A249073.P7124989258507197905.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249073.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249097.P355184434680390509

`∪[3*(n+1)^6, Δ[A000540(n)]]`
-/

namespace A249097.P355184434680390509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1) ^ 6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000540 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A249097.P355184434680390509

noncomputable section

/-- A249097: Ordered union of the sets {h^6, h >=1} and {3*k^6, k >=1}.

Offset 1, canonical program `A249097.P355184434680390509`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249097 (n : ℕ) : ℤ :=
  (A249097.P355184434680390509.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249097.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249116.P1219359969636568688

`∪[32*A001014(n+1), A001014(n+1)]`
-/

namespace A249116.P1219359969636568688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * A001014 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A249116.P1219359969636568688

noncomputable section

/-- A249116: Ordered union of the sets {h^6, h >=1} and {32*k^6, k >=1}.

Offset 1, canonical program `A249116.P1219359969636568688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249116 (n : ℕ) : ℤ :=
  (A249116.P1219359969636568688.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249117.P15291165750782053411

`A008619(A249124(n+1)+n-1)`
-/

namespace A249117.P15291165750782053411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A249124 (n + 1) + ((n : ℤ) - 1)).toNat

end

end A249117.P15291165750782053411

noncomputable section

/-- A249117: Position of n^6 in the ordered union of {h^6, h >= 1} and {32*k^6, k >= 1}.

Offset 1, canonical program `A249117.P15291165750782053411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3203 terms. -/
def A249117 (n : ℕ) : ℤ :=
  A249117.P15291165750782053411.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3203 terms. -/
def A249117.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249190.P4298636297508026740

`2*A001592(n+12)`
-/

namespace A249190.P4298636297508026740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001592 (n + 12)

end

end A249190.P4298636297508026740

noncomputable section

/-- A249190: Number of length n+6 0..1 arrays with no seven consecutive terms having four times the sum of any three elements equal to three times the sum of the remaining four.

Offset 1, canonical program `A249190.P4298636297508026740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A249190 (n : ℕ) : ℤ :=
  A249190.P4298636297508026740.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A249190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249291.P11440317869399723647

`(n+2)^4-A248538(n+1)`
-/

namespace A249291.P11440317869399723647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 4 : ℤ) - A248538 (n + 1)

end

end A249291.P11440317869399723647

noncomputable section

/-- A249291: Number of length 1+3 0..n arrays with no four consecutive terms having the sum of any three elements equal to three times the fourth.

Offset 1, canonical program `A249291.P11440317869399723647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249291 (n : ℕ) : ℤ :=
  A249291.P11440317869399723647.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249291.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249577.P2238030843788059114

`∑[A033999(n)*A092550(n+4)]`
-/

namespace A249577.P2238030843788059114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A092550 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249577.P2238030843788059114

noncomputable section

/-- A249577: List of triples (r,s,t): the matrix M = [[1,4,4][1,3,2][1,2,1]] is raised to successive negative powers, then (r,s,t) are the square roots of M[3,1], M[1,1], M[1,3] respectively.

Offset 0, canonical program `A249577.P2238030843788059114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 783 terms. -/
def A249577 (n : ℕ) : ℤ :=
  A249577.P2238030843788059114.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 783 terms. -/
def A249577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249669.P11307284954815266354

`floor(A000040(n+1)^ratio[n+1])`
-/

namespace A249669.P11307284954815266354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℝ) ^ ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)⌋

end

end A249669.P11307284954815266354

noncomputable section

/-- A249669: a(n) = floor(prime(n)^(1+1/n)).

Offset 1, canonical program `A249669.P11307284954815266354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249669 (n : ℕ) : ℤ :=
  A249669.P11307284954815266354.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249670.P6555047459186973760

`A017665(n+1)*A017666(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A249670.P6555047459186973760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (n + 1) * A017666 (n + 1)

end

end A249670.P6555047459186973760

noncomputable section

/-- A249670: a(n) = A017665(n)*A017666(n).

Offset 1, canonical program `A249670.P6555047459186973760`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017665, A017666, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A249670 (n : ℕ) : ℤ :=
  A249670.P6555047459186973760.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017665, A017666, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A249670.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A249908.P11149735627571001488

`Δ[A098331(n)/(2*(-1)^n)]`
-/

namespace A249908.P11149735627571001488
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098331 n : ℚ) / (2 * (-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A249908.P11149735627571001488

noncomputable section

/-- A249908: G.f. (1-x)/(2*sqrt(5*x^2 + 2*x + 1)) - 1/2.

Offset 1, canonical program `A249908.P11149735627571001488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. -/
def A249908 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A249908.P11149735627571001488.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. -/
def A249908.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250060.P12003600613952037620

`∑[∑[21*A008515(n)]]`
-/

namespace A250060.P12003600613952037620
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  21 * A008515 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250060.P12003600613952037620

noncomputable section

/-- A250060: Number of length 1+6 0..n arrays with no seven consecutive terms having the maximum of any two terms equal to the minimum of the remaining five terms.

Offset 1, canonical program `A250060.P12003600613952037620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250060 (n : ℕ) : ℤ :=
  A250060.P12003600613952037620.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250092.P12769020912072488549

`C(A000040(n+5), A000040(n+1))`
-/

namespace A250092.P12769020912072488549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 5)).toNat (A000040 (n + 1)).toNat

end

end A250092.P12769020912072488549

noncomputable section

/-- A250092: a(n) = binomial( prime(n+4), prime(n) ).

Offset 1, canonical program `A250092.P12769020912072488549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 279 terms. -/
def A250092 (n : ℕ) : ℤ :=
  (A250092.P12769020912072488549.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 279 terms. -/
def A250092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250102.P1601023286299333687

`Δ[A006495(n)]²`
-/

namespace A250102.P1601023286299333687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A250102.P1601023286299333687

noncomputable section

/-- A250102: a(n) = 2*5^n - (1+2i)^(2n) - (1-2i)^(2n) where i = sqrt(-1).

Offset 0, canonical program `A250102.P1601023286299333687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A250102 (n : ℕ) : ℤ :=
  A250102.P1601023286299333687.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. -/
def A250102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250120.P17005803601232239086

`A022144(n)-2*A047486(n+1)-A244895(n)`
-/

namespace A250120.P17005803601232239086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - 2 * A047486 (n + 1) - A244895 n

end

end A250120.P17005803601232239086

noncomputable section

/-- A250120: Coordination sequence for planar net 3.3.3.3.6 (also called the fsz net).

Offset 0, canonical program `A250120.P17005803601232239086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250120 (n : ℕ) : ℤ :=
  A250120.P17005803601232239086.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250313.P1908437795509211882

`A093178(n+4)+∑[A132732(n)]`
-/

namespace A250313.P1908437795509211882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (n + 4) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A250313.P1908437795509211882

noncomputable section

/-- A250313: Number of length n+2 0..1 arrays with the sum of second differences squared multiplied by some arrangement of +-1 equal to zero.

Offset 1, canonical program `A250313.P1908437795509211882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A250313 (n : ℕ) : ℤ :=
  A250313.P1908437795509211882.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A250313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250426.P3029081105641093597

`A008805(n+2)*A008805(n+3)*A002620(n+4)`
-/

namespace A250426.P3029081105641093597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 (n + 2) * A008805 (n + 3) * A002620 (n + 4)

end

end A250426.P3029081105641093597

noncomputable section

/-- A250426: Number of (n+1)X(2+1) 0..1 arrays with nondecreasing sum of every two consecutive values in every row and column.

Offset 1, canonical program `A250426.P3029081105641093597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A250426 (n : ℕ) : ℤ :=
  A250426.P3029081105641093597.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A250426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250429.P13624110313230034880

`A001249(A008619(n+1))*A001249(A008619(n))`
-/

namespace A250429.P13624110313230034880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001249 (A008619 (n + 1)).toNat * A001249 (A008619 n).toNat

end

end A250429.P13624110313230034880

noncomputable section

/-- A250429: Number of (n+1)X(5+1) 0..1 arrays with nondecreasing sum of every two consecutive values in every row and column.

Offset 1, canonical program `A250429.P13624110313230034880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250429 (n : ℕ) : ℤ :=
  A250429.P13624110313230034880.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250431.P15289641073879805333

`(A189976(n+10)*A189976(n+11))²`
-/

namespace A250431.P15289641073879805333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A189976 (n + 10) * A189976 (n + 11)) ^ 2

end

end A250431.P15289641073879805333

noncomputable section

/-- A250431: Number of (n+1)X(7+1) 0..1 arrays with nondecreasing sum of every two consecutive values in every row and column.

Offset 1, canonical program `A250431.P15289641073879805333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A250431 (n : ℕ) : ℤ :=
  A250431.P15289641073879805333.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A250431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250605.P9853643777940156950

`A308579(n+3)+(n+2)²`
-/

namespace A250605.P9853643777940156950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308579 (n + 3) + ((n + 2) ^ 2 : ℤ)

end

end A250605.P9853643777940156950

noncomputable section

/-- A250605: Number of (n+1) X (2+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)-x(i-1,j) in the j direction.

Offset 1, canonical program `A250605.P9853643777940156950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. -/
def A250605 (n : ℕ) : ℤ :=
  A250605.P9853643777940156950.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. -/
def A250605.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250613.P2999142405487198393

`(∑[A094687(n+4)]+3)²`
-/

namespace A250613.P2999142405487198393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094687 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 3) ^ 2

end

end A250613.P2999142405487198393

noncomputable section

/-- A250613: Number of (n+1)X(1+1) 0..2 arrays with nondecreasing maximum of every two consecutive values in every row and column.

Offset 1, canonical program `A250613.P2999142405487198393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A250613 (n : ℕ) : ℤ :=
  A250613.P2999142405487198393.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A250613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250621.P17073922274883011414

`floor((n+1)*log(A000040(n+1)))`
-/

namespace A250621.P17073922274883011414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.log (A000040 (n + 1) : ℝ)⌋

end

end A250621.P17073922274883011414

noncomputable section

/-- A250621: a(n) = floor(n*log(prime(n))).

Offset 1, canonical program `A250621.P17073922274883011414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250621 (n : ℕ) : ℤ :=
  A250621.P17073922274883011414.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250652.P6248837234100144830

`(n+2)*A047859(n+1)+1`
-/

namespace A250652.P6248837234100144830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A047859 (n + 1) + 1

end

end A250652.P6248837234100144830

noncomputable section

/-- A250652: Number of (n+1)X(n+1) 0..1 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing min(x(i,j),x(i-1,j)) in the j direction.

Offset 1, canonical program `A250652.P6248837234100144830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A250652 (n : ℕ) : ℤ :=
  A250652.P6248837234100144830.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A250652.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250749.P8795832410189814382

`A122695(n+5)+1`
-/

namespace A250749.P8795832410189814382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122695 (n + 5) + 1

end

end A250749.P8795832410189814382

noncomputable section

/-- A250749: Number of (n+1) X (2+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)+x(i-1,j) in the j direction.

Offset 1, canonical program `A250749.P8795832410189814382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A250749 (n : ℕ) : ℤ :=
  A250749.P8795832410189814382.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 206 terms. -/
def A250749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250751.P8916526449828887815

`5*A056182(n+3)+13`
-/

namespace A250751.P8916526449828887815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A056182 (n + 3) + 13

end

end A250751.P8916526449828887815

noncomputable section

/-- A250751: Number of (n+1) X (4+1) 0..2 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)+x(i-1,j) in the j direction.

Offset 1, canonical program `A250751.P8916526449828887815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. -/
def A250751 (n : ℕ) : ℤ :=
  A250751.P8916526449828887815.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 205 terms. -/
def A250751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250778.P5723308156067218095

`A247618(n+3)+1`
-/

namespace A250778.P5723308156067218095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247618 (n + 3) + 1

end

end A250778.P5723308156067218095

noncomputable section

/-- A250778: Number of (n+1) X (3+1) 0..1 arrays with nondecreasing x(i,j)+x(i,j-1) in the i direction and nondecreasing absolute value of x(i,j)-x(i-1,j) in the j direction.

Offset 1, canonical program `A250778.P5723308156067218095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. -/
def A250778 (n : ℕ) : ℤ :=
  A250778.P5723308156067218095.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. -/
def A250778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250820.P13041496644950716169

`(2*A020732(n))^3`
-/

namespace A250820.P13041496644950716169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A020732 n) ^ 3

end

end A250820.P13041496644950716169

noncomputable section

/-- A250820: Number of (n+2) X (1+2) 0..1 arrays with nondecreasing maximum minus minimum of every three consecutive values in every row and column.

Offset 1, canonical program `A250820.P13041496644950716169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A250820 (n : ℕ) : ℤ :=
  A250820.P13041496644950716169.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. -/
def A250820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250870.P6673347047517117770

`2*A016208(n+2)`
-/

namespace A250870.P6673347047517117770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016208 (n + 2)

end

end A250870.P6673347047517117770

noncomputable section

/-- A250870: Number of (n+1) X (1+1) 0..3 arrays with nondecreasing x(i,j)-x(i,j-1) in the i direction and nondecreasing x(i,j)+x(i-1,j) in the j direction.

Offset 1, canonical program `A250870.P6673347047517117770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A250870 (n : ℕ) : ℤ :=
  A250870.P6673347047517117770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. -/
def A250870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251122.P1468921088716064169

`∑[n]+3*A111314(n+3)`
-/

namespace A251122.P1468921088716064169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 3 * A111314 (n + 3)

end

end A251122.P1468921088716064169

noncomputable section

/-- A251122: Number of (n+1) X (2+1) 0..1 arrays with no 2 X 2 subblock having the sum of its diagonal elements greater than the maximum of its antidiagonal elements.

Offset 1, canonical program `A251122.P1468921088716064169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A251122 (n : ℕ) : ℤ :=
  A251122.P1468921088716064169.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 472 terms. -/
def A251122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251187.P12829986196269252338

`A006501(n+3)^3`
-/

namespace A251187.P12829986196269252338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006501 (n + 3) ^ 3

end

end A251187.P12829986196269252338

noncomputable section

/-- A251187: Number of (n+2)X(1+2) 0..1 arrays with nondecreasing sum of every three consecutive values in every row and column.

Offset 1, canonical program `A251187.P12829986196269252338`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A251187 (n : ℕ) : ℤ :=
  A251187.P12829986196269252338.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A251187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251203.P14081091797382294216

`(A069306(n+3)+A000079(n+3))*A000079(n+1)`
-/

namespace A251203.P14081091797382294216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A069306 (n + 3) + A000079 (n + 3)) * A000079 (n + 1)

end

end A251203.P14081091797382294216

noncomputable section

/-- A251203: Number of (n+1) X (1+1) 0..2 arrays with every 2 X 2 subblock summing to a nonzero multiple of 2.

Offset 1, canonical program `A251203.P14081091797382294216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A251203 (n : ℕ) : ℤ :=
  A251203.P14081091797382294216.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A251203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251421.P16186291301098778423

`2*Δ[A051437(n+1)]`
-/

namespace A251421.P16186291301098778423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A251421.P16186291301098778423

noncomputable section

/-- A251421: Number of length n+2 0..1 arrays with the sum of the maximum minus twice the median plus the minimum of adjacent triples multiplied by some arrangement of +-1 equal to zero.

Offset 1, canonical program `A251421.P16186291301098778423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A251421 (n : ℕ) : ℤ :=
  A251421.P16186291301098778423.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A251421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251710.P11301060952533710946

`Δ[A122189(n)]`
-/

namespace A251710.P11301060952533710946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A251710.P11301060952533710946

noncomputable section

/-- A251710: 7-step Fibonacci sequence starting with (0,0,0,0,0,1,0).

Offset 0, canonical program `A251710.P11301060952533710946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A251710 (n : ℕ) : ℤ :=
  A251710.P11301060952533710946.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A251710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251793.P15173361847487606656

`2*A077288(A042948(n))`
-/

namespace A251793.P15173361847487606656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077288 (A042948 n).toNat

end

end A251793.P15173361847487606656

noncomputable section

/-- A251793: Numbers n such that the sum of the triangular numbers T(n) and T(n+1) is equal to the sum of the octagonal numbers N(m) and N(m+1) for some m.

Offset 1, canonical program `A251793.P15173361847487606656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A251793 (n : ℕ) : ℤ :=
  A251793.P15173361847487606656.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A251793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251853.P16956309281830742699

`2*eq[A010888(n), A092196(A092196(n))]`
-/

namespace A251853.P16956309281830742699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092196 (A092196 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A251853.P16956309281830742699

noncomputable section

/-- A251853: Nonnegative numbers n with all even digits such that the digital sum of the digits' sum is even.

Offset 1, canonical program `A251853.P16956309281830742699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A251853 (n : ℕ) : ℤ :=
  (A251853.P16956309281830742699.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A251853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A251928.P15244553157165878968

`A077943(n)+2^(n+2)`
-/

namespace A251928.P15244553157165878968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077943 n + (2 ^ (n + 2) : ℤ)

end

end A251928.P15244553157165878968

noncomputable section

/-- A251928: Number of length n+2 0..1 arrays with the sum of the maximum minus the median of adjacent triples multiplied by some arrangement of +-1 equal to zero.

Offset 1, canonical program `A251928.P15244553157165878968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A251928 (n : ℕ) : ℤ :=
  A251928.P15244553157165878968.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A251928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A252698.P9922927271270455625

`5*a(n-1)-a(A065033(n))` with `a(0)=0, a(1)=5`
-/

namespace A252698.P9922927271270455625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  5 * a (n - 1) - a (A065033 n).toNat

end

end A252698.P9922927271270455625

noncomputable section

/-- A252698: Number of strings of length n over a 5-letter alphabet that do not begin with a palindrome.

Offset 0, canonical program `A252698.P9922927271270455625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A252698 (n : ℕ) : ℤ :=
  A252698.P9922927271270455625.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A252698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A252815.P8172004683234130111

`A202752(n+2)+C(n, 2)`
-/

namespace A252815.P8172004683234130111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202752 (n + 2) + (Nat.choose n 2 : ℤ)

end

end A252815.P8172004683234130111

noncomputable section

/-- A252815: Number of n X 3 nonnegative integer arrays with upper left 0 and every value within 2 of its city block distance from the upper left and every value increasing by 0 or 1 with every step right or down.

Offset 1, canonical program `A252815.P8172004683234130111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A252815 (n : ℕ) : ℤ :=
  A252815.P8172004683234130111.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A252815.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A252822.P3302283567831736258

`∑[A056078(n+1)+∑[∑[n+1]]]+1`
-/

namespace A252822.P3302283567831736258
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056078 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A252822.P3302283567831736258

noncomputable section

/-- A252822: Number of n X 2 nonnegative integer arrays with upper left 0 and every value within 3 of its city block distance from the upper left and every value increasing by 0 or 1 with every step right or down.

Offset 1, canonical program `A252822.P3302283567831736258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A252822 (n : ℕ) : ℤ :=
  A252822.P3302283567831736258.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A252822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253029.P15969757418448034900

`3*A180036(n+3)`
-/

namespace A253029.P15969757418448034900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A180036 (n + 3)

end

end A253029.P15969757418448034900

noncomputable section

/-- A253029: Number of (n+2) X (1+2) 0..2 arrays with every consecutive three elements in every row and column having exactly two distinct values, and new values 0 upwards introduced in row major order.

Offset 1, canonical program `A253029.P15969757418448034900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A253029 (n : ℕ) : ℤ :=
  A253029.P15969757418448034900.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. -/
def A253029.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253092.P13330975078839585840

`A047212(n+1)%A120514(n+1)`
-/

namespace A253092.P13330975078839585840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047212 (n + 1)) (A120514 (n + 1))

end

end A253092.P13330975078839585840

noncomputable section

/-- A253092: Log_3(A133579(n)).

Offset 0, canonical program `A253092.P13330975078839585840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3001 terms. -/
def A253092 (n : ℕ) : ℤ :=
  A253092.P13330975078839585840.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3001 terms. -/
def A253092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253122.P10577464860156726926

`4*A051437(n)`
-/

namespace A253122.P10577464860156726926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A051437 n

end

end A253122.P10577464860156726926

noncomputable section

/-- A253122: Number of length n+2 0..1 arrays with the sum of medians of adjacent triples multiplied by some arrangement of +-1 equal to zero.

Offset 1, canonical program `A253122.P10577464860156726926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A253122 (n : ℕ) : ℤ :=
  A253122.P10577464860156726926.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A253122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253139.P10614688840805837751

`∏{e}[n+1, A003418(#+1)]`
-/

namespace A253139.P10614688840805837751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A003418 (Nat.factorization (f1 n) p + 1)

end

end A253139.P10614688840805837751

noncomputable section

/-- A253139: a(n) = lcm_{d|n} tau(d), where tau(d) represents the number of divisors of d (A000005(d)).

Offset 1, canonical program `A253139.P10614688840805837751`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253139 (n : ℕ) : ℤ :=
  A253139.P10614688840805837751.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253156.P13647116672860416168

`A253155(n+1)+72`
-/

namespace A253156.P13647116672860416168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253155 (n + 1) + 72

end

end A253156.P13647116672860416168

noncomputable section

/-- A253156: Number of (n+1) X (5+1) 0..1 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally and vertically.

Offset 1, canonical program `A253156.P13647116672860416168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A253156 (n : ℕ) : ℤ :=
  A253156.P13647116672860416168.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A253156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253206.P16651869948344728529

`A117444(A007426(n+1))`
-/

namespace A253206.P16651869948344728529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117444 (A007426 (n + 1)).toNat

end

end A253206.P16651869948344728529

noncomputable section

/-- A253206: Coefficients of the Dirichlet series for zeta(5*s)/zeta(s).

Offset 1, canonical program `A253206.P16651869948344728529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253206 (n : ℕ) : ℤ :=
  A253206.P16651869948344728529.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253304.P17523641261589992296

`∑[A010684(n)*A070997(n)]`
-/

namespace A253304.P17523641261589992296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A070997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253304.P17523641261589992296

noncomputable section

/-- A253304: Numbers n such that the sum of the heptagonal numbers H(n) and H(n+1) is equal to the octagonal number O(m) for some m.

Offset 1, canonical program `A253304.P17523641261589992296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A253304 (n : ℕ) : ℤ :=
  A253304.P17523641261589992296.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A253304.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253432.P3197369354590611943

`A253431(n+1)+72`
-/

namespace A253432.P3197369354590611943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253431 (n + 1) + 72

end

end A253432.P3197369354590611943

noncomputable section

/-- A253432: Number of (n+1) X (5+1) 0..1 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

Offset 1, canonical program `A253432.P3197369354590611943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A253432 (n : ℕ) : ℤ :=
  A253432.P3197369354590611943.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A253432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253439.P15114041342093129535

`A253438(n+1)+72`
-/

namespace A253439.P15114041342093129535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253438 (n + 1) + 72

end

end A253439.P15114041342093129535

noncomputable section

/-- A253439: Number of (5+1) X (n+1) 0..1 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

Offset 1, canonical program `A253439.P15114041342093129535`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A253439 (n : ℕ) : ℤ :=
  A253439.P15114041342093129535.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A253439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253610.P11264072332491747725

`record[A000040(n+1)-dr(5*A000040(n+1))]`
-/

namespace A253610.P11264072332491747725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (SequenceMachineLib.digitalRoot (5 * A000040 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253610.P11264072332491747725

noncomputable section

/-- A253610: Numbers n with property that the sum of n and the digital root of n is prime.

Offset 1, canonical program `A253610.P11264072332491747725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A253610 (n : ℕ) : ℤ :=
  A253610.P11264072332491747725.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A253610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253638.P15682283703354979589

`∑{digits}[A000351(n), A000007(#)]`
-/

namespace A253638.P15682283703354979589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000007 x).sum

end

end A253638.P15682283703354979589

noncomputable section

/-- A253638: Number of zeros in the decimal expansion of 5^n.

Offset 0, canonical program `A253638.P15682283703354979589`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A253638 (n : ℕ) : ℤ :=
  A253638.P15682283703354979589.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A253638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253671.P901294555430686072

`ceil(or(3, 7*n²)/A017461(n))`
-/

namespace A253671.P901294555430686072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 3 (7 * n ^ 2) : ℚ) / (A017461 n : ℚ)⌉

end

end A253671.P901294555430686072

noncomputable section

/-- A253671: a(n) = floor(A000111(n)/A000111(n-1)).

Offset 1, canonical program `A253671.P901294555430686072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253671 (n : ℕ) : ℤ :=
  A253671.P901294555430686072.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A253671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253673.P9010123248997009526

`A129444(A042963(n+2))`
-/

namespace A253673.P9010123248997009526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129444 (A042963 (n + 2)).toNat

end

end A253673.P9010123248997009526

noncomputable section

/-- A253673: Indices of centered triangular numbers (A005448) that are also centered octagonal numbers (A016754).

Offset 1, canonical program `A253673.P9010123248997009526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A253673 (n : ℕ) : ℤ :=
  A253673.P9010123248997009526.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A253673.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253674.P14966502823909885052

`round(Δ[A004189(n)/A000034(n)])`
-/

namespace A253674.P14966502823909885052
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004189 n : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A253674.P14966502823909885052

noncomputable section

/-- A253674: Indices of centered octagonal numbers (A016754) which are also centered triangular numbers (A005448).

Offset 1, canonical program `A253674.P14966502823909885052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A253674 (n : ℕ) : ℤ :=
  A253674.P14966502823909885052.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A253674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253718.P7304962258111176939

`a(A002264(n))+n²%3+2` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A253718.P7304962258111176939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (A002264 n).toNat + (n ^ 2 % 3 + 2)

end

end A253718.P7304962258111176939

noncomputable section

/-- A253718: Number h such that (h,0) is n steps from (0,0), where steps are as follows: (x,y)->(x-r, y) if r > 0, and (x,y)->(y, r/3) otherwise, where r = x mod 3.

Offset 0, canonical program `A253718.P7304962258111176939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A253718 (n : ℕ) : ℤ :=
  (A253718.P7304962258111176939.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A253718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253779.P12743486929630698630

`A027480(A032766(n))*A257083(n)`
-/

namespace A253779.P12743486929630698630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027480 (A032766 n).toNat * A257083 n

end

end A253779.P12743486929630698630

noncomputable section

/-- A253779: Numbers c whose cubes are equal to the sum of m^3 consecutive cubes for m^3 not divisible by 3 (A118719).

Offset 1, canonical program `A253779.P12743486929630698630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A253779 (n : ℕ) : ℤ :=
  A253779.P12743486929630698630.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A253779.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A253900.P3316093139165672320

`A129296(2*(n+1))`
-/

namespace A253900.P3316093139165672320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129296 (2 * (n + 1))

end

end A253900.P3316093139165672320

noncomputable section

/-- A253900: a(n) is the number of squares of the form x^2 + x + n^2 for 0 <= x <= n^2.

Offset 1, canonical program `A253900.P3316093139165672320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A253900 (n : ℕ) : ℤ :=
  A253900.P3316093139165672320.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A253900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254010.P11034487668733509155

`floor(p?[A002313(n+2)-4]/4)`
-/

namespace A254010.P11034487668733509155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 4⌋

end

end A254010.P11034487668733509155

noncomputable section

/-- A254010: Numbers k such that 4k+1 and 4(k+1)+1 are primes.

Offset 1, canonical program `A254010.P11034487668733509155`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1156 terms. -/
def A254010 (n : ℕ) : ℤ :=
  A254010.P11034487668733509155.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1156 terms. -/
def A254010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254011.P1162402624068683902

`A008676(n)-A079998(n+2)`
-/

namespace A254011.P1162402624068683902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 n - A079998 (n + 2)

end

end A254011.P1162402624068683902

noncomputable section

/-- A254011: Expansion of (1 - x^18) / ((1 - x^5) * (1 - x^6) * (1 - x^9)) in powers of x.

Offset 0, canonical program `A254011.P1162402624068683902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254011 (n : ℕ) : ℤ :=
  A254011.P1162402624068683902.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254056.P15925411799378388036

`A185596(a(n-1))%15` with `a(0)=1`
-/

namespace A254056.P15925411799378388036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A185596 (a (n - 1)).toNat) 15

end

end A254056.P15925411799378388036

noncomputable section

/-- A254056: Sum two last digits of the sequence to get next term, starting with 1,2.

Offset 1, canonical program `A254056.P15925411799378388036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254056 (n : ℕ) : ℤ :=
  A254056.P15925411799378388036.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254065.P1565246550795193810

`A036120(n)%10`
-/

namespace A254065.P1565246550795193810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036120 n) 10

end

end A254065.P1565246550795193810

noncomputable section

/-- A254065: Vulgar fractions whose denominators are numbers ending with nine, the case 1/19.

Offset 1, canonical program `A254065.P1565246550795193810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254065 (n : ℕ) : ℤ :=
  A254065.P1565246550795193810.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254110.P14785946217750073186

`A005187(A046699(n+2))-(n+1)`
-/

namespace A254110.P14785946217750073186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A046699 (n + 2)).toNat - (n + 1 : ℤ)

end

end A254110.P14785946217750073186

noncomputable section

/-- A254110: Zero-based column index of n in A254105: if A234017(n) = 0, then a(n) = 0, otherwise a(n) = 1 + a(A234017(n)).

Offset 1, canonical program `A254110.P14785946217750073186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A254110 (n : ℕ) : ℤ :=
  A254110.P14785946217750073186.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A254110.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254145.P1687355752389577353

`A254144(n)+A001554(n)`
-/

namespace A254145.P1687355752389577353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254144 n + A001554 n

end

end A254145.P1687355752389577353

noncomputable section

/-- A254145: a(n) = 1*7^n + 2*6^n + 3*5^n + 4*4^n + 5*3^n + 6*2^n + 7*1^n.

Offset 0, canonical program `A254145.P1687355752389577353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A254145 (n : ℕ) : ℤ :=
  A254145.P1687355752389577353.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A254145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254282.P10242504731374827750

`3^n*A025748(n+1)`
-/

namespace A254282.P10242504731374827750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A025748 (n + 1)

end

end A254282.P10242504731374827750

noncomputable section

/-- A254282: Expansion of (1 - (1 - 27*x)^(1/3)) / (9*x).

Offset 0, canonical program `A254282.P10242504731374827750`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025748, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A254282 (n : ℕ) : ℤ :=
  A254282.P10242504731374827750.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025748, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A254282.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A254399.P2182745436888946370

`A220362(n+1)-A164267(n)`
-/

namespace A254399.P2182745436888946370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220362 (n + 1) - A164267 n

end

end A254399.P2182745436888946370

noncomputable section

/-- A254399: A Fibonacci sum: a(n) = Sum_{j=0..n-1} F(j)^2*F(2*n-j), in which the F's are the Fibonacci numbers.

Offset 1, canonical program `A254399.P2182745436888946370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A254399 (n : ℕ) : ℤ :=
  A254399.P2182745436888946370.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A254399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254443.P11446107568859895036

`2*A106521(n+1)-1`
-/

namespace A254443.P11446107568859895036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A106521 (n + 1) - 1

end

end A254443.P11446107568859895036

noncomputable section

/-- A254443: Numbers n such that T(n) + T(n+1) + ... + T(n+21) is a square, where T(m) = A000217(m) is the m-th triangular number.

Offset 1, canonical program `A254443.P11446107568859895036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A254443 (n : ℕ) : ℤ :=
  A254443.P11446107568859895036.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A254443.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254522.P18432962942992038742

`A166920(n)/gcd(n+1, A166920(n))`
-/

namespace A254522.P18432962942992038742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166920 n : ℚ) / (Int.gcd (n + 1 : ℤ) (A166920 n) : ℚ)

end

end A254522.P18432962942992038742

noncomputable section

/-- A254522: Numerators of (2^n - 1 + (-1)^n)/(2*n), n > 0.

Offset 1, canonical program `A254522.P18432962942992038742`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A254522 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A254522.P18432962942992038742.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A254522.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254675.P15256847148252224553

`∑[A001091(n)*A010684(n)]`
-/

namespace A254675.P15256847148252224553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001091 n * A010684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254675.P15256847148252224553

noncomputable section

/-- A254675: Indices of centered triangular numbers (A005448) which are also heptagonal numbers (A000566).

Offset 1, canonical program `A254675.P15256847148252224553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A254675 (n : ℕ) : ℤ :=
  A254675.P15256847148252224553.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A254675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254708.P15475653326016787145

`A266755(n)+A254707(n)`
-/

namespace A254708.P15475653326016787145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n + A254707 n

end

end A254708.P15475653326016787145

noncomputable section

/-- A254708: Expansion of (1 + 2*x^2) / (1 - 2*x^2 - x^3 + 2*x^5 + 2*x^6 - x^8 - 2*x^9 + x^11) in powers of x.

Offset 0, canonical program `A254708.P15475653326016787145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254708 (n : ℕ) : ℤ :=
  A254708.P15475653326016787145.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A254708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A254884.P9225383241413135283

`(A099925(n)-1)*A000045(n)`
-/

namespace A254884.P9225383241413135283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A099925 n - 1) * A000045 n

end

end A254884.P9225383241413135283

noncomputable section

/-- A254884: a(n) = Fibonacci(2*n) + ((-1)^n-1)*Fibonacci(n).

Offset 0, canonical program `A254884.P9225383241413135283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A254884 (n : ℕ) : ℤ :=
  A254884.P9225383241413135283.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A254884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255109.P13602261014294267061

`A000217(2*(n+2))+A000574(n+4)+A000217(n+1)`
-/

namespace A255109.P13602261014294267061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * (n + 2)) + (A000574 (n + 4) + A000217 (n + 1))

end

end A255109.P13602261014294267061

noncomputable section

/-- A255109: Number of length n+2 0..2 arrays with at most one downstep in every n consecutive neighbor pairs.

Offset 1, canonical program `A255109.P13602261014294267061`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A255109 (n : ℕ) : ℤ :=
  A255109.P13602261014294267061.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A255109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255179.P5015956987194778166

`Δ[record[Δ[A049472(n)^9]]]`
-/

namespace A255179.P5015956987194778166
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 n ^ 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255179.P5015956987194778166

noncomputable section

/-- A255179: Second differences of ninth powers (A001017).

Offset 0, canonical program `A255179.P5015956987194778166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7071 terms. -/
def A255179 (n : ℕ) : ℤ :=
  A255179.P5015956987194778166.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7071 terms. -/
def A255179.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255223.P5524920262234694279

`A255222(n+1)+9`
-/

namespace A255223.P5524920262234694279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255222 (n + 1) + 9

end

end A255223.P5524920262234694279

noncomputable section

/-- A255223: Number of (n+2)X(3+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 and no antidiagonal sum 0 and no row sum 2 and no column sum 2.

Offset 1, canonical program `A255223.P5524920262234694279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A255223 (n : ℕ) : ℤ :=
  A255223.P5524920262234694279.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 596 terms. -/
def A255223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255347.P15894743462553089016

`n-A127365(∑[n+1]²%(n+2))`
-/

namespace A255347.P15894743462553089016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A127365 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 % (n + 2))

end

end A255347.P15894743462553089016

noncomputable section

/-- A255347: a(n) = n * (1 - (-1)^(n/4) / 4) if n divisible by 4, a(n) = n otherwise.

Offset 0, canonical program `A255347.P15894743462553089016`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255347 (n : ℕ) : ℤ :=
  A255347.P15894743462553089016.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255368.P5363430774879013215

`A062157(n)*A186101(n)`
-/

namespace A255368.P5363430774879013215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A186101 n

end

end A255368.P5363430774879013215

noncomputable section

/-- A255368: a(n) = -(-1)^n * 2 * n / 3 if n divisible by 3, a(n) = -(-1)^n * n otherwise.

Offset 0, canonical program `A255368.P5363430774879013215`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255368 (n : ℕ) : ℤ :=
  A255368.P5363430774879013215.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255384.P8599142125991467028

`A074373(n+1)-A005843(n+1)`
-/

namespace A255384.P8599142125991467028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074373 (n + 1) - A005843 (n + 1)

end

end A255384.P8599142125991467028

noncomputable section

/-- A255384: a(n) = sopfr(n)^2 - 2n, where sopfr(n) is the sum of the prime factors of n with multiplicity.

Offset 1, canonical program `A255384.P8599142125991467028`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074373, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255384 (n : ℕ) : ℤ :=
  A255384.P8599142125991467028.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074373, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255384.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A255490.P13741243257840323374

`xor(A120462(n), A133190(n))`
-/

namespace A255490.P13741243257840323374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A120462 n) (A133190 n)

end

end A255490.P13741243257840323374

noncomputable section

/-- A255490: The subsequence A247649(2^n-1).

Offset 0, canonical program `A255490.P13741243257840323374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A255490 (n : ℕ) : ℤ :=
  A255490.P13741243257840323374.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A255490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255563.P4786817755465883835

`A316631(n)-A237420(n)`
-/

namespace A255563.P4786817755465883835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316631 n - A237420 n

end

end A255563.P4786817755465883835

noncomputable section

/-- A255563: a(n) = -3 * n/4 if n divisible by 4, a(n) = -(-1)^n * n otherwise.

Offset 0, canonical program `A255563.P4786817755465883835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255563 (n : ℕ) : ℤ :=
  A255563.P4786817755465883835.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255748.P2587341688457865238

`2*A063915(n)-A000217(n+1)`
-/

namespace A255748.P2587341688457865238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063915 n - A000217 (n + 1)

end

end A255748.P2587341688457865238

noncomputable section

/-- A255748: Total number of ON states after n generations of cellular automaton based on triangles in a 60-degree wedge (see Comments lines for definition).

Offset 1, canonical program `A255748.P2587341688457865238`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063915, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255748 (n : ℕ) : ℤ :=
  A255748.P2587341688457865238.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063915, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A255748.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A255873.P6927099802111548466

`A000030(ceil(A017317(n)/7))`
-/

namespace A255873.P6927099802111548466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 ⌈(A017317 n : ℚ) / 7⌉.toNat

end

end A255873.P6927099802111548466

noncomputable section

/-- A255873: The first nonzero digit of n/7.

Offset 1, canonical program `A255873.P6927099802111548466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7000 terms. -/
def A255873 (n : ℕ) : ℤ :=
  A255873.P6927099802111548466.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7000 terms. -/
def A255873.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256007.P10036314069292314353

`record[A019274(floor(n/3)+1)+A010872(n)]`
-/

namespace A256007.P10036314069292314353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019274 (⌊(n : ℚ) / 3⌋ + 1).toNat + A010872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A256007.P10036314069292314353

noncomputable section

/-- A256007: Numbers k satisfying |k + 1 - 2F| <= 1 for some positive Fibonacci number F.

Offset 0, canonical program `A256007.P10036314069292314353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A256007 (n : ℕ) : ℤ :=
  A256007.P10036314069292314353.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A256007.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256162.P9949668565681264228

`A103456(∑[A000035(n)])-A000035(n)`
-/

namespace A256162.P9949668565681264228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103456 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A000035 n

end

end A256162.P9949668565681264228

noncomputable section

/-- A256162: Positive integers a(n) such that number of digits in decimal expansion of a(n)^a(n) is divisible by a(n).

Offset 1, canonical program `A256162.P9949668565681264228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A256162 (n : ℕ) : ℤ :=
  A256162.P9949668565681264228.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A256162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256173.P6957340179493702245

`eq[0, A053186(ceil(sqrt(n))²-n)]`
-/

namespace A256173.P6957340179493702245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (⌈Real.sqrt (n : ℝ)⌉ ^ 2 - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256173.P6957340179493702245

noncomputable section

/-- A256173: Numbers k such that ceiling(sqrt(k))^2 - k is a square.

Offset 1, canonical program `A256173.P6957340179493702245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3254 terms. -/
def A256173 (n : ℕ) : ℤ :=
  (A256173.P6957340179493702245.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3254 terms. -/
def A256173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256251.P8097163011885418650

`A008574(A006257(n))`
-/

namespace A256251.P8097163011885418650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A006257 n).toNat

end

end A256251.P8097163011885418650

noncomputable section

/-- A256251: First differences of A256250.

Offset 0, canonical program `A256251.P8097163011885418650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256251 (n : ℕ) : ℤ :=
  A256251.P8097163011885418650.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256258.P6821656048221745013

`2*A006257(n)+A006257(n+1)`
-/

namespace A256258.P6821656048221745013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006257 n + A006257 (n + 1)

end

end A256258.P6821656048221745013

noncomputable section

/-- A256258: Triangle read by rows in which the row lengths are the terms of A011782 and row n lists the terms of A016969 except for the right border which gives the positive terms of A000225.

Offset 1, canonical program `A256258.P6821656048221745013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A256258 (n : ℕ) : ℤ :=
  A256258.P6821656048221745013.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A256258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256272.P15422099176850393046

`∑{d}[n+1, A000129(#+1)]`
-/

namespace A256272.P15422099176850393046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000129 (d + 1)

end

end A256272.P15422099176850393046

noncomputable section

/-- A256272: G.f.: Sum_{n>=1} Pell(n+1) * x^n / (1 - x^n), where Pell(n) = A000129(n).

Offset 1, canonical program `A256272.P15422099176850393046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A256272 (n : ℕ) : ℤ :=
  A256272.P15422099176850393046.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A256272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256281.P16115446406874101517

`∑{d}[n+1, A000129(#)]`
-/

namespace A256281.P16115446406874101517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000129 d

end

end A256281.P16115446406874101517

noncomputable section

/-- A256281: Inverse Moebius transform of Pell numbers.

Offset 1, canonical program `A256281.P16115446406874101517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A256281 (n : ℕ) : ℤ :=
  A256281.P16115446406874101517.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A256281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256327.P1381989048257015043

`A026810(5*n)`
-/

namespace A256327.P1381989048257015043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (5 * n)

end

end A256327.P1381989048257015043

noncomputable section

/-- A256327: Number of partitions of 5n into exactly 4 parts.

Offset 0, canonical program `A256327.P1381989048257015043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2001 terms. -/
def A256327 (n : ℕ) : ℤ :=
  A256327.P1381989048257015043.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2001 terms. -/
def A256327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256329.P16039791981313738038

`A026810(7*n)`
-/

namespace A256329.P16039791981313738038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (7 * n)

end

end A256329.P16039791981313738038

noncomputable section

/-- A256329: Number of partitions of 7n into exactly 4 parts.

Offset 0, canonical program `A256329.P16039791981313738038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A256329 (n : ℕ) : ℤ :=
  A256329.P16039791981313738038.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1429 terms. -/
def A256329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256455.P18138939821085766421

`eq[1, (A000203(2*n+1)-(n+4))%2]`
-/

namespace A256455.P18138939821085766421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (2 * n + 1) - (n + 4 : ℤ)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A256455.P18138939821085766421

noncomputable section

/-- A256455: Numbers that appear at least once in a Pythagorean triple (a, b, b+1).

Offset 1, canonical program `A256455.P18138939821085766421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256455 (n : ℕ) : ℤ :=
  (A256455.P18138939821085766421.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256556.P6610952996468744969

`(n+1)*A059995(n)^A010879(n+1)`
-/

namespace A256556.P6610952996468744969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (A059995 n : ℚ) ^ (A010879 (n + 1) : ℤ)

end

end A256556.P6610952996468744969

noncomputable section

/-- A256556: If n = 10k+m (0 <= m <= 9) then a(n) = n*k^m.

Offset 1, canonical program `A256556.P6610952996468744969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A256556 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A256556.P6610952996468744969.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A256556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256689.P3752054960592622050

`∏{e}[n+1, A067623(#)]`
-/

namespace A256689.P3752054960592622050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A067623 (Nat.factorization (f1 n) p)

end

end A256689.P3752054960592622050

noncomputable section

/-- A256689: From third root of Riemann zeta function: form Dirichlet series Sum b(n)/n^x whose cube is zeta function; sequence gives denominator of b(n).

Offset 1, canonical program `A256689.P3752054960592622050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256689 (n : ℕ) : ℤ :=
  A256689.P3752054960592622050.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256689.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256691.P2977468991779873035

`∏{e}[n+1, A088802(#)]`
-/

namespace A256691.P2977468991779873035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A088802 (Nat.factorization (f1 n) p)

end

end A256691.P2977468991779873035

noncomputable section

/-- A256691: From fourth root of Riemann zeta function: form Dirichlet series Sum b(n)/n^x whose fourth power is zeta function; sequence gives denominator of b(n).

Offset 1, canonical program `A256691.P2977468991779873035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256691 (n : ℕ) : ℤ :=
  A256691.P2977468991779873035.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256691.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257019.P1728863138039502506

`eq[3, a(A055087(n))+1]` with `a(0)=1`
-/

namespace A257019.P1728863138039502506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (A055087 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257019.P1728863138039502506

noncomputable section

/-- A257019: Numbers whose quarter-square representation consists of two terms.

Offset 1, canonical program `A257019.P1728863138039502506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A257019 (n : ℕ) : ℤ :=
  (A257019.P1728863138039502506.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A257019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257023.P5149314278277772350

`∏{e}[2*a(A055087(n)), #]` with `a(0)=1`
-/

namespace A257023.P5149314278277772350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (A055087 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A257023.P5149314278277772350

noncomputable section

/-- A257023: Number of terms in the quarter-sum representation of n.

Offset 0, canonical program `A257023.P5149314278277772350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A257023 (n : ℕ) : ℤ :=
  (A257023.P5149314278277772350.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A257023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257241.P17121399944086540020

`C(A000267(n), A055087(n)+1)`
-/

namespace A257241.P17121399944086540020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000267 n).toNat (A055087 n + 1).toNat

end

end A257241.P17121399944086540020

noncomputable section

/-- A257241: Irregular triangle read by rows: Stifel's version of the arithmetical triangle.

Offset 1, canonical program `A257241.P17121399944086540020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5700 terms. -/
def A257241 (n : ℕ) : ℤ :=
  (A257241.P17121399944086540020.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5700 terms. -/
def A257241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257292.P7420582518654477351

`2*comp[∑[A000129(n)]]+1`
-/

namespace A257292.P7420582518654477351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A257292.P7420582518654477351

noncomputable section

/-- A257292: Numbers whose square can be written as the sum of two consecutive nonsquares.

Offset 1, canonical program `A257292.P7420582518654477351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257292 (n : ℕ) : ℤ :=
  (A257292.P7420582518654477351.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A257292.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257708.P17679834171026623728

`A154152(n+3)-12`
-/

namespace A257708.P17679834171026623728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154152 (n + 3) - 12

end

end A257708.P17679834171026623728

noncomputable section

/-- A257708: Numbers n such that T(n) + T(n+1) + ... + T(n+24) is a square, where T = A000217 (triangular numbers).

Offset 1, canonical program `A257708.P17679834171026623728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 258 terms. -/
def A257708 (n : ℕ) : ℤ :=
  A257708.P17679834171026623728.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 258 terms. -/
def A257708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258011.P1023716619731033103

`or(1, 3*A047368(n+1))`
-/

namespace A258011.P1023716619731033103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (3 * A047368 (n + 1))

end

end A258011.P1023716619731033103

noncomputable section

/-- A258011: Numbers remaining after the third stage of Lucky sieve.

Offset 1, canonical program `A258011.P1023716619731033103`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258011 (n : ℕ) : ℤ :=
  A258011.P1023716619731033103.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258056.P1744994457823559617

`A006370(a(n-1))` with `a(0)=75`
-/

namespace A258056.P1744994457823559617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [75] fun n a =>
  A006370 (a (n - 1)).toNat

end

end A258056.P1744994457823559617

noncomputable section

/-- A258056: 3x + 1 sequence starting at 75.

Offset 0, canonical program `A258056.P1744994457823559617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258056 (n : ℕ) : ℤ :=
  A258056.P1744994457823559617.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258098.P2093917202914971256

`A006370(a(n-1))` with `a(0)=79`
-/

namespace A258098.P2093917202914971256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [79] fun n a =>
  A006370 (a (n - 1)).toNat

end

end A258098.P2093917202914971256

noncomputable section

/-- A258098: 3x + 1 sequence starting at 79.

Offset 0, canonical program `A258098.P2093917202914971256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258098 (n : ℕ) : ℤ :=
  A258098.P2093917202914971256.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258121.P8445638466543193396

`3*A000045(2*n+1)-C(n, n²)`
-/

namespace A258121.P8445638466543193396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000045 (2 * n + 1) - (Nat.choose n (n ^ 2) : ℤ)

end

end A258121.P8445638466543193396

noncomputable section

/-- A258121: Number of vertices of degree n in all Lucas cubes.

Offset 0, canonical program `A258121.P8445638466543193396`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A258121 (n : ℕ) : ℤ :=
  A258121.P8445638466543193396.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A258121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258133.P10619347449612726997

`Δ[A025796(n+1)]`
-/

namespace A258133.P10619347449612726997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258133.P10619347449612726997

noncomputable section

/-- A258133: Expansion of tri-digit zeros interlaced with an arithmetic progression of positive and negative numbers.

Offset 0, canonical program `A258133.P10619347449612726997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A258133 (n : ℕ) : ℤ :=
  A258133.P10619347449612726997.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A258133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258331.P16075809465839770182

`A001158(A000578(n+1))`
-/

namespace A258331.P16075809465839770182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (A000578 (n + 1)).toNat

end

end A258331.P16075809465839770182

noncomputable section

/-- A258331: Sum of the cubes of the divisors of n^3.

Offset 1, canonical program `A258331.P16075809465839770182`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001158, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258331 (n : ℕ) : ℤ :=
  A258331.P16075809465839770182.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001158, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258331.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A258376.P5397532955847838472

`∑[2*A005206(n+1)]-∑[n+1]`
-/

namespace A258376.P5397532955847838472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005206 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A258376.P5397532955847838472

noncomputable section

/-- A258376: Number of edges connecting the subgraph on {1, ..., n} with the complement in the minimal graph on positive natural numbers where degree(n) equals n.

Offset 1, canonical program `A258376.P5397532955847838472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258376 (n : ℕ) : ℤ :=
  A258376.P5397532955847838472.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258663.P13409284266199840843

`A138918(n+1)*2`
-/

namespace A258663.P13409284266199840843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138918 (n + 1) * 2

end

end A258663.P13409284266199840843

noncomputable section

/-- A258663: Numbers n such that 9n-1 is prime.

Offset 1, canonical program `A258663.P13409284266199840843`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258663 (n : ℕ) : ℤ :=
  A258663.P13409284266199840843.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A138918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258663.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A258674.P16251848882729225083

`2^(n+3)*A185790(n+2)`
-/

namespace A258674.P16251848882729225083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 3) : ℤ) * A185790 (n + 2)

end

end A258674.P16251848882729225083

noncomputable section

/-- A258674: Number of (n+2) X (1+2) 0..1 arrays with no 3 x 3 subblock diagonal sum equal to the antidiagonal sum.

Offset 1, canonical program `A258674.P16251848882729225083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A258674 (n : ℕ) : ℤ :=
  A258674.P16251848882729225083.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A258674.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258675.P11136103461247616781

`A185790(n+2)²`
-/

namespace A258675.P11136103461247616781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185790 (n + 2) ^ 2

end

end A258675.P11136103461247616781

noncomputable section

/-- A258675: Number of (n+2) X (2+2) 0..1 arrays with no 3 x 3 subblock diagonal sum equal to the antidiagonal sum.

Offset 1, canonical program `A258675.P11136103461247616781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A258675 (n : ℕ) : ℤ :=
  A258675.P11136103461247616781.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 119 terms. -/
def A258675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258710.P11088519439079196452

`A001006(n)%11`
-/

namespace A258710.P11088519439079196452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001006 n) 11

end

end A258710.P11088519439079196452

noncomputable section

/-- A258710: Motzkin numbers A001006 read mod 11.

Offset 0, canonical program `A258710.P11088519439079196452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A258710 (n : ℕ) : ℤ :=
  A258710.P11088519439079196452.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A258710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258731.P8474192831176115530

`A001919(n+3)+C(n+5, n+2)`
-/

namespace A258731.P8474192831176115530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001919 (n + 3) + (Nat.choose (n + 5) (n + 2) : ℤ)

end

end A258731.P8474192831176115530

noncomputable section

/-- A258731: Number of length n+1 0..3 arrays with at most one downstep in every n consecutive neighbor pairs.

Offset 1, canonical program `A258731.P8474192831176115530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258731 (n : ℕ) : ℤ :=
  A258731.P8474192831176115530.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258774.P4371369452253390923

`1+A000203(n+1)+A072861(n+1)`
-/

namespace A258774.P4371369452253390923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000203 (n + 1) + A072861 (n + 1)

end

end A258774.P4371369452253390923

noncomputable section

/-- A258774: a(n) = 1 + sigma(n) + sigma(n)^2.

Offset 1, canonical program `A258774.P4371369452253390923`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072861, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258774 (n : ℕ) : ℤ :=
  A258774.P4371369452253390923.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072861, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258774.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A258974.P9822892926536719651

`1+A072861(n+1)`
-/

namespace A258974.P9822892926536719651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A072861 (n + 1)

end

end A258974.P9822892926536719651

noncomputable section

/-- A258974: a(n) = 1 + sigma(n)^2.

Offset 1, canonical program `A258974.P9822892926536719651`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072861, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258974 (n : ℕ) : ℤ :=
  A258974.P9822892926536719651.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072861, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A258974.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259184.P10185442532548937171

`1-A000203(n+1)+A072861(n+1)`
-/

namespace A259184.P10185442532548937171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000203 (n + 1) + A072861 (n + 1)

end

end A259184.P10185442532548937171

noncomputable section

/-- A259184: a(n) = 1 - sigma(n) + sigma(n)^2.

Offset 1, canonical program `A259184.P10185442532548937171`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072861, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259184 (n : ℕ) : ℤ :=
  A259184.P10185442532548937171.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072861, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A259184.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A259190.P13101566552867550762

`p?[A028387(A039653(n))]`
-/

namespace A259190.P13101566552867550762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 (A039653 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A259190.P13101566552867550762

noncomputable section

/-- A259190: Primes of the form sigma(n) + sigma(n)^2 - 1.

Offset 1, canonical program `A259190.P13101566552867550762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A259190 (n : ℕ) : ℤ :=
  A259190.P13101566552867550762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A259190.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259207.P8749124973789222655

`A235800(3*a(n-1))-a(n-1)` with `a(0)=5`
-/

namespace A259207.P8749124973789222655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A235800 (3 * a (n - 1)).toNat - a (n - 1)

end

end A259207.P8749124973789222655

noncomputable section

/-- A259207: 5x + 1 sequence beginning at 5.

Offset 0, canonical program `A259207.P8749124973789222655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259207 (n : ℕ) : ℤ :=
  A259207.P8749124973789222655.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259207.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259215.P17719300614074887301

`∑[A052956(n+1)]+4`
-/

namespace A259215.P17719300614074887301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A259215.P17719300614074887301

noncomputable section

/-- A259215: Number of (n+1) X (1+1) 0..1 arrays with each 2 X 2 subblock having clockwise pattern 0000 0011 or 0101.

Offset 1, canonical program `A259215.P17719300614074887301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A259215 (n : ℕ) : ℤ :=
  A259215.P17719300614074887301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A259215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259280.P5990415043731895464

`round((A075349(n+1)+n+1)/2)`
-/

namespace A259280.P5990415043731895464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A075349 (n + 1) + (n + 1 : ℤ) : ℚ) / 2)

end

end A259280.P5990415043731895464

noncomputable section

/-- A259280: a(n) is the minimal sum of a positive integer sequence of length n with no duplicate substrings of length greater than 1.

Offset 1, canonical program `A259280.P5990415043731895464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259280 (n : ℕ) : ℤ :=
  A259280.P5990415043731895464.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259346.P9858574325233048270

`Δ[A003462(floor(log2(2*n+1)))]`
-/

namespace A259346.P9858574325233048270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (Nat.log 2 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259346.P9858574325233048270

noncomputable section

/-- A259346: If n = 2^k then a(n) = 3^k, otherwise a(n) = 0.

Offset 1, canonical program `A259346.P9858574325233048270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259346 (n : ℕ) : ℤ :=
  A259346.P9858574325233048270.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259346.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259546.P7294937690965014523

`n*A259451(n)`
-/

namespace A259546.P7294937690965014523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A259451 n

end

end A259546.P7294937690965014523

noncomputable section

/-- A259546: a(n) = n^3*Fibonacci(n).

Offset 0, canonical program `A259546.P7294937690965014523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 443 terms. -/
def A259546 (n : ℕ) : ℤ :=
  A259546.P7294937690965014523.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 443 terms. -/
def A259546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259623.P8397012084829598686

`record[A321664(n)+1]`
-/

namespace A259623.P8397012084829598686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321664 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259623.P8397012084829598686

noncomputable section

/-- A259623: Strictly increasing list of F and F + 1, where F = A000045, the Fibonacci numbers.

Offset 1, canonical program `A259623.P8397012084829598686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 956 terms. -/
def A259623 (n : ℕ) : ℤ :=
  A259623.P8397012084829598686.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 956 terms. -/
def A259623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259625.P16118554221174948864

`record[A000035(n)+A000032(A008621(n))]-1`
-/

namespace A259625.P16118554221174948864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + A000032 (A008621 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A259625.P16118554221174948864

noncomputable section

/-- A259625: List of numbers L - 1 and L, where L = A000032, the Lucas numbers, sorted into increasing order and duplicates removed.

Offset 1, canonical program `A259625.P16118554221174948864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 955 terms. -/
def A259625 (n : ℕ) : ℤ :=
  A259625.P16118554221174948864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 955 terms. -/
def A259625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259653.P12601177065386633340

`∑[3*a(A083920(n))]` with `a(0)=0, a(1)=1`
-/

namespace A259653.P12601177065386633340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  3 * f1 (A083920 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259653.P12601177065386633340

noncomputable section

/-- A259653: a(0)=0, a(1)=1, a(n) = min{3 a(k) + (3^(n-k)-1)/2, k=0..(n-1)} for n>=2.

Offset 0, canonical program `A259653.P12601177065386633340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259653 (n : ℕ) : ℤ :=
  (A259653.P12601177065386633340.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A259653.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259669.P10561607982313201112

`∑[floor(5^(A123578(n)-1))]`
-/

namespace A259669.P10561607982313201112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 : ℚ) ^ (A123578 n - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259669.P10561607982313201112

noncomputable section

/-- A259669: a(0)=0, a(1)=1, a(n) = min{5 a(k) + (5^(n-k)-1)/4, k=0..(n-1)} for n>=2.

Offset 0, canonical program `A259669.P10561607982313201112`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A259669 (n : ℕ) : ℤ :=
  A259669.P10561607982313201112.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A259669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259709.P9823627250390288999

`A000129(n+2)-A045925(n+2)`
-/

namespace A259709.P9823627250390288999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 2) - A045925 (n + 2)

end

end A259709.P9823627250390288999

noncomputable section

/-- A259709: a(n) = A259708(n,n-1).

Offset 1, canonical program `A259709.P9823627250390288999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A259709 (n : ℕ) : ℤ :=
  A259709.P9823627250390288999.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A259709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259852.P5187732436782759166

`A014477(n)/gcd(A000108(n), A014477(n))`
-/

namespace A259852.P5187732436782759166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014477 n : ℚ) / (Int.gcd (A000108 n) (A014477 n) : ℚ)

end

end A259852.P5187732436782759166

noncomputable section

/-- A259852: Numerators of the terms of Lehmer's series S_2(2), where S_k(x) = Sum_{n>=1} n^k*x^n/binomial(2*n, n).

Offset 1, canonical program `A259852.P5187732436782759166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A259852 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A259852.P5187732436782759166.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A259852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259861.P7990060494959987818

`round((sqrt(2)+2)*a(n-1))-A259860(n)` with `a(0)=2`
-/

namespace A259861.P7990060494959987818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 2) * (a (n - 1) : ℝ)) - A259860 n

end

end A259861.P7990060494959987818

noncomputable section

/-- A259861: a(n+8)+34*a(n+4)+a(n)=0 with a(0)-a(7) as shown.

Offset 0, canonical program `A259861.P7990060494959987818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A259861 (n : ℕ) : ℤ :=
  A259861.P7990060494959987818.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A259861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A259969.P6346311147704205363

`n*Δ[A007307(2*n)]`
-/

namespace A259969.P6346311147704205363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007307 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A259969.P6346311147704205363

noncomputable section

/-- A259969: a(n) = n*A259968(n).

Offset 0, canonical program `A259969.P6346311147704205363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 400 terms. -/
def A259969 (n : ℕ) : ℤ :=
  A259969.P6346311147704205363.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 400 terms. -/
def A259969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260022.P9051072500523275687

`A006921(2*n)`
-/

namespace A260022.P9051072500523275687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006921 (2 * n)

end

end A260022.P9051072500523275687

noncomputable section

/-- A260022: A bisection of A006921.

Offset 0, canonical program `A260022.P9051072500523275687`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006921, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260022 (n : ℕ) : ℤ :=
  A260022.P9051072500523275687.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006921, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260022.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A260090.P12332897358441787934

`a(n-1)+n+1-A103469(n-1)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`
-/

namespace A260090.P12332897358441787934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8] fun n a =>
  a (n - 1) + ((n + 1 : ℤ) - A103469 (n - 1))

end

end A260090.P12332897358441787934

noncomputable section

/-- A260090: Maximum number of kings on an n X n chessboard such that no king attacks more than one other king.

Offset 1, canonical program `A260090.P12332897358441787934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260090 (n : ℕ) : ℤ :=
  A260090.P12332897358441787934.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260220.P2792250201049167754

`floor(A055524(n+3)/4)`
-/

namespace A260220.P2792250201049167754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055524 (n + 3) : ℚ) / 4⌋

end

end A260220.P2792250201049167754

noncomputable section

/-- A260220: Number of symmetry-allowed, linearly-independent terms at n-th order in the expansion of T1 x t1 rovibrational perturbation matrix H(Jx,Jy,Jz).

Offset 0, canonical program `A260220.P2792250201049167754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260220 (n : ℕ) : ℤ :=
  A260220.P2792250201049167754.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260222.P15551687746413107937

`gcd(n+1, A002752(n+1))`
-/

namespace A260222.P15551687746413107937
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A002752 (n + 1))

end

end A260222.P15551687746413107937

noncomputable section

/-- A260222: a(n)=gcd(n,F(n-1)), where F(n) is the n-th Fibonacci number.

Offset 1, canonical program `A260222.P15551687746413107937`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260222 (n : ℕ) : ℤ :=
  (A260222.P15551687746413107937.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A260222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260489.P15651954897891413003

`3*n-A260488(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A260489.P15651954897891413003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A260488 n

end

end A260489.P15651954897891413003

noncomputable section

/-- A260489: a(n) = 3n - A260488(n).

Offset 0, canonical program `A260489.P15651954897891413003`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A260488, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260489 (n : ℕ) : ℤ :=
  A260489.P15651954897891413003.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A260488, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A260489.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A260577.P8221833800038063480

`lt[A032741(A032741(n)+1+n), A032741(n)]`
-/

namespace A260577.P8221833800038063480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A032741 n + 1 + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A260577.P8221833800038063480

noncomputable section

/-- A260577: Numbers n for which d(n+d(n)) < d(n), where d(n) is the number of divisors of n.

Offset 1, canonical program `A260577.P8221833800038063480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A260577 (n : ℕ) : ℤ :=
  (A260577.P8221833800038063480.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A260577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260581.P3815776299478991622

`lt[A032741(n), A032741(A032741(n)+1+n)]`
-/

namespace A260581.P3815776299478991622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A032741 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A260581.P3815776299478991622

noncomputable section

/-- A260581: Numbers n for which d(n+d(n)) > d(n), where d(n) is the number of divisors of n.

Offset 1, canonical program `A260581.P3815776299478991622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A260581 (n : ℕ) : ℤ :=
  (A260581.P3815776299478991622.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A260581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260611.P9673076266905370187

`A126868(A000040(n+1))`
-/

namespace A260611.P9673076266905370187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126868 (A000040 (n + 1)).toNat

end

end A260611.P9673076266905370187

noncomputable section

/-- A260611: a(n) = superfactorial(prime(n)-1) mod prime(n).

Offset 1, canonical program `A260611.P9673076266905370187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A260611 (n : ℕ) : ℤ :=
  A260611.P9673076266905370187.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A260611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260715.P15318488099808226296

`A260714(A047306(n+2))`
-/

namespace A260715.P15318488099808226296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260714 (A047306 (n + 2)).toNat

end

end A260715.P15318488099808226296

noncomputable section

/-- A260715: Row 5 of A260717.

Offset 1, canonical program `A260715.P15318488099808226296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8571 terms. -/
def A260715 (n : ℕ) : ℤ :=
  A260715.P15318488099808226296.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8571 terms. -/
def A260715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261011.P14013190716216031043

`record[(1-A000330(A074279(n+1)-1)+n)*A074279(n+1)]`
-/

namespace A261011.P14013190716216031043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000330 (A074279 (n + 1) - 1).toNat + (n : ℤ)) * A074279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A261011.P14013190716216031043

noncomputable section

/-- A261011: Positive integers n such that ceiling(n^(1/3)) divides n.

Offset 1, canonical program `A261011.P14013190716216031043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A261011 (n : ℕ) : ℤ :=
  A261011.P14013190716216031043.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A261011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261441.P385757714479173947

`∑[A054405(2*n)-A000930(n+2)]`
-/

namespace A261441.P385757714479173947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054405 (2 * n) - A000930 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A261441.P385757714479173947

noncomputable section

/-- A261441: Number of binary strings of length n+3 such that the smallest number whose binary representation is not visible in the string is 5.

Offset 0, canonical program `A261441.P385757714479173947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 407 terms. -/
def A261441 (n : ℕ) : ℤ :=
  A261441.P385757714479173947.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 407 terms. -/
def A261441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261469.P1821801578246138474

`A140461(n+1)%A000040(n+1)`
-/

namespace A261469.P1821801578246138474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140461 (n + 1)) (A000040 (n + 1))

end

end A261469.P1821801578246138474

noncomputable section

/-- A261469: a(n) = prime(n+3) mod prime(n).

Offset 1, canonical program `A261469.P1821801578246138474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A261469 (n : ℕ) : ℤ :=
  A261469.P1821801578246138474.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A261469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A261694.P3062138607290146688

`A167129(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A261694.P3062138607290146688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A167129 (a (n - 1) + a (n - 2)).toNat

end

end A261694.P3062138607290146688

noncomputable section

/-- A261694: a(n) = Fibonacci(n) mod 21.

Offset 0, canonical program `A261694.P3062138607290146688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A261694 (n : ℕ) : ℤ :=
  A261694.P3062138607290146688.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A261694.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262084.P5243540133609715139

`eq[A016035(n+2), A016035(n+8)]+2`
-/

namespace A262084.P5243540133609715139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016035 (n + 8)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A262084.P5243540133609715139

noncomputable section

/-- A262084: Numbers m that satisfy the equation phi(m + 6) = phi(m) + 6 where phi(m) = A000010(m) is Euler's totient function.

Offset 1, canonical program `A262084.P5243540133609715139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A262084 (n : ℕ) : ℤ :=
  (A262084.P5243540133609715139.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 486 terms. -/
def A262084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262285.P681803494404622073

`p?[A004759(n+1)]`
-/

namespace A262285.P681803494404622073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A262285.P681803494404622073

noncomputable section

/-- A262285: Primes whose binary expansion begins 111.

Offset 1, canonical program `A262285.P681803494404622073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1021 terms. -/
def A262285 (n : ℕ) : ℤ :=
  A262285.P681803494404622073.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1021 terms. -/
def A262285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262287.P12190766233230351271

`p?[A004758(n+1)]`
-/

namespace A262287.P12190766233230351271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A262287.P12190766233230351271

noncomputable section

/-- A262287: Primes whose binary expansion begins 110.

Offset 1, canonical program `A262287.P12190766233230351271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1033 terms. -/
def A262287 (n : ℕ) : ℤ :=
  A262287.P12190766233230351271.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1033 terms. -/
def A262287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262334.P8980470518424327943

`A262333(n+1)²`
-/

namespace A262334.P8980470518424327943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262333 (n + 1) ^ 2

end

end A262334.P8980470518424327943

noncomputable section

/-- A262334: Number of (n+3)X(2+3) 0..1 arrays with each row and column divisible by 9, read as a binary number with top and left being the most significant bits.

Offset 1, canonical program `A262334.P8980470518424327943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A262334 (n : ℕ) : ℤ :=
  A262334.P8980470518424327943.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A262334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262335.P10862925138812688300

`A262333(n+1)^3`
-/

namespace A262335.P10862925138812688300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262333 (n + 1) ^ 3

end

end A262335.P10862925138812688300

noncomputable section

/-- A262335: Number of (n+3)X(3+3) 0..1 arrays with each row and column divisible by 9, read as a binary number with top and left being the most significant bits.

Offset 1, canonical program `A262335.P10862925138812688300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A262335 (n : ℕ) : ℤ :=
  A262335.P10862925138812688300.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A262335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262438.P5441968165087064476

`A110591(floor(sqrt(n)))`
-/

namespace A262438.P5441968165087064476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (Nat.sqrt n)

end

end A262438.P5441968165087064476

noncomputable section

/-- A262438: Number of digits of hexadecimal representation of n.

Offset 0, canonical program `A262438.P5441968165087064476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262438 (n : ℕ) : ℤ :=
  A262438.P5441968165087064476.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262439.P16832177270364139549

`A000720(∑[n+1]+1)`
-/

namespace A262439.P16832177270364139549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A262439.P16832177270364139549

noncomputable section

/-- A262439: Number of primes not exceeding 1+n*(n+1)/2.

Offset 1, canonical program `A262439.P16832177270364139549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 446 terms. -/
def A262439 (n : ℕ) : ℤ :=
  A262439.P16832177270364139549.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 446 terms. -/
def A262439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262617.P10379441659377153766

`6*and(-n, A003817(n))`
-/

namespace A262617.P10379441659377153766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * Int.land (-(n : ℤ)) (A003817 n)

end

end A262617.P10379441659377153766

noncomputable section

/-- A262617: First differences of A256266.

Offset 0, canonical program `A262617.P10379441659377153766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262617 (n : ℕ) : ℤ :=
  A262617.P10379441659377153766.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262744.P6698205093612242273

`∑[A000040(n+1)]%∑[n+1]`
-/

namespace A262744.P6698205093612242273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A262744.P6698205093612242273

noncomputable section

/-- A262744: Remainder when sum of first n primes is divided by n-th triangular number.

Offset 1, canonical program `A262744.P6698205093612242273`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262744 (n : ℕ) : ℤ :=
  A262744.P6698205093612242273.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262777.P1344275269352665406

`10^(n+1)-A000040(n+1)`
-/

namespace A262777.P1344275269352665406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 1) : ℤ) - A000040 (n + 1)

end

end A262777.P1344275269352665406

noncomputable section

/-- A262777: a(n) = 10^n - prime(n).

Offset 1, canonical program `A262777.P1344275269352665406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A262777 (n : ℕ) : ℤ :=
  A262777.P1344275269352665406.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A262777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262804.P8094052880299619454

`C(A231821(n+1), 2)-A231821(n+1)`
-/

namespace A262804.P8094052880299619454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A231821 (n + 1)).toNat 2 : ℤ) - A231821 (n + 1)

end

end A262804.P8094052880299619454

noncomputable section

/-- A262804: a(n) = 2*b(n), where b(n) is defined by the condition that Product_{d|n} (b(d) + 1) = 1, n > 1 and b(1) = 1.

Offset 1, canonical program `A262804.P8094052880299619454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262804 (n : ℕ) : ℤ :=
  A262804.P8094052880299619454.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A262804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262925.P5492214890831276794

`record[∑[A309336(n)]*A000035(n)]`
-/

namespace A262925.P5492214890831276794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309336 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A262925.P5492214890831276794

noncomputable section

/-- A262925: Sum of n consecutive fourth powers starting with n^4.

Offset 0, canonical program `A262925.P5492214890831276794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A262925 (n : ℕ) : ℤ :=
  A262925.P5492214890831276794.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A262925.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263013.P2235530556352225671

`(-1)^n*A130716(n)`
-/

namespace A263013.P2235530556352225671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A130716 n

end

end A263013.P2235530556352225671

noncomputable section

/-- A263013: a(0) = -a(1) = a(2) = 1, a(n) = 0 for n>2.

Offset 0, canonical program `A263013.P2235530556352225671`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A263013 (n : ℕ) : ℤ :=
  A263013.P2235530556352225671.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A263013.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A263101.P4527818961469983192

`A000045(A000045(n+1)%(4*(n+1)))%A000045(n+1)`
-/

namespace A263101.P4527818961469983192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (Int.tmod (A000045 (n + 1)) (4 * (n + 1) : ℤ)).toNat) (A000045 (n + 1))

end

end A263101.P4527818961469983192

noncomputable section

/-- A263101: a(n) = F(F(n)) mod F(n), where F = Fibonacci = A000045.

Offset 1, canonical program `A263101.P4527818961469983192`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A263101 (n : ℕ) : ℤ :=
  A263101.P4527818961469983192.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. -/
def A263101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263134.P7692546386271083285

`∑[A045721(n)]`
-/

namespace A263134.P7692546386271083285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045721 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263134.P7692546386271083285

noncomputable section

/-- A263134: a(n) = Sum_{k=0..n} binomial(3*k+1,k).

Offset 0, canonical program `A263134.P7692546386271083285`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A263134 (n : ℕ) : ℤ :=
  A263134.P7692546386271083285.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A263134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263309.P14419132455627372225

`floor(p?[floor(A142102(n+1)/6)]/6)`
-/

namespace A263309.P14419132455627372225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A142102 (n + 1) : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 6⌋

end

end A263309.P14419132455627372225

noncomputable section

/-- A263309: Numbers k such that p=6k+1 and q=6k+1 are primes.

Offset 1, canonical program `A263309.P14419132455627372225`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2327 terms. -/
def A263309 (n : ℕ) : ℤ :=
  A263309.P14419132455627372225.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2327 terms. -/
def A263309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263366.P7366423946879105829

`A131532(n)+A077947(n)`
-/

namespace A263366.P7366423946879105829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131532 n + A077947 n

end

end A263366.P7366423946879105829

noncomputable section

/-- A263366: Number of (n+1) X (1+1) 0..2 arrays with each row and column divisible by 7, read as a base-3 number with top and left being the most significant digits.

Offset 1, canonical program `A263366.P7366423946879105829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A263366 (n : ℕ) : ℤ :=
  A263366.P7366423946879105829.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A263366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263385.P7923351982636310389

`record[A033305(n)²]`
-/

namespace A263385.P7923351982636310389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033305 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A263385.P7923351982636310389

noncomputable section

/-- A263385: Number of (n+1)X(1+1) arrays of permutations of 0..n*1-1 with each element moved a city block distance of exactly 2.

Offset 1, canonical program `A263385.P7923351982636310389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. -/
def A263385 (n : ℕ) : ℤ :=
  A263385.P7923351982636310389.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. -/
def A263385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263420.P4549048011631068532

`Δ[A002525(n+1)]²`
-/

namespace A263420.P4549048011631068532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002525 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A263420.P4549048011631068532

noncomputable section

/-- A263420: Number of n X 2 arrays of permutations of 0..n*2-1 with each element moved a city block distance of 0 or 2.

Offset 1, canonical program `A263420.P4549048011631068532`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A263420 (n : ℕ) : ℤ :=
  A263420.P4549048011631068532.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A263420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263615.P3791299394751044341

`∑[A263614(n+3)]`
-/

namespace A263615.P3791299394751044341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263614 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263615.P3791299394751044341

noncomputable section

/-- A263615: Partial sums of A263614 starting at n=2.

Offset 2, canonical program `A263615.P3791299394751044341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A263615 (n : ℕ) : ℤ :=
  A263615.P3791299394751044341.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A263615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263647.P5082993417999720831

`eq[1, A086892(n+1)]+1`
-/

namespace A263647.P5082993417999720831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086892 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A263647.P5082993417999720831

noncomputable section

/-- A263647: Numbers k such that 2^k-1 and 3^k-1 are coprime.

Offset 1, canonical program `A263647.P5082993417999720831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4089 terms. -/
def A263647 (n : ℕ) : ℤ :=
  (A263647.P5082993417999720831.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4089 terms. -/
def A263647.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263651.P5656912629918934760

`eq[2, A000122(n-floor(sqrt(n))²)]`
-/

namespace A263651.P5656912629918934760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n - Nat.sqrt n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A263651.P5656912629918934760

noncomputable section

/-- A263651: Numbers n such that the difference between n and the largest square less than n is a nonzero square.

Offset 1, canonical program `A263651.P5656912629918934760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3038 terms. -/
def A263651 (n : ℕ) : ℤ :=
  (A263651.P5656912629918934760.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3038 terms. -/
def A263651.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263794.P2113053867351144171

`A004006(floor(n/2)+2)`
-/

namespace A263794.P2113053867351144171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 (⌊(n : ℚ) / 2⌋ + 2).toNat

end

end A263794.P2113053867351144171

noncomputable section

/-- A263794: Number of (n+1) X (3+1) 0..1 arrays with each row and column divisible by 3, read as a binary number with top and left being the most significant bits, and rows and columns lexicographically nonincreasing.

Offset 1, canonical program `A263794.P2113053867351144171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263794 (n : ℕ) : ℤ :=
  A263794.P2113053867351144171.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263837.P8739801485308913635

`lt[A082551(n+1), 1]+1`
-/

namespace A263837.P8739801485308913635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A263837.P8739801485308913635

noncomputable section

/-- A263837: Non-abundant numbers (or nonabundant numbers): complement of A005101; numbers k for which sigma(k) <= 2*k.

Offset 1, canonical program `A263837.P8739801485308913635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263837 (n : ℕ) : ℤ :=
  (A263837.P8739801485308913635.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A263837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263878.P15627308141221611043

`(n+1)*A119282(n)-∑[A119282(n)]`
-/

namespace A263878.P15627308141221611043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A119282 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A263878.P15627308141221611043

noncomputable section

/-- A263878: a(n) = Sum_{k=0..n} (-1)^k*k*Fibonacci(k), where Fibonacci(k) = A000045(k).

Offset 0, canonical program `A263878.P15627308141221611043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. -/
def A263878 (n : ℕ) : ℤ :=
  A263878.P15627308141221611043.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. -/
def A263878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263999.P9182187807932857106

`A020695(n)*A189179(n+2)`
-/

namespace A263999.P9182187807932857106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n * A189179 (n + 2)

end

end A263999.P9182187807932857106

noncomputable section

/-- A263999: Number of (n+1) X (2+1) arrays of permutations of 0..n*3+2 with each element having index change (+-,+-) 0,0 1,2 or 1,0.

Offset 1, canonical program `A263999.P9182187807932857106`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A263999 (n : ℕ) : ℤ :=
  A263999.P9182187807932857106.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 108 terms. -/
def A263999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264004.P5864894677595507346

`A006253(A008619(n+1))*A006253(A008619(n))`
-/

namespace A264004.P5864894677595507346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006253 (A008619 (n + 1)).toNat * A006253 (A008619 n).toNat

end

end A264004.P5864894677595507346

noncomputable section

/-- A264004: Number of (1+1) X (n+1) arrays of permutations of 0..n*2+1 with each element having index change (+-,+-) 0,0 1,2 or 1,0.

Offset 1, canonical program `A264004.P5864894677595507346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A264004 (n : ℕ) : ℤ :=
  A264004.P5864894677595507346.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A264004.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264060.P9620023887964227685

`A006498(n+2)^3`
-/

namespace A264060.P9620023887964227685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (n + 2) ^ 3

end

end A264060.P9620023887964227685

noncomputable section

/-- A264060: Number of (2+1) X (n+1) arrays of permutations of 0..n*3+2 with each element having index change +-(.,.) 0,0 1,2 or 2,-2.

Offset 1, canonical program `A264060.P9620023887964227685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A264060 (n : ℕ) : ℤ :=
  A264060.P9620023887964227685.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A264060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264119.P17883340675905039687

`gcd(∑[n], A001468(A174571(n)))`
-/

namespace A264119.P17883340675905039687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A001468 (A174571 n).toNat)

end

end A264119.P17883340675905039687

noncomputable section

/-- A264119: Look and say for Fibonacci word A003842.

Offset 0, canonical program `A264119.P17883340675905039687`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A264119 (n : ℕ) : ℤ :=
  (A264119.P17883340675905039687.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A264119.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264251.P10869739419922565177

`A005178(n+3)*A020695(n)`
-/

namespace A264251.P10869739419922565177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005178 (n + 3) * A020695 n

end

end A264251.P10869739419922565177

noncomputable section

/-- A264251: Number of (n+1) X (2+1) arrays of permutations of 0..n*3+2 with each element having directed index change 0,1 0,-1 0,2 1,0 or -1,0.

Offset 1, canonical program `A264251.P10869739419922565177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A264251 (n : ℕ) : ℤ :=
  A264251.P10869739419922565177.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. -/
def A264251.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264266.P12471914560901101682

`A020695(n)*A189450(n+2)`
-/

namespace A264266.P12471914560901101682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n * A189450 (n + 2)

end

end A264266.P12471914560901101682

noncomputable section

/-- A264266: Number of (n+1) X (2+1) arrays of permutations of 0..n*3+2 with each element having index change +-(.,.) 0,0 1,0 or 1,2.

Offset 1, canonical program `A264266.P12471914560901101682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A264266 (n : ℕ) : ℤ :=
  A264266.P12471914560901101682.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A264266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264294.P2902851958335365985

`A000045(n+3)*A116201(n+3)`
-/

namespace A264294.P2902851958335365985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 3) * A116201 (n + 3)

end

end A264294.P2902851958335365985

noncomputable section

/-- A264294: Number of (n+1) X (2+1) arrays of permutations of 0..n*3+2 with each element having directed index change 0,1 0,-2 1,0 or -1,0.

Offset 1, canonical program `A264294.P2902851958335365985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. -/
def A264294 (n : ℕ) : ℤ :=
  A264294.P2902851958335365985.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. -/
def A264294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264360.P7618988838713890390

`A002478(n+2)*A189604(n+2)`
-/

namespace A264360.P7618988838713890390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002478 (n + 2) * A189604 (n + 2)

end

end A264360.P7618988838713890390

noncomputable section

/-- A264360: Number of (n+1) X (4+1) arrays of permutations of 0..n*5+4 with each element having directed index change 0,0 0,2 1,0 or -1,-2.

Offset 1, canonical program `A264360.P7618988838713890390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A264360 (n : ℕ) : ℤ :=
  A264360.P7618988838713890390.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A264360.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264365.P12216020434359489775

`A068921(or(1, n+1))*A068921(or(1, n))`
-/

namespace A264365.P12216020434359489775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (Nat.lor 1 (n + 1)) * A068921 (Nat.lor 1 n)

end

end A264365.P12216020434359489775

noncomputable section

/-- A264365: Number of (1+1) X (n+1) arrays of permutations of 0..n*2+1 with each element having directed index change 0,0 0,2 1,0 or -1,-2.

Offset 1, canonical program `A264365.P12216020434359489775`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A264365 (n : ℕ) : ℤ :=
  A264365.P12216020434359489775.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A264365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264388.P1449055974794390158

`lcm(n+1, A208950(n))/(n+1)`
-/

namespace A264388.P1449055974794390158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A208950 n) : ℚ) / (n + 1 : ℚ)

end

end A264388.P1449055974794390158

noncomputable section

/-- A264388: Numerators of binomial(n-1, 2)/(6*n), for n >= 1. Numerators of Dedekind sum s(1, n).

Offset 1, canonical program `A264388.P1449055974794390158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264388 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A264388.P1449055974794390158.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264390.P14092206613407572109

`∑[8*A046897((n+1)²)]`
-/

namespace A264390.P14092206613407572109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A046897 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264390.P14092206613407572109

noncomputable section

/-- A264390: Partial sums of A267326.

Offset 1, canonical program `A264390.P14092206613407572109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A264390 (n : ℕ) : ℤ :=
  A264390.P14092206613407572109.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A264390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264440.P13852650709322467696

`A028310(A070824(n+1))`
-/

namespace A264440.P13852650709322467696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A070824 (n + 1)).toNat

end

end A264440.P13852650709322467696

noncomputable section

/-- A264440: Row lengths of the irregular triangle A137510 (number of divisors d of n with 1 < d < n, or 0 if no such d exists).

Offset 1, canonical program `A264440.P13852650709322467696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264440 (n : ℕ) : ℤ :=
  A264440.P13852650709322467696.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264507.P12627177098187913317

`A080013(2*(n+2))`
-/

namespace A264507.P12627177098187913317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080013 (2 * (n + 2))

end

end A264507.P12627177098187913317

noncomputable section

/-- A264507: Number of (1+1) X (n+1) arrays of permutations of 0..n*2+1 with each element having directed index change -1,1 0,-1 0,1 or 1,0.

Offset 1, canonical program `A264507.P12627177098187913317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A264507 (n : ℕ) : ℤ :=
  A264507.P12627177098187913317.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A264507.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264740.P9929393964355727410

`∑{d}[n+1, #*A088705((n+1)/#)]`
-/

namespace A264740.P9929393964355727410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A088705 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A264740.P9929393964355727410

noncomputable section

/-- A264740: Sum of odd parts of divisors of n.

Offset 1, canonical program `A264740.P9929393964355727410`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264740 (n : ℕ) : ℤ :=
  A264740.P9929393964355727410.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A264740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A264823.P5478907989442003670

`∩[A256917(n+1), a(n-1)+16*n]` with `a(0)=1`
-/

namespace A264823.P5478907989442003670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256917 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 16 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A264823.P5478907989442003670

noncomputable section

/-- A264823: Centered 16-gonal (or hexadecagonal) primes.

Offset 1, canonical program `A264823.P5478907989442003670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3674 terms. -/
def A264823 (n : ℕ) : ℤ :=
  (A264823.P5478907989442003670.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3674 terms. -/
def A264823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265081.P5445107378262976962

`A123865(n+1)+A015246(n)`
-/

namespace A265081.P5445107378262976962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123865 (n + 1) + A015246 n

end

end A265081.P5445107378262976962

noncomputable section

/-- A265081: Row 4 of array in A265080.

Offset 0, canonical program `A265081.P5445107378262976962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A265081 (n : ℕ) : ℤ :=
  A265081.P5445107378262976962.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A265081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265316.P6661828198078736164

`A261691(2*n)`
-/

namespace A265316.P6661828198078736164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261691 (2 * n)

end

end A265316.P6661828198078736164

noncomputable section

/-- A265316: First row of A262057.

Offset 1, canonical program `A265316.P6661828198078736164`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1065 terms. -/
def A265316 (n : ℕ) : ℤ :=
  A265316.P6661828198078736164.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1065 terms. -/
def A265316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265334.P10828477990969834378

`eq[A038712(A038712(n+1)), A099563(n)]`
-/

namespace A265334.P10828477990969834378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (A038712 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099563 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A265334.P10828477990969834378

noncomputable section

/-- A265334: Numbers that are >= k! but < 2*k! for some k; numbers whose factorial base representation (A007623) begins with digit "1".

Offset 1, canonical program `A265334.P10828477990969834378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4024 terms. -/
def A265334 (n : ℕ) : ℤ :=
  (A265334.P10828477990969834378.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4024 terms. -/
def A265334.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265380.P382037928076372946

`or(10*a(n-1), A010121(n+1))` with `a(0)=1`
-/

namespace A265380.P382037928076372946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (10 * a (n - 1)) (A010121 (n + 1))

end

end A265380.P382037928076372946

noncomputable section

/-- A265380: Binary representation of the middle column of the "Rule 158" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A265380.P382037928076372946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A265380 (n : ℕ) : ℤ :=
  A265380.P382037928076372946.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A265380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265400.P16005783905109969964

`A083479(Δ[C(A083479(n), 2)])`
-/

namespace A265400.P16005783905109969964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A083479 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083479 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A265400.P16005783905109969964

noncomputable section

/-- A265400: a(n) = one-based index to the nearest horizontally or vertically adjacent inner neighbor in square-grid spirals, or 0 if n is one of the corner cases A033638.

Offset 1, canonical program `A265400.P16005783905109969964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265400 (n : ℕ) : ℤ :=
  A265400.P16005783905109969964.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265574.P12659384579340783874

`gcd(∑[n+1], A020500(n+2))`
-/

namespace A265574.P12659384579340783874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A020500 (n + 2))

end

end A265574.P12659384579340783874

noncomputable section

/-- A265574: LCM-transform of triangular numbers.

Offset 1, canonical program `A265574.P12659384579340783874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A265574 (n : ℕ) : ℤ :=
  (A265574.P12659384579340783874.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A265574.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265716.P13096751202015572622

`or(n, A261693(n))+n`
-/

namespace A265716.P13096751202015572622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A261693 n) + (n : ℤ)

end

end A265716.P13096751202015572622

noncomputable section

/-- A265716: a(n) = n IMPL (2*n), where IMPL is the bitwise logical implication.

Offset 0, canonical program `A265716.P13096751202015572622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A265716 (n : ℕ) : ℤ :=
  A265716.P13096751202015572622.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A265716.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265725.P12424624890549814316

`2^n-A135491(n)`
-/

namespace A265725.P12424624890549814316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A135491 n

end

end A265725.P12424624890549814316

noncomputable section

/-- A265725: Number of binary strings of length n having at least one run of length at least 4.

Offset 0, canonical program `A265725.P12424624890549814316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A265725 (n : ℕ) : ℤ :=
  A265725.P12424624890549814316.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A265725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265805.P10099621625771147693

`A265804(n)-Δ[A265804(n+1)]`
-/

namespace A265805.P10099621625771147693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265804 n - (f1 (n + 1) - f1 n)

end

end A265805.P10099621625771147693

noncomputable section

/-- A265805: Coefficient of x in minimal polynomial of the continued fraction [1^n,5,1,1,1,...], where 1^n means n ones.

Offset 0, canonical program `A265805.P10099621625771147693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A265805 (n : ℕ) : ℤ :=
  A265805.P10099621625771147693.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A265805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266008.P4738884288798729973

`Δ[A180046(2*n+3)]`
-/

namespace A266008.P4738884288798729973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180046 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A266008.P4738884288798729973

noncomputable section

/-- A266008: Number of n X 4 integer arrays with each element equal to the number of horizontal and antidiagonal neighbors equal to itself.

Offset 1, canonical program `A266008.P4738884288798729973`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 449 terms. -/
def A266008 (n : ℕ) : ℤ :=
  A266008.P4738884288798729973.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 449 terms. -/
def A266008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266227.P13814129457012190154

`floor(∑{d}[n+1, 1/A000203(#)])`
-/

namespace A266227.P13814129457012190154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f1 n), 1 / (A000203 d : ℚ)⌋

end

end A266227.P13814129457012190154

noncomputable section

/-- A266227: a(n) = floor(Sum_{d|n} 1/sigma(d)).

Offset 1, canonical program `A266227.P13814129457012190154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266227 (n : ℕ) : ℤ :=
  A266227.P13814129457012190154.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266229.P14711780449339868904

`A002061(n)+A059839(n)*A085537(n)`
-/

namespace A266229.P14711780449339868904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n + A059839 n * A085537 n

end

end A266229.P14711780449339868904

noncomputable section

/-- A266229: a(n) = Sum_{j=0..12} (-n)^j.

Offset 0, canonical program `A266229.P14711780449339868904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266229 (n : ℕ) : ℤ :=
  A266229.P14711780449339868904.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266242.P14036727876500094086

`eq[exp(floor(3*π*n)%3), A327298(n+4)]`
-/

namespace A266242.P14036727876500094086
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (Int.tmod ⌊3 * (Real.pi * (n : ℝ))⌋ 3 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327298 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A266242.P14036727876500094086

noncomputable section

/-- A266242: Numbers n such that the initial digit of the fractional part of n*Pi is 0.

Offset 1, canonical program `A266242.P14036727876500094086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 972 terms. -/
def A266242 (n : ℕ) : ℤ :=
  (A266242.P14036727876500094086.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 972 terms. -/
def A266242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266247.P9589200688830506341

`A266246(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A266247.P9589200688830506341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A266246 n + 10 * a (n - 1)

end

end A266247.P9589200688830506341

noncomputable section

/-- A266247: Binary representation of the middle column of the "Rule 9" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266247.P9589200688830506341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A266247 (n : ℕ) : ℤ :=
  A266247.P9589200688830506341.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A266247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266265.P18011338418643426227

`(n+1)^(A007425(n+1)/3)`
-/

namespace A266265.P18011338418643426227
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((A007425 (n + 1) : ℚ) / 3 : ℝ)

end

end A266265.P18011338418643426227

noncomputable section

/-- A266265: Product of products of divisors of divisors of n.

Offset 1, canonical program `A266265.P18011338418643426227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A266265 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A266265.P18011338418643426227.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A266265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266324.P10953631783085328331

`A166977(A266220(n))`
-/

namespace A266324.P10953631783085328331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166977 (A266220 n).toNat

end

end A266324.P10953631783085328331

noncomputable section

/-- A266324: Decimal representation of the n-th iteration of the "Rule 19" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266324.P10953631783085328331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266324 (n : ℕ) : ℤ :=
  A266324.P10953631783085328331.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266326.P7232477752521616832

`A267006(A351782(n+1))`
-/

namespace A266326.P7232477752521616832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267006 (A351782 (n + 1)).toNat

end

end A266326.P7232477752521616832

noncomputable section

/-- A266326: Triangle read by rows giving successive states of cellular automaton generated by "Rule 20" initiated with a single ON (black) cell.

Offset 0, canonical program `A266326.P7232477752521616832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266326 (n : ℕ) : ℤ :=
  A266326.P7232477752521616832.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266339.P169478171867598227

`A094103(2*n+5)+A000007(n)-4`
-/

namespace A266339.P169478171867598227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094103 (2 * n + 5) + (A000007 n - 4)

end

end A266339.P169478171867598227

noncomputable section

/-- A266339: G.f. = b(2)^2*b(4)/(x^5+x^4-x^3-x^2-x+1), where b(k) = (1-x^k)/(1-x).

Offset 0, canonical program `A266339.P169478171867598227`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A266339 (n : ℕ) : ℤ :=
  A266339.P169478171867598227.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A266339.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266377.P3840532297308021321

`A266253((2*n)%(n+2))`
-/

namespace A266377.P3840532297308021321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266253 (2 * n % (n + 2))

end

end A266377.P3840532297308021321

noncomputable section

/-- A266377: Triangle read by rows giving successive states of cellular automaton generated by "Rule 21" initiated with a single ON (black) cell.

Offset 0, canonical program `A266377.P3840532297308021321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266377 (n : ℕ) : ℤ :=
  A266377.P3840532297308021321.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266380.P3725399076029942942

`A000225(A266220(n))`
-/

namespace A266380.P3725399076029942942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A266220 n).toNat

end

end A266380.P3725399076029942942

noncomputable section

/-- A266380: Decimal representation of the n-th iteration of the "Rule 21" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266380.P3725399076029942942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266380 (n : ℕ) : ℤ :=
  A266380.P3725399076029942942.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266429.P8553441658832143791

`∑[A081282(n+1)+n+2]+1`
-/

namespace A266429.P8553441658832143791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081282 (n + 1) + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A266429.P8553441658832143791

noncomputable section

/-- A266429: Number of 3 X n binary arrays with rows and columns lexicographically nondecreasing and column sums nondecreasing.

Offset 1, canonical program `A266429.P8553441658832143791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A266429 (n : ℕ) : ℤ :=
  A266429.P8553441658832143791.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A266429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266471.P2881579580253821296

`4*(n+1)+A271567(n)-A056118(n)+A006331(n)+1`
-/

namespace A266471.P2881579580253821296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) + (A271567 n - A056118 n + (A006331 n + 1))

end

end A266471.P2881579580253821296

noncomputable section

/-- A266471: Number of 4 X n binary arrays with rows and columns lexicographically nondecreasing and column sums nonincreasing.

Offset 1, canonical program `A266471.P2881579580253821296`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266471 (n : ℕ) : ℤ :=
  A266471.P2881579580253821296.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266607.P6288959086002507873

`xor(A131572(n), A266436(n))`
-/

namespace A266607.P6288959086002507873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A131572 n) (A266436 n)

end

end A266607.P6288959086002507873

noncomputable section

/-- A266607: Decimal representation of the n-th iteration of the "Rule 39" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266607.P6288959086002507873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266607 (n : ℕ) : ℤ :=
  A266607.P6288959086002507873.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266661.P16932731646310684798

`or(A130713(n), A266255(n))`
-/

namespace A266661.P16932731646310684798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A130713 n) (A266255 n)

end

end A266661.P16932731646310684798

noncomputable section

/-- A266661: Decimal representation of the n-th iteration of the "Rule 47" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266661.P16932731646310684798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266661 (n : ℕ) : ℤ :=
  A266661.P16932731646310684798.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266661.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266668.P13642406373938606405

`A266302(n)-A225883(n)`
-/

namespace A266668.P13642406373938606405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266302 n - A225883 n

end

end A266668.P13642406373938606405

noncomputable section

/-- A266668: Decimal representation of the n-th iteration of the "Rule 51" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266668.P13642406373938606405`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266668 (n : ℕ) : ℤ :=
  A266668.P13642406373938606405.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266671.P5923110452531764722

`A094015(n)*A094024(n)-n%2`
-/

namespace A266671.P5923110452531764722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094015 n * A094024 n - ((n % 2 : ℕ) : ℤ)

end

end A266671.P5923110452531764722

noncomputable section

/-- A266671: Decimal representation of the n-th iteration of the "Rule 53" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266671.P5923110452531764722`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266671 (n : ℕ) : ℤ :=
  A266671.P5923110452531764722.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266708.P14678480856737926102

`-(2*A192914(n+1))`
-/

namespace A266708.P14678480856737926102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 * A192914 (n + 1))

end

end A266708.P14678480856737926102

noncomputable section

/-- A266708: Coefficient of x in minimal polynomial of the continued fraction [1^n,phi,1,1,1,...], where 1^n means n ones and phi = golden ratio = (1 + sqrt(5))/2.

Offset 0, canonical program `A266708.P14678480856737926102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A266708 (n : ℕ) : ℤ :=
  A266708.P14678480856737926102.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A266708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266709.P11812194294470715169

`1-2*A192872(n+3)`
-/

namespace A266709.P11812194294470715169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A192872 (n + 3)

end

end A266709.P11812194294470715169

noncomputable section

/-- A266709: Coefficient of x in minimal polynomial of the continued fraction [2,1^n,2,1,1,...], where 1^n means n ones.

Offset 0, canonical program `A266709.P11812194294470715169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A266709 (n : ℕ) : ℤ :=
  A266709.P11812194294470715169.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. -/
def A266709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266744.P6598350087135451720

`∑[A029245(n)]`
-/

namespace A266744.P6598350087135451720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A266744.P6598350087135451720

noncomputable section

/-- A266744: G.f.: 1/((1-t^4)*(1-t)*(1-t^3)*(1-t^5)*(1-t^7)).

Offset 0, canonical program `A266744.P6598350087135451720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266744 (n : ℕ) : ℤ :=
  A266744.P6598350087135451720.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266768.P11564001929353987529

`A029327(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A266768.P11564001929353987529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029327 n + a (n - 2)

end

end A266768.P11564001929353987529

noncomputable section

/-- A266768: Molien series for invariants of finite Coxeter group D_5.

Offset 0, canonical program `A266768.P11564001929353987529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266768 (n : ℕ) : ℤ :=
  A266768.P11564001929353987529.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266850.P1810142981917257223

`xor(A131572(n)², A266436(n))`
-/

namespace A266850.P1810142981917257223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A131572 n ^ 2) (A266436 n)

end

end A266850.P1810142981917257223

noncomputable section

/-- A266850: Decimal representation of the n-th iteration of the "Rule 71" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266850.P1810142981917257223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266850 (n : ℕ) : ℤ :=
  A266850.P1810142981917257223.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266982.P8719041524889349912

`a(a(A083479(n)))` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A266982.P8719041524889349912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (a (A083479 n).toNat)

end

end A266982.P8719041524889349912

noncomputable section

/-- A266982: Triangle read by rows giving successive states of cellular automaton generated by "Rule 81" initiated with a single ON (black) cell.

Offset 0, canonical program `A266982.P8719041524889349912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266982 (n : ℕ) : ℤ :=
  (A266982.P8719041524889349912.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A266982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267003.P11558593261054300473

`xor(A131572(3*n), A266436(n))`
-/

namespace A267003.P11558593261054300473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A131572 (3 * n)) (A266436 n)

end

end A267003.P11558593261054300473

noncomputable section

/-- A267003: Decimal representation of the n-th iteration of the "Rule 83" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267003.P11558593261054300473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A267003 (n : ℕ) : ℤ :=
  A267003.P11558593261054300473.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A267003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267133.P17409310186168175534

`A057077(n+4)*A080339(n+1)`
-/

namespace A267133.P17409310186168175534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 4) * A080339 (n + 1)

end

end A267133.P17409310186168175534

noncomputable section

/-- A267133: a(n) = (1/n)(2/n)(3/n)...((n-1)/n) where (k/n) is the Kronecker symbol, n >= 1.

Offset 1, canonical program `A267133.P17409310186168175534`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080339, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A267133 (n : ℕ) : ℤ :=
  A267133.P17409310186168175534.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080339, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A267133.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A267156.P1314108514053458750

`A267155(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A267156.P1314108514053458750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267155 n + 10 * a (n - 1)

end

end A267156.P1314108514053458750

noncomputable section

/-- A267156: Binary representation of the middle column of the "Rule 107" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267156.P1314108514053458750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267156 (n : ℕ) : ℤ :=
  A267156.P1314108514053458750.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267157.P5346846531904863656

`a(n-1)+A267155(n)+a(n-1)` with `a(0)=1`
-/

namespace A267157.P5346846531904863656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A267155 n + a (n - 1))

end

end A267157.P5346846531904863656

noncomputable section

/-- A267157: Decimal representation of the middle column of the "Rule 107" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267157.P5346846531904863656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A267157 (n : ℕ) : ℤ :=
  A267157.P5346846531904863656.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A267157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267226.P11849902975923826706

`2*A111297(n+1)-1`
-/

namespace A267226.P11849902975923826706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111297 (n + 1) - 1

end

end A267226.P11849902975923826706

noncomputable section

/-- A267226: Number of length-n 0..2 arrays with no following elements greater than or equal to the first repeated value.

Offset 1, canonical program `A267226.P11849902975923826706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A267226 (n : ℕ) : ℤ :=
  A267226.P11849902975923826706.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A267226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267258.P5534093032175889116

`xor(2*a(n-1), A267256(n))` with `a(0)=1`
-/

namespace A267258.P5534093032175889116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (2 * a (n - 1)) (A267256 n)

end

end A267258.P5534093032175889116

noncomputable section

/-- A267258: Decimal representation of the middle column of the "Rule 111" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267258.P5534093032175889116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A267258 (n : ℕ) : ℤ :=
  A267258.P5534093032175889116.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A267258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267366.P16052078199144211889

`A036987(n)+10*a(n-1)` with `a(0)=1`
-/

namespace A267366.P16052078199144211889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A036987 n + 10 * a (n - 1)

end

end A267366.P16052078199144211889

noncomputable section

/-- A267366: Binary representation of the middle column of the "Rule 126" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267366.P16052078199144211889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267366 (n : ℕ) : ℤ :=
  A267366.P16052078199144211889.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267367.P459713566228756321

`a(n-1)+A036987(n)+a(n-1)` with `a(0)=1`
-/

namespace A267367.P459713566228756321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A036987 n + a (n - 1))

end

end A267367.P459713566228756321

noncomputable section

/-- A267367: Decimal representation of the middle column of the "Rule 126" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267367.P459713566228756321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A267367 (n : ℕ) : ℤ :=
  A267367.P459713566228756321.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A267367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267444.P12052206994114013281

`xor(1, A036987(n)+2*a(n-1))` with `a(0)=1`
-/

namespace A267444.P12052206994114013281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 1 (A036987 n + 2 * a (n - 1))

end

end A267444.P12052206994114013281

noncomputable section

/-- A267444: Decimal representation of the middle column of the "Rule 129" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267444.P12052206994114013281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A267444 (n : ℕ) : ℤ :=
  A267444.P12052206994114013281.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A267444.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267520.P11008997712786491170

`1-Δ[A265186(n)]²`
-/

namespace A267520.P11008997712786491170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n) ^ 2

end

end A267520.P11008997712786491170

noncomputable section

/-- A267520: Triangle read by rows giving successive states of cellular automaton generated by "Rule 139" initiated with a single ON (black) cell.

Offset 0, canonical program `A267520.P11008997712786491170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267520 (n : ℕ) : ℤ :=
  A267520.P11008997712786491170.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267538.P10229037407533658569

`or(10*a(n-1), A086694(A053644(n)))` with `a(0)=1`
-/

namespace A267538.P10229037407533658569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (10 * a (n - 1)) (A086694 (A053644 n).toNat)

end

end A267538.P10229037407533658569

noncomputable section

/-- A267538: Binary representation of the middle column of the "Rule 143" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267538.P10229037407533658569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267538 (n : ℕ) : ℤ :=
  A267538.P10229037407533658569.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267580.P12480041897936984409

`xor(10*a(n-1), A267579(n))` with `a(0)=1`
-/

namespace A267580.P12480041897936984409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (10 * a (n - 1)) (A267579 n)

end

end A267580.P12480041897936984409

noncomputable section

/-- A267580: Binary representation of the middle column of the "Rule 167" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267580.P12480041897936984409`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267580 (n : ℕ) : ℤ :=
  A267580.P12480041897936984409.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267580.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267581.P10230663619374770058

`A267579(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A267581.P10230663619374770058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A267579 n + 2 * a (n - 1)

end

end A267581.P10230663619374770058

noncomputable section

/-- A267581: Decimal representation of the middle column of the "Rule 167" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267581.P10230663619374770058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A267581 (n : ℕ) : ℤ :=
  A267581.P10230663619374770058.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A267581.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267588.P10329583865328879434

`xor(10*a(n-1), A267587(n))` with `a(0)=1`
-/

namespace A267588.P10329583865328879434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (10 * a (n - 1)) (A267587 n)

end

end A267588.P10329583865328879434

noncomputable section

/-- A267588: Binary representation of the middle column of the "Rule 169" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267588.P10329583865328879434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267588 (n : ℕ) : ℤ :=
  A267588.P10329583865328879434.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267588.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267598.P7161317194914824698

`and(1, A266253(n)+n)`
-/

namespace A267598.P7161317194914824698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A266253 n + (n : ℤ))

end

end A267598.P7161317194914824698

noncomputable section

/-- A267598: Triangle read by rows giving successive states of cellular automaton generated by "Rule 177" initiated with a single ON (black) cell.

Offset 0, canonical program `A267598.P7161317194914824698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267598 (n : ℕ) : ℤ :=
  A267598.P7161317194914824698.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267598.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267610.P16878864533377162923

`∑[A071055(n)]`
-/

namespace A267610.P16878864533377162923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A267610.P16878864533377162923

noncomputable section

/-- A267610: Total number of OFF (white) cells after n iterations of the "Rule 182" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267610.P16878864533377162923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267610 (n : ℕ) : ℤ :=
  A267610.P16878864533377162923.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267654.P574558163347297838

`2*A086520(n+2)`
-/

namespace A267654.P574558163347297838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086520 (n + 2)

end

end A267654.P574558163347297838

noncomputable section

/-- A267654: Irregular triangle of palindromic subsequences. Every row has 2*n+1 terms. From the second row, there are only two alternated numbers: 2*n+4 and 2*n+2.

Offset 0, canonical program `A267654.P574558163347297838`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086520, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A267654 (n : ℕ) : ℤ :=
  A267654.P574558163347297838.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086520, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A267654.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A267668.P2568313771538344104

`4*A052955(n)^3`
-/

namespace A267668.P2568313771538344104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A052955 n ^ 3

end

end A267668.P2568313771538344104

noncomputable section

/-- A267668: Number of 3Xn 0..1 arrays with every repeated value in every row unequal to the previous repeated value, and in every column equal to the previous repeated value, and new values introduced in row-major sequential order.

Offset 1, canonical program `A267668.P2568313771538344104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A267668 (n : ℕ) : ℤ :=
  A267668.P2568313771538344104.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A267668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267683.P13874331238885299583

`A267621(A028391(n+1))`
-/

namespace A267683.P13874331238885299583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267621 (A028391 (n + 1)).toNat

end

end A267683.P13874331238885299583

noncomputable section

/-- A267683: Triangle read by rows giving successive states of cellular automaton generated by "Rule 203" initiated with a single ON (black) cell.

Offset 0, canonical program `A267683.P13874331238885299583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267683 (n : ℕ) : ℤ :=
  A267683.P13874331238885299583.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267704.P11767077599225187257

`(1-C(2, A004738(n+1)))²`
-/

namespace A267704.P11767077599225187257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose 2 (A004738 (n + 1)).toNat : ℤ)) ^ 2

end

end A267704.P11767077599225187257

noncomputable section

/-- A267704: Triangle read by rows giving successive states of cellular automaton generated by "Rule 205" initiated with a single ON (black) cell.

Offset 0, canonical program `A267704.P11767077599225187257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267704 (n : ℕ) : ℤ :=
  A267704.P11767077599225187257.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267708.P17716609350446797913

`C(2, A023969(n)+2)`
-/

namespace A267708.P17716609350446797913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A023969 n + 2).toNat

end

end A267708.P17716609350446797913

noncomputable section

/-- A267708: Triangle read by rows giving successive states of cellular automaton generated by "Rule 206" initiated with a single ON (black) cell.

Offset 0, canonical program `A267708.P17716609350446797913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267708 (n : ℕ) : ℤ :=
  (A267708.P17716609350446797913.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267776.P12574266559993545674

`1-A267006(n+1)`
-/

namespace A267776.P12574266559993545674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A267006 (n + 1)

end

end A267776.P12574266559993545674

noncomputable section

/-- A267776: Triangle read by rows giving successive states of cellular automaton generated by "Rule 209" initiated with a single ON (black) cell.

Offset 0, canonical program `A267776.P12574266559993545674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267776 (n : ℕ) : ℤ :=
  A267776.P12574266559993545674.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267855.P8637090076544028619

`2^n*A006977(n)`
-/

namespace A267855.P8637090076544028619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A006977 n

end

end A267855.P8637090076544028619

noncomputable section

/-- A267855: Decimal representation of the n-th iteration of the "Rule 230" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267855.P8637090076544028619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A267855 (n : ℕ) : ℤ :=
  A267855.P8637090076544028619.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A267855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267860.P6730845852356039141

`n%2*A214211(n)`
-/

namespace A267860.P6730845852356039141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A214211 n

end

end A267860.P6730845852356039141

noncomputable section

/-- A267860: An infinite ternary 3-Fibonacci sequence (replace each 00 factor of the Fibonacci word with 020).

Offset 0, canonical program `A267860.P6730845852356039141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267860 (n : ℕ) : ℤ :=
  A267860.P6730845852356039141.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267866.P12751727066872604543

`Δ[A028391(n)]^n`
-/

namespace A267866.P12751727066872604543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ n

end

end A267866.P12751727066872604543

noncomputable section

/-- A267866: Triangle read by rows giving successive states of cellular automaton generated by "Rule 231" initiated with a single ON (black) cell.

Offset 0, canonical program `A267866.P12751727066872604543`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267866 (n : ℕ) : ℤ :=
  A267866.P12751727066872604543.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267905.P2308361667573374848

`ceil(A106514(n)/2)`
-/

namespace A267905.P2308361667573374848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A106514 n : ℚ) / 2⌉

end

end A267905.P2308361667573374848

noncomputable section

/-- A267905: Number of n X 1 0..2 arrays with every repeated value in every row unequal to the previous repeated value, and in every column equal to the previous repeated value, and new values introduced in row-major sequential order.

Offset 1, canonical program `A267905.P2308361667573374848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A267905 (n : ℕ) : ℤ :=
  A267905.P2308361667573374848.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A267905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267922.P1262934083183129406

`A267919(n+1)`
-/

namespace A267922.P1262934083183129406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267919 (n + 1)

end

end A267922.P1262934083183129406

noncomputable section

/-- A267922: Triangle read by rows giving successive states of cellular automaton generated by "Rule 245" initiated with a single ON (black) cell.

Offset 0, canonical program `A267922.P1262934083183129406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267922 (n : ℕ) : ℤ :=
  A267922.P1262934083183129406.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267947.P17630565095503735786

`3*A267946(n+1)²`
-/

namespace A267947.P17630565095503735786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A267946 (n + 1) ^ 2

end

end A267947.P17630565095503735786

noncomputable section

/-- A267947: Number of n X 2 0..2 arrays with every repeated value in every row and column one larger mod 3 than the previous repeated value, and upper left element zero.

Offset 1, canonical program `A267947.P17630565095503735786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A267947 (n : ℕ) : ℤ :=
  A267947.P17630565095503735786.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. -/
def A267947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267999.P17200874336229400487

`eq[1, A214606(n+2)]+2`
-/

namespace A267999.P17200874336229400487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214606 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A267999.P17200874336229400487

noncomputable section

/-- A267999: Numbers n > 1 such that gcd(n, 2^n - 2) = 1.

Offset 1, canonical program `A267999.P17200874336229400487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1331 terms. -/
def A267999 (n : ℕ) : ℤ :=
  (A267999.P17200874336229400487.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1331 terms. -/
def A267999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268094.P12267973900043072189

`3*A268093(n+1)²`
-/

namespace A268094.P12267973900043072189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A268093 (n + 1) ^ 2

end

end A268094.P12267973900043072189

noncomputable section

/-- A268094: Number of 2 X n 0..2 arrays with every repeated value in every row not one larger and in every column one larger mod 3 than the previous repeated value, and upper left element zero.

Offset 1, canonical program `A268094.P12267973900043072189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A268094 (n : ℕ) : ℤ :=
  A268094.P12267973900043072189.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A268094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268127.P12853289484081754662

`(A005704(n)-A006047(n))/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A268127.P12853289484081754662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005704 n - A006047 n : ℚ) / 3

end

end A268127.P12853289484081754662

noncomputable section

/-- A268127: a(n) = (A005704(n)-A006047(n))/3.

Offset 0, canonical program `A268127.P12853289484081754662`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006047, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268127 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A268127.P12853289484081754662.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006047, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268127.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268318.P17043639645401286693

`ceil(A005379(n+1)/A005378(n))`
-/

namespace A268318.P17043639645401286693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005379 (n + 1) : ℚ) / (A005378 n : ℚ)⌉

end

end A268318.P17043639645401286693

noncomputable section

/-- A268318: Irregular triangle read by rows: T(n,k) gives the row sums in the table Fib(n+1) X Fib(n), where k = 1..Fib(n+1), and 1's are assigned to cells on the longest diagonal path.

Offset 0, canonical program `A268318.P17043639645401286693`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A268318 (n : ℕ) : ℤ :=
  A268318.P17043639645401286693.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A268318.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268375.P3303508265173202101

`record[(n+1)*A091862(n+1)]`
-/

namespace A268375.P3303508265173202101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A091862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268375.P3303508265173202101

noncomputable section

/-- A268375: Numbers k for which A001222(k) = A267116(k).

Offset 1, canonical program `A268375.P3303508265173202101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268375 (n : ℕ) : ℤ :=
  A268375.P3303508265173202101.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268376.P14208294688663200019

`lt[A091862(n+1), 1]+1`
-/

namespace A268376.P14208294688663200019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091862 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A268376.P14208294688663200019

noncomputable section

/-- A268376: Numbers n for which A001222(n) > A267116(n).

Offset 1, canonical program `A268376.P14208294688663200019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268376 (n : ℕ) : ℤ :=
  (A268376.P14208294688663200019.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268459.P1944635422954414379

`(n+1)*(A061222(n)-(n+1))`
-/

namespace A268459.P1944635422954414379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A061222 n - (n + 1 : ℤ))

end

end A268459.P1944635422954414379

noncomputable section

/-- A268459: Number of length-5 0..n arrays with no adjacent pair x,x+1 followed at any distance by x+1,x.

Offset 1, canonical program `A268459.P1944635422954414379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268459 (n : ℕ) : ℤ :=
  A268459.P1944635422954414379.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268615.P10925931779231542023

`A000032(n)%40`
-/

namespace A268615.P10925931779231542023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000032 n) 40

end

end A268615.P10925931779231542023

noncomputable section

/-- A268615: Lucas numbers mod 40.

Offset 0, canonical program `A268615.P10925931779231542023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A268615 (n : ℕ) : ℤ :=
  A268615.P10925931779231542023.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A268615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268622.P2595254194921998262

`A113071(n+1)+A025192(n)`
-/

namespace A268622.P2595254194921998262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113071 (n + 1) + A025192 n

end

end A268622.P2595254194921998262

noncomputable section

/-- A268622: Number of n X 2 0..2 arrays with some element plus some horizontally or vertically adjacent neighbor totalling two no more than once.

Offset 1, canonical program `A268622.P2595254194921998262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. -/
def A268622 (n : ℕ) : ℤ :=
  A268622.P2595254194921998262.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. -/
def A268622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268634.P11431430832775227814

`6*A229454(n+1)`
-/

namespace A268634.P11431430832775227814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A229454 (n + 1)

end

end A268634.P11431430832775227814

noncomputable section

/-- A268634: Number of n X 3 0..2 arrays with some element plus some horizontally or vertically adjacent neighbor totalling two exactly once.

Offset 1, canonical program `A268634.P11431430832775227814`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A268634 (n : ℕ) : ℤ :=
  A268634.P11431430832775227814.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A268634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268753.P6049220722085266056

`∪[A142159(n+1), A142167(n+1)]`
-/

namespace A268753.P6049220722085266056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A268753.P6049220722085266056

noncomputable section

/-- A268753: Primes congruent to 1 mod 13.

Offset 1, canonical program `A268753.P6049220722085266056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268753 (n : ℕ) : ℤ :=
  (A268753.P6049220722085266056.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268816.P14001663166469489172

`xor(n, 2*(A130481(n)-and(1, n)))`
-/

namespace A268816.P14001663166469489172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (2 * (A130481 n - (Nat.land 1 n : ℤ)))

end

end A268816.P14001663166469489172

noncomputable section

/-- A268816: Row 6 of A269158.

Offset 1, canonical program `A268816.P14001663166469489172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268816 (n : ℕ) : ℤ :=
  A268816.P14001663166469489172.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268878.P15478637018507468976

`a(floor((n-1)/2))*A000040(n)` with `a(0)=1`
-/

namespace A268878.P15478637018507468976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat * A000040 n

end

end A268878.P15478637018507468976

noncomputable section

/-- A268878: Breadth-first traversal of a binary tree in which the value at the n-th node is equal to ParentNode()*prime(n-1).

Offset 1, canonical program `A268878.P15478637018507468976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A268878 (n : ℕ) : ℤ :=
  A268878.P15478637018507468976.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A268878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268887.P548244548204823572

`abs(∑[∑[n*A077985(n+1)]])`
-/

namespace A268887.P548244548204823572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A077985 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A268887.P548244548204823572

noncomputable section

/-- A268887: Number of 2 X n binary arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two exactly once.

Offset 1, canonical program `A268887.P548244548204823572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A268887 (n : ℕ) : ℤ :=
  A268887.P548244548204823572.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. -/
def A268887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268896.P5599468407950783501

`A083575(A002264(n))-A130794(n+1)`
-/

namespace A268896.P5599468407950783501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083575 (A002264 n).toNat - A130794 (n + 1)

end

end A268896.P5599468407950783501

noncomputable section

/-- A268896: Start at a(0)=1. a(n) = a(n-1)+2 if n == 1,2 (mod 3) and a(n)=a(n-1)+a(n-3) if n == 0 (mod 3).

Offset 0, canonical program `A268896.P5599468407950783501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 990 terms. -/
def A268896 (n : ℕ) : ℤ :=
  A268896.P5599468407950783501.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 990 terms. -/
def A268896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268935.P18120066355436414076

`A001414(a(n-1)+a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A268935.P18120066355436414076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A001414 (a (n - 1) + a (n - 2)).toNat

end

end A268935.P18120066355436414076

noncomputable section

/-- A268935: a(1)=2, a(2)=3. For n>2 a(n) is the sum of the prime factors (with repetition) of a(n-1) + a(n-2).

Offset 1, canonical program `A268935.P18120066355436414076`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268935 (n : ℕ) : ℤ :=
  A268935.P18120066355436414076.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268935.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268967.P6279919360814936462

`Δ[4*A229277(2*n)]`
-/

namespace A268967.P6279919360814936462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A229277 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268967.P6279919360814936462

noncomputable section

/-- A268967: Number of n X 4 0..2 arrays with some element plus some horizontally or antidiagonally adjacent neighbor totalling two not more than once.

Offset 1, canonical program `A268967.P6279919360814936462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A268967 (n : ℕ) : ℤ :=
  A268967.P6279919360814936462.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A268967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269059.P2094528503455587302

`A069229(n)+A068156(n)`
-/

namespace A269059.P2094528503455587302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069229 n + A068156 n

end

end A269059.P2094528503455587302

noncomputable section

/-- A269059: Construct a hollow square of 1's of side n and fill its interior with 0's to create a stack of n binary numbers. Express the sum of the stack in decimal.

Offset 1, canonical program `A269059.P2094528503455587302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A269059 (n : ℕ) : ℤ :=
  A269059.P2094528503455587302.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A269059.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269169.P15341259716807644386

`∑[char[A269164(n+1)-1]]`
-/

namespace A269169.P15341259716807644386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269164 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269169.P15341259716807644386

noncomputable section

/-- A269169: The least monotonic left inverse for A269164.

Offset 1, canonical program `A269169.P15341259716807644386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A269169 (n : ℕ) : ℤ :=
  (A269169.P15341259716807644386.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A269169.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269177.P4127660122267048747

`comp[A269176(n+1)]`
-/

namespace A269177.P4127660122267048747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A269177.P4127660122267048747

noncomputable section

/-- A269177: Numbers that have a finite predecessor in Wolfram's Rule 124 cellular automaton; numbers n for which A269175(n) > 0.

Offset 0, canonical program `A269177.P4127660122267048747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4713 terms. -/
def A269177 (n : ℕ) : ℤ :=
  (A269177.P4127660122267048747.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4713 terms. -/
def A269177.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269242.P14846144689689619762

`∑{digits}[A000578(n), A003982(#+2)]`
-/

namespace A269242.P14846144689689619762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A003982 (x + 2)).sum

end

end A269242.P14846144689689619762

noncomputable section

/-- A269242: Number of times the digit 2 appears in the decimal expansion of n^3.

Offset 0, canonical program `A269242.P14846144689689619762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269242 (n : ℕ) : ℤ :=
  A269242.P14846144689689619762.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269437.P2153338991453722051

`(n+2)*(A269436(n+1)-(n+1)²)`
-/

namespace A269437.P2153338991453722051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A269436 (n + 1) - ((n + 1) ^ 2 : ℤ))

end

end A269437.P2153338991453722051

noncomputable section

/-- A269437: Number of length-5 0..n arrays with no repeated value greater than the previous repeated value.

Offset 1, canonical program `A269437.P2153338991453722051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269437 (n : ℕ) : ℤ :=
  A269437.P2153338991453722051.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269469.P2578020114568236256

`(n+1)*(A061222(n)-3)`
-/

namespace A269469.P2578020114568236256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A061222 n - 3)

end

end A269469.P2578020114568236256

noncomputable section

/-- A269469: Number of length-5 0..n arrays with no repeated value equal to the previous repeated value.

Offset 1, canonical program `A269469.P2578020114568236256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269469 (n : ℕ) : ℤ :=
  A269469.P2578020114568236256.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269486.P3485669575558773072

`ceil((A008455(n)+1)/(n+1))`
-/

namespace A269486.P3485669575558773072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008455 n + 1 : ℚ) / (n + 1 : ℚ)⌉

end

end A269486.P3485669575558773072

noncomputable section

/-- A269486: a(n) = Sum_{j=0..10} (-n)^j.

Offset 0, canonical program `A269486.P3485669575558773072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269486 (n : ℕ) : ℤ :=
  A269486.P3485669575558773072.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269488.P3891815757881610493

`A028859(n+1)+A078057(n+1)-A003945(n+1)`
-/

namespace A269488.P3891815757881610493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028859 (n + 1) + (A078057 (n + 1) - A003945 (n + 1))

end

end A269488.P3891815757881610493

noncomputable section

/-- A269488: Number of length-n 0..2 arrays with no repeated value differing from the previous repeated value by one.

Offset 1, canonical program `A269488.P3891815757881610493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. -/
def A269488 (n : ℕ) : ℤ :=
  A269488.P3891815757881610493.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. -/
def A269488.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269501.P849220256039381575

`floor(log2(A078446(n+1)))+1`
-/

namespace A269501.P849220256039381575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A078446 (n + 1)).toNat + 1

end

end A269501.P849220256039381575

noncomputable section

/-- A269501: Subsequence immediately following the instances of n in the sequence is n, n-1, ..., 1, n+1, n+2, ....

Offset 0, canonical program `A269501.P849220256039381575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269501 (n : ℕ) : ℤ :=
  (A269501.P849220256039381575.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269501.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269511.P16338175856752422456

`∑[A004526(n)+or(1, A110344(n+1))]`
-/

namespace A269511.P16338175856752422456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + Int.lor 1 (A110344 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269511.P16338175856752422456

noncomputable section

/-- A269511: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 342", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A269511.P16338175856752422456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3859 terms. -/
def A269511 (n : ℕ) : ℤ :=
  A269511.P16338175856752422456.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3859 terms. -/
def A269511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269512.P10670499889363108988

`Δ[A264797(n)]`
-/

namespace A269512.P10670499889363108988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264797 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269512.P10670499889363108988

noncomputable section

/-- A269512: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 342", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A269512.P10670499889363108988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3798 terms. -/
def A269512 (n : ℕ) : ℤ :=
  A269512.P10670499889363108988.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3798 terms. -/
def A269512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269590.P2969606302811492531

`(2*A048898(n))%A000351(n)`
-/

namespace A269590.P2969606302811492531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A048898 n) (A000351 n)

end

end A269590.P2969606302811492531

noncomputable section

/-- A269590: One of the two successive approximations up to 5^n for the 5-adic integer sqrt(-4). These are the 4 mod 5 numbers (except for n=0).

Offset 0, canonical program `A269590.P2969606302811492531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A269590 (n : ℕ) : ℤ :=
  A269590.P2969606302811492531.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A269590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269679.P12521275085894758293

`A269538(n+1)+2%(n+2)`
-/

namespace A269679.P12521275085894758293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269538 (n + 1) + ((2 % (n + 2) : ℕ) : ℤ)

end

end A269679.P12521275085894758293

noncomputable section

/-- A269679: Number of length-4 0..n arrays with no repeated value differing from the previous repeated value by other than plus or minus one modulo n+1.

Offset 1, canonical program `A269679.P12521275085894758293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269679 (n : ℕ) : ℤ :=
  A269679.P12521275085894758293.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269725.P1750023856874493420

`A173027(n+1)-1`
-/

namespace A269725.P1750023856874493420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173027 (n + 1) - 1

end

end A269725.P1750023856874493420

noncomputable section

/-- A269725: a(n) = row number of extended Wythoff array (see A035513) which contains the sequence n times the Fibonacci numbers 1,2,3,5,8,13,21,... .

Offset 1, canonical program `A269725.P1750023856874493420`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173027, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269725 (n : ℕ) : ℤ :=
  A269725.P1750023856874493420.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A173027, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A269725.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A269878.P13728270469944996308

`∑[A269876(n)]`
-/

namespace A269878.P13728270469944996308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269878.P13728270469944996308

noncomputable section

/-- A269878: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 43", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A269878.P13728270469944996308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3156 terms. -/
def A269878 (n : ℕ) : ℤ :=
  A269878.P13728270469944996308.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3156 terms. -/
def A269878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269879.P11216592577254974492

`Δ[A269876(n)]`
-/

namespace A269879.P11216592577254974492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A269879.P11216592577254974492

noncomputable section

/-- A269879: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 43", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A269879.P11216592577254974492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3257 terms. -/
def A269879 (n : ℕ) : ℤ :=
  A269879.P11216592577254974492.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3257 terms. -/
def A269879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269962.P8111660266029043890

`∑[A339124(n)]`
-/

namespace A269962.P8111660266029043890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A269962.P8111660266029043890

noncomputable section

/-- A269962: Start with a square; at each stage add a square at each expandable vertex so that the ratio of the side of the squares at stage n+1 and at stage n is the golden ratio phi=0.618...; a(n) is the number of squares at n-th stage.

Offset 1, canonical program `A269962.P8111660266029043890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 276 terms. -/
def A269962 (n : ℕ) : ℤ :=
  A269962.P8111660266029043890.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 276 terms. -/
def A269962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270049.P13182036086160240146

`Δ[A186739(n+1)]`
-/

namespace A270049.P13182036086160240146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270049.P13182036086160240146

noncomputable section

/-- A270049: Number of 123 avoiding set partitions of [n].

Offset 0, canonical program `A270049.P13182036086160240146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A270049 (n : ℕ) : ℤ :=
  A270049.P13182036086160240146.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A270049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270089.P2691324095961846394

`∑[A270087(n)]`
-/

namespace A270089.P2691324095961846394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270089.P2691324095961846394

noncomputable section

/-- A270089: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 73", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A270089.P2691324095961846394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3251 terms. -/
def A270089 (n : ℕ) : ℤ :=
  A270089.P2691324095961846394.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3251 terms. -/
def A270089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270090.P15445530473766138656

`Δ[A270087(n)]`
-/

namespace A270090.P15445530473766138656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270090.P15445530473766138656

noncomputable section

/-- A270090: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 73", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A270090.P15445530473766138656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3128 terms. -/
def A270090 (n : ℕ) : ℤ :=
  A270090.P15445530473766138656.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3128 terms. -/
def A270090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270125.P6127676006264779078

`or(A189007(or(1, n)), A189007(n+1))`
-/

namespace A270125.P6127676006264779078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A189007 (Nat.lor 1 n)) (A189007 (n + 1))

end

end A270125.P6127676006264779078

noncomputable section

/-- A270125: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 86", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A270125.P6127676006264779078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4382 terms. -/
def A270125 (n : ℕ) : ℤ :=
  A270125.P6127676006264779078.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4382 terms. -/
def A270125.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270128.P12155844267239874096

`Δ[A159075(n)+A062383(n)*A071044(n)]`
-/

namespace A270128.P12155844267239874096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A062383 n * A071044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270128.P12155844267239874096

noncomputable section

/-- A270128: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 86", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A270128.P12155844267239874096`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4616 terms. -/
def A270128 (n : ℕ) : ℤ :=
  A270128.P12155844267239874096.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4616 terms. -/
def A270128.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270312.P1147650262403678755

`A000045(n+1)/gcd(A000045(n+1), A131738(n))`
-/

namespace A270312.P1147650262403678755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) : ℚ) / (Int.gcd (A000045 (n + 1)) (A131738 n) : ℚ)

end

end A270312.P1147650262403678755

noncomputable section

/-- A270312: Numerator of Fibonacci(n)/n.

Offset 1, canonical program `A270312.P1147650262403678755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A270312 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A270312.P1147650262403678755.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A270312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270383.P3503871390573539058

`A016861(n)+∑[A042948(A032741(n))]`
-/

namespace A270383.P3503871390573539058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A032741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270383.P3503871390573539058

noncomputable section

/-- A270383: Number of ordered pairs (i,j) with i >= j, |i|, |j| <= n, and |i * j| <= n.

Offset 0, canonical program `A270383.P3503871390573539058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270383 (n : ℕ) : ℤ :=
  A270383.P3503871390573539058.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A270383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270384.P1537396231614344993

`p?[ceil(A001749(n+1)/3)]`
-/

namespace A270384.P1537396231614344993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001749 (n + 1) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A270384.P1537396231614344993

noncomputable section

/-- A270384: Primes p such that (3/4)(p + 1) - 1 is also prime.

Offset 1, canonical program `A270384.P1537396231614344993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A270384 (n : ℕ) : ℤ :=
  A270384.P1537396231614344993.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A270384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270388.P15396497455566567402

`A048739(n)%(n+2)`
-/

namespace A270388.P15396497455566567402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048739 n) (n + 2 : ℤ)

end

end A270388.P15396497455566567402

noncomputable section

/-- A270388: a(n) = A048739(n-2) mod n.

Offset 2, canonical program `A270388.P15396497455566567402`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A270388 (n : ℕ) : ℤ :=
  A270388.P15396497455566567402.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A270388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270683.P14854626860996153548

`∑[n²+A266662(n)+A130824(n)]`
-/

namespace A270683.P14854626860996153548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A266662 n + A130824 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270683.P14854626860996153548

noncomputable section

/-- A270683: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 190", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A270683.P14854626860996153548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3831 terms. -/
def A270683 (n : ℕ) : ℤ :=
  A270683.P14854626860996153548.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3831 terms. -/
def A270683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270708.P6114464564147849864

`A001108(A008619(n+1))%A135153(n+2)`
-/

namespace A270708.P6114464564147849864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001108 (A008619 (n + 1)).toNat) (A135153 (n + 2))

end

end A270708.P6114464564147849864

noncomputable section

/-- A270708: a(n) = A048739(n-1) mod A000129(floor(n/2)).

Offset 2, canonical program `A270708.P6114464564147849864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A270708 (n : ℕ) : ℤ :=
  A270708.P6114464564147849864.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A270708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270741.P16031643782964406430

`(∑[a(n-1)-(1-a(n-2))]-n)%A103609(n+2)` with `a(0)=2, a(1)=3`
-/

namespace A270741.P16031643782964406430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)) (A103609 (n + 2))

end

end A270741.P16031643782964406430

noncomputable section

/-- A270741: a(n) = (Fibonacci(n+2)-1) mod Fibonacci(floor(n/2)).

Offset 2, canonical program `A270741.P16031643782964406430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A270741 (n : ℕ) : ℤ :=
  A270741.P16031643782964406430.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A270741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270936.P3178014193832231101

`∑[A270934(n)]`
-/

namespace A270936.P3178014193832231101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270936.P3178014193832231101

noncomputable section

/-- A270936: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 221", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A270936.P3178014193832231101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3276 terms. -/
def A270936 (n : ℕ) : ℤ :=
  A270936.P3178014193832231101.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3276 terms. -/
def A270936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A270937.P10195959060991265635

`Δ[A270934(n)]`
-/

namespace A270937.P10195959060991265635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270937.P10195959060991265635

noncomputable section

/-- A270937: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 221", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A270937.P10195959060991265635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3275 terms. -/
def A270937 (n : ℕ) : ℤ :=
  A270937.P10195959060991265635.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3275 terms. -/
def A270937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271052.P14403474327606414088

`∑[A271051(n)]`
-/

namespace A271052.P14403474327606414088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271052.P14403474327606414088

noncomputable section

/-- A271052: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 253", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A271052.P14403474327606414088`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3246 terms. -/
def A271052 (n : ℕ) : ℤ :=
  A271052.P14403474327606414088.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3246 terms. -/
def A271052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271053.P15240213741698535027

`Δ[or(4*A157928(n), A270934(n))]`
-/

namespace A271053.P15240213741698535027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 * A157928 n) (A270934 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271053.P15240213741698535027

noncomputable section

/-- A271053: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 253", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A271053.P15240213741698535027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3275 terms. -/
def A271053 (n : ℕ) : ℤ :=
  A271053.P15240213741698535027.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3275 terms. -/
def A271053.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271079.P8440359517774934335

`∑[A000045(n+2)]%32`
-/

namespace A271079.P8440359517774934335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 32

end

end A271079.P8440359517774934335

noncomputable section

/-- A271079: Residues (mod 32) of partial sums of Fibonacci numbers starting with F(2).

Offset 0, canonical program `A271079.P8440359517774934335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A271079 (n : ℕ) : ℤ :=
  A271079.P8440359517774934335.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A271079.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271093.P9797536221965603651

`∑[A271091(n)]`
-/

namespace A271093.P9797536221965603651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271093.P9797536221965603651

noncomputable section

/-- A271093: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 275", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A271093.P9797536221965603651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3370 terms. -/
def A271093 (n : ℕ) : ℤ :=
  A271093.P9797536221965603651.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3370 terms. -/
def A271093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271094.P8045953210772745392

`Δ[A271091(n)]`
-/

namespace A271094.P8045953210772745392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271094.P8045953210772745392

noncomputable section

/-- A271094: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 275", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A271094.P8045953210772745392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3269 terms. -/
def A271094 (n : ℕ) : ℤ :=
  A271094.P8045953210772745392.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3269 terms. -/
def A271094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271345.P10207795648301136136

`lt[A301317(n+1), 2]+1`
-/

namespace A271345.P10207795648301136136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301317 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A271345.P10207795648301136136

noncomputable section

/-- A271345: Integers n such that (n-1)! is divisible by n^3.

Offset 1, canonical program `A271345.P10207795648301136136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7630 terms. -/
def A271345 (n : ℕ) : ℤ :=
  (A271345.P10207795648301136136.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7630 terms. -/
def A271345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271367.P3663241717021435183

`∪[A140506(n+1), A140533(n+1)]`
-/

namespace A271367.P3663241717021435183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A271367.P3663241717021435183

noncomputable section

/-- A271367: Primes congruent to 11, 13, 17 or 19 (mod 30).

Offset 1, canonical program `A271367.P3663241717021435183`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271367 (n : ℕ) : ℤ :=
  (A271367.P3663241717021435183.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271422.P17494143731461512201

`A053061(eq[1, ∑{d}[n+1, #]-(n+1)]+1)`
-/

namespace A271422.P17494143731461512201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A271422.P17494143731461512201

noncomputable section

/-- A271422: Concatenation of prime(n) and its square.

Offset 1, canonical program `A271422.P17494143731461512201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A271422 (n : ℕ) : ℤ :=
  A271422.P17494143731461512201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A271422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271511.P3918627091132883084

`C(A052147(n+1), 2)`
-/

namespace A271511.P3918627091132883084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A052147 (n + 1)).toNat 2

end

end A271511.P3918627091132883084

noncomputable section

/-- A271511: a(n) = (p+1)*(p+2)/2 where p is the n-th prime.

Offset 1, canonical program `A271511.P3918627091132883084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271511 (n : ℕ) : ℤ :=
  (A271511.P3918627091132883084.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A271511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271628.P3554160973588019430

`p?[A037123(n)]`
-/

namespace A271628.P3554160973588019430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271628.P3554160973588019430

noncomputable section

/-- A271628: Primes that are the sum of the digits of the numbers from 1 to n, for some n.

Offset 1, canonical program `A271628.P3554160973588019430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 376 terms. -/
def A271628 (n : ℕ) : ℤ :=
  A271628.P3554160973588019430.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 376 terms. -/
def A271628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271982.P6221938899778499713

`p?[A156037(n+1)-41]`
-/

namespace A271982.P6221938899778499713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (n + 1) - 41

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271982.P6221938899778499713

noncomputable section

/-- A271982: Primes p such that p + 42 is also prime.

Offset 1, canonical program `A271982.P6221938899778499713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3155 terms. -/
def A271982 (n : ℕ) : ℤ :=
  A271982.P6221938899778499713.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3155 terms. -/
def A271982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272009.P9208722681090242085

`∑[A272007(n)]`
-/

namespace A272009.P9208722681090242085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272009.P9208722681090242085

noncomputable section

/-- A272009: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 413", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A272009.P9208722681090242085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A272009 (n : ℕ) : ℤ :=
  A272009.P9208722681090242085.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A272009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272010.P7180507134470778556

`Δ[A272007(n)]`
-/

namespace A272010.P7180507134470778556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272010.P7180507134470778556

noncomputable section

/-- A272010: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 413", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A272010.P7180507134470778556`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3131 terms. -/
def A272010 (n : ℕ) : ℤ :=
  A272010.P7180507134470778556.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3131 terms. -/
def A272010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272104.P17692918465873460344

`∑[lcm(2, n%2*A004526(n))]`
-/

namespace A272104.P17692918465873460344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (((n % 2 : ℕ) : ℤ) * A004526 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272104.P17692918465873460344

noncomputable section

/-- A272104: Sum of the even numbers among the larger parts of the partitions of n into two parts.

Offset 0, canonical program `A272104.P17692918465873460344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272104 (n : ℕ) : ℤ :=
  (A272104.P17692918465873460344.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A272104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272475.P14322628035038619025

`lt[1, A086892(n+1)]+1`
-/

namespace A272475.P14322628035038619025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086892 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A272475.P14322628035038619025

noncomputable section

/-- A272475: Numbers n such that 2^n-1 and 3^n-1 are not coprime.

Offset 1, canonical program `A272475.P14322628035038619025`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A272475 (n : ℕ) : ℤ :=
  (A272475.P14322628035038619025.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A272475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272477.P11613366699694065365

`lt[Δ[A048678(n)], 2*n]`
-/

namespace A272477.P11613366699694065365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A272477.P11613366699694065365

noncomputable section

/-- A272477: Numbers n that are coprime to the numerator of zeta(2*n)/(Pi^(2*n)).

Offset 1, canonical program `A272477.P11613366699694065365`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A272477 (n : ℕ) : ℤ :=
  (A272477.P11613366699694065365.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A272477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272532.P12999477762665833133

`(A049474(n+1)%2)²`
-/

namespace A272532.P12999477762665833133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049474 (n + 1)) 2 ^ 2

end

end A272532.P12999477762665833133

noncomputable section

/-- A272532: Single bit representation of the sum of two sinusoids with periods 2 and 2*sqrt(2).

Offset 1, canonical program `A272532.P12999477762665833133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A272532 (n : ℕ) : ℤ :=
  A272532.P12999477762665833133.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A272532.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272648.P11003998865257113730

`A032766(Δ[A032766(A242062(n))]²)`
-/

namespace A272648.P11003998865257113730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A242062 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A272648.P11003998865257113730

noncomputable section

/-- A272648: a(n) = A002119(n) mod 7.

Offset 0, canonical program `A272648.P11003998865257113730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A272648 (n : ℕ) : ℤ :=
  A272648.P11003998865257113730.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A272648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A272952.P13267642069156642339

`A154691(n+1)-gcd(n+1, ∑[n])`
-/

namespace A272952.P13267642069156642339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154691 (n + 1) - (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A272952.P13267642069156642339

noncomputable section

/-- A272952: Number of n X 2 0..1 arrays with exactly n+2-2 having value 1 and no three 1s forming an isosceles right triangle.

Offset 1, canonical program `A272952.P13267642069156642339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A272952 (n : ℕ) : ℤ :=
  A272952.P13267642069156642339.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. -/
def A272952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273105.P3798720398051730023

`A038572(n)+A006257(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A273105.P3798720398051730023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 n + A006257 n

end

end A273105.P3798720398051730023

noncomputable section

/-- A273105: a(n) = A038572(n) + A006257(n), sum of the two numbers obtained by rotating the binary representation of n by one place to the right and to the left.

Offset 0, canonical program `A273105.P3798720398051730023`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038572, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A273105 (n : ℕ) : ℤ :=
  A273105.P3798720398051730023.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A038572, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A273105.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A273146.P12604411476535506395

`∑[A273144(n)]`
-/

namespace A273146.P12604411476535506395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273146.P12604411476535506395

noncomputable section

/-- A273146: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 597", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A273146.P12604411476535506395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2961 terms. -/
def A273146 (n : ℕ) : ℤ :=
  A273146.P12604411476535506395.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2961 terms. -/
def A273146.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273147.P7169736395643555006

`Δ[A273144(n)]`
-/

namespace A273147.P7169736395643555006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273147.P7169736395643555006

noncomputable section

/-- A273147: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 597", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A273147.P7169736395643555006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2866 terms. -/
def A273147 (n : ℕ) : ℤ :=
  A273147.P7169736395643555006.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2866 terms. -/
def A273147.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273167.P942441107459462647

`gcd(C(∑[2*char[∑[n+1]]], n-C(∑[char[∑[n+1]]], 2)), A001147(∑[char[∑[n+1]]]))`
-/

namespace A273167.P942441107459462647
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

open Classical in
def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f8 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)).toNat : ℤ) (A001147 (∑ j ∈ Finset.range (n + 1), f7 j))

end

end A273167.P942441107459462647

noncomputable section

/-- A273167: Numerators of coefficient triangle for expansion of x^(2*n) in terms of Chebyshev polynomials of the first kind T(2*m, x) (A127674).

Offset 0, canonical program `A273167.P942441107459462647`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A273167 (n : ℕ) : ℤ :=
  (A273167.P942441107459462647.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1891 terms. -/
def A273167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273499.P7149026003240691032

`or(1, A016754(n)-A189007(n+1))`
-/

namespace A273499.P7149026003240691032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A016754 n - A189007 (n + 1))

end

end A273499.P7149026003240691032

noncomputable section

/-- A273499: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 771", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A273499.P7149026003240691032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2790 terms. -/
def A273499 (n : ℕ) : ℤ :=
  A273499.P7149026003240691032.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2790 terms. -/
def A273499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273531.P16096127716137226056

`A006943(2*2*A164089(n+1))`
-/

namespace A273531.P16096127716137226056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006943 (2 * (2 * A164089 (n + 1))).toNat

end

end A273531.P16096127716137226056

noncomputable section

/-- A273531: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 20", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A273531.P16096127716137226056`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A273531 (n : ℕ) : ℤ :=
  A273531.P16096127716137226056.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A273531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273623.P7653286071170375673

`∑[A002878(n)]*∑[A212804(n)]`
-/

namespace A273623.P7653286071170375673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A273623.P7653286071170375673

noncomputable section

/-- A273623: a(n) = Fibonacci(3*n) - (2 + (-1)^n)*Fibonacci(n).

Offset 1, canonical program `A273623.P7653286071170375673`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A273623 (n : ℕ) : ℤ :=
  A273623.P7653286071170375673.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A273623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273692.P13086714113626888926

`A000079(A088705(3*n+2)+n+1)`
-/

namespace A273692.P13086714113626888926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A088705 (3 * n + 2) + (n + 1 : ℤ)).toNat

end

end A273692.P13086714113626888926

noncomputable section

/-- A273692: a(n) is the denominator of 2*O(n+1) - O(n+2) where O(n) = n/2^n, the n-th Oresme number.

Offset 0, canonical program `A273692.P13086714113626888926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A273692 (n : ℕ) : ℤ :=
  A273692.P13086714113626888926.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A273692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273767.P5714310039516204323

`A273385(n)-A171386(n+1)`
-/

namespace A273767.P5714310039516204323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273385 n - A171386 (n + 1)

end

end A273767.P5714310039516204323

noncomputable section

/-- A273767: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 913", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A273767.P5714310039516204323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A273767 (n : ℕ) : ℤ :=
  A273767.P5714310039516204323.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A273767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273892.P3546823388509802216

`eq[0, A000030(n)%2]`
-/

namespace A273892.P3546823388509802216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000030 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A273892.P3546823388509802216

noncomputable section

/-- A273892: Numbers starting with an even (decimal) digit.

Offset 1, canonical program `A273892.P3546823388509802216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A273892 (n : ℕ) : ℤ :=
  (A273892.P3546823388509802216.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A273892.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273911.P714773081203146944

`A038184(n)%A198633(n)`
-/

namespace A273911.P714773081203146944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038184 n) (A198633 n)

end

end A273911.P714773081203146944

noncomputable section

/-- A273911: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 614", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A273911.P714773081203146944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A273911 (n : ℕ) : ℤ :=
  A273911.P714773081203146944.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A273911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273926.P11811595775230252217

`A005187(n)-(n-1)*n%2`
-/

namespace A273926.P11811595775230252217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n - ((n : ℤ) - 1) * ((n % 2 : ℕ) : ℤ)

end

end A273926.P11811595775230252217

noncomputable section

/-- A273926: Given G(x) such that G( G(x)^2 - G(x)^3 ) = x^2, then G(x) = Sum_{n>=1} A273925(n)*x^n / 2^a(n).

Offset 1, canonical program `A273926.P11811595775230252217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A273926 (n : ℕ) : ℤ :=
  A273926.P11811595775230252217.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A273926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274010.P14654792066424409895

`A092338(A028310(n))-1`
-/

namespace A274010.P14654792066424409895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092338 (A028310 n).toNat - 1

end

end A274010.P14654792066424409895

noncomputable section

/-- A274010: Boris Stechkin function: a(n) is the number of m with 2 <= m <= n and floor(n(m-1)/m) divisible by m-1.

Offset 0, canonical program `A274010.P14654792066424409895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274010 (n : ℕ) : ℤ :=
  A274010.P14654792066424409895.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274010.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274087.P7398759194992797752

`round(sqrt(A000290(n²))*sin(n))`
-/

namespace A274087.P7398759194992797752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A000290 (n ^ 2) : ℝ) * Real.sin (n : ℝ))

end

end A274087.P7398759194992797752

noncomputable section

/-- A274087: Nearest integer to n^2*sin(n).

Offset 0, canonical program `A274087.P7398759194992797752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A274087 (n : ℕ) : ℤ :=
  A274087.P7398759194992797752.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A274087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274089.P10433632364485525915

`floor(A057716(n+1)/2)`
-/

namespace A274089.P10433632364485525915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057716 (n + 1) : ℚ) / 2⌋

end

end A274089.P10433632364485525915

noncomputable section

/-- A274089: Numbers repeated except that powers of 2 only appear once.

Offset 1, canonical program `A274089.P10433632364485525915`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274089 (n : ℕ) : ℤ :=
  A274089.P10433632364485525915.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274089.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A274099.P13893247273971540902

`A001400(∑[n])`
-/

namespace A274099.P13893247273971540902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A274099.P13893247273971540902

noncomputable section

/-- A274099: Number of partitions of n*(n-1)/2 into at most four parts.

Offset 1, canonical program `A274099.P13893247273971540902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A274099 (n : ℕ) : ℤ :=
  A274099.P13893247273971540902.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A274099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274140.P16809713073443717918

`A001414(A000217(n+1))`
-/

namespace A274140.P16809713073443717918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A000217 (n + 1)).toNat

end

end A274140.P16809713073443717918

noncomputable section

/-- A274140: Sum of primes dividing n-th triangular number, counted with multiplicity.

Offset 1, canonical program `A274140.P16809713073443717918`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274140 (n : ℕ) : ℤ :=
  A274140.P16809713073443717918.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A274140.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A274216.P7897758151784817100

`A006943(and(A003817(n), A042948(n)))`
-/

namespace A274216.P7897758151784817100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006943 (Int.land (A003817 n) (A042948 n)).toNat

end

end A274216.P7897758151784817100

noncomputable section

/-- A274216: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 22", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A274216.P7897758151784817100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A274216 (n : ℕ) : ℤ :=
  A274216.P7897758151784817100.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A274216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274319.P11083266819951197590

`∩[3*n, A054683(n+1)]`
-/

namespace A274319.P11083266819951197590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274319.P11083266819951197590

noncomputable section

/-- A274319: Numbers whose digit sum is divisible by 6.

Offset 1, canonical program `A274319.P11083266819951197590`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3338 terms. -/
def A274319 (n : ℕ) : ℤ :=
  (A274319.P11083266819951197590.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3338 terms. -/
def A274319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274397.P17572640647558603460

`lt[1, gcd(5, A000203(n+1))]+1`
-/

namespace A274397.P17572640647558603460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A000203 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A274397.P17572640647558603460

noncomputable section

/-- A274397: Positive integers m such that sigma(m) is divisible by 5.

Offset 1, canonical program `A274397.P17572640647558603460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274397 (n : ℕ) : ℤ :=
  (A274397.P17572640647558603460.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274557.P17532992235864728573

`lt[A000203(n+1)%(n+7), 1]+1`
-/

namespace A274557.P17532992235864728573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (n + 7 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A274557.P17532992235864728573

noncomputable section

/-- A274557: Numbers k such that sigma(k) == 0 (mod k+6).

Offset 1, canonical program `A274557.P17532992235864728573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1049 terms. -/
def A274557 (n : ℕ) : ℤ :=
  (A274557.P17532992235864728573.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1049 terms. -/
def A274557.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274601.P12542519559083663936

`2*A132171(n)-(n+1)`
-/

namespace A274601.P12542519559083663936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132171 n - (n + 1 : ℤ)

end

end A274601.P12542519559083663936

noncomputable section

/-- A274601: a(n) = 2*3^(s-1) - n, where s is the number of trits of n in balanced ternary form.

Offset 1, canonical program `A274601.P12542519559083663936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274601 (n : ℕ) : ℤ :=
  A274601.P12542519559083663936.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A274601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274627.P2178317026050334139

`A274230(A065033(n))*A274230(A123108(n))`
-/

namespace A274627.P2178317026050334139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274230 (A065033 n).toNat * A274230 (A123108 n).toNat

end

end A274627.P2178317026050334139

noncomputable section

/-- A274627: Product_{i=0..3} (2^floor((n+i)/4)-1).

Offset 0, canonical program `A274627.P2178317026050334139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A274627 (n : ℕ) : ℤ :=
  A274627.P2178317026050334139.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A274627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274675.P17478295696903722210

`∩[A001132(n+1), A045386(n+1)]`
-/

namespace A274675.P17478295696903722210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A274675.P17478295696903722210

noncomputable section

/-- A274675: Primes p such that p = x^2 + 14*y^2 or p = 2*x^2 + 7*y^2, where p != 2, 7 and x, y are integers.

Offset 1, canonical program `A274675.P17478295696903722210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4983 terms. -/
def A274675 (n : ℕ) : ℤ :=
  (A274675.P17478295696903722210.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4983 terms. -/
def A274675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A274918.P14684548943861349377

`lt[(A000217(n+2)+∑{d}[n, #])%2, 1]`
-/

namespace A274918.P14684548943861349377
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (n + 2) + ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)) 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A274918.P14684548943861349377

noncomputable section

/-- A274918: Numbers n such that the sum of numbers less than n that do not divide n is odd.

Offset 1, canonical program `A274918.P14684548943861349377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A274918 (n : ℕ) : ℤ :=
  (A274918.P14684548943861349377.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A274918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275324.P5051754132568334749

`ceil(A056040(n)/2)`
-/

namespace A275324.P5051754132568334749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A056040 n : ℚ) / 2⌉

end

end A275324.P5051754132568334749

noncomputable section

/-- A275324: Expansion of (x*(1-4*x^2)^(-3/2) + (1-4*x^2)^(-1/2) + x + 1)/2.

Offset 0, canonical program `A275324.P5051754132568334749`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A275324 (n : ℕ) : ℤ :=
  A275324.P5051754132568334749.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A275324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275439.P11410885110955459842

`A094686(n)-A240847(n+2)`
-/

namespace A275439.P11410885110955459842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094686 n - A240847 (n + 2)

end

end A275439.P11410885110955459842

noncomputable section

/-- A275439: Sum of the asymmetry degrees of all compositions of n with parts in {1,2}.

Offset 0, canonical program `A275439.P11410885110955459842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 471 terms. -/
def A275439 (n : ℕ) : ℤ :=
  A275439.P11410885110955459842.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 471 terms. -/
def A275439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275632.P10606339663826706146

`A004275(∑{d}[n, A004396(#)]+1)`
-/

namespace A275632.P10606339663826706146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (∑ d ∈ Nat.divisors (f1 n), A004396 d + 1).toNat

end

end A275632.P10606339663826706146

noncomputable section

/-- A275632: Andrews's 4-shadow function THETA.BAR_3(q).

Offset 0, canonical program `A275632.P10606339663826706146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A275632 (n : ℕ) : ℤ :=
  A275632.P10606339663826706146.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A275632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275638.P13000109410374725641

`Δ[Δ[Δ[A005044(n)]]]`
-/

namespace A275638.P13000109410374725641
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275638.P13000109410374725641

noncomputable section

/-- A275638: Expansion of (1-q)^k/Product_{j=1..k} (1-q^j) for k=4.

Offset 0, canonical program `A275638.P13000109410374725641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A275638 (n : ℕ) : ℤ :=
  A275638.P13000109410374725641.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A275638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275665.P16385943556992474853

`eq[1, A099635(n+1)]+1`
-/

namespace A275665.P16385943556992474853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099635 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A275665.P16385943556992474853

noncomputable section

/-- A275665: Numbers n such that n and sopf(n) are relatively prime, where sopf(n) (A008472) is the sum of the distinct primes dividing n.

Offset 1, canonical program `A275665.P16385943556992474853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5292 terms. -/
def A275665 (n : ℕ) : ℤ :=
  (A275665.P16385943556992474853.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5292 terms. -/
def A275665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275700.P2584852815537331579

`∏{d}[n+1, A000040(#)]`
-/

namespace A275700.P2584852815537331579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A000040 d

end

end A275700.P2584852815537331579

noncomputable section

/-- A275700: a(n) = Product_{d|n} prime(d).

Offset 1, canonical program `A275700.P2584852815537331579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2519 terms. -/
def A275700 (n : ℕ) : ℤ :=
  A275700.P2584852815537331579.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2519 terms. -/
def A275700.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275771.P3709999984210797197

`A000040(n-3)-a(n-3)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A275771.P3709999984210797197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  A000040 (n - 3) - a (n - 3)

end

end A275771.P3709999984210797197

noncomputable section

/-- A275771: a(n+3) = A008578(n+1) -a(n), a(0) = a(1) = a(2) = 0.

Offset 0, canonical program `A275771.P3709999984210797197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275771 (n : ℕ) : ℤ :=
  A275771.P3709999984210797197.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A275771.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275799.P1069378025426575222

`∑[∑[A000583(n+1)+A007590(n+1)²]]`
-/

namespace A275799.P1069378025426575222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (n + 1) + A007590 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275799.P1069378025426575222

noncomputable section

/-- A275799: Number of inequivalent (modulo C_4 rotations) square n X n grids with squares coming in two colors and three squares have one of the colors.

Offset 2, canonical program `A275799.P1069378025426575222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A275799 (n : ℕ) : ℤ :=
  A275799.P1069378025426575222.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A275799.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275827.P4744226065128384971

`A069720(n+1)+A082144(n)-A082143(n)`
-/

namespace A275827.P4744226065128384971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069720 (n + 1) + (A082144 n - A082143 n)

end

end A275827.P4744226065128384971

noncomputable section

/-- A275827: a(n) = Sum_{k=0..n} binomial(n+k+2,k)*binomial(2*n+1,n-k).

Offset 0, canonical program `A275827.P4744226065128384971`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A275827 (n : ℕ) : ℤ :=
  A275827.P4744226065128384971.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A275827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275857.P3012977211852040062

`A192910(n)+ceil(A192909(n)/2)`
-/

namespace A275857.P3012977211852040062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192910 n + ⌈(A192909 n : ℚ) / 2⌉

end

end A275857.P3012977211852040062

noncomputable section

/-- A275857: a(n) = floor(c*s*a(n-1)) + floor(d*r*a(n-2)), where r = (1+sqrt(5))/2, s = r/(r-1), c = 1, d = 1, a(0) = 1, a(1) = 2.

Offset 0, canonical program `A275857.P3012977211852040062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. -/
def A275857 (n : ℕ) : ℤ :=
  A275857.P3012977211852040062.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. -/
def A275857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275858.P14342720566579972518

`∑[∑[A212804(n)]*A010892(n+1)]`
-/

namespace A275858.P14342720566579972518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A010892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275858.P14342720566579972518

noncomputable section

/-- A275858: a(n) = floor(c*r*a(n-1)) - floor(d*s*a(n-2)), where r = (1+sqrt(5))/2, s = r/(r-1), c = 1, d = 1, a(0) = 1, a(1) = 1.

Offset 0, canonical program `A275858.P14342720566579972518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A275858 (n : ℕ) : ℤ :=
  A275858.P14342720566579972518.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A275858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A275868.P16994241827659316143

`A086520(A053438(n))%10`
-/

namespace A275868.P16994241827659316143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086520 (A053438 n).toNat) 10

end

end A275868.P16994241827659316143

noncomputable section

/-- A275868: Numbers n tracing out a spiral path in a pentagonal Z module thereby creating a ten-fold twin pattern with relations to quasicrystals.

Offset 1, canonical program `A275868.P16994241827659316143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 501 terms. -/
def A275868 (n : ℕ) : ℤ :=
  A275868.P16994241827659316143.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 501 terms. -/
def A275868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276055.P8454000691251205862

`A006053(A052938(n+1))-A187065(n)`
-/

namespace A276055.P8454000691251205862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006053 (A052938 (n + 1)).toNat - A187065 n

end

end A276055.P8454000691251205862

noncomputable section

/-- A276055: Number of palindromic compositions of n with parts in {1,2,4,6,8,10,...}.

Offset 0, canonical program `A276055.P8454000691251205862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 782 terms. -/
def A276055 (n : ℕ) : ℤ :=
  A276055.P8454000691251205862.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 782 terms. -/
def A276055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276071.P2380363936540344839

`A002265(n)^A056699(A000032(and(3, -n)))`
-/

namespace A276071.P2380363936540344839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002265 n : ℚ) ^ (A056699 (A000032 (Int.land 3 (-(n : ℤ))).toNat).toNat : ℤ)

end

end A276071.P2380363936540344839

noncomputable section

/-- A276071: n^3 followed by n^2 followed by n^4 followed by n.

Offset 0, canonical program `A276071.P2380363936540344839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276071 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A276071.P2380363936540344839.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276090.P6791826420892158713

`A133872(n*(n-2)+2)+and(6, A002264(n))`
-/

namespace A276090.P6791826420892158713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 ((n : ℤ) * ((n : ℤ) - 2) + 2).toNat + Int.land 6 (A002264 n)

end

end A276090.P6791826420892158713

noncomputable section

/-- A276090: Left inverse of A276089: For n = sum_{i=1..} d(i)*i! (with each d(i) <= i), a(n) = sum_{j=1..} d(2j-1)*j!.

Offset 0, canonical program `A276090.P6791826420892158713`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A276090 (n : ℕ) : ℤ :=
  A276090.P6791826420892158713.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A276090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276198.P12861520052574373321

`A000040(A000720(A011551(n)-1+1)+1)`
-/

namespace A276198.P12861520052574373321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A011551 n - 1 + 1).toNat + 1).toNat

end

end A276198.P12861520052574373321

noncomputable section

/-- A276198: Smallest prime >= decimal expansion of phi truncated to n places (A011551), where phi is the golden ratio (A001622).

Offset 0, canonical program `A276198.P12861520052574373321`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A011551, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276198 (n : ℕ) : ℤ :=
  A276198.P12861520052574373321.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A011551, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276198.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276214.P18298263664098779686

`eq[char[A276213(n+1)], A000007(n)]`
-/

namespace A276214.P18298263664098779686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276213 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A276214.P18298263664098779686

noncomputable section

/-- A276214: Position of n^r in the joint ranking of {h^r} and {k^s}, where r = sqrt(3), s = sqrt(5), h > 1, k > 1.

Offset 1, canonical program `A276214.P18298263664098779686`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A276214 (n : ℕ) : ℤ :=
  (A276214.P18298263664098779686.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A276214.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276217.P2515267171898096994

`A134886(n+2)+n`
-/

namespace A276217.P2515267171898096994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134886 (n + 2) + (n : ℤ)

end

end A276217.P2515267171898096994

noncomputable section

/-- A276217: Position of n^s in the joint ranking of {h^r} and {k^s}, where r = sqrt(3), s = sqrt(6), h > 1, k > 1.

Offset 1, canonical program `A276217.P2515267171898096994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A276217 (n : ℕ) : ℤ :=
  A276217.P2515267171898096994.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A276217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276221.P5617290000184054163

`A276215(n+1)+1`
-/

namespace A276221.P5617290000184054163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276215 (n + 1) + 1

end

end A276221.P5617290000184054163

noncomputable section

/-- A276221: Position of n^s in the joint ranking of {h} and {k^s}, s = sqrt(3), h >= 1, k >= 2.

Offset 1, canonical program `A276221.P5617290000184054163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A276221 (n : ℕ) : ℤ :=
  A276221.P5617290000184054163.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A276221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276222.P15539970363786319867

`A152737(n+2)+n+1`
-/

namespace A276222.P15539970363786319867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152737 (n + 2) + (n + 1 : ℤ)

end

end A276222.P15539970363786319867

noncomputable section

/-- A276222: Position of n^s in the joint ranking of {h} and {k^s}, h >= 1, k >= 2, s = golden ratio = (1+sqrt(5))/2.

Offset 1, canonical program `A276222.P15539970363786319867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A276222 (n : ℕ) : ℤ :=
  A276222.P15539970363786319867.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A276222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276368.P15727639332310724622

`A056449(n)*A065942(n)`
-/

namespace A276368.P15727639332310724622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056449 n * A065942 n

end

end A276368.P15727639332310724622

noncomputable section

/-- A276368: G.f. A(x) satisfies: A(x - 3*x^3) = 1/(1 - 3*x).

Offset 0, canonical program `A276368.P15727639332310724622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A276368 (n : ℕ) : ℤ :=
  A276368.P15727639332310724622.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A276368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276376.P13650551449517136747

`Δ[A054861(or(1, A000040(n+1)))]`
-/

namespace A276376.P13650551449517136747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (Int.lor 1 (A000040 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276376.P13650551449517136747

noncomputable section

/-- A276376: Exponent of highest power of 3 dividing product of composite numbers between n-th prime and (n+1)-st prime.

Offset 1, canonical program `A276376.P13650551449517136747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1228 terms. -/
def A276376 (n : ℕ) : ℤ :=
  A276376.P13650551449517136747.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1228 terms. -/
def A276376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276383.P7168359170263239698

`A004526(A277722(n+1)+1+n)`
-/

namespace A276383.P7168359170263239698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A277722 (n + 1) + 1 + (n : ℤ)).toNat

end

end A276383.P7168359170263239698

noncomputable section

/-- A276383: Complement of A158919: complementary Beatty sequence to the Beatty sequence defined by the tribonacci constant tau = A058265.

Offset 1, canonical program `A276383.P7168359170263239698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A276383 (n : ℕ) : ℤ :=
  A276383.P7168359170263239698.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A276383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276395.P13234382630465203208

`Δ[floor(A158226(n+1)/A158272(n+1))]`
-/

namespace A276395.P13234382630465203208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A158226 (n + 1) : ℚ) / (A158272 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276395.P13234382630465203208

noncomputable section

/-- A276395: Characteristic function of floor(36*n/25).

Offset 1, canonical program `A276395.P13234382630465203208`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A276395 (n : ℕ) : ℤ :=
  A276395.P13234382630465203208.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A276395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276449.P44379083446101465

`C(A002620(n+1), A001281(∑[n]))`
-/

namespace A276449.P44379083446101465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002620 (n + 1)).toNat (A001281 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A276449.P44379083446101465

noncomputable section

/-- A276449: Number of 1-orbits of the cyclic group C_4 for a bi-colored square n X n grid with n squares of one color.

Offset 1, canonical program `A276449.P44379083446101465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A276449 (n : ℕ) : ℤ :=
  (A276449.P44379083446101465.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A276449.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276502.P6559098655028179355

`lcm(((n+1)%a(n-1))!, A055642(n+1))` with `a(0)=1`
-/

namespace A276502.P6559098655028179355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (Nat.factorial ((n + 1) % a (n - 1)) : ℤ) (A055642 (n + 1))

end

end A276502.P6559098655028179355

noncomputable section

/-- A276502: Least k > 0 such that A045876(n) divides A045876(n*10^k).

Offset 1, canonical program `A276502.P6559098655028179355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A276502 (n : ℕ) : ℤ :=
  (A276502.P6559098655028179355.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A276502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276632.P12790883415635058732

`A079866(∏{p}[n+1, #])`
-/

namespace A276632.P12790883415635058732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079866 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A276632.P12790883415635058732

noncomputable section

/-- A276632: Integer part of the geometric mean of the prime factors of n.

Offset 1, canonical program `A276632.P12790883415635058732`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A276632 (n : ℕ) : ℤ :=
  A276632.P12790883415635058732.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A276632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276634.P10773123215461950839

`A001158(n+1)-A000578(n+1)`
-/

namespace A276634.P10773123215461950839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (n + 1) - A000578 (n + 1)

end

end A276634.P10773123215461950839

noncomputable section

/-- A276634: Sum of cubes of proper divisors of n.

Offset 1, canonical program `A276634.P10773123215461950839`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001158, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276634 (n : ℕ) : ℤ :=
  A276634.P10773123215461950839.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001158, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276634.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A276713.P3108647971272801842

`eq[A032741(n+3), A032741(n)]`
-/

namespace A276713.P3108647971272801842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A276713.P3108647971272801842

noncomputable section

/-- A276713: Numbers n such that n and n+3 have the same number of divisors (A000005).

Offset 1, canonical program `A276713.P3108647971272801842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A276713 (n : ℕ) : ℤ :=
  (A276713.P3108647971272801842.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A276713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276757.P11612559001740181464

`A080513(record[or(n, floor(n/2))])%6`
-/

namespace A276757.P11612559001740181464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080513 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) 6

end

end A276757.P11612559001740181464

noncomputable section

/-- A276757: Infinite Fibonacci word on the alphabet {1,2,3,4,5}.

Offset 1, canonical program `A276757.P11612559001740181464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A276757 (n : ℕ) : ℤ :=
  A276757.P11612559001740181464.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A276757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276806.P5142703683070357090

`A029837(A252736(n+1)+1)`
-/

namespace A276806.P5142703683070357090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A252736 (n + 1) + 1).toNat

end

end A276806.P5142703683070357090

noncomputable section

/-- A276806: Height of the shortest binary factorization tree of n.

Offset 1, canonical program `A276806.P5142703683070357090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276806 (n : ℕ) : ℤ :=
  A276806.P5142703683070357090.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276857.P14729695427695350046

`a(Δ[A198084(n)])` with `a(0)=2, a(1)=3, a(2)=2, a(3)=3`
-/

namespace A276857.P14729695427695350046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198084 n

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 2, 3] fun n a =>
  a (f1 (n + 1) - f1 n).toNat

end

end A276857.P14729695427695350046

noncomputable section

/-- A276857: First differences of the Beatty sequence A022841 for sqrt(7).

Offset 1, canonical program `A276857.P14729695427695350046`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276857 (n : ℕ) : ℤ :=
  (A276857.P14729695427695350046.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276858.P4876479302285241086

`3-Δ[A195177(n)]`
-/

namespace A276858.P4876479302285241086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (f1 (n + 1) - f1 n)

end

end A276858.P4876479302285241086

noncomputable section

/-- A276858: First differences of the Beatty sequence A022842 for sqrt(8).

Offset 1, canonical program `A276858.P4876479302285241086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276858 (n : ℕ) : ℤ :=
  A276858.P4876479302285241086.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276859.P14467022770255802899

`abs(Δ[A022843(n)])`
-/

namespace A276859.P14467022770255802899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A276859.P14467022770255802899

noncomputable section

/-- A276859: First differences of the Beatty sequence A022843 for e.

Offset 1, canonical program `A276859.P14467022770255802899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276859 (n : ℕ) : ℤ :=
  A276859.P14467022770255802899.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276860.P581861567182324134

`abs(Δ[A276853(n)])`
-/

namespace A276860.P581861567182324134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276853 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A276860.P581861567182324134

noncomputable section

/-- A276860: First differences of the Beatty sequence A276853 for 2*e.

Offset 1, canonical program `A276860.P581861567182324134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276860 (n : ℕ) : ℤ :=
  A276860.P581861567182324134.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276860.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276866.P1138749720515213800

`A081147(n)+2`
-/

namespace A276866.P1138749720515213800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081147 n + 2

end

end A276866.P1138749720515213800

noncomputable section

/-- A276866: First differences of the Beatty sequence A004976 for 2 + sqrt(5).

Offset 1, canonical program `A276866.P1138749720515213800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276866 (n : ℕ) : ℤ :=
  A276866.P1138749720515213800.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276868.P13312452639279008275

`Δ[A276855(n)]`
-/

namespace A276868.P13312452639279008275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276855 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A276868.P13312452639279008275

noncomputable section

/-- A276868: First differences of the Beatty sequence A276855 for 3 + phi, where phi = golden ratio = (1 + sqrt(5))/2.

Offset 1, canonical program `A276868.P13312452639279008275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276868 (n : ℕ) : ℤ :=
  A276868.P13312452639279008275.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276869.P5574487162763271941

`A195128(3-Δ[A195128(n)])`
-/

namespace A276869.P5574487162763271941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195128 (3 - (f1 (n + 1) - f1 n)).toNat

end

end A276869.P5574487162763271941

noncomputable section

/-- A276869: First differences of the Beatty sequence A182769 for 2 + sqrt(1/2).

Offset 1, canonical program `A276869.P5574487162763271941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276869 (n : ℕ) : ℤ :=
  A276869.P5574487162763271941.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276885.P994545349588383328

`A130568(n)+n`
-/

namespace A276885.P994545349588383328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130568 n + (n : ℤ)

end

end A276885.P994545349588383328

noncomputable section

/-- A276885: Sums-complement of the Beatty sequence for 1 + phi.

Offset 1, canonical program `A276885.P994545349588383328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276885 (n : ℕ) : ℤ :=
  A276885.P994545349588383328.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276935.P875992339060351895

`∑{p}[n+1, val(A000040(val(n+1, #)), #)]`
-/

namespace A276935.P875992339060351895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (A000040 (SequenceMachineLib.valuation (n + 1) p)).toNat p

end

end A276935.P875992339060351895

noncomputable section

/-- A276935: Number of distinct prime factors prime(k) of n such that prime(k)^k, but not prime(k)^(k+1) is a divisor of n.

Offset 1, canonical program `A276935.P875992339060351895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276935 (n : ℕ) : ℤ :=
  (A276935.P875992339060351895.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A276935.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277046.P5305586577436346867

`A196199(n)+A052551(A000267(n))`
-/

namespace A277046.P5305586577436346867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 n + A052551 (A000267 n).toNat

end

end A277046.P5305586577436346867

noncomputable section

/-- A277046: Triangle read by rows: T(n,k) = 2^n - n + k - 1 for n >= 1, with 1 <= k <= 2n-1.

Offset 1, canonical program `A277046.P5305586577436346867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A277046 (n : ℕ) : ℤ :=
  A277046.P5305586577436346867.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A277046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277065.P11363507706313107840

`∑{d}[n+1, A055012(#)]`
-/

namespace A277065.P11363507706313107840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055012 d

end

end A277065.P11363507706313107840

noncomputable section

/-- A277065: Sum of cubes of the digits of all divisors of n.

Offset 1, canonical program `A277065.P11363507706313107840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277065 (n : ℕ) : ℤ :=
  A277065.P11363507706313107840.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277065.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277137.P3554020471178101780

`A246393(A110654(n))-A000035(n)`
-/

namespace A277137.P3554020471178101780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246393 (A110654 n).toNat - A000035 n

end

end A277137.P3554020471178101780

noncomputable section

/-- A277137: Numbers k such that cos(k) > 0 and cos(k+2) < 0.

Offset 1, canonical program `A277137.P3554020471178101780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277137 (n : ℕ) : ℤ :=
  A277137.P3554020471178101780.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277149.P7769864639982086180

`A197879(A001954(2*13*n))`
-/

namespace A277149.P7769864639982086180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197879 (A001954 (2 * (13 * n))).toNat

end

end A277149.P7769864639982086180

noncomputable section

/-- A277149: Lexicographically least sequence of nonnegative integers that avoids 9/5-powers.

Offset 0, canonical program `A277149.P7769864639982086180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A277149 (n : ℕ) : ℤ :=
  A277149.P7769864639982086180.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 113 terms. -/
def A277149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277155.P4577781163159758858

`A144596(A030503(n+4)+2)`
-/

namespace A277155.P4577781163159758858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144596 (A030503 (n + 4) + 2).toNat

end

end A277155.P4577781163159758858

noncomputable section

/-- A277155: Lexicographically least sequence of nonnegative integers that avoids 11/7-powers.

Offset 0, canonical program `A277155.P4577781163159758858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A277155 (n : ℕ) : ℤ :=
  A277155.P4577781163159758858.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A277155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277156.P10138368382409887168

`val(A014132(A034856(n+1)), 17)`
-/

namespace A277156.P10138368382409887168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A014132 (A034856 (n + 1)).toNat).toNat 17

end

end A277156.P10138368382409887168

noncomputable section

/-- A277156: Lexicographically least sequence of nonnegative integers that avoids 12/7-powers.

Offset 0, canonical program `A277156.P10138368382409887168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A277156 (n : ℕ) : ℤ :=
  (A277156.P10138368382409887168.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A277156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277161.P6226237887953159833

`val(A000027(A018227(n+1)), 11)`
-/

namespace A277161.P6226237887953159833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000027 (A018227 (n + 1)).toNat).toNat 11

end

end A277161.P6226237887953159833

noncomputable section

/-- A277161: Lexicographically least sequence of nonnegative integers that avoids 15/8-powers.

Offset 0, canonical program `A277161.P6226237887953159833`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A277161 (n : ℕ) : ℤ :=
  (A277161.P6226237887953159833.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. -/
def A277161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277209.P17765883351870887207

`A010785(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A277209.P17765883351870887207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A010785 n + a (A023443 n).toNat

end

end A277209.P17765883351870887207

noncomputable section

/-- A277209: Partial sums of repdigit numbers (A010785).

Offset 0, canonical program `A277209.P17765883351870887207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 894 terms. -/
def A277209 (n : ℕ) : ℤ :=
  A277209.P17765883351870887207.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 894 terms. -/
def A277209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277247.P8195325220674495200

`A000984(n)-A058621(n)`
-/

namespace A277247.P8195325220674495200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A058621 n

end

end A277247.P8195325220674495200

noncomputable section

/-- A277247: a(n) = Sum_{k=0..floor(n/2)} binomial(n, k)^2.

Offset 0, canonical program `A277247.P8195325220674495200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A277247 (n : ℕ) : ℤ :=
  A277247.P8195325220674495200.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A277247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277377.P315428366020284387

`Δ[A053187(n)+A002061(A056847(n))]`
-/

namespace A277377.P315428366020284387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053187 n + A002061 (A056847 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A277377.P315428366020284387

noncomputable section

/-- A277377: Each odd integer k is followed by k even integers.

Offset 1, canonical program `A277377.P315428366020284387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7162 terms. -/
def A277377 (n : ℕ) : ℤ :=
  A277377.P315428366020284387.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7162 terms. -/
def A277377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277560.P12776290003756723041

`A002275((n+1)*(n%2)^n)`
-/

namespace A277560.P12776290003756723041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 ((n + 1) * (n % 2) ^ n)

end

end A277560.P12776290003756723041

noncomputable section

/-- A277560: Binary representation of the x-axis, from the left edge to the origin, or from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 7", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A277560.P12776290003756723041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A277560 (n : ℕ) : ℤ :=
  A277560.P12776290003756723041.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A277560.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277573.P5388903635817683430

`1/3*A277569(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277573.P5388903635817683430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (A277569 (n + 1) : ℚ)

end

end A277573.P5388903635817683430

noncomputable section

/-- A277573: a(n) = (1/3)*A277569(n).

Offset 1, canonical program `A277573.P5388903635817683430`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A277569, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277573 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A277573.P5388903635817683430.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A277569, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277573.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277576.P12489906242859010906

`A007916(a(n-1))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277576.P12489906242859010906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007916 (a (n - 1)).toNat

end

end A277576.P12489906242859010906

noncomputable section

/-- A277576: a(1)=1; thereafter a(n) = A007916(a(n-1)).

Offset 1, canonical program `A277576.P12489906242859010906`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007916, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277576 (n : ℕ) : ℤ :=
  A277576.P12489906242859010906.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007916, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277576.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277599.P16892913130215631464

`eq[1, A004151(n+1)%2]+1`
-/

namespace A277599.P16892913130215631464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004151 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277599.P16892913130215631464

noncomputable section

/-- A277599: (1/5)*A277592.

Offset 1, canonical program `A277599.P16892913130215631464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5556 terms. -/
def A277599 (n : ℕ) : ℤ :=
  (A277599.P16892913130215631464.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5556 terms. -/
def A277599.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277789.P1199236273393294411

`∑[xor(A002203(n)-1, -and(1, n))]`
-/

namespace A277789.P1199236273393294411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002203 n - 1) (-(Nat.land 1 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277789.P1199236273393294411

noncomputable section

/-- A277789: a(n) = Sum_{k=0..n} (-1)^k*floor((1 + sqrt(2))^k).

Offset 0, canonical program `A277789.P1199236273393294411`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A277789 (n : ℕ) : ℤ :=
  A277789.P1199236273393294411.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A277789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277790.P4817800256069150675

`lcm(n+1, A039653(n+1))/(n+1)`
-/

namespace A277790.P4817800256069150675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A039653 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A277790.P4817800256069150675

noncomputable section

/-- A277790: Numerator of sum of reciprocals of proper divisors of n.

Offset 1, canonical program `A277790.P4817800256069150675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277790 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A277790.P4817800256069150675.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277791.P6185971221703671631

`(n+1)/gcd(A039653(n+1), n+1)`
-/

namespace A277791.P6185971221703671631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A039653 (n + 1)) (n + 1 : ℤ) : ℚ)

end

end A277791.P6185971221703671631

noncomputable section

/-- A277791: Denominator of sum of reciprocals of proper divisors of n.

Offset 1, canonical program `A277791.P6185971221703671631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277791 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A277791.P6185971221703671631.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A277791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277849.P10272640155293857379

`A102684(A014824(n))`
-/

namespace A277849.P10272640155293857379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102684 (A014824 n).toNat

end

end A277849.P10272640155293857379

noncomputable section

/-- A277849: Number of digits '9' in the set of all numbers from 0 to A014824(n) = sum_{i=1..n} i*10^(n-i) = (0, 1, 12, 123, 1234, 12345, ...).

Offset 0, canonical program `A277849.P10272640155293857379`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102684, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277849 (n : ℕ) : ℤ :=
  A277849.P10272640155293857379.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A102684, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A277849.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277904.P1714897233250926635

`n%A000123(∑[char[A000123(n+1)]])`
-/

namespace A277904.P1714897233250926635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A000123 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A277904.P1714897233250926635

noncomputable section

/-- A277904: Irregular table: row n (n >= 0) is obtained by listing numbers 0 .. A018819(n)-1.

Offset 1, canonical program `A277904.P1714897233250926635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9828 terms. -/
def A277904 (n : ℕ) : ℤ :=
  A277904.P1714897233250926635.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9828 terms. -/
def A277904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277917.P3941357166574701698

`A006943(A164089(4*n+1))`
-/

namespace A277917.P3941357166574701698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006943 (A164089 (4 * n + 1)).toNat

end

end A277917.P3941357166574701698

noncomputable section

/-- A277917: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 4", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A277917.P3941357166574701698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A277917 (n : ℕ) : ℤ :=
  A277917.P3941357166574701698.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A277917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277918.P6699242724950859550

`and(A026644(n), A062878(n))`
-/

namespace A277918.P6699242724950859550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026644 n) (A062878 n)

end

end A277918.P6699242724950859550

noncomputable section

/-- A277918: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 4", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A277918.P6699242724950859550`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A277918 (n : ℕ) : ℤ :=
  A277918.P6699242724950859550.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A277918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277926.P8317576803823073803

`A094026(A266220(n))`
-/

namespace A277926.P8317576803823073803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (A266220 n).toNat

end

end A277926.P8317576803823073803

noncomputable section

/-- A277926: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 5", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A277926.P8317576803823073803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A277926 (n : ℕ) : ℤ :=
  A277926.P8317576803823073803.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A277926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277929.P7965098332852577246

`A277928(n)+A159075(n)`
-/

namespace A277929.P7965098332852577246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277928 n + A159075 n

end

end A277929.P7965098332852577246

noncomputable section

/-- A277929: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 5", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A277929.P7965098332852577246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A277929 (n : ℕ) : ℤ :=
  A277929.P7965098332852577246.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A277929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278403.P13252681327099517620

`∑{d}[n+1, #*A000217(#)]`
-/

namespace A278403.P13252681327099517620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000217 d

end

end A278403.P13252681327099517620

noncomputable section

/-- A278403: a(n) = Sum_{d|n} d^2 * (d+1)/2.

Offset 1, canonical program `A278403.P13252681327099517620`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278403 (n : ℕ) : ℤ :=
  A278403.P13252681327099517620.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278713.P4379502417608644159

`A067998(n)/gcd(A054000(n+2), A067998(n))`
-/

namespace A278713.P4379502417608644159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067998 n : ℚ) / (Int.gcd (A054000 (n + 2)) (A067998 n) : ℚ)

end

end A278713.P4379502417608644159

noncomputable section

/-- A278713: Numerators of (n-1)*(n-3)/(6*(2*n-1)); equivalently, numerators of Dedekind sum s(2,2*n-1).

Offset 1, canonical program `A278713.P4379502417608644159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A278713 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A278713.P4379502417608644159.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A278713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278714.P11221124697154422280

`gcd(6, 1-n)*A096431(n+1)`
-/

namespace A278714.P11221124697154422280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 6 (1 - (n : ℤ)) : ℤ) * A096431 (n + 1)

end

end A278714.P11221124697154422280

noncomputable section

/-- A278714: Denominators of (n-1)*(n-3)/(6*(2*n-1)), for n >= 1. Denominators of Dedekind sum s(2, 2*n-1).

Offset 1, canonical program `A278714.P11221124697154422280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278714 (n : ℕ) : ℤ :=
  A278714.P11221124697154422280.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278721.P3620013212311657528

`A000582(n+10)+A010965(n)-A000580(n+7)`
-/

namespace A278721.P3620013212311657528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 10) + (A010965 (n + 12) - A000580 (n + 7))

end

end A278721.P3620013212311657528

noncomputable section

/-- A278721: Number of nX2 0..3 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order.

Offset 1, canonical program `A278721.P3620013212311657528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A278721 (n : ℕ) : ℤ :=
  A278721.P3620013212311657528.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A278721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278753.P10591540415365618920

`A287468(A109043(n))-A287468(n+1)`
-/

namespace A278753.P10591540415365618920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287468 (A109043 n).toNat - A287468 (n + 1)

end

end A278753.P10591540415365618920

noncomputable section

/-- A278753: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 65", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A278753.P10591540415365618920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A278753 (n : ℕ) : ℤ :=
  A278753.P10591540415365618920.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A278753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278933.P2526544740831554129

`∑[2*A200213(A028310(n))]`
-/

namespace A278933.P2526544740831554129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A200213 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278933.P2526544740831554129

noncomputable section

/-- A278933: Number of 2 X 2 matrices with entries in {0,1,...,n} and permanent = trace with no entry repeated.

Offset 0, canonical program `A278933.P2526544740831554129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278933 (n : ℕ) : ℤ :=
  A278933.P2526544740831554129.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278947.P6960136946126875321

`∑{d}[n, A000566(#)]`
-/

namespace A278947.P6960136946126875321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000566 d

end

end A278947.P6960136946126875321

noncomputable section

/-- A278947: Expansion of Sum_{k>=1} (k*(5*k - 3)/2)*x^k/(1 - x^k).

Offset 0, canonical program `A278947.P6960136946126875321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278947 (n : ℕ) : ℤ :=
  A278947.P6960136946126875321.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278947.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279028.P3494808504256830670

`lcm(A056594(n), A266508(n))`
-/

namespace A279028.P3494808504256830670
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 n) (A266508 n)

end

end A279028.P3494808504256830670

noncomputable section

/-- A279028: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 129", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A279028.P3494808504256830670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A279028 (n : ℕ) : ℤ :=
  (A279028.P3494808504256830670.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A279028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279061.P5329778650763394169

`∑{d}[n, A082784(#-1)]`
-/

namespace A279061.P5329778650763394169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A082784 (d - 1)

end

end A279061.P5329778650763394169

noncomputable section

/-- A279061: Number of divisors of n of the form 7*k + 1.

Offset 0, canonical program `A279061.P5329778650763394169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279061 (n : ℕ) : ℤ :=
  A279061.P5329778650763394169.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A279111.P7103479420215322072

`A232567(n+1)-∑[∑[and(1, n)]]`
-/

namespace A279111.P7103479420215322072
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232567 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A279111.P7103479420215322072

noncomputable section

/-- A279111: Number of non-equivalent ways to place 2 non-attacking kings on an n X n board.

Offset 1, canonical program `A279111.P7103479420215322072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279111 (n : ℕ) : ℤ :=
  A279111.P7103479420215322072.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A279111.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A229087.P10345629012060209210

`A054024(n+1)-A229110(n+1)`
-/

namespace A229087.P10345629012060209210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (n + 1) - A229110 (n + 1)

end

end A229087.P10345629012060209210

noncomputable section

/-- A229087: a(n) = sigma(n) mod n - antisigma(n) mod n, where sigma(n) = A000203(n) = sum of divisor of n, antisigma(n) = A024816(n) = sum of non-divisors of n.

Offset 1, canonical program `A229087.P10345629012060209210`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054024, A229110, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A229087 (n : ℕ) : ℤ :=
  A229087.P10345629012060209210.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054024, A229110, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A229087.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A229679.P202136642927744127

`record[A280370(n)]*A000384(n)`
-/

namespace A229679.P202136642927744127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000384 n

end

end A229679.P202136642927744127

noncomputable section

/-- A229679: Number of defective 3-colorings of an n X 2 0..2 array connected diagonally and antidiagonally with exactly two mistakes, and colors introduced in row-major 0..2 order.

Offset 1, canonical program `A229679.P202136642927744127`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A229679 (n : ℕ) : ℤ :=
  A229679.P202136642927744127.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A229679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230606.P12267848131961719917

`record[A339964(n+2)-1]`
-/

namespace A230606.P12267848131961719917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339964 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A230606.P12267848131961719917

noncomputable section

/-- A230606: Numbers n such that sigma(n) = k*(n+1) for some integer k.

Offset 1, canonical program `A230606.P12267848131961719917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A230606 (n : ℕ) : ℤ :=
  A230606.P12267848131961719917.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A230606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230772.P15398795437404776816

`A230980(comp[3*n])-A230980(n)`
-/

namespace A230772.P15398795437404776816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A230980 n

end

end A230772.P15398795437404776816

noncomputable section

/-- A230772: Number of primes in the half-open interval [n, 3*n/2).

Offset 1, canonical program `A230772.P15398795437404776816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. -/
def A230772 (n : ℕ) : ℤ :=
  A230772.P15398795437404776816.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. -/
def A230772.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230983.P6375785716789403721

`A231067(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A230983.P6375785716789403721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A231067 n + a (n - 2)

end

end A230983.P6375785716789403721

noncomputable section

/-- A230983: Number of white square subarrays of (n+1) X (2+1) binary arrays with no element equal to a strict majority of its diagonal and antidiagonal neighbors, with upper left element zero.

Offset 1, canonical program `A230983.P6375785716789403721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 344 terms. -/
def A230983 (n : ℕ) : ℤ :=
  A230983.P6375785716789403721.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 344 terms. -/
def A230983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235801.P9986508740970972437

`2*n-n%A329494(n)`
-/

namespace A235801.P9986508740970972437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - Int.tmod (n : ℤ) (A329494 n)

end

end A235801.P9986508740970972437

noncomputable section

/-- A235801: Length of n-th horizontal line segment in a diagram of a two-dimensional version of the 3x+1 (or Collatz) problem.

Offset 0, canonical program `A235801.P9986508740970972437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235801 (n : ℕ) : ℤ :=
  A235801.P9986508740970972437.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A235801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239288.P17022959094659211950

`A253062(n+2)-1`
-/

namespace A239288.P17022959094659211950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253062 (n + 2) - 1

end

end A239288.P17022959094659211950

noncomputable section

/-- A239288: Maximal sum of x0 + x0*x1 + ... + x0*x1*...*xk over all compositions x0 + ... + xk = n.

Offset 0, canonical program `A239288.P17022959094659211950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 628 terms. -/
def A239288 (n : ℕ) : ℤ :=
  A239288.P17022959094659211950.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 628 terms. -/
def A239288.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244871.P32635472439923416

`∑[A080827(n+1)*A246695(n)]`
-/

namespace A244871.P32635472439923416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080827 (n + 1) * A246695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244871.P32635472439923416

noncomputable section

/-- A244871: Number of magic labelings with magic sum n of 3rd graph shown in link.

Offset 0, canonical program `A244871.P32635472439923416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244871 (n : ℕ) : ℤ :=
  A244871.P32635472439923416.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245191.P17795432851198493125

`and(A062878(n+1), A266873(n))`
-/

namespace A245191.P17795432851198493125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062878 (n + 1)) (A266873 n)

end

end A245191.P17795432851198493125

noncomputable section

/-- A245191: Successive states of one-sided one-dimensional cellular automaton using Rule 90, starting with a single ON cell, converted to decimal.

Offset 0, canonical program `A245191.P17795432851198493125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A245191 (n : ℕ) : ℤ :=
  A245191.P17795432851198493125.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A245191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245622.P1983515710837540982

`p?[lt[A316864(n), A268643(n)]]`
-/

namespace A245622.P1983515710837540982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A245622.P1983515710837540982

noncomputable section

/-- A245622: Primes having more 1's digits than 3's.

Offset 1, canonical program `A245622.P1983515710837540982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 403 terms. -/
def A245622 (n : ℕ) : ℤ :=
  (A245622.P1983515710837540982.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 403 terms. -/
def A245622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245623.P8231242896739331566

`p?[lt[A268643(n), A316864(n)]]`
-/

namespace A245623.P8231242896739331566
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A245623.P8231242896739331566

noncomputable section

/-- A245623: Primes having more digits 3's than 1's.

Offset 1, canonical program `A245623.P8231242896739331566`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 392 terms. -/
def A245623 (n : ℕ) : ℤ :=
  (A245623.P8231242896739331566.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 392 terms. -/
def A245623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245868.P1432892422557192650

`8*A264238(n+2)`
-/

namespace A245868.P1432892422557192650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A264238 (n + 2)

end

end A245868.P1432892422557192650

noncomputable section

/-- A245868: Number of length n+2 0..7 arrays with some pair in every consecutive three terms totalling exactly 7.

Offset 1, canonical program `A245868.P1432892422557192650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A245868 (n : ℕ) : ℤ :=
  A245868.P1432892422557192650.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. -/
def A245868.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A245997.P11952589961384981586

`A296063(n+1)+A072025(n)+A034262(n)`
-/

namespace A245997.P11952589961384981586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296063 (n + 1) + (A072025 n + A034262 n)

end

end A245997.P11952589961384981586

noncomputable section

/-- A245997: Number of length 2+2 0..n arrays with no pair in any consecutive three terms totalling exactly n.

Offset 1, canonical program `A245997.P11952589961384981586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245997 (n : ℕ) : ℤ :=
  A245997.P11952589961384981586.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A245997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246390.P11775606840383392850

`∪[A277096(n+1)+1, A277096(n+1)]`
-/

namespace A246390.P11775606840383392850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277096 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246390.P11775606840383392850

noncomputable section

/-- A246390: Nonnegative integers k satisfying sin(k) <= 0 and sin(k+1) <= 0.

Offset 0, canonical program `A246390.P11775606840383392850`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246390 (n : ℕ) : ℤ :=
  (A246390.P11775606840383392850.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246396.P8897349307038480004

`∪[A277139(n+1)+1, A277139(n+1)]`
-/

namespace A246396.P8897349307038480004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277139 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A246396.P8897349307038480004

noncomputable section

/-- A246396: Nonnegative integers k satisfying cos(k) <= 0 and cos(k+1) <= 0.

Offset 0, canonical program `A246396.P8897349307038480004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246396 (n : ℕ) : ℤ :=
  (A246396.P8897349307038480004.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247322.P11556022761336588647

`A247323(n)+A247323(n+1)+A247325(n)+A247326(n)`
-/

namespace A247322.P11556022761336588647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247323 n + A247323 (n + 1) + A247325 n + A247326 n

end

end A247322.P11556022761336588647

noncomputable section

/-- A247322: Number of paths from (0,0) to the line x = n, each consisting of segments given by the vectors (1,1), (1,2), (1,-1), with vertices (i,k) satisfying 0 <= k <= 3.

Offset 0, canonical program `A247322.P11556022761336588647`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A247323, A247325, A247326, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A247322 (n : ℕ) : ℤ :=
  A247322.P11556022761336588647.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A247323, A247325, A247326, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A247322.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A249031.P16270301347754154022

`∑[gcd(2-∑[n+1], A324468(n+1))]`
-/

namespace A249031.P16270301347754154022
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) (A324468 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A249031.P16270301347754154022

noncomputable section

/-- A249031: The non-anti-Fibonacci numbers: numbers not in A075326.

Offset 1, canonical program `A249031.P16270301347754154022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249031 (n : ℕ) : ℤ :=
  (A249031.P16270301347754154022.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A249031.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A249118.P3927749679208195

`A249123(2*(n+1))-(n+1)`
-/

namespace A249118.P3927749679208195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249123 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A249118.P3927749679208195

noncomputable section

/-- A249118: Position of 32n^6 in the ordered union of {h^6, h >=1} and {32*k^6, k >=1}.

Offset 1, canonical program `A249118.P3927749679208195`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A249118 (n : ℕ) : ℤ :=
  A249118.P3927749679208195.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A249118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A250353.P8147615363387882437

`A250362(n+1)-A002943(n)`
-/

namespace A250353.P8147615363387882437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250362 (n + 1) - A002943 n

end

end A250353.P8147615363387882437

noncomputable section

/-- A250353: Number of length 4 arrays x(i), i=1..4 with x(i) in i..i+n and no value appearing more than 2 times.

Offset 1, canonical program `A250353.P8147615363387882437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250353 (n : ℕ) : ℤ :=
  A250353.P8147615363387882437.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A250353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255175.P6042656914842276599

`A339265(n)+a(n-1)` with `a(0)=1`
-/

namespace A255175.P6042656914842276599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A339265 n + a (n - 1)

end

end A255175.P6042656914842276599

noncomputable section

/-- A255175: Expansion of phi(-x) / (1 - x)^2 in powers of x where phi() is a Ramanujan theta function.

Offset 0, canonical program `A255175.P6042656914842276599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255175 (n : ℕ) : ℤ :=
  A255175.P6042656914842276599.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A255175.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255181.P14353804197790131909

`Δ[Δ[Δ[A289207(n)^7]]]`
-/

namespace A255181.P14353804197790131909
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 n ^ 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255181.P14353804197790131909

noncomputable section

/-- A255181: Third differences of seventh powers (A001015).

Offset 0, canonical program `A255181.P14353804197790131909`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A255181 (n : ℕ) : ℤ :=
  A255181.P14353804197790131909.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A255181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A255182.P7714813183367637456

`Δ[Δ[Δ[A289207(n)^8]]]`
-/

namespace A255182.P7714813183367637456
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 n ^ 8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255182.P7714813183367637456

noncomputable section

/-- A255182: Third differences of eighth powers (A001016).

Offset 0, canonical program `A255182.P7714813183367637456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A255182 (n : ℕ) : ℤ :=
  A255182.P7714813183367637456.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A255182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256693.P12800536853273981062

`5^A257091(n+1)`
-/

namespace A256693.P12800536853273981062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A257091 (n + 1) : ℤ)

end

end A256693.P12800536853273981062

noncomputable section

/-- A256693: From fifth root of Riemann zeta function: form Dirichlet series Sum b(n)/n^x whose fifth power is zeta function; sequence gives denominator of b(n).

Offset 1, canonical program `A256693.P12800536853273981062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256693 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A256693.P12800536853273981062.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A256693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A257171.P14186307090277198213

`Δ[A000217(A267531(n)-A004275(n))]`
-/

namespace A257171.P14186307090277198213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A267531 n - A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257171.P14186307090277198213

noncomputable section

/-- A257171: Sum of numbers on n-th segment of Ulam's spiral.

Offset 0, canonical program `A257171.P14186307090277198213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. -/
def A257171 (n : ℕ) : ℤ :=
  A257171.P14186307090277198213.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 345 terms. -/
def A257171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A258998.P12736834426368686172

`Δ[A266253(abs(3-n))]`
-/

namespace A258998.P12736834426368686172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266253 |3 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A258998.P12736834426368686172

noncomputable section

/-- A258998: a(n) = -(-1)^n if n = k^2 for positive integer k, otherwise 0.

Offset 0, canonical program `A258998.P12736834426368686172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258998 (n : ℕ) : ℤ :=
  A258998.P12736834426368686172.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A258998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A260684.P9944264110032864462

`p?[A322832(n)+1]`
-/

namespace A260684.P9944264110032864462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322832 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A260684.P9944264110032864462

noncomputable section

/-- A260684: Irregular triangular array read by rows. Row n gives the primes in the prime factorization of n! that have exponent of 1.

Offset 2, canonical program `A260684.P9944264110032864462`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2135 terms. -/
def A260684 (n : ℕ) : ℤ :=
  A260684.P9944264110032864462.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2135 terms. -/
def A260684.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A262863.P6679284059625653501

`A267623(n)-a(n-2)` with `a(0)=1, a(1)=10`
-/

namespace A262863.P6679284059625653501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  A267623 n - a (n - 2)

end

end A262863.P6679284059625653501

noncomputable section

/-- A262863: Binary representation of the middle column of the "Rule 147" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A262863.P6679284059625653501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A262863 (n : ℕ) : ℤ :=
  A262863.P6679284059625653501.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A262863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265035.P10344988030138921737

`A311101(n)-n`
-/

namespace A265035.P10344988030138921737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311101 n - (n : ℤ)

end

end A265035.P10344988030138921737

noncomputable section

/-- A265035: Coordination sequence of 2-uniform tiling {3.4.6.4, 4.6.12} with respect to a point of type 4.6.12.

Offset 0, canonical program `A265035.P10344988030138921737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265035 (n : ℕ) : ℤ :=
  A265035.P10344988030138921737.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A265411.P7044820118345598143

`Δ[A265413(n)]`
-/

namespace A265411.P7044820118345598143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265411.P7044820118345598143

noncomputable section

/-- A265411: a(0) = 1, a(1) = 7, otherwise, if A240025(n-1) = 1 [when n is in A033638] a(n) = 3, otherwise a(n) = 1.

Offset 0, canonical program `A265411.P7044820118345598143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265411 (n : ℕ) : ℤ :=
  A265411.P7044820118345598143.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A265411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266461.P3076525258767983135

`xor(A016116(n+1), A279872(A266303(n)))`
-/

namespace A266461.P3076525258767983135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A016116 (n + 1)) (A279872 (A266303 n).toNat)

end

end A266461.P3076525258767983135

noncomputable section

/-- A266461: Decimal representation of the n-th iteration of the "Rule 27" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A266461.P3076525258767983135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266461 (n : ℕ) : ℤ :=
  A266461.P3076525258767983135.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A266461.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266535.P9952877068317235546

`A266540(Δ[n²])`
-/

namespace A266535.P9952877068317235546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266540 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A266535.P9952877068317235546

noncomputable section

/-- A266535: Sums of two successive terms of A256249, with a(0) = 0.

Offset 0, canonical program `A266535.P9952877068317235546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A266535 (n : ℕ) : ℤ :=
  A266535.P9952877068317235546.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A266535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267042.P17709165627841809251

`or(A000079(n)*A279961(n), A279962(n))`
-/

namespace A267042.P17709165627841809251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 n * A279961 n) (A279962 n)

end

end A267042.P17709165627841809251

noncomputable section

/-- A267042: Decimal representation of the n-th iteration of the "Rule 91" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267042.P17709165627841809251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A267042 (n : ℕ) : ℤ :=
  A267042.P17709165627841809251.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A267042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267260.P17358005146578031685

`(n+1)²-A267262(n)`
-/

namespace A267260.P17358005146578031685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A267262 n

end

end A267260.P17358005146578031685

noncomputable section

/-- A267260: Total number of ON (black) cells after n iterations of the "Rule 111" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267260.P17358005146578031685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267260 (n : ℕ) : ℤ :=
  A267260.P17358005146578031685.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267260.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267261.P3387360367513525929

`A267262(n)-A267262((2*n)%(n+1))`
-/

namespace A267261.P3387360367513525929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267262 n - A267262 (2 * n % (n + 1))

end

end A267261.P3387360367513525929

noncomputable section

/-- A267261: Number of OFF (white) cells in the n-th iteration of the "Rule 111" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267261.P3387360367513525929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267261 (n : ℕ) : ℤ :=
  A267261.P3387360367513525929.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A267261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267289.P12094867785970251216

`p?[A338623(A004139(n+3))]`
-/

namespace A267289.P12094867785970251216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338623 (A004139 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A267289.P12094867785970251216

noncomputable section

/-- A267289: Primes p such that (2^k)+p+(2^(k+1)) is also prime, where 2^k is the largest power of 2 smaller than p.

Offset 1, canonical program `A267289.P12094867785970251216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A267289 (n : ℕ) : ℤ :=
  A267289.P12094867785970251216.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A267289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267524.P17716842328789921782

`10*a(n-1)+A326178(n)-n` with `a(0)=1`
-/

namespace A267524.P17716842328789921782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) + (A326178 n - (n : ℤ))

end

end A267524.P17716842328789921782

noncomputable section

/-- A267524: Binary representation of the middle column of the "Rule 139" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267524.P17716842328789921782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267524 (n : ℕ) : ℤ :=
  A267524.P17716842328789921782.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A267524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267678.P10509858284579671114

`4*xor(a(n-1), A289098(n))` with `a(0)=1, a(1)=2`
-/

namespace A267678.P10509858284579671114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * Int.xor (a (n - 1)) (A289098 n)

end

end A267678.P10509858284579671114

noncomputable section

/-- A267678: Decimal representation of the n-th iteration of the "Rule 197" elementary cellular automaton starting with a single ON (black) cell.

Offset 0, canonical program `A267678.P10509858284579671114`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A267678 (n : ℕ) : ℤ :=
  A267678.P10509858284579671114.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A267678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267906.P2201547106562469108

`ceil(A269684(n+1)²/6)`
-/

namespace A267906.P2201547106562469108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A269684 (n + 1) ^ 2 : ℚ) / 6⌉

end

end A267906.P2201547106562469108

noncomputable section

/-- A267906: Number of n X 2 0..2 arrays with every repeated value in every row unequal to the previous repeated value, and in every column equal to the previous repeated value, and new values introduced in row-major sequential order.

Offset 1, canonical program `A267906.P2201547106562469108`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A267906 (n : ℕ) : ℤ :=
  A267906.P2201547106562469108.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A267906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A267913.P11790783515534333936

`ceil(A269461(n+1)²/6)`
-/

namespace A267913.P11790783515534333936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A269461 (n + 1) ^ 2 : ℚ) / 6⌉

end

end A267913.P11790783515534333936

noncomputable section

/-- A267913: Number of 2 X n 0..2 arrays with every repeated value in every row unequal to the previous repeated value, and in every column equal to the previous repeated value, and new values introduced in row-major sequential order.

Offset 1, canonical program `A267913.P11790783515534333936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A267913 (n : ℕ) : ℤ :=
  A267913.P11790783515534333936.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A267913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A268335.P2949356212945410865

`eq[1, A295316(n+1)]+1`
-/

namespace A268335.P2949356212945410865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295316 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A268335.P2949356212945410865

noncomputable section

/-- A268335: Exponentially odd numbers.

Offset 1, canonical program `A268335.P2949356212945410865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268335 (n : ℕ) : ℤ :=
  (A268335.P2949356212945410865.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269163.P1924213265323546486

`comp[A269164(n+1)]`
-/

namespace A269163.P1924213265323546486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A269163.P1924213265323546486

noncomputable section

/-- A269163: Numbers which have a finite predecessor in Wolfram's Rule 30 cellular automaton; range of A269160 sorted into ascending order.

Offset 0, canonical program `A269163.P1924213265323546486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4092 terms. -/
def A269163 (n : ℕ) : ℤ :=
  (A269163.P1924213265323546486.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4092 terms. -/
def A269163.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271054.P8315320022391231333

`xor(2, A271091(n)-1)-1`
-/

namespace A271054.P8315320022391231333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A271091 n - 1) - 1

end

end A271054.P8315320022391231333

noncomputable section

/-- A271054: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 259", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A271054.P8315320022391231333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3300 terms. -/
def A271054 (n : ℕ) : ℤ :=
  A271054.P8315320022391231333.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3300 terms. -/
def A271054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A271057.P8574904356528062839

`Δ[xor(2, A271091(n)-1)]`
-/

namespace A271057.P8574904356528062839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A271091 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271057.P8574904356528062839

noncomputable section

/-- A271057: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 259", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A271057.P8574904356528062839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3338 terms. -/
def A271057 (n : ℕ) : ℤ :=
  A271057.P8574904356528062839.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3338 terms. -/
def A271057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A273972.P12055056597393886625

`and(A062878(n+1), A281216(n))`
-/

namespace A273972.P12055056597393886625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062878 (n + 1)) (A281216 n)

end

end A273972.P12055056597393886625

noncomputable section

/-- A273972: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 20", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A273972.P12055056597393886625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A273972 (n : ℕ) : ℤ :=
  A273972.P12055056597393886625.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A273972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276218.P7829091822625182265

`A276220(n+2)-1`
-/

namespace A276218.P7829091822625182265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276220 (n + 2) - 1

end

end A276218.P7829091822625182265

noncomputable section

/-- A276218: Position of n^r in the joint ranking of {h^r} and {k^s}, where r = sqrt(3), s = sqrt(6), h > 1, k > 1.

Offset 1, canonical program `A276218.P7829091822625182265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A276218 (n : ℕ) : ℤ :=
  A276218.P7829091822625182265.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A276218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A276228.P13249813382779265578

`2*A276229(n)+2*A276229(n+1)+3*A276229(n+2)`
-/

namespace A276228.P13249813382779265578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276229 n + 2 * A276229 (n + 1) + 3 * A276229 (n + 2)

end

end A276228.P13249813382779265578

noncomputable section

/-- A276228: a(n+3) = -a(n+2) - 2*a(n+1) + a(n) with a(0)=3, a(1)=-1, a(2)=-3.

Offset 0, canonical program `A276228.P13249813382779265578`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276228 (n : ℕ) : ℤ :=
  A276228.P13249813382779265578.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A276228.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A277797.P17351685316325223803

`A284351(n*A000035(n))-A000035(n)`
-/

namespace A277797.P17351685316325223803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284351 ((n : ℤ) * A000035 n).toNat - A000035 n

end

end A277797.P17351685316325223803

noncomputable section

/-- A277797: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 1", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A277797.P17351685316325223803`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A277797 (n : ℕ) : ℤ :=
  A277797.P17351685316325223803.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A277797.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A277865.P11330922218210656486

`A284352(A093178(n))^A124625(n+1)`
-/

namespace A277865.P11330922218210656486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284352 (A093178 n).toNat : ℚ) ^ (A124625 (n + 1) : ℤ)

end

end A277865.P11330922218210656486

noncomputable section

/-- A277865: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 3", based on the 5-celled von Neumann neighborhood.

Offset 0, canonical program `A277865.P11330922218210656486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A277865 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A277865.P11330922218210656486.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A277865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278357.P14772144764163584461

`∑[A278670(n+1)-A027480(n)]`
-/

namespace A278357.P14772144764163584461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278670 (n + 1) - A027480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A278357.P14772144764163584461

noncomputable section

/-- A278357: Number of n X 2 0..1 arrays with rows and columns in lexicographic nondecreasing order but with exactly one mistake.

Offset 1, canonical program `A278357.P14772144764163584461`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278357 (n : ℕ) : ℤ :=
  A278357.P14772144764163584461.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A278357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A230593.P566366063280719726

`A069359(n+1)+n+1`
-/

namespace A230593.P566366063280719726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (n + 1) + (n + 1 : ℤ)

end

end A230593.P566366063280719726

noncomputable section

/-- A230593: a(n) = n * Sum_{q|n} 1 / q, where q are noncomposite numbers (A008578) dividing n.

Offset 1, canonical program `A230593.P566366063280719726`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069359, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230593 (n : ℕ) : ℤ :=
  A230593.P566366063280719726.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069359, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A230593.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A230780.P4087628453053372881

`lt[gcd(3, A023900(n+1)), 2]+1`
-/

namespace A230780.P4087628453053372881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A023900 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A230780.P4087628453053372881

noncomputable section

/-- A230780: Positive numbers without a prime factor congruent to 1 (mod 6).

Offset 1, canonical program `A230780.P4087628453053372881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7431 terms. -/
def A230780 (n : ℕ) : ℤ :=
  (A230780.P4087628453053372881.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7431 terms. -/
def A230780.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235323.P2646876308871874381

`A008472(n+1)²`
-/

namespace A235323.P2646876308871874381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) ^ 2

end

end A235323.P2646876308871874381

noncomputable section

/-- A235323: Squared sum of the distinct prime factors of n, i.e., sopf(n)^2.

Offset 1, canonical program `A235323.P2646876308871874381`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A235323 (n : ℕ) : ℤ :=
  A235323.P2646876308871874381.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A235323.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A238526.P8534158535877198451

`record[abs(abs(A008472(n+1)-n)-n)]`
-/

namespace A238526.P8534158535877198451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|A008472 (n + 1) - (n : ℤ)| - (n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A238526.P8534158535877198451

noncomputable section

/-- A238526: Record values of A238525.

Offset 1, canonical program `A238526.P8534158535877198451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9594 terms. -/
def A238526 (n : ℕ) : ℤ :=
  A238526.P8534158535877198451.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9594 terms. -/
def A238526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A239668.P5413228738959679082

`A000203((n+1)²)-A008472((n+1)²)-1`
-/

namespace A239668.P5413228738959679082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((n + 1) ^ 2) - A008472 ((n + 1) ^ 2) - 1

end

end A239668.P5413228738959679082

noncomputable section

/-- A239668: Sum of the composite divisors of n^2.

Offset 1, canonical program `A239668.P5413228738959679082`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239668 (n : ℕ) : ℤ :=
  A239668.P5413228738959679082.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239668.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A239693.P6595797453947118428

`A053828(A000040(n+1))`
-/

namespace A239693.P6595797453947118428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053828 (A000040 (n + 1)).toNat

end

end A239693.P6595797453947118428

noncomputable section

/-- A239693: Base 7 sum of digits of prime(n).

Offset 1, canonical program `A239693.P6595797453947118428`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053828, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239693 (n : ℕ) : ℤ :=
  A239693.P6595797453947118428.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053828, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239693.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A239695.P12338492364467656266

`A053830(A000040(n+1))`
-/

namespace A239695.P12338492364467656266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053830 (A000040 (n + 1)).toNat

end

end A239695.P12338492364467656266

noncomputable section

/-- A239695: Base 9 sum of digits of prime(n).

Offset 1, canonical program `A239695.P12338492364467656266`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053830, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239695 (n : ℕ) : ℤ :=
  A239695.P12338492364467656266.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053830, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239695.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A239885.P1896518761553761145

`A110295(n+1)/2`
-/

namespace A239885.P1896518761553761145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110295 (n + 1) : ℚ) / 2

end

end A239885.P1896518761553761145

noncomputable section

/-- A239885: a(n) = 2^(n-2) * prime(n).

Offset 1, canonical program `A239885.P1896518761553761145`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110295, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239885 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A239885.P1896518761553761145.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110295, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A239885.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A242089.P8380178476598683607

`floor((3-A000040(n+1))²/6)`
-/

namespace A242089.P8380178476598683607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 - A000040 (n + 1)) ^ 2 : ℚ) / 6⌋

end

end A242089.P8380178476598683607

noncomputable section

/-- A242089: Number of triples (a,b,c) with 0 < a < b < c < p and a + b + c == 0 mod p, where p = prime(n).

Offset 1, canonical program `A242089.P8380178476598683607`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A242089 (n : ℕ) : ℤ :=
  A242089.P8380178476598683607.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A242089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246839.P11173813437660088004

`A246817(floor(n/5)+1)`
-/

namespace A246839.P11173813437660088004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246817 (⌊(n : ℚ) / 5⌋ + 1).toNat

end

end A246839.P11173813437660088004

noncomputable section

/-- A246839: Number of trailing zeros in A002109(n).

Offset 0, canonical program `A246839.P11173813437660088004`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246817, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246839 (n : ℕ) : ℤ :=
  A246839.P11173813437660088004.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246817, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246839.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246960.P15453301905405972098

`A105500(n)-1`
-/

namespace A246960.P15453301905405972098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105500 n - 1

end

end A246960.P15453301905405972098

noncomputable section

/-- A246960: Directions of the lines in the (Heighway) Dragon Curve.

Offset 0, canonical program `A246960.P15453301905405972098`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105500, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246960 (n : ℕ) : ℤ :=
  A246960.P15453301905405972098.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A105500, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A246960.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A254340.P17394909543363864002

`A008472(n+1)+n+1+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A254340.P17394909543363864002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) + (n + 1 : ℤ) + 1

end

end A254340.P17394909543363864002

noncomputable section

/-- A254340: Sum of the distinct prime factors of n plus n+1: a(n) = A008472(n) + n + 1.

Offset 1, canonical program `A254340.P17394909543363864002`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A254340 (n : ℕ) : ℤ :=
  A254340.P17394909543363864002.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A254340.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A256250.P13481025996559427497

`1+4*A256249(n)`
-/

namespace A256250.P13481025996559427497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 4 * A256249 n

end

end A256250.P13481025996559427497

noncomputable section

/-- A256250: Total number of ON states after n generations of a cellular automaton on the square grid.

Offset 1, canonical program `A256250.P13481025996559427497`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256249, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256250 (n : ℕ) : ℤ :=
  A256250.P13481025996559427497.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256249, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A256250.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A262869.P10644154218626239048

`A013928(floor((n+1)/2)+1)`
-/

namespace A262869.P10644154218626239048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (⌊(n + 1 : ℚ) / 2⌋ + 1).toNat

end

end A262869.P10644154218626239048

noncomputable section

/-- A262869: Number of squarefree numbers appearing among the smaller parts of the partitions of n into two parts.

Offset 1, canonical program `A262869.P10644154218626239048`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013928, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262869 (n : ℕ) : ℤ :=
  A262869.P10644154218626239048.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013928, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A262869.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A265263.P13560857298709796040

`and(n, A066194(n+1)-1)`
-/

namespace A265263.P13560857298709796040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A066194 (n + 1) - 1)

end

end A265263.P13560857298709796040

noncomputable section

/-- A265263: Change every other 1 bit in binary expansion of n to 0.

Offset 0, canonical program `A265263.P13560857298709796040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A265263 (n : ℕ) : ℤ :=
  A265263.P13560857298709796040.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A265263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A266538.P9526590751429487404

`2*A256249(n)`
-/

namespace A266538.P9526590751429487404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A256249 n

end

end A266538.P9526590751429487404

noncomputable section

/-- A266538: Twice the partial sums of A006257 (Josephus problem).

Offset 0, canonical program `A266538.P9526590751429487404`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256249, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A266538 (n : ℕ) : ℤ :=
  A266538.P9526590751429487404.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A256249, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A266538.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268836.P2302670208971616926

`∑[2*(A066194(n+1)-1)]`
-/

namespace A268836.P2302670208971616926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A066194 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268836.P2302670208971616926

noncomputable section

/-- A268836: Antidiagonal sums of array A268714: a(n) = Sum_{k=0..n} A006068(n)+A006068(n-k).

Offset 0, canonical program `A268836.P2302670208971616926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268836 (n : ℕ) : ℤ :=
  A268836.P2302670208971616926.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A268836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A269701.P8912005130756508373

`A053828(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A269701.P8912005130756508373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A053828 (a (n - 1) + a (n - 2)).toNat

end

end A269701.P8912005130756508373

noncomputable section

/-- A269701: Cyclic Fibonacci sequence, restricted to maximum=6.

Offset 0, canonical program `A269701.P8912005130756508373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269701 (n : ℕ) : ℤ :=
  A269701.P8912005130756508373.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A269701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278100.P13036125497431391876

`A013928((n+1)²)`
-/

namespace A278100.P13036125497431391876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 ((n + 1) ^ 2)

end

end A278100.P13036125497431391876

noncomputable section

/-- A278100: Number of squarefree positive integers less than n^2.

Offset 1, canonical program `A278100.P13036125497431391876`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013928, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A278100 (n : ℕ) : ℤ :=
  A278100.P13036125497431391876.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013928, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A278100.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A244042.P9314766524248185345

`n-2*A005836(A289814(n)+1)`
-/

namespace A244042.P9314766524248185345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A005836 (A289814 n + 1).toNat

end

end A244042.P9314766524248185345

noncomputable section

/-- A244042: In ternary representation of n, replace 2's with 0's.

Offset 0, canonical program `A244042.P9314766524248185345`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289814, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244042 (n : ℕ) : ℤ :=
  A244042.P9314766524248185345.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289814, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244042.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A268382.P15340571739554303395

`A268411(n)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A268382.P15340571739554303395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A268411 n + a (n - 1)

end

end A268382.P15340571739554303395

noncomputable section

/-- A268382: Partial sums of A268411; the least monotonic left inverse of A268415.

Offset 0, canonical program `A268382.P15340571739554303395`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268411, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268382 (n : ℕ) : ℤ :=
  A268382.P15340571739554303395.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A268411, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A268382.provenance : SequenceMachineLib.Provenance := .conditional

