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
import Seq.B000.C040
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A370307.P1617785029507731027

`A002623(n)+n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A370307.P1617785029507731027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 n + (n : ℤ)

end

end A370307.P1617785029507731027

noncomputable section

/-- A370307: a(n) = A002623(n) + n.

Offset 0, canonical program `A370307.P1617785029507731027`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002623(n)+n` (program `A370307.P1617785029507731027`, by `A370307.P1617785029507731027.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A370307 (n : ℕ) : ℤ :=
  A370307.P1617785029507731027.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002623(n)+n` (program `A370307.P1617785029507731027`, by `A370307.P1617785029507731027.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A370307.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A371092.P362407384602994436

`floor((A000265(3*n+1)+5)/6)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A371092.P362407384602994436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000265 (3 * n + 1) + 5 : ℚ) / 6⌋

end

end A371092.P362407384602994436

noncomputable section

/-- A371092: a(n) = floor((A000265(3*n+1)+5)/6), where A000265 gives the odd part of its argument.

Offset 0, canonical program `A371092.P362407384602994436`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((A000265(3*n+1)+5)/6)` (program `A371092.P362407384602994436`, by `A371092.P362407384602994436.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A371092 (n : ℕ) : ℤ :=
  A371092.P362407384602994436.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((A000265(3*n+1)+5)/6)` (program `A371092.P362407384602994436`, by `A371092.P362407384602994436.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A371092.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A371843.P2262643794716352472

`5*A000045(n)+(-1)^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A371843.P2262643794716352472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000045 n + (-1) ^ n

end

end A371843.P2262643794716352472

noncomputable section

/-- A371843: a(n) = 5*Fibonacci(n) + (-1)^n.

Offset 0, canonical program `A371843.P2262643794716352472`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*A000045(n)+(-1)^n` (program `A371843.P2262643794716352472`, by `A371843.P2262643794716352472.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A371843 (n : ℕ) : ℤ :=
  A371843.P2262643794716352472.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*A000045(n)+(-1)^n` (program `A371843.P2262643794716352472`, by `A371843.P2262643794716352472.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A371843.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A371986.P14453910396972068629

`A000032(n)*A000108(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A371986.P14453910396972068629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A000108 n

end

end A371986.P14453910396972068629

noncomputable section

/-- A371986: Product of Lucas and Catalan numbers: a(n) = A000032(n)*A000108(n).

Offset 0, canonical program `A371986.P14453910396972068629`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000032(n)*A000108(n)` (program `A371986.P14453910396972068629`, by `A371986.P14453910396972068629.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A371986 (n : ℕ) : ℤ :=
  A371986.P14453910396972068629.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000032(n)*A000108(n)` (program `A371986.P14453910396972068629`, by `A371986.P14453910396972068629.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A371986.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372216.P15635570917463932897

`A000129(n+1)*A000108(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372216.P15635570917463932897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) * A000108 (n + 1)

end

end A372216.P15635570917463932897

noncomputable section

/-- A372216: Product of n-th Pell number and n-th Catalan number: a(n) = A000129(n)*A000108(n).

Offset 1, canonical program `A372216.P15635570917463932897`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000129(n+1)*A000108(n+1)` (program `A372216.P15635570917463932897`, by `A372216.P15635570917463932897.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372216 (n : ℕ) : ℤ :=
  A372216.P15635570917463932897.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000129(n+1)*A000108(n+1)` (program `A372216.P15635570917463932897`, by `A372216.P15635570917463932897.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372216.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372225.P17692099479850758134

`A000045(n+2)*A000045(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372225.P17692099479850758134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) * A000045 (2 * (n + 1))

end

end A372225.P17692099479850758134

noncomputable section

/-- A372225: a(n) = Fibonacci(n+1)*Fibonacci(2n).

Offset 1, canonical program `A372225.P17692099479850758134`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+2)*A000045(2*(n+1))` (program `A372225.P17692099479850758134`, by `A372225.P17692099479850758134.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372225 (n : ℕ) : ℤ :=
  A372225.P17692099479850758134.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+2)*A000045(2*(n+1))` (program `A372225.P17692099479850758134`, by `A372225.P17692099479850758134.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372225.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372242.P8379858384881024964

`10*A000045(n)+(-1)^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372242.P8379858384881024964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A000045 n + (-1) ^ n

end

end A372242.P8379858384881024964

noncomputable section

/-- A372242: a(n) = 10*Fibonacci(n) + (-1)^n.

Offset 0, canonical program `A372242.P8379858384881024964`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*A000045(n)+(-1)^n` (program `A372242.P8379858384881024964`, by `A372242.P8379858384881024964.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372242 (n : ℕ) : ℤ :=
  A372242.P8379858384881024964.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*A000045(n)+(-1)^n` (program `A372242.P8379858384881024964`, by `A372242.P8379858384881024964.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372242.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372252.P9407473101100021253

`A000045(n+1)*A000292(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372252.P9407473101100021253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A000292 n

end

end A372252.P9407473101100021253

noncomputable section

/-- A372252: a(n) = A000045(n+1)*A000292(n) (product of a Fibonacci number and a tetrahedral number).

Offset 0, canonical program `A372252.P9407473101100021253`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+1)*A000292(n)` (program `A372252.P9407473101100021253`, by `A372252.P9407473101100021253.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372252 (n : ℕ) : ℤ :=
  A372252.P9407473101100021253.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+1)*A000292(n)` (program `A372252.P9407473101100021253`, by `A372252.P9407473101100021253.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372252.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A373614.P4665718954882026582

`A000045(n)²*A000108(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373614.P4665718954882026582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2 * A000108 n

end

end A373614.P4665718954882026582

noncomputable section

/-- A373614: a(n) = Fibonacci(n)^2 * Catalan(n).

Offset 0, canonical program `A373614.P4665718954882026582`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)²*A000108(n)` (program `A373614.P4665718954882026582`, by `A373614.P4665718954882026582.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A373614 (n : ℕ) : ℤ :=
  A373614.P4665718954882026582.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)²*A000108(n)` (program `A373614.P4665718954882026582`, by `A373614.P4665718954882026582.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A373614.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A373622.P5649308913863551623

`A000032(n)*A000045(n)*A000108(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373622.P5649308913863551623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A000045 n * A000108 n

end

end A373622.P5649308913863551623

noncomputable section

/-- A373622: a(n) = A000032(n)*A000045(n)*A000108(n).

Offset 0, canonical program `A373622.P5649308913863551623`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000032(n)*A000045(n)*A000108(n)` (program `A373622.P5649308913863551623`, by `A373622.P5649308913863551623.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A373622 (n : ℕ) : ℤ :=
  A373622.P5649308913863551623.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000032(n)*A000045(n)*A000108(n)` (program `A373622.P5649308913863551623`, by `A373622.P5649308913863551623.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A373622.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A374126.P16761147137029930962

`gcd(A000203(n+1), A001414(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374126.P16761147137029930962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A001414 (n + 1))

end

end A374126.P16761147137029930962

noncomputable section

/-- A374126: a(n) = gcd(sigma(n), sopfr(n)), where sigma is the sum of divisors, and sopfr is the sum of prime factors with repetition.

Offset 1, canonical program `A374126.P16761147137029930962`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000203(n+1), A001414(n+1))` (program `A374126.P16761147137029930962`, by `A374126.P16761147137029930962.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A374126 (n : ℕ) : ℤ :=
  (A374126.P16761147137029930962.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A000203(n+1), A001414(n+1))` (program `A374126.P16761147137029930962`, by `A374126.P16761147137029930962.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A374126.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A374127.P3340781210084146049

`A000203(n+1)-A001414(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374127.P3340781210084146049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A001414 (n + 1) - (n + 1 : ℤ)

end

end A374127.P3340781210084146049

noncomputable section

/-- A374127: a(n) = (sigma(n) - sopfr(n)) - n, where sigma is the sum of divisors, and sopfr is the sum of prime factors (with repetition).

Offset 1, canonical program `A374127.P3340781210084146049`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)-A001414(n+1)-(n+1)` (program `A374127.P3340781210084146049`, by `A374127.P3340781210084146049.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A374127 (n : ℕ) : ℤ :=
  A374127.P3340781210084146049.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)-A001414(n+1)-(n+1)` (program `A374127.P3340781210084146049`, by `A374127.P3340781210084146049.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A374127.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A374915.P6591845892791148313

`n*(n-1)*A000203(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374915.P6591845892791148313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - 1) * A000203 (n + 1)

end

end A374915.P6591845892791148313

noncomputable section

/-- A374915: a(n) = (n - 1) * (n - 2) * sigma(n).

Offset 1, canonical program `A374915.P6591845892791148313`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n-1)*A000203(n+1)` (program `A374915.P6591845892791148313`, by `A374915.P6591845892791148313.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A374915 (n : ℕ) : ℤ :=
  A374915.P6591845892791148313.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n-1)*A000203(n+1)` (program `A374915.P6591845892791148313`, by `A374915.P6591845892791148313.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A374915.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A374927.P3559897404562707274

`A135318(n)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374927.P3559897404562707274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 n ^ 2

end

end A374927.P3559897404562707274

noncomputable section

/-- A374927: a(n) = A135318(n)^2.

Offset 0, canonical program `A374927.P3559897404562707274`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A135318(n)²` (program `A374927.P3559897404562707274`, by `A374927.P3559897404562707274.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A374927 (n : ℕ) : ℤ :=
  A374927.P3559897404562707274.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A135318(n)²` (program `A374927.P3559897404562707274`, by `A374927.P3559897404562707274.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A374927.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A375010.P10824292067734326955

`A000040(n+2)-floor((A000040(n+1)+A000040(n+2)+A000040(n+3))/3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A375010.P10824292067734326955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - ⌊(A000040 (n + 1) + A000040 (n + 2) + A000040 (n + 3) : ℚ) / 3⌋

end

end A375010.P10824292067734326955

noncomputable section

/-- A375010: a(n) = prime(n-1) - floor((prime(n-2) + prime(n-1) + prime(n)) / 3).

Offset 3, canonical program `A375010.P10824292067734326955`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+2)-floor((A000040(n+1)+A000040(n+2)+A000040(n+3))/3)` (program `A375010.P10824292067734326955`, by `A375010.P10824292067734326955.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A375010 (n : ℕ) : ℤ :=
  A375010.P10824292067734326955.a (n - 3)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+2)-floor((A000040(n+1)+A000040(n+2)+A000040(n+3))/3)` (program `A375010.P10824292067734326955`, by `A375010.P10824292067734326955.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A375010.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A375803.P15871120865266231803

`A000045(n)*A000045(n+2)*A000045(2*(n+1)-1)*A000045(2*(n+1)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A375803.P15871120865266231803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A000045 (n + 2) * A000045 (2 * (n + 1) - 1) * A000045 (2 * (n + 1) + 1)

end

end A375803.P15871120865266231803

noncomputable section

/-- A375803: a(n) = Fibonacci(n-1) * Fibonacci(n+1) * Fibonacci(2*n-1) * Fibonacci(2*n+1).

Offset 1, canonical program `A375803.P15871120865266231803`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)*A000045(n+2)*A000045(2*(n+1)-1)*A000045(2*(n+1)+1)` (program `A375803.P15871120865266231803`, by `A375803.P15871120865266231803.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A375803 (n : ℕ) : ℤ :=
  A375803.P15871120865266231803.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)*A000045(n+2)*A000045(2*(n+1)-1)*A000045(2*(n+1)+1)` (program `A375803.P15871120865266231803`, by `A375803.P15871120865266231803.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A375803.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A375804.P4009701669286425089

`A000032(n)*A000032(n+2)*A000045(2*(n+1)-1)*A000045(2*(n+1)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A375804.P4009701669286425089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A000032 (n + 2) * A000045 (2 * (n + 1) - 1) * A000045 (2 * (n + 1) + 1)

end

end A375804.P4009701669286425089

noncomputable section

/-- A375804: a(n) = Lucas(n-1) * Lucas(n+1) * Fibonacci(2*n-1) * Fibonacci(2*n+1).

Offset 1, canonical program `A375804.P4009701669286425089`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000032(n)*A000032(n+2)*A000045(2*(n+1)-1)*A000045(2*(n+1)+1)` (program `A375804.P4009701669286425089`, by `A375804.P4009701669286425089.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A375804 (n : ℕ) : ℤ :=
  A375804.P4009701669286425089.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000032(n)*A000032(n+2)*A000045(2*(n+1)-1)*A000045(2*(n+1)+1)` (program `A375804.P4009701669286425089`, by `A375804.P4009701669286425089.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A375804.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A376023.P5748921642060316215

`abs(a(n-1)+A376022(n+1))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A376023.P5748921642060316215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1) + A376022 (n + 1)|

end

end A376023.P5748921642060316215

noncomputable section

/-- A376023: a(1) = 1, for n >= 2, a(n) = abs(a(n - 1) + A376022(n)).

Offset 1, canonical program `A376023.P5748921642060316215`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `abs(a(n-1)+A376022(n+1))` (program `A376023.P5748921642060316215`, by `A376023.P5748921642060316215.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A376023 (n : ℕ) : ℤ :=
  A376023.P5748921642060316215.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `abs(a(n-1)+A376022(n+1))` (program `A376023.P5748921642060316215`, by `A376023.P5748921642060316215.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A376023.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A376567.P9640430291992892874

`C(A001222(n+1)+A001221(n+1), A001221(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A376567.P9640430291992892874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (n + 1) + A001221 (n + 1)).toNat (A001221 (n + 1)).toNat

end

end A376567.P9640430291992892874

noncomputable section

/-- A376567: a(n) = binomial(bigomega(n) + omega(n), omega(n)), where bigomega = A001222 and omega = A001221.

Offset 1, canonical program `A376567.P9640430291992892874`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(A001222(n+1)+A001221(n+1), A001221(n+1))` (program `A376567.P9640430291992892874`, by `A376567.P9640430291992892874.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A376567 (n : ℕ) : ℤ :=
  (A376567.P9640430291992892874.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(A001222(n+1)+A001221(n+1), A001221(n+1))` (program `A376567.P9640430291992892874`, by `A376567.P9640430291992892874.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A376567.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A377704.P8865962525338974261

`C(A000045(n+1)+A000045(n+2)-2, A000045(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A377704.P8865962525338974261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000045 (n + 1) + A000045 (n + 2) - 2).toNat (A000045 (n + 1) - 1).toNat

end

end A377704.P8865962525338974261

noncomputable section

/-- A377704: a(n) = binomial(Fibonacci(n)+Fibonacci(n+1)-2,Fibonacci(n)-1).

Offset 1, canonical program `A377704.P8865962525338974261`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(A000045(n+1)+A000045(n+2)-2, A000045(n+1)-1)` (program `A377704.P8865962525338974261`, by `A377704.P8865962525338974261.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A377704 (n : ℕ) : ℤ :=
  (A377704.P8865962525338974261.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(A000045(n+1)+A000045(n+2)-2, A000045(n+1)-1)` (program `A377704.P8865962525338974261`, by `A377704.P8865962525338974261.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A377704.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A377879.P1126299264812417651

`2*(n+1)²-A000203((n+1)²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A377879.P1126299264812417651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) ^ 2 : ℤ) - A000203 ((n + 1) ^ 2)

end

end A377879.P1126299264812417651

noncomputable section

/-- A377879: Deficiency of squares: a(n) = 2n^2 - sigma(n^2).

Offset 1, canonical program `A377879.P1126299264812417651`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)²-A000203((n+1)²)` (program `A377879.P1126299264812417651`, by `A377879.P1126299264812417651.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A377879 (n : ℕ) : ℤ :=
  A377879.P1126299264812417651.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)²-A000203((n+1)²)` (program `A377879.P1126299264812417651`, by `A377879.P1126299264812417651.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A377879.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A378027.P2516659449213067990

`A000040(A000040(A000040(n+1)))-A000040(A000040(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378027.P2516659449213067990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (A000040 (n + 1)).toNat).toNat - A000040 (A000040 (n + 1)).toNat

end

end A378027.P2516659449213067990

noncomputable section

/-- A378027: a(n) = prime(prime(prime(n))) - prime(prime(n)).

Offset 1, canonical program `A378027.P2516659449213067990`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A000040(A000040(n+1)))-A000040(A000040(n+1))` (program `A378027.P2516659449213067990`, by `A378027.P2516659449213067990.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A378027 (n : ℕ) : ℤ :=
  A378027.P2516659449213067990.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A000040(A000040(n+1)))-A000040(A000040(n+1))` (program `A378027.P2516659449213067990`, by `A378027.P2516659449213067990.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A378027.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A378309.P13305048339565942399

`A010051(n+1)+A001222(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378309.P13305048339565942399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + A001222 (n + 1)

end

end A378309.P13305048339565942399

noncomputable section

/-- A378309: a(n) = A010051(n) + A001222(n).

Offset 1, canonical program `A378309.P13305048339565942399`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A010051(n+1)+A001222(n+1)` (program `A378309.P13305048339565942399`, by `A378309.P13305048339565942399.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A378309 (n : ℕ) : ℤ :=
  A378309.P13305048339565942399.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A010051(n+1)+A001222(n+1)` (program `A378309.P13305048339565942399`, by `A378309.P13305048339565942399.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A378309.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A378978.P9528598505163762940

`4*(n+1)-A000203(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378978.P9528598505163762940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A000203 (2 * (n + 1))

end

end A378978.P9528598505163762940

noncomputable section

/-- A378978: Deficiency of even numbers: a(n) = 4*n - sigma(2*n).

Offset 1, canonical program `A378978.P9528598505163762940`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(n+1)-A000203(2*(n+1))` (program `A378978.P9528598505163762940`, by `A378978.P9528598505163762940.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A378978 (n : ℕ) : ℤ :=
  A378978.P9528598505163762940.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(n+1)-A000203(2*(n+1))` (program `A378978.P9528598505163762940`, by `A378978.P9528598505163762940.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A378978.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A378993.P12473165963195423861

`n+1-A001221(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378993.P12473165963195423861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001221 (n + 1)

end

end A378993.P12473165963195423861

noncomputable section

/-- A378993: a(n) = n - omega(n), where omega = A001221.

Offset 1, canonical program `A378993.P12473165963195423861`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1-A001221(n+1)` (program `A378993.P12473165963195423861`, by `A378993.P12473165963195423861.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A378993 (n : ℕ) : ℤ :=
  A378993.P12473165963195423861.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1-A001221(n+1)` (program `A378993.P12473165963195423861`, by `A378993.P12473165963195423861.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A378993.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A378994.P13213573577854513567

`gcd(2*(n+1), A000203(2*(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378994.P13213573577854513567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * (n + 1) : ℤ) (A000203 (2 * (n + 1)))

end

end A378994.P13213573577854513567

noncomputable section

/-- A378994: a(n) = gcd(2*n, sigma(2*n)).

Offset 1, canonical program `A378994.P13213573577854513567`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(2*(n+1), A000203(2*(n+1)))` (program `A378994.P13213573577854513567`, by `A378994.P13213573577854513567.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A378994 (n : ℕ) : ℤ :=
  (A378994.P13213573577854513567.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(2*(n+1), A000203(2*(n+1)))` (program `A378994.P13213573577854513567`, by `A378994.P13213573577854513567.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A378994.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A379184.P17108702326998689864

`A379183(n+1)%2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379184.P17108702326998689864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A379183 (n + 1)) 2

end

end A379184.P17108702326998689864

noncomputable section

/-- A379184: a(n) = A379183(n) mod 2.

Offset 1, canonical program `A379184.P17108702326998689864`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A379183(n+1)%2` (program `A379184.P17108702326998689864`, by `A379184.P17108702326998689864.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379184 (n : ℕ) : ℤ :=
  A379184.P17108702326998689864.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A379183(n+1)%2` (program `A379184.P17108702326998689864`, by `A379184.P17108702326998689864.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379184.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A379207.P6020199753043466360

`2*A000040(n+2)-(A000040(n+2)-A000040(n+1))²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379207.P6020199753043466360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 2) - (A000040 (n + 2) - A000040 (n + 1)) ^ 2

end

end A379207.P6020199753043466360

noncomputable section

/-- A379207: a(n) = 2*prime(n+1) - (prime(n+1) - prime(n))^2.

Offset 1, canonical program `A379207.P6020199753043466360`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000040(n+2)-(A000040(n+2)-A000040(n+1))²` (program `A379207.P6020199753043466360`, by `A379207.P6020199753043466360.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379207 (n : ℕ) : ℤ :=
  A379207.P6020199753043466360.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000040(n+2)-(A000040(n+2)-A000040(n+1))²` (program `A379207.P6020199753043466360`, by `A379207.P6020199753043466360.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379207.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A379220.P13397059407567510787

`A000203((2*(col(n)+1)-1)²)*A000203((2*(row(n)-col(n)+1)-1)²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379220.P13397059407567510787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (((2 * (SequenceMachineLib.triCol n + 1) : ℤ) - 1) ^ 2).toNat * A000203 ((2 * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) - 1) ^ 2).toNat

end

end A379220.P13397059407567510787

noncomputable section

/-- A379220: Square array A(n, k) = sigma((2n-1)^2) * sigma((2k-1)^2), read by antidiagonals.

Offset 1, canonical program `A379220.P13397059407567510787`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203((2*(col(n)+1)-1)²)*A000203((2*(row(n)-col(n)+1)-1)²)` (program `A379220.P13397059407567510787`, by `A379220.P13397059407567510787.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379220 (n : ℕ) : ℤ :=
  A379220.P13397059407567510787.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203((2*(col(n)+1)-1)²)*A000203((2*(row(n)-col(n)+1)-1)²)` (program `A379220.P13397059407567510787`, by `A379220.P13397059407567510787.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379220.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A379223.P17221684455262730927

`A000203((2*(n+1)-1)²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379223.P17221684455262730927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (((2 * (n + 1) : ℤ) - 1) ^ 2).toNat

end

end A379223.P17221684455262730927

noncomputable section

/-- A379223: Sum of the divisors of the n-th odd square: a(n) = sigma((2*n-1)^2).

Offset 1, canonical program `A379223.P17221684455262730927`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203((2*(n+1)-1)²)` (program `A379223.P17221684455262730927`, by `A379223.P17221684455262730927.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379223 (n : ℕ) : ℤ :=
  A379223.P17221684455262730927.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203((2*(n+1)-1)²)` (program `A379223.P17221684455262730927`, by `A379223.P17221684455262730927.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379223.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A379274.P5229334467215772690

`A135414(n+1)%2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379274.P5229334467215772690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135414 (n + 1)) 2

end

end A379274.P5229334467215772690

noncomputable section

/-- A379274: a(n) = A135414(n) mod 2.

Offset 1, canonical program `A379274.P5229334467215772690`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A135414(n+1)%2` (program `A379274.P5229334467215772690`, by `A379274.P5229334467215772690.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379274 (n : ℕ) : ℤ :=
  A379274.P5229334467215772690.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A135414(n+1)%2` (program `A379274.P5229334467215772690`, by `A379274.P5229334467215772690.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379274.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A379275.P11522029413137536981

`A163801(n)%2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379275.P11522029413137536981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163801 n) 2

end

end A379275.P11522029413137536981

noncomputable section

/-- A379275: a(n) = A163801(n) mod 2.

Offset 0, canonical program `A379275.P11522029413137536981`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A163801(n)%2` (program `A379275.P11522029413137536981`, by `A379275.P11522029413137536981.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379275 (n : ℕ) : ℤ :=
  A379275.P11522029413137536981.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A163801(n)%2` (program `A379275.P11522029413137536981`, by `A379275.P11522029413137536981.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379275.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A379635.P7319658376581675878

`A000203(col(n)+1)*A000203(row(n)+1-col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379635.P7319658376581675878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.triCol n + 1) * A000203 (SequenceMachineLib.triRow n + 1 - SequenceMachineLib.triCol n)

end

end A379635.P7319658376581675878

noncomputable section

/-- A379635: Triangle read by rows: T(n,k) = A000203(k)*A000203(n-k+1), n >= 1, k >= 1.

Offset 1, canonical program `A379635.P7319658376581675878`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(col(n)+1)*A000203(row(n)+1-col(n))` (program `A379635.P7319658376581675878`, by `A379635.P7319658376581675878.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379635 (n : ℕ) : ℤ :=
  A379635.P7319658376581675878.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(col(n)+1)*A000203(row(n)+1-col(n))` (program `A379635.P7319658376581675878`, by `A379635.P7319658376581675878.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379635.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A379812.P10955070158037639960

`A000203(n+1)*A001157(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379812.P10955070158037639960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A001157 (n + 1)

end

end A379812.P10955070158037639960

noncomputable section

/-- A379812: a(n) = sigma_1(n) * sigma_2(n).

Offset 1, canonical program `A379812.P10955070158037639960`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)*A001157(n+1)` (program `A379812.P10955070158037639960`, by `A379812.P10955070158037639960.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379812 (n : ℕ) : ℤ :=
  A379812.P10955070158037639960.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)*A001157(n+1)` (program `A379812.P10955070158037639960`, by `A379812.P10955070158037639960.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379812.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A379813.P10472357877815493423

`A000203(n+1)*A001158(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379813.P10472357877815493423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A001158 (n + 1)

end

end A379813.P10472357877815493423

noncomputable section

/-- A379813: a(n) = sigma_1(n) * sigma_3(n).

Offset 1, canonical program `A379813.P10472357877815493423`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)*A001158(n+1)` (program `A379813.P10472357877815493423`, by `A379813.P10472357877815493423.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379813 (n : ℕ) : ℤ :=
  A379813.P10472357877815493423.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)*A001158(n+1)` (program `A379813.P10472357877815493423`, by `A379813.P10472357877815493423.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379813.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A379814.P16691352175471226694

`A001157(n+1)*A001158(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379814.P16691352175471226694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) * A001158 (n + 1)

end

end A379814.P16691352175471226694

noncomputable section

/-- A379814: a(n) = sigma_2(n) * sigma_3(n).

Offset 1, canonical program `A379814.P16691352175471226694`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001157(n+1)*A001158(n+1)` (program `A379814.P16691352175471226694`, by `A379814.P16691352175471226694.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379814 (n : ℕ) : ℤ :=
  A379814.P16691352175471226694.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001157(n+1)*A001158(n+1)` (program `A379814.P16691352175471226694`, by `A379814.P16691352175471226694.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379814.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A380230.P9860135547969315712

`n*A070939(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A380230.P9860135547969315712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A070939 n

end

end A380230.P9860135547969315712

noncomputable section

/-- A380230: a(n) = n*A070939(n).

Offset 0, canonical program `A380230.P9860135547969315712`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*A070939(n)` (program `A380230.P9860135547969315712`, by `A380230.P9860135547969315712.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A380230 (n : ℕ) : ℤ :=
  A380230.P9860135547969315712.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*A070939(n)` (program `A380230.P9860135547969315712`, by `A380230.P9860135547969315712.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A380230.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A380457.P14810033455213116904

`A000203(n+1)+A001221(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A380457.P14810033455213116904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A001221 (n + 1)

end

end A380457.P14810033455213116904

noncomputable section

/-- A380457: Sum of divisors of n plus the number of distinct prime divisors of n: a(n) = sigma(n) + omega(n).

Offset 1, canonical program `A380457.P14810033455213116904`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)+A001221(n+1)` (program `A380457.P14810033455213116904`, by `A380457.P14810033455213116904.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A380457 (n : ℕ) : ℤ :=
  A380457.P14810033455213116904.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)+A001221(n+1)` (program `A380457.P14810033455213116904`, by `A380457.P14810033455213116904.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A380457.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A383241.P1923992109248827182

`A000040(n+1)*A000040(n+2)*(A000040(n+2)-A000040(n+1))-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A383241.P1923992109248827182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A000040 (n + 2) * (A000040 (n + 2) - A000040 (n + 1)) - 1

end

end A383241.P1923992109248827182

noncomputable section

/-- A383241: a(n) = p(n)*p(n+1)*(p(n+1) - p(n)) - 1, where p(n) = prime(n).

Offset 1, canonical program `A383241.P1923992109248827182`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)*A000040(n+2)*(A000040(n+2)-A000040(n+1))-1` (program `A383241.P1923992109248827182`, by `A383241.P1923992109248827182.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A383241 (n : ℕ) : ℤ :=
  A383241.P1923992109248827182.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)*A000040(n+2)*(A000040(n+2)-A000040(n+1))-1` (program `A383241.P1923992109248827182`, by `A383241.P1923992109248827182.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A383241.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A383242.P10583517466409727714

`A000040(n+1)*A000040(n+2)*(A000040(n+2)-A000040(n+1))+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A383242.P10583517466409727714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A000040 (n + 2) * (A000040 (n + 2) - A000040 (n + 1)) + 1

end

end A383242.P10583517466409727714

noncomputable section

/-- A383242: a(n) = p(n)*p(n+1)*(p(n+1) - p(n)) + 1, where p(n) = prime(n).

Offset 1, canonical program `A383242.P10583517466409727714`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)*A000040(n+2)*(A000040(n+2)-A000040(n+1))+1` (program `A383242.P10583517466409727714`, by `A383242.P10583517466409727714.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A383242 (n : ℕ) : ℤ :=
  A383242.P10583517466409727714.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)*A000040(n+2)*(A000040(n+2)-A000040(n+1))+1` (program `A383242.P10583517466409727714`, by `A383242.P10583517466409727714.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A383242.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A386707.P16068764112324631990

`A000032(n+1)+6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A386707.P16068764112324631990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) + 6

end

end A386707.P16068764112324631990

noncomputable section

/-- A386707: a(n) = Lucas(n) + 6.

Offset 1, canonical program `A386707.P16068764112324631990`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000032(n+1)+6` (program `A386707.P16068764112324631990`, by `A386707.P16068764112324631990.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A386707 (n : ℕ) : ℤ :=
  A386707.P16068764112324631990.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000032(n+1)+6` (program `A386707.P16068764112324631990`, by `A386707.P16068764112324631990.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A386707.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A386964.P10655867375920441443

`10*a(n-1)+A000040(n+1)%10` with `a(0)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A386964.P10655867375920441443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  10 * a (n - 1) + Int.tmod (A000040 (n + 1)) 10

end

end A386964.P10655867375920441443

noncomputable section

/-- A386964: a(1) = prime(1) = 2, a(n) = 10*a(n-1) + (prime(n) mod 10).

Offset 1, canonical program `A386964.P10655867375920441443`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)+A000040(n+1)%10` (program `A386964.P10655867375920441443`, by `A386964.P10655867375920441443.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A386964 (n : ℕ) : ℤ :=
  A386964.P10655867375920441443.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)+A000040(n+1)%10` (program `A386964.P10655867375920441443`, by `A386964.P10655867375920441443.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A386964.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A387157.P17255716611215200488

`A173557(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387157.P17255716611215200488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (A000203 (n + 1)).toNat

end

end A387157.P17255716611215200488

noncomputable section

/-- A387157: a(n) = A173557(sigma(n)), where A173557(n) is multiplicative with a(p^e) = p-1 and sigma is the sum of divisors function.

Offset 1, canonical program `A387157.P17255716611215200488`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A173557(A000203(n+1))` (program `A387157.P17255716611215200488`, by `A387157.P17255716611215200488.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A387157 (n : ℕ) : ℤ :=
  A387157.P17255716611215200488.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A173557(A000203(n+1))` (program `A387157.P17255716611215200488`, by `A387157.P17255716611215200488.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A387157.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A387470.P15457309630766544785

`(n+1)*(A001222(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387470.P15457309630766544785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A001222 (n + 1) - 1)

end

end A387470.P15457309630766544785

noncomputable section

/-- A387470: a(n) = n*(Omega(n) - 1), where Omega = A001222.

Offset 1, canonical program `A387470.P15457309630766544785`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(A001222(n+1)-1)` (program `A387470.P15457309630766544785`, by `A387470.P15457309630766544785.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A387470 (n : ℕ) : ℤ :=
  A387470.P15457309630766544785.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(A001222(n+1)-1)` (program `A387470.P15457309630766544785`, by `A387470.P15457309630766544785.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A387470.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A389800.P1719173530516811554

`A000045(row(n)-col(n))²+A000045(row(n)-col(n)+col(n))²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389800.P1719173530516811554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) ^ 2 + A000045 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + (SequenceMachineLib.triCol n : ℤ)).toNat ^ 2

end

end A389800.P1719173530516811554

noncomputable section

/-- A389800: Array read by ascending antidiagonals: A(n, k) = A000045(n)^2 + A000045(n+k)^2.

Offset 0, canonical program `A389800.P1719173530516811554`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(row(n)-col(n))²+A000045(row(n)-col(n)+col(n))²` (program `A389800.P1719173530516811554`, by `A389800.P1719173530516811554.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A389800 (n : ℕ) : ℤ :=
  A389800.P1719173530516811554.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(row(n)-col(n))²+A000045(row(n)-col(n)+col(n))²` (program `A389800.P1719173530516811554`, by `A389800.P1719173530516811554.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A389800.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A390524.P3325490279493668610

`col(n)*A000045(row(n)-col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390524.P3325490279493668610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n : ℤ) * A000045 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A390524.P3325490279493668610

noncomputable section

/-- A390524: Array read by ascending antidiagonals: A(n, k) = k * Fibonacci(n).

Offset 0, canonical program `A390524.P3325490279493668610`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `col(n)*A000045(row(n)-col(n))` (program `A390524.P3325490279493668610`, by `A390524.P3325490279493668610.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A390524 (n : ℕ) : ℤ :=
  A390524.P3325490279493668610.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `col(n)*A000045(row(n)-col(n))` (program `A390524.P3325490279493668610`, by `A390524.P3325490279493668610.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A390524.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A390525.P327141548468234781

`A000217(n)*A000045(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390525.P327141548468234781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A000045 n

end

end A390525.P327141548468234781

noncomputable section

/-- A390525: a(n) = A000217(n)*A000045(n).

Offset 0, canonical program `A390525.P327141548468234781`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000217(n)*A000045(n)` (program `A390525.P327141548468234781`, by `A390525.P327141548468234781.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A390525 (n : ℕ) : ℤ :=
  A390525.P327141548468234781.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000217(n)*A000045(n)` (program `A390525.P327141548468234781`, by `A390525.P327141548468234781.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A390525.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A391357.P12193417330402299816

`A000040(col(n)+1)+A000040(col(n)+1+row(n)-col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391357.P12193417330402299816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.triCol n + 1) + A000040 ((SequenceMachineLib.triCol n + 1 : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1)).toNat

end

end A391357.P12193417330402299816

noncomputable section

/-- A391357: Rectangular array R read by falling antidiagonals: R(n,k) = prime(n) + prime(n+k).

Offset 1, canonical program `A391357.P12193417330402299816`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(col(n)+1)+A000040(col(n)+1+row(n)-col(n)+1)` (program `A391357.P12193417330402299816`, by `A391357.P12193417330402299816.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A391357 (n : ℕ) : ℤ :=
  A391357.P12193417330402299816.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(col(n)+1)+A000040(col(n)+1+row(n)-col(n)+1)` (program `A391357.P12193417330402299816`, by `A391357.P12193417330402299816.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A391357.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A391358.P13111860119989259958

`A000040(row(n)-col(n)+1)+A000040(col(n)+1+row(n)-col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391358.P13111860119989259958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat + A000040 ((SequenceMachineLib.triCol n + 1 : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1)).toNat

end

end A391358.P13111860119989259958

noncomputable section

/-- A391358: Rectangular array R read by falling antidiagonals: R(n,k) = prime(k) + prime(n+k).

Offset 1, canonical program `A391358.P13111860119989259958`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(row(n)-col(n)+1)+A000040(col(n)+1+row(n)-col(n)+1)` (program `A391358.P13111860119989259958`, by `A391358.P13111860119989259958.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A391358 (n : ℕ) : ℤ :=
  A391358.P13111860119989259958.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(row(n)-col(n)+1)+A000040(col(n)+1+row(n)-col(n)+1)` (program `A391358.P13111860119989259958`, by `A391358.P13111860119989259958.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A391358.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A391616.P3679485652184830836

`a(n-1)+A000040(a(n-1))+1` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391616.P3679485652184830836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000040 (a (n - 1)).toNat + 1

end

end A391616.P3679485652184830836

noncomputable section

/-- A391616: a(n) = a(n-1) + prime(a(n-1)) + 1 for n > 1, with a(1) = 1.

Offset 1, canonical program `A391616.P3679485652184830836`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+A000040(a(n-1))+1` (program `A391616.P3679485652184830836`, by `A391616.P3679485652184830836.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A391616 (n : ℕ) : ℤ :=
  A391616.P3679485652184830836.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+A000040(a(n-1))+1` (program `A391616.P3679485652184830836`, by `A391616.P3679485652184830836.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A391616.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A392328.P15567604144437909365

`A000045(n²+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392328.P15567604144437909365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n ^ 2 + 1)

end

end A392328.P15567604144437909365

noncomputable section

/-- A392328: a(n) = Fibonacci(n^2+1).

Offset 0, canonical program `A392328.P15567604144437909365`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n²+1)` (program `A392328.P15567604144437909365`, by `A392328.P15567604144437909365.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A392328 (n : ℕ) : ℤ :=
  A392328.P15567604144437909365.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n²+1)` (program `A392328.P15567604144437909365`, by `A392328.P15567604144437909365.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A392328.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A393202.P8725241224376797018

`A000040(n+3)²-A000040(n+2)*A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A393202.P8725241224376797018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3) ^ 2 - A000040 (n + 2) * A000040 (n + 1)

end

end A393202.P8725241224376797018

noncomputable section

/-- A393202: a(n) = prime(n + 2)^2 - prime(n + 1)*prime(n).

Offset 1, canonical program `A393202.P8725241224376797018`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+3)²-A000040(n+2)*A000040(n+1)` (program `A393202.P8725241224376797018`, by `A393202.P8725241224376797018.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A393202 (n : ℕ) : ℤ :=
  A393202.P8725241224376797018.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+3)²-A000040(n+2)*A000040(n+1)` (program `A393202.P8725241224376797018`, by `A393202.P8725241224376797018.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A393202.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A393297.P12328997900511415540

`A000129(A000129(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A393297.P12328997900511415540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (A000129 n).toNat

end

end A393297.P12328997900511415540

noncomputable section

/-- A393297: a(n) = Pell(Pell(n)) where Pell(n) = A000129(n).

Offset 0, canonical program `A393297.P12328997900511415540`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000129(A000129(n))` (program `A393297.P12328997900511415540`, by `A393297.P12328997900511415540.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A393297 (n : ℕ) : ℤ :=
  A393297.P12328997900511415540.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000129(A000129(n))` (program `A393297.P12328997900511415540`, by `A393297.P12328997900511415540.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A393297.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A393309.P12315744972852364962

`floor((n+1)!/A000040(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A393309.P12315744972852364962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)⌋

end

end A393309.P12315744972852364962

noncomputable section

/-- A393309: a(n) = floor(n! / prime(n)).

Offset 1, canonical program `A393309.P12315744972852364962`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)!/A000040(n+1))` (program `A393309.P12315744972852364962`, by `A393309.P12315744972852364962.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A393309 (n : ℕ) : ℤ :=
  A393309.P12315744972852364962.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)!/A000040(n+1))` (program `A393309.P12315744972852364962`, by `A393309.P12315744972852364962.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A393309.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A395605.P10565796866009906003

`((A000032(A000040(n+1))-1)/A000040(n+1))%A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A395605.P10565796866009906003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A000032 (A000040 (n + 1)).toNat - 1 : ℚ) / (A000040 (n + 1) : ℚ))) (A000040 (n + 1))

end

end A395605.P10565796866009906003

noncomputable section

/-- A395605: a(n) = ((Lucas(prime(n)) - 1) / prime(n)) mod prime(n).

Offset 1, canonical program `A395605.P10565796866009906003`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((A000032(A000040(n+1))-1)/A000040(n+1))%A000040(n+1)` (program `A395605.P10565796866009906003`, by `A395605.P10565796866009906003.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A395605 (n : ℕ) : ℤ :=
  A395605.P10565796866009906003.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((A000032(A000040(n+1))-1)/A000040(n+1))%A000040(n+1)` (program `A395605.P10565796866009906003`, by `A395605.P10565796866009906003.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A395605.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A397579.P16677952923156298384

`(4*A000045(n)+A000045(n+1))*A000045(n+1)^3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397579.P16677952923156298384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * A000045 n + A000045 (n + 1)) * A000045 (n + 1) ^ 3

end

end A397579.P16677952923156298384

noncomputable section

/-- A397579: a(n) = (4*Fibonacci(n) + Fibonacci(n+1))*Fibonacci(n+1)^3.

Offset 0, canonical program `A397579.P16677952923156298384`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*A000045(n)+A000045(n+1))*A000045(n+1)^3` (program `A397579.P16677952923156298384`, by `A397579.P16677952923156298384.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A397579 (n : ℕ) : ℤ :=
  A397579.P16677952923156298384.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*A000045(n)+A000045(n+1))*A000045(n+1)^3` (program `A397579.P16677952923156298384`, by `A397579.P16677952923156298384.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A397579.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A369836.P541515226587760680

`A003520(5*n)`
-/

namespace A369836.P541515226587760680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 (5 * n)

end

end A369836.P541515226587760680

noncomputable section

/-- A369836: Number of compositions of 5*n into parts 1 and 5.

Offset 0, canonical program `A369836.P541515226587760680`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369836 (n : ℕ) : ℤ :=
  A369836.P541515226587760680.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369836.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369845.P17165904175182421461

`A052920(5*n)`
-/

namespace A369845.P17165904175182421461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052920 (5 * n)

end

end A369845.P17165904175182421461

noncomputable section

/-- A369845: Number of compositions of 5*n into parts 3 and 5.

Offset 0, canonical program `A369845.P17165904175182421461`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369845 (n : ℕ) : ℤ :=
  A369845.P17165904175182421461.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369845.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370008.P5008556663384047119

`A000040(A000720(3*A000040(n+1)))`
-/

namespace A370008.P5008556663384047119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (3 * A000040 (n + 1)).toNat).toNat

end

end A370008.P5008556663384047119

noncomputable section

/-- A370008: a(n) is the greatest prime less than 3*prime(n).

Offset 1, canonical program `A370008.P5008556663384047119`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370008 (n : ℕ) : ℤ :=
  A370008.P5008556663384047119.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370008.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370010.P16054036097129189126

`A000040(A000720(4*A000040(n+1)))`
-/

namespace A370010.P16054036097129189126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (4 * A000040 (n + 1)).toNat).toNat

end

end A370010.P16054036097129189126

noncomputable section

/-- A370010: a(n) is the greatest prime less than 4*prime(n).

Offset 1, canonical program `A370010.P16054036097129189126`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370010 (n : ℕ) : ℤ :=
  A370010.P16054036097129189126.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370010.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370055.P10063796133977021406

`A000142(n)*A001764(n+1)`
-/

namespace A370055.P10063796133977021406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A001764 (n + 1)

end

end A370055.P10063796133977021406

noncomputable section

/-- A370055: a(n) = 3*(3*n+2)!/(2*n+3)!.

Offset 0, canonical program `A370055.P10063796133977021406`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370055 (n : ℕ) : ℤ :=
  A370055.P10063796133977021406.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370055.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370057.P17758719647371551335

`A000142(n)*A006632(n+1)`
-/

namespace A370057.P17758719647371551335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A006632 (n + 1)

end

end A370057.P17758719647371551335

noncomputable section

/-- A370057: a(n) = 3*(4*n+2)!/(3*n+3)!.

Offset 0, canonical program `A370057.P17758719647371551335`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370057 (n : ℕ) : ℤ :=
  A370057.P17758719647371551335.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370057.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370188.P15568161150400754513

`sqrt((A114052(n)²-1)/27)/5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A370188.P15568161150400754513
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A114052 n ^ 2 - 1 : ℚ) / 27 : ℝ) / 5

end

end A370188.P15568161150400754513

noncomputable section

/-- A370188: a(n) = sqrt((A114052(n)^2 - 1)/27)/5.

Offset 0, canonical program `A370188.P15568161150400754513`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370188 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A370188.P15568161150400754513.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370188.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370238.P9180117166049315748

`A151542(n)+n`
-/

namespace A370238.P9180117166049315748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151542 n + (n : ℤ)

end

end A370238.P9180117166049315748

noncomputable section

/-- A370238: a(n) = n*(3*n + 23)/2.

Offset 0, canonical program `A370238.P9180117166049315748`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370238 (n : ℕ) : ℤ :=
  A370238.P9180117166049315748.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370238.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370253.P12966461108388290693

`A001147(n)-A053871(n)`
-/

namespace A370253.P12966461108388290693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 n - A053871 n

end

end A370253.P12966461108388290693

noncomputable section

/-- A370253: Number of deranged matchings of 2n people with partners (of either sex) such that at least one person is matched with their spouse.

Offset 0, canonical program `A370253.P12966461108388290693`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370253 (n : ℕ) : ℤ :=
  A370253.P12966461108388290693.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370253.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370359.P3050715892632633690

`n^n*A009545(n)`
-/

namespace A370359.P3050715892632633690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * A009545 n

end

end A370359.P3050715892632633690

noncomputable section

/-- A370359: Imaginary part of (n + n*i)^n where i = sqrt(-1).

Offset 0, canonical program `A370359.P3050715892632633690`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370359 (n : ℕ) : ℤ :=
  A370359.P3050715892632633690.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370359.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370369.P10592005557351599252

`(n+1)!+A014145(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A370369.P10592005557351599252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) + A014145 n

end

end A370369.P10592005557351599252

noncomputable section

/-- A370369: a(n) = n! + Sum_{k=1..n-1} (n-k)*k! = n! + A014145(n-1); for n >= 2, number of m such that any two consecutive digits of the base-n expansion of m differ by 1 after arranging the digits in decreasing order.

Offset 1, canonical program `A370369.P10592005557351599252`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370369 (n : ℕ) : ℤ :=
  A370369.P10592005557351599252.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370369.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370579.P13829268499602601867

`(n+1)*A087906(n+1)`
-/

namespace A370579.P13829268499602601867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A087906 (n + 1)

end

end A370579.P13829268499602601867

noncomputable section

/-- A370579: a(n) = n! * Sum_{d|n} 1/(d-1)!.

Offset 1, canonical program `A370579.P13829268499602601867`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370579 (n : ℕ) : ℤ :=
  A370579.P13829268499602601867.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370579.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370796.P801255412299993999

`abs(A000720((A000040(n+2)-1)²)-A000720((A000040(n+1)+1)²))`
-/

namespace A370796.P801255412299993999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000720 ((A000040 (n + 2) - 1) ^ 2).toNat - A000720 ((A000040 (n + 1) + 1) ^ 2).toNat|

end

end A370796.P801255412299993999

noncomputable section

/-- A370796: Number of primes between (prime(n)+1)^2 and (prime(n+1)-1)^2.

Offset 1, canonical program `A370796.P801255412299993999`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370796 (n : ℕ) : ℤ :=
  A370796.P801255412299993999.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370796.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370869.P13692030525450674995

`a(n-1)²-3*A058891(n)` with `a(0)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A370869.P13692030525450674995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) ^ 2 - 3 * A058891 n

end

end A370869.P13692030525450674995

noncomputable section

/-- A370869: a(0) = 0; thereafter, a(n) = a(n-1)^2 - 3*A058891(n).

Offset 0, canonical program `A370869.P13692030525450674995`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370869 (n : ℕ) : ℤ :=
  A370869.P13692030525450674995.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370869.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A371125.P14219781672238829575

`A005708(6*n)`
-/

namespace A371125.P14219781672238829575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (6 * n)

end

end A371125.P14219781672238829575

noncomputable section

/-- A371125: Number of compositions of 6*n into parts 1 and 6.

Offset 0, canonical program `A371125.P14219781672238829575`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371125 (n : ℕ) : ℤ :=
  A371125.P14219781672238829575.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371125.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A371640.P6272718172563112277

`3^A371638(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A371640.P6272718172563112277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A371638 (n + 1) : ℤ)

end

end A371640.P6272718172563112277

noncomputable section

/-- A371640: a(n) = 3^(2*n + valuation(n, 3)) = 3^A371638(n).

Offset 1, canonical program `A371640.P6272718172563112277`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371640 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A371640.P6272718172563112277.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371640.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372015.P9509441470734535511

`A000045(n+1)*A001629(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372015.P9509441470734535511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A001629 (n + 1)

end

end A372015.P9509441470734535511

noncomputable section

/-- A372015: Product of Fibonacci and self-convolution of Fibonacci numbers: a(n) = A000045(n+1)*A001629(n+1).

Offset 0, canonical program `A372015.P9509441470734535511`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372015 (n : ℕ) : ℤ :=
  A372015.P9509441470734535511.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372015.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372231.P16292004406067968796

`A000217(n+1)-A005206(n)`
-/

namespace A372231.P16292004406067968796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - A005206 n

end

end A372231.P16292004406067968796

noncomputable section

/-- A372231: Fixed points of A372341.

Offset 1, canonical program `A372231.P16292004406067968796`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372231 (n : ℕ) : ℤ :=
  A372231.P16292004406067968796.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372231.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372302.P1592687612405792873

`A035338(n)+1`
-/

namespace A372302.P1592687612405792873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035338 n + 1

end

end A372302.P1592687612405792873

noncomputable section

/-- A372302: Numbers k for which the Zeckendorf representation A014417(k) ends with "1001".

Offset 1, canonical program `A372302.P1592687612405792873`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372302 (n : ℕ) : ℤ :=
  A372302.P1592687612405792873.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372302.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372358.P2222053546592064582

`xor(n+1, A086893(1+A000523(n+1)))`
-/

namespace A372358.P2222053546592064582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A086893 (1 + A000523 (n + 1)).toNat)

end

end A372358.P2222053546592064582

noncomputable section

/-- A372358: a(n) = n XOR A086893(1+A000523(n)), where XOR is a bitwise-XOR, A003987.

Offset 1, canonical program `A372358.P2222053546592064582`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372358 (n : ℕ) : ℤ :=
  A372358.P2222053546592064582.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372358.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372421.P10170577374281833840

`A000217(a(n-1))+n` with `a(0)=0`
-/

namespace A372421.P10170577374281833840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000217 (a (n - 1)).toNat + (n : ℤ)

end

end A372421.P10170577374281833840

noncomputable section

/-- A372421: Number of steps required to kill the hydra in a version of the hydra game (see comments) where, at each step, the rightmost head is chopped off and new heads grow to the left.

Offset 0, canonical program `A372421.P10170577374281833840`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372421 (n : ℕ) : ℤ :=
  A372421.P10170577374281833840.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372421.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372544.P15471300761998067043

`A000035(A022843(n+1))`
-/

namespace A372544.P15471300761998067043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A022843 (n + 1)).toNat

end

end A372544.P15471300761998067043

noncomputable section

/-- A372544: a(n) = floor(n*e) mod 2.

Offset 1, canonical program `A372544.P15471300761998067043`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372544 (n : ℕ) : ℤ :=
  A372544.P15471300761998067043.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372544.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372712.P8568564287462488964

`(A001608(n+1)+n+1)²`
-/

namespace A372712.P8568564287462488964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001608 (n + 1) + (n + 1 : ℤ)) ^ 2

end

end A372712.P8568564287462488964

noncomputable section

/-- A372712: Numbers of minimal total dominating sets in the n-trapezohedral graph.

Offset 1, canonical program `A372712.P8568564287462488964`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372712 (n : ℕ) : ℤ :=
  A372712.P8568564287462488964.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372712.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372758.P14293302057458379432

`A005374(A005374(n))+1`
-/

namespace A372758.P14293302057458379432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 (A005374 n).toNat + 1

end

end A372758.P14293302057458379432

noncomputable section

/-- A372758: 5th prepended column of the 3-Zeckendorf array (A136189).

Offset 1, canonical program `A372758.P14293302057458379432`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372758 (n : ℕ) : ℤ :=
  A372758.P14293302057458379432.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372758.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373048.P12956872335884234756

`A055226(n+1)-A055226(n)`
-/

namespace A373048.P12956872335884234756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055226 (n + 1) - A055226 n

end

end A373048.P12956872335884234756

noncomputable section

/-- A373048: Number of squares between n! and (n+1)!, exclusive.

Offset 0, canonical program `A373048.P12956872335884234756`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373048 (n : ℕ) : ℤ :=
  A373048.P12956872335884234756.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373048.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373216.P7487443510787612831

`A122841(n+1)+1`
-/

namespace A373216.P7487443510787612831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122841 (n + 1) + 1

end

end A373216.P7487443510787612831

noncomputable section

/-- A373216: Expansion of Sum_{k>=0} x^(6^k) / (1 - x^(6^k)).

Offset 1, canonical program `A373216.P7487443510787612831`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373216 (n : ℕ) : ℤ :=
  A373216.P7487443510787612831.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373216.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373245.P9496879938608800847

`A114203(n+1)/2`
-/

namespace A373245.P9496879938608800847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114203 (n + 1) : ℚ) / 2

end

end A373245.P9496879938608800847

noncomputable section

/-- A373245: Binomial transform of A135318.

Offset 0, canonical program `A373245.P9496879938608800847`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373245 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A373245.P9496879938608800847.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373245.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373302.P16178244919817638420

`A005708(6*(n+1)-2)`
-/

namespace A373302.P16178244919817638420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (6 * (n + 1) - 2)

end

end A373302.P16178244919817638420

noncomputable section

/-- A373302: Number of compositions of 6*n-2 into parts 1 and 6.

Offset 1, canonical program `A373302.P16178244919817638420`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373302 (n : ℕ) : ℤ :=
  A373302.P16178244919817638420.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373302.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373329.P3228160346676462800

`A000196((n^4+n²)/2)`
-/

namespace A373329.P3228160346676462800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((n ^ 4 + n ^ 2 : ℚ) / 2)).toNat

end

end A373329.P3228160346676462800

noncomputable section

/-- A373329: a(n)^2 is the greatest square not exceeding A000217(n^2).

Offset 0, canonical program `A373329.P3228160346676462800`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373329 (n : ℕ) : ℤ :=
  A373329.P3228160346676462800.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373329.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373340.P8185917160170023749

`A000142(n)-A373339(n)`
-/

namespace A373340.P8185917160170023749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A373339 n

end

end A373340.P8185917160170023749

noncomputable section

/-- A373340: Number of permutations of symmetric group S_n with an odd number of cycles of length 2 or more.

Offset 0, canonical program `A373340.P8185917160170023749`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373340 (n : ℕ) : ℤ :=
  A373340.P8185917160170023749.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373340.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373445.P16392507257831332484

`(A000073(n+2)+A103143(n+2))/2-A077947(n)`
-/

namespace A373445.P16392507257831332484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000073 (n + 2) + A103143 (n + 2) : ℚ) / 2 - (A077947 n : ℚ)

end

end A373445.P16392507257831332484

noncomputable section

/-- A373445: Triple convolution of the three tribonacci-like sequences A000073(n), A077947(n-2), and A103143(n).

Offset 0, canonical program `A373445.P16392507257831332484`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373445 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A373445.P16392507257831332484.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373445.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373561.P15499834751725507168

`n²*A000330(n)`
-/

namespace A373561.P15499834751725507168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A000330 n

end

end A373561.P15499834751725507168

noncomputable section

/-- A373561: a(n) = (1/3)*n^5 + (1/2)*n^4 + (1/6)*n^3.

Offset 0, canonical program `A373561.P15499834751725507168`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373561 (n : ℕ) : ℤ :=
  A373561.P15499834751725507168.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373561.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373585.P17268978619105738609

`A059841(A001222(n+1)-A007949(n+1))`
-/

namespace A373585.P17268978619105738609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A001222 (n + 1) - A007949 (n + 1)).toNat

end

end A373585.P17268978619105738609

noncomputable section

/-- A373585: a(n) = 1 if A373149(n) is even, otherwise 0, where A373149 is fully additive with a(2) = 1 and a(p) = prevprime(p) for odd primes p.

Offset 1, canonical program `A373585.P17268978619105738609`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373585 (n : ℕ) : ℤ :=
  A373585.P17268978619105738609.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373585.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373651.P4625024407428226436

`C(n+2, 2)*A002426(n)`
-/

namespace A373651.P4625024407428226436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) * A002426 n

end

end A373651.P4625024407428226436

noncomputable section

/-- A373651: Expansion of (1 - 2*x + 3*x^2)/(1 - 2*x - 3*x^2)^(5/2).

Offset 0, canonical program `A373651.P4625024407428226436`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373651 (n : ℕ) : ℤ :=
  A373651.P4625024407428226436.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373651.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373730.P14378342733449950770

`A000265(A017185(n))`
-/

namespace A373730.P14378342733449950770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A017185 n).toNat

end

end A373730.P14378342733449950770

noncomputable section

/-- A373730: Reduced Collatz function R applied to the numbers 6n+1: a(n) = R(6n+1), where R(k) = (3k+1)/2^r, with r as large as possible.

Offset 0, canonical program `A373730.P14378342733449950770`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373730 (n : ℕ) : ℤ :=
  A373730.P14378342733449950770.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373730.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373733.P1392411414185310364

`A000217(A000292(n))`
-/

namespace A373733.P1392411414185310364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000292 n).toNat

end

end A373733.P1392411414185310364

noncomputable section

/-- A373733: Triangular numbers with tetrahedral indices: a(n) = (1/72) * (n*(n+1)*(n+2)*(n+3)*(n^2+2)).

Offset 0, canonical program `A373733.P1392411414185310364`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373733 (n : ℕ) : ℤ :=
  A373733.P1392411414185310364.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373733.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373864.P16710253182946225644

`A000265(A017257(n))`
-/

namespace A373864.P16710253182946225644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A017257 n).toNat

end

end A373864.P16710253182946225644

noncomputable section

/-- A373864: Reduced Collatz function R applied to the numbers 6n+5: a(n) = R(6n+5), where R(k) = (3k+1)/2^r, with r as large as possible.

Offset 0, canonical program `A373864.P16710253182946225644`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373864 (n : ℕ) : ℤ :=
  A373864.P16710253182946225644.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373864.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373890.P3933045878343609463

`A005710(8*n)`
-/

namespace A373890.P3933045878343609463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005710 (8 * n)

end

end A373890.P3933045878343609463

noncomputable section

/-- A373890: Number of compositions of 8*n into parts 1 and 8.

Offset 0, canonical program `A373890.P3933045878343609463`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373890 (n : ℕ) : ℤ :=
  A373890.P3933045878343609463.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373890.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373907.P15282238610584887245

`A005709(7*n)`
-/

namespace A373907.P15282238610584887245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 (7 * n)

end

end A373907.P15282238610584887245

noncomputable section

/-- A373907: Number of compositions of 7*n into parts 1 and 7.

Offset 0, canonical program `A373907.P15282238610584887245`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373907 (n : ℕ) : ℤ :=
  A373907.P15282238610584887245.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373907.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373908.P9546572299438946991

`A369813(7*n)`
-/

namespace A373908.P9546572299438946991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369813 (7 * n)

end

end A373908.P9546572299438946991

noncomputable section

/-- A373908: Number of compositions of 7*n into parts 2 and 7.

Offset 0, canonical program `A373908.P9546572299438946991`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373908 (n : ℕ) : ℤ :=
  A373908.P9546572299438946991.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373908.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373909.P2908949416516809937

`A369814(7*n)`
-/

namespace A373909.P2908949416516809937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369814 (7 * n)

end

end A373909.P2908949416516809937

noncomputable section

/-- A373909: Number of compositions of 7*n into parts 3 and 7.

Offset 0, canonical program `A373909.P2908949416516809937`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373909 (n : ℕ) : ℤ :=
  A373909.P2908949416516809937.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373909.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373910.P2187591033375915871

`A369815(7*n)`
-/

namespace A373910.P2187591033375915871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369815 (7 * n)

end

end A373910.P2187591033375915871

noncomputable section

/-- A373910: Number of compositions of 7*n into parts 4 and 7.

Offset 0, canonical program `A373910.P2187591033375915871`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373910 (n : ℕ) : ℤ :=
  A373910.P2187591033375915871.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373910.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373911.P3384175063987620122

`A369816(7*n)`
-/

namespace A373911.P3384175063987620122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369816 (7 * n)

end

end A373911.P3384175063987620122

noncomputable section

/-- A373911: Number of compositions of 7*n into parts 5 and 7.

Offset 0, canonical program `A373911.P3384175063987620122`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373911 (n : ℕ) : ℤ :=
  A373911.P3384175063987620122.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373911.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373912.P4395864615512526356

`A017847(7*n)`
-/

namespace A373912.P4395864615512526356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017847 (7 * n)

end

end A373912.P4395864615512526356

noncomputable section

/-- A373912: Number of compositions of 7*n into parts 6 and 7.

Offset 0, canonical program `A373912.P4395864615512526356`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373912 (n : ℕ) : ℤ :=
  A373912.P4395864615512526356.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373912.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373913.P4676741196729923475

`A017857(8*n)`
-/

namespace A373913.P4676741196729923475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017857 (8 * n)

end

end A373913.P4676741196729923475

noncomputable section

/-- A373913: Number of compositions of 8*n into parts 7 and 8.

Offset 0, canonical program `A373913.P4676741196729923475`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373913 (n : ℕ) : ℤ :=
  A373913.P4676741196729923475.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373913.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373923.P18238041466305353005

`∑{d}[n+1, (-1)^A000720(#)]`
-/

namespace A373923.P18238041466305353005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (-1 : ℚ) ^ (A000720 d : ℤ)

end

end A373923.P18238041466305353005

noncomputable section

/-- A373923: a(n) = Sum_{d|n} (-1)^pi(d).

Offset 1, canonical program `A373923.P18238041466305353005`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373923 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A373923.P18238041466305353005.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373923.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373924.P1994942263636620404

`∑{d}[n+1, (-1)^A000720(#)*A008683((n+1)/#)]`
-/

namespace A373924.P1994942263636620404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (-1 : ℚ) ^ (A000720 d : ℤ) * (A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat : ℚ)

end

end A373924.P1994942263636620404

noncomputable section

/-- A373924: a(n) = Sum_{d|n} (-1)^pi(d) * mu(n/d).

Offset 1, canonical program `A373924.P1994942263636620404`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373924 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A373924.P1994942263636620404.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373924.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373928.P8650021580750186198

`A005709(7*(n+1)-2)`
-/

namespace A373928.P8650021580750186198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 (7 * (n + 1) - 2)

end

end A373928.P8650021580750186198

noncomputable section

/-- A373928: Number of compositions of 7*n-2 into parts 1 and 7.

Offset 1, canonical program `A373928.P8650021580750186198`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373928 (n : ℕ) : ℤ :=
  A373928.P8650021580750186198.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373928.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373929.P4771295431437523167

`A005709(7*(n+1)-3)`
-/

namespace A373929.P4771295431437523167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 (7 * (n + 1) - 3)

end

end A373929.P4771295431437523167

noncomputable section

/-- A373929: Number of compositions of 7*n-3 into parts 1 and 7.

Offset 1, canonical program `A373929.P4771295431437523167`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373929 (n : ℕ) : ℤ :=
  A373929.P4771295431437523167.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373929.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373930.P987995553319910995

`A005709(7*(n+1)-4)`
-/

namespace A373930.P987995553319910995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 (7 * (n + 1) - 4)

end

end A373930.P987995553319910995

noncomputable section

/-- A373930: Number of compositions of 7*n-4 into parts 1 and 7.

Offset 1, canonical program `A373930.P987995553319910995`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373930 (n : ℕ) : ℤ :=
  A373930.P987995553319910995.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373930.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373931.P3318070194164780924

`A005709(7*(n+1)-5)`
-/

namespace A373931.P3318070194164780924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 (7 * (n + 1) - 5)

end

end A373931.P3318070194164780924

noncomputable section

/-- A373931: Number of compositions of 7*n-5 into parts 1 and 7.

Offset 1, canonical program `A373931.P3318070194164780924`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373931 (n : ℕ) : ℤ :=
  A373931.P3318070194164780924.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373931.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373932.P1065963213325569315

`A005709(7*(n+1)-6)`
-/

namespace A373932.P1065963213325569315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 (7 * (n + 1) - 6)

end

end A373932.P1065963213325569315

noncomputable section

/-- A373932: Number of compositions of 7*n-6 into parts 1 and 7.

Offset 1, canonical program `A373932.P1065963213325569315`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373932 (n : ℕ) : ℤ :=
  A373932.P1065963213325569315.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373932.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373937.P8686742850087483701

`A017847(7*(n+1)-5)`
-/

namespace A373937.P8686742850087483701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017847 (7 * (n + 1) - 5)

end

end A373937.P8686742850087483701

noncomputable section

/-- A373937: Number of compositions of 7*n-5 into parts 6 and 7.

Offset 1, canonical program `A373937.P8686742850087483701`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373937 (n : ℕ) : ℤ :=
  A373937.P8686742850087483701.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373937.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373958.P360899032508483722

`A005708(6*(n+1)-3)`
-/

namespace A373958.P360899032508483722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (6 * (n + 1) - 3)

end

end A373958.P360899032508483722

noncomputable section

/-- A373958: Number of compositions of 6*n-3 into parts 1 and 6.

Offset 1, canonical program `A373958.P360899032508483722`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373958 (n : ℕ) : ℤ :=
  A373958.P360899032508483722.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373958.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373959.P5461141806012168502

`A005708(6*(n+1)-4)`
-/

namespace A373959.P5461141806012168502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (6 * (n + 1) - 4)

end

end A373959.P5461141806012168502

noncomputable section

/-- A373959: Number of compositions of 6*n-4 into parts 1 and 6.

Offset 1, canonical program `A373959.P5461141806012168502`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373959 (n : ℕ) : ℤ :=
  A373959.P5461141806012168502.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373959.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373960.P12350189268790730355

`A005708(6*(n+1)-5)`
-/

namespace A373960.P12350189268790730355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (6 * (n + 1) - 5)

end

end A373960.P12350189268790730355

noncomputable section

/-- A373960: Number of compositions of 6*n-5 into parts 1 and 6.

Offset 1, canonical program `A373960.P12350189268790730355`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373960 (n : ℕ) : ℤ :=
  A373960.P12350189268790730355.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373960.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373964.P12592844199490846618

`A017837(6*(n+1)-4)`
-/

namespace A373964.P12592844199490846618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017837 (6 * (n + 1) - 4)

end

end A373964.P12592844199490846618

noncomputable section

/-- A373964: Number of compositions of 6*n-4 into parts 5 and 6.

Offset 1, canonical program `A373964.P12592844199490846618`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373964 (n : ℕ) : ℤ :=
  A373964.P12592844199490846618.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373964.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374097.P1036587398955420288

`A196563(n)*A196564(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374097.P1036587398955420288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 n * A196564 n

end

end A374097.P1036587398955420288

noncomputable section

/-- A374097: a(n) = A196563(n)*A196564(n).

Offset 0, canonical program `A374097.P1036587398955420288`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374097 (n : ℕ) : ℤ :=
  A374097.P1036587398955420288.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374097.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374217.P12233700844342352105

`A007949(A001414(n+2))`
-/

namespace A374217.P12233700844342352105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A001414 (n + 2)).toNat

end

end A374217.P12233700844342352105

noncomputable section

/-- A374217: The 3-adic valuation of sopfr(n), where sopfr is the sum of prime factors with repetition, A001414.

Offset 2, canonical program `A374217.P12233700844342352105`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374217 (n : ℕ) : ℤ :=
  A374217.P12233700844342352105.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374217.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374426.P13793053293426560037

`a(n-1)+n+1+A010051(n+1)` with `a(0)=1`
-/

namespace A374426.P13793053293426560037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1 : ℤ) + A010051 (n + 1)

end

end A374426.P13793053293426560037

noncomputable section

/-- A374426: a(n) = n*(n + 1)/2 + pi(n), where pi(n) = A000720(n) is the prime counting function.

Offset 1, canonical program `A374426.P13793053293426560037`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374426 (n : ℕ) : ℤ :=
  A374426.P13793053293426560037.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374426.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374560.P15287772659668593832

`A005836(col(n)+1)+A005836(row(n)-col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374560.P15287772659668593832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (SequenceMachineLib.triCol n + 1) + A005836 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat

end

end A374560.P15287772659668593832

noncomputable section

/-- A374560: Square array A(n, k), n, k >= 0, read by antidiagonals; A(n, k) = A005836(n+1) + A005836(k+1).

Offset 0, canonical program `A374560.P15287772659668593832`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374560 (n : ℕ) : ℤ :=
  A374560.P15287772659668593832.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374560.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374648.P14007990213428452594

`A355988(n)-A081125(n)`
-/

namespace A374648.P14007990213428452594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355988 n - A081125 n

end

end A374648.P14007990213428452594

noncomputable section

/-- A374648: a(n) = n! / (floor(n/3))! - n! / (floor(n/2))!.

Offset 0, canonical program `A374648.P14007990213428452594`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374648 (n : ℕ) : ℤ :=
  A374648.P14007990213428452594.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374648.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374655.P15978509805491680972

`1/3*A374654(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374655.P15978509805491680972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (A374654 n : ℚ)

end

end A374655.P15978509805491680972

noncomputable section

/-- A374655: a(n) = (1/3)*A374654(n).

Offset 0, canonical program `A374655.P15978509805491680972`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374655 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A374655.P15978509805491680972.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374655.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374749.P9126795584612520576

`A015445(n+1)-1`
-/

namespace A374749.P9126795584612520576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015445 (n + 1) - 1

end

end A374749.P9126795584612520576

noncomputable section

/-- A374749: Number of zygodrome numbers in base-10 (A033023) with n or fewer digits.

Offset 1, canonical program `A374749.P9126795584612520576`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374749 (n : ℕ) : ℤ :=
  A374749.P9126795584612520576.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374749.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374908.P18111797103984117614

`a(n-1)+A006942(a(n-1))` with `a(0)=0`
-/

namespace A374908.P18111797103984117614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A006942 (a (n - 1)).toNat

end

end A374908.P18111797103984117614

noncomputable section

/-- A374908: Each term is the sum of the preceding term and its seven-segment total A006942.

Offset 0, canonical program `A374908.P18111797103984117614`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374908 (n : ℕ) : ℤ :=
  A374908.P18111797103984117614.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374908.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374929.P3218884029634741329

`(7*A001158(n+2)-(6*(n+2)+1)*A000203(n+2))/24`
-/

namespace A374929.P3218884029634741329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * A001158 (n + 2) - (6 * (n + 2) + 1 : ℤ) * A000203 (n + 2) : ℚ) / 24

end

end A374929.P3218884029634741329

noncomputable section

/-- A374929: Expansion of Sum_{1<=i<=j} q^(i+j)/( (1-q^i)*(1-q^j) )^2.

Offset 2, canonical program `A374929.P3218884029634741329`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374929 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A374929.P3218884029634741329.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374929.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375097.P15315627764109913285

`A000040(n+4)-(A000040(n+2)+A000040(n+3))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A375097.P15315627764109913285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 4) : ℚ) - (A000040 (n + 2) + A000040 (n + 3) : ℚ) / 2

end

end A375097.P15315627764109913285

noncomputable section

/-- A375097: a(n) = prime(n+2) - (prime(n) + prime(n+1))/2.

Offset 2, canonical program `A375097.P15315627764109913285`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375097 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375097.P15315627764109913285.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375097.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375260.P13671092592411399074

`C(n+3, 3)*A002426(n)`
-/

namespace A375260.P13671092592411399074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℤ) * A002426 n

end

end A375260.P13671092592411399074

noncomputable section

/-- A375260: Expansion of (1 - 3*x + 9*x^2 - 7*x^3)/(1 - 2*x - 3*x^2)^(7/2).

Offset 0, canonical program `A375260.P13671092592411399074`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375260 (n : ℕ) : ℤ :=
  A375260.P13671092592411399074.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375260.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375308.P15703181248884195186

`A375279(2*n)`
-/

namespace A375308.P15703181248884195186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375279 (2 * n)

end

end A375308.P15703181248884195186

noncomputable section

/-- A375308: a(n) = Sum_{k=0..floor(2*n/3)} binomial(4*n-4*k,2*k).

Offset 0, canonical program `A375308.P15703181248884195186`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375308 (n : ℕ) : ℤ :=
  A375308.P15703181248884195186.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375308.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375489.P9278473890610164610

`A000165(n)/10^A027868(n)`
-/

namespace A375489.P9278473890610164610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000165 n : ℚ) / (10 : ℚ) ^ (A027868 n : ℤ)

end

end A375489.P9278473890610164610

noncomputable section

/-- A375489: Omit the trailing zeros from double factorial of even numbers (A000165).

Offset 0, canonical program `A375489.P9278473890610164610`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375489 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375489.P9278473890610164610.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375489.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375500.P15942470194738677138

`4*(A000045(n+1)-1)*(A000045(n+2)-1)+n+1`
-/

namespace A375500.P15942470194738677138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A000045 (n + 1) - 1) * (A000045 (n + 2) - 1) + (n : ℤ) + 1

end

end A375500.P15942470194738677138

noncomputable section

/-- A375500: a(n) = Sum_{k=0..n} A001595(k)^2.

Offset 0, canonical program `A375500.P15942470194738677138`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375500 (n : ℕ) : ℤ :=
  A375500.P15942470194738677138.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375500.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375501.P17455082885023199198

`4*(-1)^n*(2*A000045(2*n)/5+A000045(n)²-A000045(n))+8*n/5+A059841(n)`
-/

namespace A375501.P17455082885023199198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * (-1) ^ n : ℚ) * ((2 * A000045 (2 * n) : ℚ) / 5 + (A000045 n ^ 2 : ℚ) - (A000045 n : ℚ)) + (8 * n : ℚ) / 5 + (A059841 n : ℚ)

end

end A375501.P17455082885023199198

noncomputable section

/-- A375501: a(n) = Sum_{k=0..n} (-1)^k*A001595(k)^2.

Offset 0, canonical program `A375501.P17455082885023199198`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375501 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375501.P17455082885023199198.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375501.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375530.P15174020114782716423

`A000040(n)*a(n-1)²+a(n-1)` with `a(0)=1`
-/

namespace A375530.P15174020114782716423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 n * a (n - 1) ^ 2 + a (n - 1)

end

end A375530.P15174020114782716423

noncomputable section

/-- A375530: a(n) is the denominator of Sum_{k = 1..n} prime(k) / A375529(k).

Offset 0, canonical program `A375530.P15174020114782716423`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375530 (n : ℕ) : ℤ :=
  A375530.P15174020114782716423.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375530.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375921.P491962245321920222

`A003418(2*(n+1)+1)/6`
-/

namespace A375921.P491962245321920222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (2 * (n + 1) + 1) : ℚ) / 6

end

end A375921.P491962245321920222

noncomputable section

/-- A375921: a(n) = LCM(1,2, ..., 2n+1)/6.

Offset 1, canonical program `A375921.P491962245321920222`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375921 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375921.P491962245321920222.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375921.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375970.P9061839122044189861

`A000188(A000330(n+1))`
-/

namespace A375970.P9061839122044189861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A000330 (n + 1)).toNat

end

end A375970.P9061839122044189861

noncomputable section

/-- A375970: a(n) is the largest number k such that k^2 divides the square pyramidal number A000330(n).

Offset 1, canonical program `A375970.P9061839122044189861`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375970 (n : ℕ) : ℤ :=
  A375970.P9061839122044189861.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375970.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A376228.P5158863274070751785

`(6*n+1)*A002897(n)`
-/

namespace A376228.P5158863274070751785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 1 : ℤ) * A002897 n

end

end A376228.P5158863274070751785

noncomputable section

/-- A376228: a(n) = (6*n+1) * (2*n)!^3 / n!^6.

Offset 0, canonical program `A376228.P5158863274070751785`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376228 (n : ℕ) : ℤ :=
  A376228.P5158863274070751785.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376228.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A376322.P15000761500640788639

`a(n-1)*A062709(n)` with `a(0)=1`
-/

namespace A376322.P15000761500640788639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A062709 n

end

end A376322.P15000761500640788639

noncomputable section

/-- A376322: (1/4) times obverse convolution (2)**(2^n + 1); see Comments.

Offset 0, canonical program `A376322.P15000761500640788639`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376322 (n : ℕ) : ℤ :=
  A376322.P15000761500640788639.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376322.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A376323.P14265089320724040884

`2*a(n-1)*A052548(n-1)` with `a(0)=1`
-/

namespace A376323.P14265089320724040884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) * A052548 (n - 1)

end

end A376323.P14265089320724040884

noncomputable section

/-- A376323: (1/5) times obverse convolution (3)**(2^n + 1); see Comments.

Offset 0, canonical program `A376323.P14265089320724040884`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376323 (n : ℕ) : ℤ :=
  A376323.P14265089320724040884.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376323.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A376324.P6294847534775206759

`a(n-1)*A168614(n)` with `a(0)=1`
-/

namespace A376324.P6294847534775206759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A168614 n

end

end A376324.P6294847534775206759

noncomputable section

/-- A376324: (1/6) times obverse convolution (4)**(2^n + 1); see Comments.

Offset 0, canonical program `A376324.P6294847534775206759`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376324 (n : ℕ) : ℤ :=
  A376324.P6294847534775206759.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376324.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A376583.P3078053738808332107

`A000035(A002260(n+1))`
-/

namespace A376583.P3078053738808332107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A002260 (n + 1)).toNat

end

end A376583.P3078053738808332107

noncomputable section

/-- A376583: Parity of A002260.

Offset 1, canonical program `A376583.P3078053738808332107`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376583 (n : ℕ) : ℤ :=
  A376583.P3078053738808332107.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376583.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A376759.P6507737170924248319

`A000720(n+1)-A000720(2*(n+1))+n+1`
-/

namespace A376759.P6507737170924248319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A000720 (2 * (n + 1)) + (n + 1 : ℤ)

end

end A376759.P6507737170924248319

noncomputable section

/-- A376759: Number of composite numbers c with n < c <= 2*n.

Offset 1, canonical program `A376759.P6507737170924248319`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376759 (n : ℕ) : ℤ :=
  A376759.P6507737170924248319.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376759.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A376827.P12684542555165258029

`C(row(n), col(n))*A002426(row(n))`
-/

namespace A376827.P12684542555165258029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) * A002426 (SequenceMachineLib.triRow n)

end

end A376827.P12684542555165258029

noncomputable section

/-- A376827: T(n, k) = binomial(n, k)*hypergeom([(1 - n)/2, -n/2], [1], 4).

Offset 0, canonical program `A376827.P12684542555165258029`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376827 (n : ℕ) : ℤ :=
  A376827.P12684542555165258029.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376827.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A376868.P7740210885381345666

`A000142(n)*A053763(n)`
-/

namespace A376868.P7740210885381345666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A053763 n

end

end A376868.P7740210885381345666

noncomputable section

/-- A376868: a(n) = n! * 4^binomial(n, 2).

Offset 0, canonical program `A376868.P7740210885381345666`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376868 (n : ℕ) : ℤ :=
  A376868.P7740210885381345666.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376868.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377016.P1722148904578130006

`(A002315(n)+2*A008844(n)-1)/2`
-/

namespace A377016.P1722148904578130006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002315 n + 2 * A008844 n - 1 : ℚ) / 2

end

end A377016.P1722148904578130006

noncomputable section

/-- A377016: Semiperimeter of the unique primitive Pythagorean triple whose short leg is A002315(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A377016.P1722148904578130006`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377016 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A377016.P1722148904578130006.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377016.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377017.P5371651612865963793

`A002315(n)*(A008844(n)-1)/2`
-/

namespace A377017.P5371651612865963793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002315 n * (A008844 n - 1) : ℚ) / 2

end

end A377017.P5371651612865963793

noncomputable section

/-- A377017: Area of the unique primitive Pythagorean triple whose short leg is A002315(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A377017.P5371651612865963793`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377017 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A377017.P5371651612865963793.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377017.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377264.P2807592734896247087

`A006720(n+1)*A006720(n+3)`
-/

namespace A377264.P2807592734896247087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006720 (n + 1) * A006720 (n + 3)

end

end A377264.P2807592734896247087

noncomputable section

/-- A377264: Consider the recurrence d(k) = (d(k-3)*d(k-2) + 1)/(d(k-5)*d(k-4)*d(k-3)^2*d(k-2)^2*d(k-1)), with d(0..4) = {1,1,1,2,1}. a(n) = numerator(d(2*n+1)).

Offset 0, canonical program `A377264.P2807592734896247087`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377264 (n : ℕ) : ℤ :=
  A377264.P2807592734896247087.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377264.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377310.P8912507436105376598

`A210098(2*n)`
-/

namespace A377310.P8912507436105376598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210098 (2 * n)

end

end A377310.P8912507436105376598

noncomputable section

/-- A377310: Divisibility sequence associated with elliptic curve y^2 + y = x^3 - x^2 - 2x + 2 and point (1, 0).

Offset 0, canonical program `A377310.P8912507436105376598`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377310 (n : ℕ) : ℤ :=
  A377310.P8912507436105376598.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377310.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377368.P9845472719769353126

`A255978(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A377368.P9845472719769353126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255978 n + 1

end

end A377368.P9845472719769353126

noncomputable section

/-- A377368: a(n) = A255978(n) + 1.

Offset 0, canonical program `A377368.P9845472719769353126`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377368 (n : ℕ) : ℤ :=
  A377368.P9845472719769353126.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377368.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377379.P16536510253315204524

`A007947(n+1)^C(A001222(n+1)+A001221(n+1), A001221(n+1)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A377379.P16536510253315204524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) ^ Nat.choose (A001222 (n + 1) + A001221 (n + 1)).toNat (A001221 (n + 1) + 1).toNat

end

end A377379.P16536510253315204524

noncomputable section

/-- A377379: a(n) = rad(n)^binomial(bigomega(n) + omega(n), omega(n) + 1), where rad = A007947, bigomega = A001222, and omega = A001221.

Offset 1, canonical program `A377379.P16536510253315204524`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A007947(n+1)^C(A001222(n+1)+A001221(n+1), A001221(n+1)+1)` (program `A377379.P16536510253315204524`, by `A377379.P16536510253315204524.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A377379 (n : ℕ) : ℤ :=
  A377379.P16536510253315204524.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A007947(n+1)^C(A001222(n+1)+A001221(n+1), A001221(n+1)+1)` (program `A377379.P16536510253315204524`, by `A377379.P16536510253315204524.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A377379.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A377537.P11278541041156194446

`C(A000720(n+1)+n+1-1, n+1)`
-/

namespace A377537.P11278541041156194446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000720 (n + 1) + (n + 1 : ℤ) - 1).toNat (n + 1)

end

end A377537.P11278541041156194446

noncomputable section

/-- A377537: a(n) is the number of positive integers that have n prime factors and these are all <= n.

Offset 1, canonical program `A377537.P11278541041156194446`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377537 (n : ℕ) : ℤ :=
  (A377537.P11278541041156194446.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377537.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377596.P6032089116386094869

`A112980(n)^5`
-/

namespace A377596.P6032089116386094869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112980 n ^ 5

end

end A377596.P6032089116386094869

noncomputable section

/-- A377596: a(n) = (a(n-1) + a(n-2))^5 for n>=2 where a(0) = 0, a(1) = 1.

Offset 0, canonical program `A377596.P6032089116386094869`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377596 (n : ℕ) : ℤ :=
  A377596.P6032089116386094869.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377596.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377601.P14384301913357752278

`A034841(n)-A000142(n)`
-/

namespace A377601.P14384301913357752278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034841 n - A000142 n

end

end A377601.P14384301913357752278

noncomputable section

/-- A377601: Number of permutations of the multiset {1^n, 2^n,..., n^n} excluding permutations where all objects of all types are contiguous.

Offset 0, canonical program `A377601.P14384301913357752278`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377601 (n : ℕ) : ℤ :=
  A377601.P14384301913357752278.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377601.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377659.P12368812019478080147

`A001006(n)-A011782(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A377659.P12368812019478080147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - A011782 n

end

end A377659.P12368812019478080147

noncomputable section

/-- A377659: a(n) = Motzkin(n) - 2^(n - 1 + 0^n) = A001006(n) - A011782(n).

Offset 0, canonical program `A377659.P12368812019478080147`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377659 (n : ℕ) : ℤ :=
  A377659.P12368812019478080147.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377659.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377673.P11159805995646321326

`A000203((n+1)^(n+1)+n+1)`
-/

namespace A377673.P11159805995646321326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((n + 1) ^ (n + 1) + (n + 1))

end

end A377673.P11159805995646321326

noncomputable section

/-- A377673: a(n) is the sum of the divisors of n^n + n.

Offset 1, canonical program `A377673.P11159805995646321326`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377673 (n : ℕ) : ℤ :=
  A377673.P11159805995646321326.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377673.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377677.P5386326867309966351

`A000203((n+2)^(n+2)-(n+2))`
-/

namespace A377677.P5386326867309966351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((n + 2) ^ (n + 2) - (n + 2))

end

end A377677.P5386326867309966351

noncomputable section

/-- A377677: a(n) is the sum of the divisors of n^n - n.

Offset 2, canonical program `A377677.P5386326867309966351`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377677 (n : ℕ) : ℤ :=
  A377677.P5386326867309966351.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377677.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377725.P10966813579059079895

`2*A002315(n)+1`
-/

namespace A377725.P10966813579059079895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002315 n + 1

end

end A377725.P10966813579059079895

noncomputable section

/-- A377725: Length of the short leg of the unique primitive Pythagorean triple whose inradius is A002315(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A377725.P10966813579059079895`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377725 (n : ℕ) : ℤ :=
  A377725.P10966813579059079895.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377725.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377726.P10665330491965238398

`2*A002315(n)*(A002315(n)-1)`
-/

namespace A377726.P10665330491965238398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002315 n * (A002315 n - 1)

end

end A377726.P10665330491965238398

noncomputable section

/-- A377726: Length of the long leg of the unique primitive Pythagorean triple (x,y,z) such that (x-y+z)/2 is A002315(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A377726.P10665330491965238398`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377726 (n : ℕ) : ℤ :=
  A377726.P10665330491965238398.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377726.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377809.P6328072400551004124

`A002024(n+1)*(A002024(n+1)+3)/2`
-/

namespace A377809.P6328072400551004124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) * (A002024 (n + 1) + 3) : ℚ) / 2

end

end A377809.P6328072400551004124

noncomputable section

/-- A377809: k*(k+3)/2 appears k times.

Offset 1, canonical program `A377809.P6328072400551004124`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377809 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A377809.P6328072400551004124.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377809.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377899.P15230961924577883064

`floor((n+1-A000720(n+1))/2)`
-/

namespace A377899.P15230961924577883064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1 : ℤ) - A000720 (n + 1) : ℚ) / 2⌋

end

end A377899.P15230961924577883064

noncomputable section

/-- A377899: a(n) = number of composite numbers c_{2*k+1} <= n, where c_m = A002808(m) is the m-th composite number.

Offset 1, canonical program `A377899.P15230961924577883064`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377899 (n : ℕ) : ℤ :=
  A377899.P15230961924577883064.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377899.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378100.P5253957062667002361

`A000085(n)-A123023(n)`
-/

namespace A378100.P5253957062667002361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n - A123023 n

end

end A378100.P5253957062667002361

noncomputable section

/-- A378100: Number of involutions in the symmetric group S_n with at least one fixed point.

Offset 0, canonical program `A378100.P5253957062667002361`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378100 (n : ℕ) : ℤ :=
  A378100.P5253957062667002361.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378100.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378380.P9757006306424432664

`(A002315(n)+1)*(2*A002315(n)+1)`
-/

namespace A378380.P9757006306424432664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002315 n + 1) * (2 * A002315 n + 1)

end

end A378380.P9757006306424432664

noncomputable section

/-- A378380: Semiperimeter of the unique primitive Pythagorean triple whose inradius is A002315(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A378380.P9757006306424432664`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378380 (n : ℕ) : ℤ :=
  A378380.P9757006306424432664.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378380.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378386.P10678097254079986643

`A002315(n)*(A002315(n)+1)*(2*A002315(n)+1)`
-/

namespace A378386.P10678097254079986643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n * (A002315 n + 1) * (2 * A002315 n + 1)

end

end A378386.P10678097254079986643

noncomputable section

/-- A378386: Area of the unique primitive Pythagorean triple whose inradius is A002315(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A378386.P10678097254079986643`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378386 (n : ℕ) : ℤ :=
  A378386.P10678097254079986643.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378386.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378493.P3452728986541570164

`a(n-1)+A000040(n+1)*(n+1)*(n+2)/2` with `a(0)=2`
-/

namespace A378493.P3452728986541570164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A000040 (n + 1) * (n + 1 : ℤ) * (n + 2 : ℤ) : ℚ) / 2

end

end A378493.P3452728986541570164

noncomputable section

/-- A378493: Dot product of the first n primes and the first n triangular numbers.

Offset 1, canonical program `A378493.P3452728986541570164`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378493 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A378493.P3452728986541570164.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378493.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378744.P4748667220349122921

`ceil(log(2)/log(A000040(n+2)/A000040(n+1)))`
-/

namespace A378744.P4748667220349122921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (2 : ℝ) / Real.log ((A000040 (n + 2) : ℚ) / (A000040 (n + 1) : ℚ) : ℝ)⌉

end

end A378744.P4748667220349122921

noncomputable section

/-- A378744: The least k such that prime(1+n)^k > 2 * prime(n)^k.

Offset 1, canonical program `A378744.P4748667220349122921`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378744 (n : ℕ) : ℤ :=
  A378744.P4748667220349122921.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378744.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378781.P6898465891069053923

`n*A378778(n)/3`
-/

namespace A378781.P6898465891069053923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A378778 n : ℚ) / 3

end

end A378781.P6898465891069053923

noncomputable section

/-- A378781: a(n) = n^3 * 2^n * binomial(3*n, n) / 3.

Offset 0, canonical program `A378781.P6898465891069053923`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378781 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A378781.P6898465891069053923.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378781.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378796.P2302645518933694793

`A046717(n+1)+n+1-1`
-/

namespace A378796.P2302645518933694793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046717 (n + 1) + (n + 1 : ℤ) - 1

end

end A378796.P2302645518933694793

noncomputable section

/-- A378796: Number of minimal edge cuts in the n-sun graph.

Offset 1, canonical program `A378796.P2302645518933694793`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378796 (n : ℕ) : ℤ :=
  A378796.P2302645518933694793.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378796.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378933.P7499219059448651818

`A166761(n+1)/2`
-/

namespace A378933.P7499219059448651818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166761 (n + 1) : ℚ) / 2

end

end A378933.P7499219059448651818

noncomputable section

/-- A378933: Number of minimal edge cuts in the 3 X n grid graph.

Offset 1, canonical program `A378933.P7499219059448651818`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378933 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A378933.P7499219059448651818.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378933.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378965.P16390378883255238781

`A002315(n)*(2*A002315(n)-1)`
-/

namespace A378965.P16390378883255238781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n * (2 * A002315 n - 1)

end

end A378965.P16390378883255238781

noncomputable section

/-- A378965: Semiperimeter of the unique primitive Pythagorean triple (x,y,z) such that (x-y+z)/2 is A002315(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A378965.P16390378883255238781`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378965 (n : ℕ) : ℤ :=
  A378965.P16390378883255238781.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378965.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378966.P5970924612894975663

`A002315(n)*(A002315(n)-1)*(2*A002315(n)-1)`
-/

namespace A378966.P5970924612894975663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n * (A002315 n - 1) * (2 * A002315 n - 1)

end

end A378966.P5970924612894975663

noncomputable section

/-- A378966: Area of the unique primitive Pythagorean triple (x,y,z) such that (x-y+z)/2 is A002315(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A378966.P5970924612894975663`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378966 (n : ℕ) : ℤ :=
  A378966.P5970924612894975663.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378966.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378988.P157898391695695422

`xor(n+1+n+1, 1+A000203(n+1))`
-/

namespace A378988.P157898391695695422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 + (n + 1) : ℤ) (1 + A000203 (n + 1))

end

end A378988.P157898391695695422

noncomputable section

/-- A378988: a(n) = 2*n XOR 1+sigma(n), where XOR is bitwise-xor, A003987.

Offset 1, canonical program `A378988.P157898391695695422`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378988 (n : ℕ) : ℤ :=
  A378988.P157898391695695422.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378988.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379473.P11357118703739175544

`A038500(A000203(n+1))`
-/

namespace A379473.P11357118703739175544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A000203 (n + 1)).toNat

end

end A379473.P11357118703739175544

noncomputable section

/-- A379473: a(n) is the highest power of 3 dividing the sum of divisors of n.

Offset 1, canonical program `A379473.P11357118703739175544`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379473 (n : ℕ) : ℤ :=
  A379473.P11357118703739175544.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379473.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379663.P16552720730699355066

`A060143(A000188(n+1))+1`
-/

namespace A379663.P16552720730699355066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (A000188 (n + 1)).toNat + 1

end

end A379663.P16552720730699355066

noncomputable section

/-- A379663: a(n) is the number of integer-sided triangles whose sides are in geometric progression with smallest side n.

Offset 1, canonical program `A379663.P16552720730699355066`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379663 (n : ℕ) : ℤ :=
  A379663.P16552720730699355066.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379663.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380110.P5586239892308066860

`n-A063695(n)/2`
-/

namespace A380110.P5586239892308066860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (A063695 n : ℚ) / 2

end

end A380110.P5586239892308066860

noncomputable section

/-- A380110: In the base 4 expansion of n: map 0->0, 1->1, 2->1, 3->2.

Offset 0, canonical program `A380110.P5586239892308066860`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380110 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A380110.P5586239892308066860.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380110.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380353.P13682949951401919771

`A051624(A000124(n))`
-/

namespace A380353.P13682949951401919771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051624 (A000124 n).toNat

end

end A380353.P13682949951401919771

noncomputable section

/-- A380353: a(n) = (n^2 - n + 2) * (5*n^2 - 5*n + 2) / 4.

Offset 1, canonical program `A380353.P13682949951401919771`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380353 (n : ℕ) : ℤ :=
  A380353.P13682949951401919771.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380353.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380484.P430126235261906034

`A079998(floor(n/6))`
-/

namespace A380484.P430126235261906034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 ⌊(n : ℚ) / 6⌋.toNat

end

end A380484.P430126235261906034

noncomputable section

/-- A380484: a(n) = 1 if n is congruent to {0, 1, 2, 3, 4, 5} mod 30, otherwise 0.

Offset 0, canonical program `A380484.P430126235261906034`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380484 (n : ℕ) : ℤ :=
  A380484.P430126235261906034.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380484.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380579.P8739931289538626971

`A001651(row(n)+1)-col(n)`
-/

namespace A380579.P8739931289538626971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (SequenceMachineLib.triRow n + 1) - (SequenceMachineLib.triCol n : ℤ)

end

end A380579.P8739931289538626971

noncomputable section

/-- A380579: Triangle read by rows in which row n lists n successive integers in descending order starting with the n-th positive integer not divisible by 3, with n >= 1 and 1 <= k <= n.

Offset 1, canonical program `A380579.P8739931289538626971`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380579 (n : ℕ) : ℤ :=
  A380579.P8739931289538626971.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380579.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380763.P586275446285360426

`A000217(A053615(n))`
-/

namespace A380763.P586275446285360426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A053615 n).toNat

end

end A380763.P586275446285360426

noncomputable section

/-- A380763: List triangular numbers up to increasingly large values and back down to 0.

Offset 0, canonical program `A380763.P586275446285360426`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380763 (n : ℕ) : ℤ :=
  A380763.P586275446285360426.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380763.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380821.P10996316985306517664

`2*A000032(n)+1`
-/

namespace A380821.P10996316985306517664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000032 n + 1

end

end A380821.P10996316985306517664

noncomputable section

/-- A380821: Length of the short leg in the unique primitive Pythagorean triple whose inradius is A000032(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A380821.P10996316985306517664`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380821 (n : ℕ) : ℤ :=
  A380821.P10996316985306517664.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380821.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380823.P15923719920850826478

`(A000032(n)+1)*(2*A000032(n)+1)`
-/

namespace A380823.P15923719920850826478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000032 n + 1) * (2 * A000032 n + 1)

end

end A380823.P15923719920850826478

noncomputable section

/-- A380823: Semiperimeter of the unique primitive Pythagorean triple whose inradius is A000032(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A380823.P15923719920850826478`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380823 (n : ℕ) : ℤ :=
  A380823.P15923719920850826478.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380823.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380824.P12530804268031175926

`A000032(n)*(A000032(n)+1)*(2*A000032(n)+1)`
-/

namespace A380824.P12530804268031175926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * (A000032 n + 1) * (2 * A000032 n + 1)

end

end A380824.P12530804268031175926

noncomputable section

/-- A380824: Area of the unique primitive Pythagorean triple whose inradius is A000032(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A380824.P12530804268031175926`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380824 (n : ℕ) : ℤ :=
  A380824.P12530804268031175926.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380824.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380855.P12946928765439253338

`a(A053645(n))-a(A053645(n-1))` with `a(0)=1, a(1)=0`
-/

namespace A380855.P12946928765439253338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (A053645 n).toNat - a (A053645 (n - 1)).toNat

end

end A380855.P12946928765439253338

noncomputable section

/-- A380855: The unique sequence starting with a(0) = 1, a(1) = 0 and partial sums are 1 followed by the sequence terms themselves repeated in successive blocks a(0..2^k-1) for k >= 0.

Offset 0, canonical program `A380855.P12946928765439253338`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380855 (n : ℕ) : ℤ :=
  A380855.P12946928765439253338.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380855.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380960.P14528990618773538882

`A003849(n)+n`
-/

namespace A380960.P14528990618773538882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n + (n : ℤ)

end

end A380960.P14528990618773538882

noncomputable section

/-- A380960: Sum of n and the n-th bit of the infinite Fibonacci word.

Offset 0, canonical program `A380960.P14528990618773538882`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380960 (n : ℕ) : ℤ :=
  A380960.P14528990618773538882.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380960.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381009.P15990344275163368300

`A381005(n+1)*A381006(n+1)/2`
-/

namespace A381009.P15990344275163368300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381005 (n + 1) * A381006 (n + 1) : ℚ) / 2

end

end A381009.P15990344275163368300

noncomputable section

/-- A381009: Ordered areas of the Pythagorean triangles defined by a = 2^(4n) + 2^(2n+1), b = 2^(4n) - 2^(4n-2) - 2^(2n) - 1, c = 2^(4n) + 2^(4n-2) + 2^(2n) + 1.

Offset 1, canonical program `A381009.P15990344275163368300`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381009 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A381009.P15990344275163368300.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381009.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381288.P16481357389649938989

`a(n-1)+(-1)^(n-1)*(A104521(n-1)+1)` with `a(0)=0`
-/

namespace A381288.P16481357389649938989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (-1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A104521 (n - 1) + 1 : ℚ)

end

end A381288.P16481357389649938989

noncomputable section

/-- A381288: Partial alternating sums of the trajectory of 2 under the morphism 2->{2,1,2}, 1->{2}.

Offset 0, canonical program `A381288.P16481357389649938989`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381288 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A381288.P16481357389649938989.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381288.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381483.P13239247248519645367

`A000108(n)*(A000108(n)+1)*(2*A000108(n)+1)`
-/

namespace A381483.P13239247248519645367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (A000108 n + 1) * (2 * A000108 n + 1)

end

end A381483.P13239247248519645367

noncomputable section

/-- A381483: Area of the unique primitive Pythagorean triple whose inradius is A000108(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A381483.P13239247248519645367`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381483 (n : ℕ) : ℤ :=
  A381483.P13239247248519645367.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381483.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381605.P16693958635226337192

`A001221((n+1)^3+1)`
-/

namespace A381605.P16693958635226337192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((n + 1) ^ 3 + 1)

end

end A381605.P16693958635226337192

noncomputable section

/-- A381605: Number of distinct prime divisors of n^3+1.

Offset 1, canonical program `A381605.P16693958635226337192`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381605 (n : ℕ) : ℤ :=
  A381605.P16693958635226337192.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381605.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381721.P9195889644798697899

`2*A000032(n)²+4*A000032(n)+1`
-/

namespace A381721.P9195889644798697899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000032 n ^ 2 + 4 * A000032 n + 1

end

end A381721.P9195889644798697899

noncomputable section

/-- A381721: Sum of the legs of the unique primitive Pythagorean triple whose inradius is A000032(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A381721.P9195889644798697899`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381721 (n : ℕ) : ℤ :=
  A381721.P9195889644798697899.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381721.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381794.P7718667864799923666

`4^(n+1)-A000032(2*(n+1))+2*(2^(n+1)-1)*A000032(n+1)+1+4*(n+1)`
-/

namespace A381794.P7718667864799923666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ (n + 1) : ℤ) - A000032 (2 * (n + 1)) + 2 * ((2 ^ (n + 1) : ℤ) - 1) * A000032 (n + 1) + 1 + (4 * (n + 1) : ℤ)

end

end A381794.P7718667864799923666

noncomputable section

/-- A381794: Number of connected dominating sets in the n-trapezohedral graph.

Offset 1, canonical program `A381794.P7718667864799923666`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381794 (n : ℕ) : ℤ :=
  A381794.P7718667864799923666.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381794.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382070.P7201143770269954328

`(A000040(n+1)+1)*(2*A000040(n+1)+1)`
-/

namespace A382070.P7201143770269954328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) + 1) * (2 * A000040 (n + 1) + 1)

end

end A382070.P7201143770269954328

noncomputable section

/-- A382070: Semiperimeter of the unique primitive Pythagorean triple whose inradius is the n-th prime and whose short leg is an odd number.

Offset 1, canonical program `A382070.P7201143770269954328`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382070 (n : ℕ) : ℤ :=
  A382070.P7201143770269954328.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382070.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382097.P6504080317338827745

`2*A000040(n+1)²+4*A000040(n+1)+1`
-/

namespace A382097.P6504080317338827745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) ^ 2 + 4 * A000040 (n + 1) + 1

end

end A382097.P6504080317338827745

noncomputable section

/-- A382097: Sum of the legs of the unique primitive Pythagorean triple whose inradius is the n-th prime and whose short leg is an odd number.

Offset 1, canonical program `A382097.P6504080317338827745`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382097 (n : ℕ) : ℤ :=
  A382097.P6504080317338827745.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382097.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382114.P18285456847627497086

`(A000108(n)+1)*(2*A000108(n)+1)`
-/

namespace A382114.P18285456847627497086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000108 n + 1) * (2 * A000108 n + 1)

end

end A382114.P18285456847627497086

noncomputable section

/-- A382114: Semiperimeter of the unique primitive Pythagorean triple whose inradius is A000108(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A382114.P18285456847627497086`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382114 (n : ℕ) : ℤ :=
  A382114.P18285456847627497086.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382114.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382185.P2903184745648601010

`A000073(n+1)%A000040(n+1)`
-/

namespace A382185.P2903184745648601010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000073 (n + 1)) (A000040 (n + 1))

end

end A382185.P2903184745648601010

noncomputable section

/-- A382185: a(n) is the n-th tribonacci number modulo the n-th prime.

Offset 1, canonical program `A382185.P2903184745648601010`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382185 (n : ℕ) : ℤ :=
  A382185.P2903184745648601010.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382185.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382308.P2156442247495806737

`2*A000045(n)²+4*A000045(n)+1`
-/

namespace A382308.P2156442247495806737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n ^ 2 + 4 * A000045 n + 1

end

end A382308.P2156442247495806737

noncomputable section

/-- A382308: Sum of the legs of the unique primitive Pythagorean triple whose inradius is A000045(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A382308.P2156442247495806737`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382308 (n : ℕ) : ℤ :=
  A382308.P2156442247495806737.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382308.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382379.P10739304604407682157

`2*A000032(n)*(A000032(n)-1)`
-/

namespace A382379.P10739304604407682157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000032 n * (A000032 n - 1)

end

end A382379.P10739304604407682157

noncomputable section

/-- A382379: Length of the long leg in the unique primitive Pythagorean triple (x,y,z) such that (x-y+z)/2 is A000032(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A382379.P10739304604407682157`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382379 (n : ℕ) : ℤ :=
  A382379.P10739304604407682157.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382379.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382410.P3198826714146822108

`A000032(n)*(A000032(n)-1)*(2*A000032(n)-1)`
-/

namespace A382410.P3198826714146822108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * (A000032 n - 1) * (2 * A000032 n - 1)

end

end A382410.P3198826714146822108

noncomputable section

/-- A382410: Area of the unique primitive Pythagorean triple (a,b,c) such that (a-b+c)/2 is A000032(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A382410.P3198826714146822108`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382410 (n : ℕ) : ℤ :=
  A382410.P3198826714146822108.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382410.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382411.P13968524649925157096

`A000142(n+1)*A152947(n+1)`
-/

namespace A382411.P13968524649925157096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A152947 (n + 1)

end

end A382411.P13968524649925157096

noncomputable section

/-- A382411: a(n) is the greatest possible length of a circular sequence on n symbols such that: no two adjacent symbols are the same, any group of n adjacent symbols contains at least n-1 different symbols, and all groups of n adjacent symbols within the sequence are unique.

Offset 1, canonical program `A382411.P13968524649925157096`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382411 (n : ℕ) : ℤ :=
  A382411.P13968524649925157096.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382411.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382488.P2299356055555741481

`abs(A181982(n+10))`
-/

namespace A382488.P2299356055555741481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A181982 (n + 10)|

end

end A382488.P2299356055555741481

noncomputable section

/-- A382488: The number of unitary 3-smooth divisors of n.

Offset 1, canonical program `A382488.P2299356055555741481`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382488 (n : ℕ) : ℤ :=
  A382488.P2299356055555741481.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382488.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382527.P17963097231273716000

`(2*(n+1))!/2*A060493(n+1)`
-/

namespace A382527.P17963097231273716000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * (n + 1)) : ℚ) / 2 * (A060493 (n + 1) : ℚ)

end

end A382527.P17963097231273716000

noncomputable section

/-- A382527: a(n) = Sum_{j = 1..n} (-1)^(n+j) * j^(2*n+4) * binomial(2*n, n-j).

Offset 1, canonical program `A382527.P17963097231273716000`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382527 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382527.P17963097231273716000.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382527.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382609.P6423727230008733317

`(A000045(n)+1)*(2*A000045(n)+1)`
-/

namespace A382609.P6423727230008733317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 n + 1) * (2 * A000045 n + 1)

end

end A382609.P6423727230008733317

noncomputable section

/-- A382609: Semiperimeter of the unique primitive Pythagorean triple whose inradius is A000045(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A382609.P6423727230008733317`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382609 (n : ℕ) : ℤ :=
  A382609.P6423727230008733317.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382609.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382610.P14625043378136783450

`A000045(n)*(A000045(n)+1)*(2*A000045(n)+1)`
-/

namespace A382610.P14625043378136783450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * (A000045 n + 1) * (2 * A000045 n + 1)

end

end A382610.P14625043378136783450

noncomputable section

/-- A382610: Area of the unique primitive Pythagorean triple whose inradius is A000045(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A382610.P14625043378136783450`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382610 (n : ℕ) : ℤ :=
  A382610.P14625043378136783450.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382610.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382668.P12531874329124797350

`A000108(n+3)-A000108(n+1)-2*A000108(n)`
-/

namespace A382668.P12531874329124797350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 3) - A000108 (n + 1) - 2 * A000108 n

end

end A382668.P12531874329124797350

noncomputable section

/-- A382668: a(n) = C(n+1) - C(n-1) - 2*C(n-2) where C(n) = A000108(n) are the Catalan numbers.

Offset 2, canonical program `A382668.P12531874329124797350`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382668 (n : ℕ) : ℤ :=
  A382668.P12531874329124797350.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382668.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382733.P7983275454340441927

`A382732(n)+1`
-/

namespace A382733.P7983275454340441927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382732 n + 1

end

end A382733.P7983275454340441927

noncomputable section

/-- A382733: Number of hypercubic bipartitions of n.

Offset 0, canonical program `A382733.P7983275454340441927`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382733 (n : ℕ) : ℤ :=
  A382733.P7983275454340441927.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382733.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382843.P16467974130948964599

`2*A000045(n)*(A000045(n)-1)`
-/

namespace A382843.P16467974130948964599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n * (A000045 n - 1)

end

end A382843.P16467974130948964599

noncomputable section

/-- A382843: Length of the long leg in the unique primitive Pythagorean triple (x,y,z) such that (x-y+z)/2 = A000045(n) and its long leg and hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A382843.P16467974130948964599`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382843 (n : ℕ) : ℤ :=
  A382843.P16467974130948964599.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382843.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382844.P4842604271225019851

`A000045(n)*(A000045(n)-1)*(2*A000045(n)-1)`
-/

namespace A382844.P4842604271225019851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * (A000045 n - 1) * (2 * A000045 n - 1)

end

end A382844.P4842604271225019851

noncomputable section

/-- A382844: Area of the unique primitive Pythagorean triple (a,b,c) such that (a-b+c)/2 = A000045(n) and its long leg and hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A382844.P4842604271225019851`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382844 (n : ℕ) : ℤ :=
  A382844.P4842604271225019851.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382844.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382845.P16632734929146409984

`2*A000045(n)²-1`
-/

namespace A382845.P16632734929146409984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n ^ 2 - 1

end

end A382845.P16632734929146409984

noncomputable section

/-- A382845: Sum of the legs of the unique primitive Pythagorean triple (a,b,c) such that (a-b+c)/2 = A000045(n) and its long leg and hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A382845.P16632734929146409984`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382845 (n : ℕ) : ℤ :=
  A382845.P16632734929146409984.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382845.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382989.P8482641082575908324

`(3^(n+1)+2*A002426(n+1)-A002426(n+2)-3*A002426(n+3)+A002426(n+4))/2`
-/

namespace A382989.P8482641082575908324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ (n + 1) : ℤ) + 2 * A002426 (n + 1) - A002426 (n + 2) - 3 * A002426 (n + 3) + A002426 (n + 4) : ℚ) / 2

end

end A382989.P8482641082575908324

noncomputable section

/-- A382989: a(n) is the total sum of area over all (>=,>=)-polyominoes of length n.

Offset 0, canonical program `A382989.P8482641082575908324`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382989 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382989.P8482641082575908324.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382989.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A383039.P9143552430524653141

`2*A001254(n)-1`
-/

namespace A383039.P9143552430524653141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001254 n - 1

end

end A383039.P9143552430524653141

noncomputable section

/-- A383039: Sum of the legs of the unique primitive Pythagorean triple (a,b,c) such that (a-b+c)/2 = A000032(n) and its long leg and hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A383039.P9143552430524653141`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383039 (n : ℕ) : ℤ :=
  A383039.P9143552430524653141.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383039.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A383225.P9453964147066224758

`A000129(n+1)*A000129(n+2)-(-1)^n`
-/

namespace A383225.P9453964147066224758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) * A000129 (n + 2) - (-1) ^ n

end

end A383225.P9453964147066224758

noncomputable section

/-- A383225: a(n) = sqrt(1 + P(n)*P(n+1)*P(n+2)*P(n+3)) where P(n) = A000129(n) are the Pell numbers.

Offset 0, canonical program `A383225.P9453964147066224758`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383225 (n : ℕ) : ℤ :=
  A383225.P9453964147066224758.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383225.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A383251.P10776672623636940607

`2*A000108(n)+1`
-/

namespace A383251.P10776672623636940607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000108 n + 1

end

end A383251.P10776672623636940607

noncomputable section

/-- A383251: Short leg of the unique primitive Pythagorean triple whose inradius is A000108(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A383251.P10776672623636940607`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383251 (n : ℕ) : ℤ :=
  A383251.P10776672623636940607.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383251.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A383414.P16717646191007434327

`A000302(row(n)-col(n))*A004771(col(n))`
-/

namespace A383414.P16717646191007434327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) * A004771 (SequenceMachineLib.triCol n)

end

end A383414.P16717646191007434327

noncomputable section

/-- A383414: Array read by ascending antidiagonals: A(n,k) = 4^n*(8*k + 7).

Offset 0, canonical program `A383414.P16717646191007434327`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383414 (n : ℕ) : ℤ :=
  A383414.P16717646191007434327.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383414.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A383776.P7136280431778039087

`(11*n+3+6/(n+2))*A000108(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A383776.P7136280431778039087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 * n + 3 : ℚ) + 6 / (n + 2 : ℚ)) * (A000108 n : ℚ)

end

end A383776.P7136280431778039087

noncomputable section

/-- A383776: a(n) = (11*n + 3 + 6/(n+2)) * Catalan(n).

Offset 0, canonical program `A383776.P7136280431778039087`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383776 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A383776.P7136280431778039087.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383776.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A383833.P17811188111289876932

`A000217(n)*(A000217(n)+1)*(2*A000217(n)+1)`
-/

namespace A383833.P17811188111289876932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * (A000217 n + 1) * (2 * A000217 n + 1)

end

end A383833.P17811188111289876932

noncomputable section

/-- A383833: Area of the unique primitive Pythagorean triple whose inradius is A000217(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A383833.P17811188111289876932`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383833 (n : ℕ) : ℤ :=
  A383833.P17811188111289876932.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383833.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A383834.P10743144755230545223

`6*A006007(n)+1`
-/

namespace A383834.P10743144755230545223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A006007 n + 1

end

end A383834.P10743144755230545223

noncomputable section

/-- A383834: Sum of the legs of the unique primitive Pythagorean triple whose inradius is A000217(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A383834.P10743144755230545223`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383834 (n : ℕ) : ℤ :=
  A383834.P10743144755230545223.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383834.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A383922.P6416788775665426922

`A002104(n)+A002104(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A383922.P6416788775665426922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002104 n + A002104 (n + 1) - 1

end

end A383922.P6416788775665426922

noncomputable section

/-- A383922: a(n) = A002104(n) + A002104(n+1) - 1.

Offset 0, canonical program `A383922.P6416788775665426922`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383922 (n : ℕ) : ℤ :=
  A383922.P6416788775665426922.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383922.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A383957.P8900195989436403223

`2*A000108(n)²+4*A000108(n)+1`
-/

namespace A383957.P8900195989436403223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000108 n ^ 2 + 4 * A000108 n + 1

end

end A383957.P8900195989436403223

noncomputable section

/-- A383957: Sum of the legs of the unique primitive Pythagorean triple whose inradius is A000108(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A383957.P8900195989436403223`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383957 (n : ℕ) : ℤ :=
  A383957.P8900195989436403223.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383957.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384561.P5420392690080599210

`A382644(n+4)/2`
-/

namespace A384561.P5420392690080599210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382644 (n + 4) : ℚ) / 2

end

end A384561.P5420392690080599210

noncomputable section

/-- A384561: One fourth of the number of permutations of [n] with |p(i+1) - p(i)| >= 2, for i = 1..(n-1) and n appears at position i = 1 or i = n.

Offset 5, canonical program `A384561.P5420392690080599210`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384561 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A384561.P5420392690080599210.a (n - 5))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384561.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384688.P10707158175314299968

`ceil(A053186(4*n+1)/2)`
-/

namespace A384688.P10707158175314299968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A053186 (4 * n + 1) : ℚ) / 2⌉

end

end A384688.P10707158175314299968

noncomputable section

/-- A384688: Runs of t in the range 0 <= t <= k and the same parity as k, for successive k >= 0.

Offset 0, canonical program `A384688.P10707158175314299968`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384688 (n : ℕ) : ℤ :=
  A384688.P10707158175314299968.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384688.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384922.P6445870207053674092

`A002379(n)%10`
-/

namespace A384922.P6445870207053674092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002379 n) 10

end

end A384922.P6445870207053674092

noncomputable section

/-- A384922: a(n) is the first digit to the left of the decimal point in (3/2)^n.

Offset 0, canonical program `A384922.P6445870207053674092`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384922 (n : ℕ) : ℤ :=
  A384922.P6445870207053674092.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384922.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385563.P12664143766579300426

`C(n+2, 2)*A002212(n+1)`
-/

namespace A385563.P12664143766579300426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) * A002212 (n + 1)

end

end A385563.P12664143766579300426

noncomputable section

/-- A385563: Expansion of 1/((1-x) * (1-5*x))^(3/2).

Offset 0, canonical program `A385563.P12664143766579300426`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385563 (n : ℕ) : ℤ :=
  A385563.P12664143766579300426.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385563.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385728.P6895606513719186912

`C(n+2, 2)*A005572(n)`
-/

namespace A385728.P6895606513719186912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) * A005572 n

end

end A385728.P6895606513719186912

noncomputable section

/-- A385728: Expansion of 1/((1-2*x) * (1-6*x))^(3/2).

Offset 0, canonical program `A385728.P6895606513719186912`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385728 (n : ℕ) : ℤ :=
  A385728.P6895606513719186912.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385728.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385977.P16877403268120504790

`2*A002315(n)*(A002315(n)+1)`
-/

namespace A385977.P16877403268120504790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002315 n * (A002315 n + 1)

end

end A385977.P16877403268120504790

noncomputable section

/-- A385977: Length of the long leg of the triangles defined in A377725.

Offset 0, canonical program `A385977.P16877403268120504790`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385977 (n : ℕ) : ℤ :=
  A385977.P16877403268120504790.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385977.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386201.P11856909807172330877

`2*A000032(n)*(A000032(n)+1)`
-/

namespace A386201.P11856909807172330877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000032 n * (A000032 n + 1)

end

end A386201.P11856909807172330877

noncomputable section

/-- A386201: Lengths of the long leg in the unique primitive Pythagorean triple whose inradius is A000032(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A386201.P11856909807172330877`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386201 (n : ℕ) : ℤ :=
  A386201.P11856909807172330877.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386201.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386291.P6378607592052834356

`2*A000108(n)*(A000108(n)+1)`
-/

namespace A386291.P6378607592052834356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000108 n * (A000108 n + 1)

end

end A386291.P6378607592052834356

noncomputable section

/-- A386291: Long leg of the unique primitive Pythagorean triple whose inradius is A000108(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A386291.P6378607592052834356`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386291 (n : ℕ) : ℤ :=
  A386291.P6378607592052834356.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386291.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386517.P2721402725429736476

`60*A005809(n)/(n+2)`
-/

namespace A386517.P2721402725429736476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (60 * A005809 n : ℚ) / (n + 2 : ℚ)

end

end A386517.P2721402725429736476

noncomputable section

/-- A386517: a(n) = 60*binomial(3*n,n)/(n+2).

Offset 0, canonical program `A386517.P2721402725429736476`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386517 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A386517.P2721402725429736476.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386517.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386685.P10921872709597016548

`4*A010051(4*n+1)+2*A010051(4*n+2)+A010051(4*n+3)`
-/

namespace A386685.P10921872709597016548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A010051 (4 * n + 1) + 2 * A010051 (4 * n + 2) + A010051 (4 * n + 3)

end

end A386685.P10921872709597016548

noncomputable section

/-- A386685: Classification of the interval [4*n+1, 4*n+2, 4*n+3] according to positions of primes.

Offset 0, canonical program `A386685.P10921872709597016548`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386685 (n : ℕ) : ℤ :=
  A386685.P10921872709597016548.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386685.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387249.P9723774275975948807

`(3*n+2)/2*A007272(3*n)`
-/

namespace A387249.P9723774275975948807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℚ) / 2 * (A007272 (3 * n) : ℚ)

end

end A387249.P9723774275975948807

noncomputable section

/-- A387249: a(n) = 10/(n + 1) * Catalan(3*n).

Offset 0, canonical program `A387249.P9723774275975948807`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387249 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387249.P9723774275975948807.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387249.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387263.P7341233109122044462

`a(n-2)-(n+1)+A383527(n)` with `a(0)=0, a(1)=0`
-/

namespace A387263.P7341233109122044462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) - (n + 1 : ℤ) + A383527 n

end

end A387263.P7341233109122044462

noncomputable section

/-- A387263: Partial sums of A247287.

Offset 0, canonical program `A387263.P7341233109122044462`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387263 (n : ℕ) : ℤ :=
  A387263.P7341233109122044462.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387263.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387341.P2794587713551805196

`A277660(n+2)/2`
-/

namespace A387341.P2794587713551805196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277660 (n + 2) : ℚ) / 2

end

end A387341.P2794587713551805196

noncomputable section

/-- A387341: Expansion of 1/(1 - 6*x + x^2)^(5/2).

Offset 0, canonical program `A387341.P2794587713551805196`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387341 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387341.P2794587713551805196.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387341.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387939.P1991994683815980825

`2^n*(n²/4+n/4+4)-A000045(n+4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387939.P1991994683815980825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) * ((n ^ 2 : ℚ) / 4 + (n : ℚ) / 4 + 4) - (A000045 (n + 4) : ℚ)

end

end A387939.P1991994683815980825

noncomputable section

/-- A387939: a(n) = 2^n*(n^2/4+n/4+4) - Fibonacci(n+4).

Offset 0, canonical program `A387939.P1991994683815980825`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387939 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387939.P1991994683815980825.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387939.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A388072.P14779318985125589135

`A080891(n)*A188510(n)`
-/

namespace A388072.P14779318985125589135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 n * A188510 n

end

end A388072.P14779318985125589135

noncomputable section

/-- A388072: a(n) = Kronecker symbol (-10/n).

Offset 0, canonical program `A388072.P14779318985125589135`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A388072 (n : ℕ) : ℤ :=
  A388072.P14779318985125589135.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A388072.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389886.P15009672084438795900

`3*2^n-A000045(n+4)`
-/

namespace A389886.P15009672084438795900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * 2 ^ n : ℤ) - A000045 (n + 4)

end

end A389886.P15009672084438795900

noncomputable section

/-- A389886: Number of proper 3-partitions of the vertices of the fan graph on n vertices such that every triangle uses exactly 2 colors.

Offset 3, canonical program `A389886.P15009672084438795900`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389886 (n : ℕ) : ℤ :=
  A389886.P15009672084438795900.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389886.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390137.P6598231683345126993

`5*a(n-1)+(-1)^n*A000984(n)` with `a(0)=1`
-/

namespace A390137.P6598231683345126993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + (-1) ^ n * A000984 n

end

end A390137.P6598231683345126993

noncomputable section

/-- A390137: Expansion of 1/((1-5*x) * sqrt(1+4*x)).

Offset 0, canonical program `A390137.P6598231683345126993`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390137 (n : ℕ) : ℤ :=
  A390137.P6598231683345126993.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390137.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390254.P15560212173112391131

`A087192(n+1)+1`
-/

namespace A390254.P15560212173112391131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087192 (n + 1) + 1

end

end A390254.P15560212173112391131

noncomputable section

/-- A390254: a(0) = 2, thereafter a(n+1) is the nearest integer to 4*a(n)/3.

Offset 0, canonical program `A390254.P15560212173112391131`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390254 (n : ℕ) : ℤ :=
  A390254.P15560212173112391131.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390254.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390577.P15375437403461670826

`(A000040(n+1)*A000040(n+2))%(n+1)`
-/

namespace A390577.P15375437403461670826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1) * A000040 (n + 2)) (n + 1 : ℤ)

end

end A390577.P15375437403461670826

noncomputable section

/-- A390577: Remainder when (prime(n) * prime(n+1)) is divided by n.

Offset 1, canonical program `A390577.P15375437403461670826`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390577 (n : ℕ) : ℤ :=
  A390577.P15375437403461670826.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390577.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390587.P10651787233076413835

`A000040(A000720(a(n-1))+a(n-1)-a(n-2)+1)` with `a(0)=2, a(1)=3`
-/

namespace A390587.P10651787233076413835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A000040 (A000720 (a (n - 1)).toNat + a (n - 1) - a (n - 2) + 1).toNat

end

end A390587.P10651787233076413835

noncomputable section

/-- A390587: Primes generated by skipping a(n-1) - a(n-2) primes after a(n-1), starting with primes a(1)=2, a(2)=3.

Offset 1, canonical program `A390587.P10651787233076413835`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390587 (n : ℕ) : ℤ :=
  A390587.P10651787233076413835.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390587.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390839.P4208086319752327611

`a(n-1)*(1+A000040(n))/(A000040(n+1)-A000040(n))` with `a(0)=1`
-/

namespace A390839.P4208086319752327611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (1 + A000040 n : ℚ) / (A000040 (n + 1) - A000040 n : ℚ)

end

end A390839.P4208086319752327611

noncomputable section

/-- A390839: a(n) = Product_{k=1..n} (prime(k) + 1)/A001223(k), where A001223 lists the prime gaps, rounded to the nearest integer if necessary.

Offset 0, canonical program `A390839.P4208086319752327611`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390839 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390839.P4208086319752327611.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390839.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390945.P3952073079316062166

`A003059(3*(n+1))`
-/

namespace A390945.P3952073079316062166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (3 * (n + 1))

end

end A390945.P3952073079316062166

noncomputable section

/-- A390945: Burning number of the n-necklace graph.

Offset 1, canonical program `A390945.P3952073079316062166`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390945 (n : ℕ) : ℤ :=
  A390945.P3952073079316062166.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390945.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391163.P12705108012069157976

`10*A002264(n)+A010872(n)`
-/

namespace A391163.P12705108012069157976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A002264 n + A010872 n

end

end A391163.P12705108012069157976

noncomputable section

/-- A391163: Numbers whose final digit is at most 2.

Offset 0, canonical program `A391163.P12705108012069157976`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391163 (n : ℕ) : ℤ :=
  A391163.P12705108012069157976.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391163.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391164.P14227226670676293853

`10*A152467(n)+A010875(n)`
-/

namespace A391164.P14227226670676293853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A152467 n + A010875 n

end

end A391164.P14227226670676293853

noncomputable section

/-- A391164: Numbers whose final digit is at most 5.

Offset 0, canonical program `A391164.P14227226670676293853`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391164 (n : ℕ) : ℤ :=
  A391164.P14227226670676293853.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391164.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391188.P16383289770167184422

`floor(A000040(n+2)/floor(log(A000040(n+2))))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391188.P16383289770167184422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 2) : ℚ) / (⌊Real.log (A000040 (n + 2) : ℝ)⌋ : ℚ)⌋

end

end A391188.P16383289770167184422

noncomputable section

/-- A391188: a(n) = floor( prime(n) / floor(log(prime(n))) ), where prime(n) is the n-th prime.

Offset 2, canonical program `A391188.P16383289770167184422`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A000040(n+2)/floor(log(A000040(n+2))))` (program `A391188.P16383289770167184422`, by `A391188.P16383289770167184422.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A391188 (n : ℕ) : ℤ :=
  A391188.P16383289770167184422.a (n - 2)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A000040(n+2)/floor(log(A000040(n+2))))` (program `A391188.P16383289770167184422`, by `A391188.P16383289770167184422.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A391188.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A391588.P7030029554672891423

`xor(A003817(n+1), A003817(n+1)*(n+1))`
-/

namespace A391588.P7030029554672891423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003817 (n + 1)) (A003817 (n + 1) * (n + 1 : ℤ))

end

end A391588.P7030029554672891423

noncomputable section

/-- A391588: a(n) = A003817(n) XOR (A003817(n)*n).

Offset 1, canonical program `A391588.P7030029554672891423`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391588 (n : ℕ) : ℤ :=
  A391588.P7030029554672891423.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391588.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391868.P15801713376637900617

`a(n-1)+A006893(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A391868.P15801713376637900617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + A006893 (n - 1)

end

end A391868.P15801713376637900617

noncomputable section

/-- A391868: Start with the list of positive integers 1,2,3,... . After each integer k, insert k empty positions. Fill these positions, from left to right, with the positive integers in order. Repeat this spacing-and-filling process indefinitely. The sequence consists of the positions of the last occurrence of 1 after each step.

Offset 1, canonical program `A391868.P15801713376637900617`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391868 (n : ℕ) : ℤ :=
  A391868.P15801713376637900617.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391868.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391917.P17410970912518672552

`A290493(n+1)²+1`
-/

namespace A391917.P17410970912518672552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290493 (n + 1) ^ 2 + 1

end

end A391917.P17410970912518672552

noncomputable section

/-- A391917: Number of irredundant sets in the n-double cone graph.

Offset 1, canonical program `A391917.P17410970912518672552`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391917 (n : ℕ) : ℤ :=
  A391917.P17410970912518672552.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391917.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392334.P16455220936438434802

`A109613(n)^A000034(n)`
-/

namespace A392334.P16455220936438434802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109613 n : ℚ) ^ (A000034 n : ℤ)

end

end A392334.P16455220936438434802

noncomputable section

/-- A392334: a(2*n) = 2*n+1, a(2*n+1) = (2*n+1)^2.

Offset 0, canonical program `A392334.P16455220936438434802`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392334 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392334.P16455220936438434802.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392334.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393238.P17553377918589216133

`A349919(n)+n²+1`
-/

namespace A393238.P17553377918589216133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349919 n + (n ^ 2 : ℤ) + 1

end

end A393238.P17553377918589216133

noncomputable section

/-- A393238: Number of transitive relations on an n-set with at most two ordered pairs.

Offset 0, canonical program `A393238.P17553377918589216133`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393238 (n : ℕ) : ℤ :=
  A393238.P17553377918589216133.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393238.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393496.P1782685945993566905

`gcd(A174344(n+1), A274923(n+1))`
-/

namespace A393496.P1782685945993566905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A174344 (n + 1)) (A274923 (n + 1))

end

end A393496.P1782685945993566905

noncomputable section

/-- A393496: a(n) is the GCD of the X and Y-coordinates of the n-th point of the square spiral.

Offset 1, canonical program `A393496.P1782685945993566905`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393496 (n : ℕ) : ℤ :=
  (A393496.P1782685945993566905.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393496.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394454.P627526309176184517

`A008472(A000984(n+1))`
-/

namespace A394454.P627526309176184517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A000984 (n + 1)).toNat

end

end A394454.P627526309176184517

noncomputable section

/-- A394454: Sum of distinct prime divisors of C(2*n, n).

Offset 1, canonical program `A394454.P627526309176184517`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394454 (n : ℕ) : ℤ :=
  A394454.P627526309176184517.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394454.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394510.P16388077156761870700

`A132356(n)*A090771(n+1)`
-/

namespace A394510.P16388077156761870700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132356 n * A090771 (n + 1)

end

end A394510.P16388077156761870700

noncomputable section

/-- A394510: a(2*k) = 2*k*(5*k+1)*(10*k+1), a(2*k+1) = 2*(k+1)*(5*k+4)*(10*k+9), with k >= 0.

Offset 0, canonical program `A394510.P16388077156761870700`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394510 (n : ℕ) : ℤ :=
  A394510.P16388077156761870700.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394510.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A394529.P4813404703482126856`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394529 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A394529.P4813404703482126856.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394529.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394865.P1928483704663461371

`A050292(n+1)-A050292(floor((n+1)/3))`
-/

namespace A394865.P1928483704663461371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 (n + 1) - A050292 ⌊(n + 1 : ℚ) / 3⌋.toNat

end

end A394865.P1928483704663461371

noncomputable section

/-- A394865: a(n) is the size of the largest subset A of {1, ..., n} such that x does not divide 2*y for each pair of distinct elements x, y in A.

Offset 1, canonical program `A394865.P1928483704663461371`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394865 (n : ℕ) : ℤ :=
  A394865.P1928483704663461371.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394865.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394883.P1645665538627354432

`(n+1)*A060493(n+1)`
-/

namespace A394883.P1645665538627354432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A060493 (n + 1)

end

end A394883.P1645665538627354432

noncomputable section

/-- A394883: a(n) = n^2*(n + 1)*(n + 2)*(2*n + 1)*(2*n + 3)*(5*n - 1)/360.

Offset 1, canonical program `A394883.P1645665538627354432`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394883 (n : ℕ) : ℤ :=
  A394883.P1645665538627354432.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394883.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394896.P2662756544387131280

`(n+1)*A351105(n+1)`
-/

namespace A394896.P2662756544387131280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A351105 (n + 1)

end

end A394896.P2662756544387131280

noncomputable section

/-- A394896: a(n) = n*n*(n+1)*(n+2)*(n+3)*(2n+1)*(2n+3)*(2n+5)*(35*n^2-21*n+4)/45360.

Offset 1, canonical program `A394896.P2662756544387131280`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394896 (n : ℕ) : ℤ :=
  A394896.P2662756544387131280.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394896.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394992.P15021251122541274444

`A000045(2*n)+n*a(n-1)` with `a(0)=0`
-/

namespace A394992.P15021251122541274444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000045 (2 * n) + (n : ℤ) * a (n - 1)

end

end A394992.P15021251122541274444

noncomputable section

/-- A394992: a(n) = n! * Sum_{k=0..n} F(2*k)/k!, where F(n) is the n-th Fibonacci number, A000045(n).

Offset 0, canonical program `A394992.P15021251122541274444`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394992 (n : ℕ) : ℤ :=
  A394992.P15021251122541274444.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394992.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394993.P16828162771782242662

`(-1)^(n+1)*A000045(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A394993.P16828162771782242662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (-1) ^ (n + 1) * A000045 n + (n : ℤ) * a (n - 1)

end

end A394993.P16828162771782242662

noncomputable section

/-- A394993: a(n) = n! * Sum_{k=0..n} (-1)^(k+1)*F(k)/k!, where F(n) is the n-th Fibonacci number, A000045(n).

Offset 0, canonical program `A394993.P16828162771782242662`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394993 (n : ℕ) : ℤ :=
  A394993.P16828162771782242662.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394993.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395196.P17729750059770065000

`4*A110611(n+1)-2*(n+1)*(n+2)+n+1`
-/

namespace A395196.P17729750059770065000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A110611 (n + 1) - (2 * (n + 1) * (n + 2) : ℤ) + (n + 1 : ℤ)

end

end A395196.P17729750059770065000

noncomputable section

/-- A395196: Minimal value of Sum_{i=1..n} p(i)*p(i+1), where p(n+1)=p(1), as p ranges over all permutations of odd numbers {1,3,...,2*n-1}.

Offset 1, canonical program `A395196.P17729750059770065000`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395196 (n : ℕ) : ℤ :=
  A395196.P17729750059770065000.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395196.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395204.P11909722987938007791

`(2*n)!*A002315(n)`
-/

namespace A395204.P11909722987938007791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) : ℤ) * A002315 n

end

end A395204.P11909722987938007791

noncomputable section

/-- A395204: a(n) = (2*n)! * [x^(2*n)] (f(x)^2 + f(-x)^2)/2 and f(x) = 1/sqrt(1 + 2*sqrt(2)*x + x^2).

Offset 0, canonical program `A395204.P11909722987938007791`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395204 (n : ℕ) : ℤ :=
  A395204.P11909722987938007791.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395204.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395581.P5928758976938920943

`A003151(a(n-1))+A003151(a(n-2))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A395581.P5928758976938920943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A003151 (a (n - 1)).toNat + A003151 (a (n - 2)).toNat

end

end A395581.P5928758976938920943

noncomputable section

/-- A395581: a(n) = floor(r*a(n-1)) + floor(r*a(n-2)), a(0) = 0, a(1) = 1 and r = 1 + sqrt(2).

Offset 0, canonical program `A395581.P5928758976938920943`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395581 (n : ℕ) : ℤ :=
  A395581.P5928758976938920943.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395581.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395582.P2622982355169417460

`A080081(a(n-1))+A080081(a(n-2))` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A395582.P2622982355169417460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n a =>
  A080081 (a (n - 1)).toNat + A080081 (a (n - 2)).toNat

end

end A395582.P2622982355169417460

noncomputable section

/-- A395582: a(n) = floor(r*a(n-1)) + floor(r*a(n-2)), a(0) = 0, a(1) = 1 and r = (3 + sqrt(13))/2.

Offset 0, canonical program `A395582.P2622982355169417460`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395582 (n : ℕ) : ℤ :=
  A395582.P2622982355169417460.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395582.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395583.P8867304325575678550

`A004976(a(n-1))+A004976(a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A395583.P8867304325575678550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A004976 (a (n - 1)).toNat + A004976 (a (n - 2)).toNat

end

end A395583.P8867304325575678550

noncomputable section

/-- A395583: a(n) = floor(r*a(n-1)) + floor(r*a(n-2)), a(0) = 0, a(1) = 1 and r = 2 + sqrt(5).

Offset 0, canonical program `A395583.P8867304325575678550`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395583 (n : ℕ) : ℤ :=
  A395583.P8867304325575678550.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395583.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395585.P1910700753436105600

`A080081(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A395585.P1910700753436105600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A080081 (a (n - 1) + a (n - 2)).toNat

end

end A395585.P1910700753436105600

noncomputable section

/-- A395585: a(n) = floor(r*(a(n-1) + a(n-2))), a(0) = 0, a(1) = 1 and r = (3 + sqrt(13))/2.

Offset 0, canonical program `A395585.P1910700753436105600`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395585 (n : ℕ) : ℤ :=
  A395585.P1910700753436105600.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395585.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395586.P13069080438315574656

`A004976(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A395586.P13069080438315574656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A004976 (a (n - 1) + a (n - 2)).toNat

end

end A395586.P13069080438315574656

noncomputable section

/-- A395586: a(n) = floor(r*(a(n-1)+a(n-2))), a(0) = 0, a(1) = 1 and r = 2 + sqrt(5).

Offset 0, canonical program `A395586.P13069080438315574656`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395586 (n : ℕ) : ℤ :=
  A395586.P13069080438315574656.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395586.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395627.P1347031268804462371

`(A000040(col(n)+1)-1)*A000040(col(n)+1)^(row(n)-col(n)+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A395627.P1347031268804462371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (SequenceMachineLib.triCol n + 1) - 1 : ℚ) * (A000040 (SequenceMachineLib.triCol n + 1) : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 : ℤ) / 2

end

end A395627.P1347031268804462371

noncomputable section

/-- A395627: Infinite square array T(n,k) = (prime(n)-1)*prime(n)^k/2; n, k >= 1; read by falling antidiagonals.

Offset 1, canonical program `A395627.P1347031268804462371`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395627 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A395627.P1347031268804462371.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395627.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395675.P10573458847951959363

`A339240(n+1)/2`
-/

namespace A395675.P10573458847951959363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339240 (n + 1) : ℚ) / 2

end

end A395675.P10573458847951959363

noncomputable section

/-- A395675: Expansion of g^3/(2-g)^4, where g = 1+x*g^2 is the g.f. of A000108.

Offset 0, canonical program `A395675.P10573458847951959363`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395675 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A395675.P10573458847951959363.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395675.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395827.P16679499213790510204

`6^n-A180033(n)`
-/

namespace A395827.P16679499213790510204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) - A180033 n

end

end A395827.P16679499213790510204

noncomputable section

/-- A395827: a(n) is the number of possible outcomes having a run of 2 or more sixes when a die is rolled n times.

Offset 0, canonical program `A395827.P16679499213790510204`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395827 (n : ℕ) : ℤ :=
  A395827.P16679499213790510204.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395827.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395828.P2810719931447247323

`7^n-A180167(n)`
-/

namespace A395828.P2810719931447247323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) - A180167 n

end

end A395828.P2810719931447247323

noncomputable section

/-- A395828: Number of septenary strings of length n that contain a specific string xx (where x is a single digit).

Offset 0, canonical program `A395828.P2810719931447247323`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395828 (n : ℕ) : ℤ :=
  A395828.P2810719931447247323.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395828.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396151.P82576254118047464

`2*A000749(n+2)+1`
-/

namespace A396151.P82576254118047464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000749 (n + 2) + 1

end

end A396151.P82576254118047464

noncomputable section

/-- A396151: a(n) = 2^(n+1) + 1 - 2*Re((1+i)^n), where i is the imaginary unit.

Offset 0, canonical program `A396151.P82576254118047464`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396151 (n : ℕ) : ℤ :=
  A396151.P82576254118047464.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396151.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396197.P11192290453794693208

`(-1)^col(n)*C(row(n), col(n))*A000285(row(n)-col(n))`
-/

namespace A396197.P11192290453794693208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ SequenceMachineLib.triCol n * (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) * A000285 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A396197.P11192290453794693208

noncomputable section

/-- A396197: Triangle read by rows: T(n, k) = (-1)^k*binomial(n, k) * (2*F(n - k) + F(n - k + 2)) where F(n) are the Fibonacci numbers.

Offset 0, canonical program `A396197.P11192290453794693208`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396197 (n : ℕ) : ℤ :=
  A396197.P11192290453794693208.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396197.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396467.P1293345253100451359

`A396285(n+1)-C(n+1, 3)`
-/

namespace A396467.P1293345253100451359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396285 (n + 1) - (Nat.choose (n + 1) 3 : ℤ)

end

end A396467.P1293345253100451359

noncomputable section

/-- A396467: a(n) is the number of distinct triples of triangles chosen from n^2 unit triangles of a triangular grid up to rotation and excluding the centers of three triangles in a same symmetrical axis.

Offset 1, canonical program `A396467.P1293345253100451359`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396467 (n : ℕ) : ℤ :=
  A396467.P1293345253100451359.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396467.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396641.P2215949741411272717

`(6*A253880(n+1)+1)/7`
-/

namespace A396641.P2215949741411272717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 * A253880 (n + 1) + 1 : ℚ) / 7

end

end A396641.P2215949741411272717

noncomputable section

/-- A396641: Centered hexagonal numbers h such that 7*h is also a centered hexagonal number.

Offset 1, canonical program `A396641.P2215949741411272717`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396641 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A396641.P2215949741411272717.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396641.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396686.P3676614447419960955

`A070939(2*(n+1)²)`
-/

namespace A396686.P3676614447419960955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (2 * (n + 1) ^ 2)

end

end A396686.P3676614447419960955

noncomputable section

/-- A396686: a(n) = floor(2*log_2(n)) + 2.

Offset 1, canonical program `A396686.P3676614447419960955`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396686 (n : ℕ) : ℤ :=
  A396686.P3676614447419960955.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396686.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396689.P6792333059227703695

`A216073(n+2)*A080806(n+2)`
-/

namespace A396689.P6792333059227703695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216073 (n + 2) * A080806 (n + 2)

end

end A396689.P6792333059227703695

noncomputable section

/-- A396689: Numbers k such that binomial(x + 4, 5) - binomial(x, 5) = k^2 for some integer x >= 5.

Offset 1, canonical program `A396689.P6792333059227703695`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396689 (n : ℕ) : ℤ :=
  A396689.P6792333059227703695.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396689.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397187.P6130818575841428385

`((n+2)^A000040(n+1)-(n+1)^A000040(n+1)-1)/A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397187.P6130818575841428385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℚ) ^ (A000040 (n + 1) : ℤ) - (n + 1 : ℚ) ^ (A000040 (n + 1) : ℤ) - 1) / (A000040 (n + 1) : ℚ)

end

end A397187.P6130818575841428385

noncomputable section

/-- A397187: a(n) = ((n + 1)^prime(n) - n^prime(n) - 1)/prime(n).

Offset 1, canonical program `A397187.P6130818575841428385`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397187 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A397187.P6130818575841428385.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397187.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397466.P10007294299205545502

`A000040(floor((n+1)*sqrt(2)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397466.P10007294299205545502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋.toNat

end

end A397466.P10007294299205545502

noncomputable section

/-- A397466: a(n) = prime(floor(n*sqrt(2))).

Offset 1, canonical program `A397466.P10007294299205545502`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(floor((n+1)*sqrt(2)))` (program `A397466.P10007294299205545502`, by `A397466.P10007294299205545502.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A397466 (n : ℕ) : ℤ :=
  A397466.P10007294299205545502.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(floor((n+1)*sqrt(2)))` (program `A397466.P10007294299205545502`, by `A397466.P10007294299205545502.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A397466.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A397467.P15957268274473207768

`A000040(2*(n+1)+floor((n+1)*sqrt(2)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397467.P15957268274473207768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((2 * (n + 1) : ℤ) + ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋).toNat

end

end A397467.P15957268274473207768

noncomputable section

/-- A397467: a(n) = prime(2n + floor(n*sqrt(2))).

Offset 1, canonical program `A397467.P15957268274473207768`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(2*(n+1)+floor((n+1)*sqrt(2)))` (program `A397467.P15957268274473207768`, by `A397467.P15957268274473207768.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A397467 (n : ℕ) : ℤ :=
  A397467.P15957268274473207768.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(2*(n+1)+floor((n+1)*sqrt(2)))` (program `A397467.P15957268274473207768`, by `A397467.P15957268274473207768.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A397467.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A397468.P17706950763602875033

`A000040(floor((n+1)*sqrt(3)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397468.P17706950763602875033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ⌊(n + 1 : ℝ) * Real.sqrt (3 : ℝ)⌋.toNat

end

end A397468.P17706950763602875033

noncomputable section

/-- A397468: a(n) = prime(floor(n*sqrt(3))).

Offset 1, canonical program `A397468.P17706950763602875033`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(floor((n+1)*sqrt(3)))` (program `A397468.P17706950763602875033`, by `A397468.P17706950763602875033.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A397468 (n : ℕ) : ℤ :=
  A397468.P17706950763602875033.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(floor((n+1)*sqrt(3)))` (program `A397468.P17706950763602875033`, by `A397468.P17706950763602875033.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A397468.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A397491.P13383591952212142653

`A366489(n)/210`
-/

namespace A397491.P13383591952212142653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366489 n : ℚ) / 210

end

end A397491.P13383591952212142653

noncomputable section

/-- A397491: a(n) = (n^13 - n)/2730.

Offset 0, canonical program `A397491.P13383591952212142653`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397491 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A397491.P13383591952212142653.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397491.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397580.P8035210197760338808

`(n+1)*A122649(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397580.P8035210197760338808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A122649 (n + 1)

end

end A397580.P8035210197760338808

noncomputable section

/-- A397580: a(n) = n*A122649(n) = n*((2*n - 1)!! - (2*n - 2)!!).

Offset 1, canonical program `A397580.P8035210197760338808`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397580 (n : ℕ) : ℤ :=
  A397580.P8035210197760338808.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397580.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397615.P2609637902578900733

`A000040(floor((n+1)*sqrt(5)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397615.P2609637902578900733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ⌊(n + 1 : ℝ) * Real.sqrt (5 : ℝ)⌋.toNat

end

end A397615.P2609637902578900733

noncomputable section

/-- A397615: a(n) = prime(floor(n*sqrt(5))).

Offset 1, canonical program `A397615.P2609637902578900733`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(floor((n+1)*sqrt(5)))` (program `A397615.P2609637902578900733`, by `A397615.P2609637902578900733.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A397615 (n : ℕ) : ℤ :=
  A397615.P2609637902578900733.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(floor((n+1)*sqrt(5)))` (program `A397615.P2609637902578900733`, by `A397615.P2609637902578900733.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A397615.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A397617.P4642029768052025097

`A000040(floor((n+1)*e))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397617.P4642029768052025097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ⌊(n + 1 : ℝ) * Real.exp 1⌋.toNat

end

end A397617.P4642029768052025097

noncomputable section

/-- A397617: a(n) = prime(floor(n*e)).

Offset 1, canonical program `A397617.P4642029768052025097`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(floor((n+1)*e))` (program `A397617.P4642029768052025097`, by `A397617.P4642029768052025097.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A397617 (n : ℕ) : ℤ :=
  A397617.P4642029768052025097.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(floor((n+1)*e))` (program `A397617.P4642029768052025097`, by `A397617.P4642029768052025097.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A397617.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A397618.P2373068123337456110

`A000040(floor((n+1)*e/(e-1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397618.P2373068123337456110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ⌊(n + 1 : ℝ) * Real.exp 1 / (Real.exp 1 - 1)⌋.toNat

end

end A397618.P2373068123337456110

noncomputable section

/-- A397618: a(n) = prime(floor(n*e/(e-1))).

Offset 1, canonical program `A397618.P2373068123337456110`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(floor((n+1)*e/(e-1)))` (program `A397618.P2373068123337456110`, by `A397618.P2373068123337456110.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A397618 (n : ℕ) : ℤ :=
  A397618.P2373068123337456110.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(floor((n+1)*e/(e-1)))` (program `A397618.P2373068123337456110`, by `A397618.P2373068123337456110.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A397618.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A397627.P57665162522871449

`A000040(A026351(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397627.P57665162522871449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A026351 n).toNat

end

end A397627.P57665162522871449

noncomputable section

/-- A397627: a(n) = prime(A026351(n)).

Offset 1, canonical program `A397627.P57665162522871449`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A026351(n))` (program `A397627.P57665162522871449`, by `A397627.P57665162522871449.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A397627 (n : ℕ) : ℤ :=
  A397627.P57665162522871449.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A026351(n))` (program `A397627.P57665162522871449`, by `A397627.P57665162522871449.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A397627.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A397628.P1118635807216625809

`A000040(A026352(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397628.P1118635807216625809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A026352 (n + 1)).toNat

end

end A397628.P1118635807216625809

noncomputable section

/-- A397628: a(n) = prime(A026352(n)).

Offset 1, canonical program `A397628.P1118635807216625809`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A026352(n+1))` (program `A397628.P1118635807216625809`, by `A397628.P1118635807216625809.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A397628 (n : ℕ) : ℤ :=
  A397628.P1118635807216625809.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A026352(n+1))` (program `A397628.P1118635807216625809`, by `A397628.P1118635807216625809.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A397628.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A397691.P3464348281596680652

`A060553(n+2)-1`
-/

namespace A397691.P3464348281596680652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060553 (n + 2) - 1

end

end A397691.P3464348281596680652

noncomputable section

/-- A397691: Number of orbits of nonzero binary algebraic forms of degree n with coefficients in the field with two elements, under the action of SL(2,2).

Offset 1, canonical program `A397691.P3464348281596680652`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397691 (n : ℕ) : ℤ :=
  A397691.P3464348281596680652.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397691.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397713.P732737537006810765

`A070939(A007318(n))`
-/

namespace A397713.P732737537006810765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A007318 n).toNat

end

end A397713.P732737537006810765

noncomputable section

/-- A397713: Triangle read by rows: T(n,k) is the number of binary digits in binomial(n,k).

Offset 0, canonical program `A397713.P732737537006810765`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397713 (n : ℕ) : ℤ :=
  A397713.P732737537006810765.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397713.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397801.P10674669512506407556

`a(n-4)+A007949(n)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A397801.P10674669512506407556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  a (n - 4) + A007949 n

end

end A397801.P10674669512506407556

noncomputable section

/-- A397801: 3-adic valuation of the quadruple factorial of n.

Offset 0, canonical program `A397801.P10674669512506407556`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397801 (n : ℕ) : ℤ :=
  A397801.P10674669512506407556.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397801.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397833.P6945550512634513775

`2^n-A118870(n)`
-/

namespace A397833.P6945550512634513775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A118870 n

end

end A397833.P6945550512634513775

noncomputable section

/-- A397833: Number of binary words of length n containing the consecutive word abab.

Offset 0, canonical program `A397833.P6945550512634513775`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397833 (n : ℕ) : ℤ :=
  A397833.P6945550512634513775.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397833.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397897.P2133859419162163201

`A000040(n)-2*a(n-1)-a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A397897.P2133859419162163201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  A000040 n - 2 * a (n - 1) - a (n - 2)

end

end A397897.P2133859419162163201

noncomputable section

/-- A397897: a(n) = Sum_{j=1..n} (-1)^(j+1) * j * prime(n-j+1).

Offset 0, canonical program `A397897.P2133859419162163201`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397897 (n : ℕ) : ℤ :=
  A397897.P2133859419162163201.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397897.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373098.P15756619585325101319

`A373099(n)-1`
-/

namespace A373098.P15756619585325101319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373099 n - 1

end

end A373098.P15756619585325101319

noncomputable section

/-- A373098: Last digit of n*2^n.

Offset 0, canonical program `A373098.P15756619585325101319`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373098 (n : ℕ) : ℤ :=
  A373098.P15756619585325101319.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373098.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A376056.P875746772787377381

`(2*n+1)*A376057(n)+1`
-/

namespace A376056.P875746772787377381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A376057 n + 1

end

end A376056.P875746772787377381

noncomputable section

/-- A376056: Lexicographically earliest sequence of positive integers a(1), a(2), a(3), ... such that for any n > 0, S(n) = Sum_{k = 1..n} (2*k-1)/a(k) < 1.

Offset 1, canonical program `A376056.P875746772787377381`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376056 (n : ℕ) : ℤ :=
  A376056.P875746772787377381.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376056.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397835.P15543943406779029277

`3^n-A397837(n)`
-/

namespace A397835.P15543943406779029277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A397837 n

end

end A397835.P15543943406779029277

noncomputable section

/-- A397835: Number of ternary words of length n over {a,b,c} containing the consecutive word abcabc.

Offset 0, canonical program `A397835.P15543943406779029277`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397835 (n : ℕ) : ℤ :=
  A397835.P15543943406779029277.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397835.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369428.P15870185605642581641

`∑{e}[n+1, A010052(#)]`
-/

namespace A369428.P15870185605642581641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A010052 (Nat.factorization (f1 n) p)

end

end A369428.P15870185605642581641

noncomputable section

/-- A369428: The number of exponents in the prime factorization of n that are squares.

Offset 1, canonical program `A369428.P15870185605642581641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369428 (n : ℕ) : ℤ :=
  A369428.P15870185605642581641.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369472.P6414223032634442109

`A069270(A101881(n))`
-/

namespace A369472.P6414223032634442109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 (A101881 n).toNat

end

end A369472.P6414223032634442109

noncomputable section

/-- A369472: Number of achiral polyominoes composed of n pentagonal cells of the hyperbolic regular tiling with Schläfli symbol {5,oo}.

Offset 1, canonical program `A369472.P6414223032634442109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A369472 (n : ℕ) : ℤ :=
  A369472.P6414223032634442109.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A369472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369611.P6460849240629551993

`A025795(n)-(A008676(n)+A008616(n))`
-/

namespace A369611.P6460849240629551993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025795 n - (A008676 n + A008616 n)

end

end A369611.P6460849240629551993

noncomputable section

/-- A369611: Tropical version of Somos-7 sequence A006723.

Offset 0, canonical program `A369611.P6460849240629551993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369611 (n : ℕ) : ℤ :=
  A369611.P6460849240629551993.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369748.P2504085863916396421

`∑{p}[n+1, A000040((n+1)/#)]`
-/

namespace A369748.P2504085863916396421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000040 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat

end

end A369748.P2504085863916396421

noncomputable section

/-- A369748: a(n) = Sum_{p|n, p prime} prime(n/p).

Offset 1, canonical program `A369748.P2504085863916396421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369748 (n : ℕ) : ℤ :=
  A369748.P2504085863916396421.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369854.P4226813083870044623

`A037031(n)-1`
-/

namespace A369854.P4226813083870044623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037031 n - 1

end

end A369854.P4226813083870044623

noncomputable section

/-- A369854: a(n) = number of nonempty subsets S of {1,2,...,n} such that (number of nonprimes in S) = (number of primes in S).

Offset 0, canonical program `A369854.P4226813083870044623`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037031, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369854 (n : ℕ) : ℤ :=
  A369854.P4226813083870044623.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037031, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369854.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A369937.P6430263138363579003

`eq[1, A010052(A051903(n+1))]+1`
-/

namespace A369937.P6430263138363579003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A051903 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A369937.P6430263138363579003

noncomputable section

/-- A369937: Numbers whose maximal exponent in their prime factorization is square.

Offset 1, canonical program `A369937.P6430263138363579003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369937 (n : ℕ) : ℤ :=
  (A369937.P6430263138363579003.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369937.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370180.P11085315799731063641

`gcd(n+1, A259364(n))`
-/

namespace A370180.P11085315799731063641
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A259364 n)

end

end A370180.P11085315799731063641

noncomputable section

/-- A370180: Size of the group Z_3*/(Z_3*)^n, where Z_3 is the ring of 3-adic integers.

Offset 1, canonical program `A370180.P11085315799731063641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370180 (n : ℕ) : ℤ :=
  (A370180.P11085315799731063641.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370182.P17915311671938409757

`gcd(n+1, A055272(A001227(n+1)))`
-/

namespace A370182.P17915311671938409757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A055272 (A001227 (n + 1)).toNat)

end

end A370182.P17915311671938409757

noncomputable section

/-- A370182: Size of the group Z_7*/(Z_7*)^n, where Z_7 is the ring of 7-adic integers.

Offset 1, canonical program `A370182.P17915311671938409757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370182 (n : ℕ) : ℤ :=
  (A370182.P17915311671938409757.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370297.P5303154117409437181

`∏{e}[n+1, A001844(#)]`
-/

namespace A370297.P5303154117409437181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001844 (Nat.factorization (f1 n) p)

end

end A370297.P5303154117409437181

noncomputable section

/-- A370297: Inverse Moebius transform of A322328.

Offset 1, canonical program `A370297.P5303154117409437181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370297 (n : ℕ) : ℤ :=
  A370297.P5303154117409437181.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370297.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370299.P15785426155661098065

`C(∑[(2*3^n)%A001653(n+1)], 2)`
-/

namespace A370299.P15785426155661098065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * 3 ^ n : ℤ) (A001653 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A370299.P15785426155661098065

noncomputable section

/-- A370299: Number of chordless cycles in the complement of the n-Sierpinski gasket graph.

Offset 1, canonical program `A370299.P15785426155661098065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A370299 (n : ℕ) : ℤ :=
  (A370299.P15785426155661098065.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A370299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370377.P18217661859686456735

`A038196(A103889(n+2))`
-/

namespace A370377.P18217661859686456735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038196 (A103889 (n + 2)).toNat

end

end A370377.P18217661859686456735

noncomputable section

/-- A370377: a(n) is the number of symmetrical linear hydrocarbon chains with n C-C bonds.

Offset 0, canonical program `A370377.P18217661859686456735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 569 terms. -/
def A370377 (n : ℕ) : ℤ :=
  A370377.P18217661859686456735.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 569 terms. -/
def A370377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370482.P9499058320465952393

`A059841(n)+∑{p}[n, val(#, n)]`
-/

namespace A370482.P9499058320465952393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + ((∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p n : ℕ) : ℤ)

end

end A370482.P9499058320465952393

noncomputable section

/-- A370482: Characteristic function of primes plus characteristic function of even numbers.

Offset 0, canonical program `A370482.P9499058320465952393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370482 (n : ℕ) : ℤ :=
  A370482.P9499058320465952393.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370482.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370634.P2494409983904551626

`ratio[A135507(A004273(n)-(n-1))]`
-/

namespace A370634.P2494409983904551626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135507 (A004273 n - ((n : ℤ) - 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A370634.P2494409983904551626

noncomputable section

/-- A370634: A135507(n) is the product of the first n terms of this sequence.

Offset 1, canonical program `A370634.P2494409983904551626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A370634 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A370634.P2494409983904551626.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A370634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371222.P12633540139532149241

`A309953(n)%3`
-/

namespace A371222.P12633540139532149241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309953 n) 3

end

end A371222.P12633540139532149241

noncomputable section

/-- A371222: Product of digits of (n written in base 3) mod 3.

Offset 0, canonical program `A371222.P12633540139532149241`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A309953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371222 (n : ℕ) : ℤ :=
  A371222.P12633540139532149241.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A309953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371222.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A371629.P6292007437965494300

`∑[A179298(val(n+1, 2)+1)]`
-/

namespace A371629.P6292007437965494300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179298 (SequenceMachineLib.valuation (n + 1) 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371629.P6292007437965494300

noncomputable section

/-- A371629: If 2n = Sum 2^e(k) then a(n) = Sum e(k)^3.

Offset 1, canonical program `A371629.P6292007437965494300`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371629 (n : ℕ) : ℤ :=
  A371629.P6292007437965494300.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371629.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371656.P17774110375711877708

`eq[A001222(n+1), A001222(n+5)]+3`
-/

namespace A371656.P17774110375711877708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 3

end

end A371656.P17774110375711877708

noncomputable section

/-- A371656: Numbers k such that k - 2 and k + 2 have the same number of prime factors, counted with multiplicity.

Offset 1, canonical program `A371656.P17774110375711877708`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371656 (n : ℕ) : ℤ :=
  (A371656.P17774110375711877708.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371820.P8078043311279219929

`A260878(n)+3*a(n-1)-1` with `a(0)=1`
-/

namespace A371820.P8078043311279219929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A260878 n + (3 * a (n - 1) - 1)

end

end A371820.P8078043311279219929

noncomputable section

/-- A371820: a(n) = Sum_{k=0..floor(n/3)} (-1)^k * binomial(2*n+2,n-3*k).

Offset 0, canonical program `A371820.P8078043311279219929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A371820 (n : ℕ) : ℤ :=
  A371820.P8078043311279219929.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A371820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371888.P8395399809220968351

`∑[A100223(n)]`
-/

namespace A371888.P8395399809220968351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371888.P8395399809220968351

noncomputable section

/-- A371888: G.f. A(x) satisfies A(x) = 1 - x/A(x) * (1 - A(x) - A(x)^2).

Offset 0, canonical program `A371888.P8395399809220968351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A371888 (n : ℕ) : ℤ :=
  A371888.P8395399809220968351.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A371888.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372076.P11698522728107779967

`Δ[Δ[A097122(n)/3]]`
-/

namespace A372076.P11698522728107779967
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097122 n : ℚ) / 3

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A372076.P11698522728107779967

noncomputable section

/-- A372076: The sequence T_{3,1}(n,3).

Offset 0, canonical program `A372076.P11698522728107779967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 258 terms. -/
def A372076 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A372076.P11698522728107779967.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 258 terms. -/
def A372076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372148.P507033719497536603

`A091344(n)+A383910(n)+A091344(n)`
-/

namespace A372148.P507033719497536603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091344 n + (A383910 n + A091344 n)

end

end A372148.P507033719497536603

noncomputable section

/-- A372148: a(n) = A371764(n, 2).

Offset 1, canonical program `A372148.P507033719497536603`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. -/
def A372148 (n : ℕ) : ℤ :=
  A372148.P507033719497536603.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. -/
def A372148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372311.P1590214679197910568

`A028246(n+1)*A079901(n)`
-/

namespace A372311.P1590214679197910568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028246 (n + 1) * A079901 n

end

end A372311.P1590214679197910568

noncomputable section

/-- A372311: Triangle read by rows: T(n, k) = n^k * Sum_{j=0..n} binomial(n - j, n - k) * Eulerian1(n, j).

Offset 0, canonical program `A372311.P1590214679197910568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 738 terms. -/
def A372311 (n : ℕ) : ℤ :=
  A372311.P1590214679197910568.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 738 terms. -/
def A372311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372330.P18180619389445412267

`∏{e}[n+1, A062383(#)]`
-/

namespace A372330.P18180619389445412267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A062383 (Nat.factorization (f1 n) p)

end

end A372330.P18180619389445412267

noncomputable section

/-- A372330: The number of divisors of the smallest multiple of n whose number of divisors is a power of 2 (A036537).

Offset 1, canonical program `A372330.P18180619389445412267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372330 (n : ℕ) : ℤ :=
  A372330.P18180619389445412267.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372380.P16009025847209616017

`∏{e}[n+1, A070939(#+1)]`
-/

namespace A372380.P16009025847209616017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A070939 (Nat.factorization (f1 n) p + 1)

end

end A372380.P16009025847209616017

noncomputable section

/-- A372380: The number of divisors of n that are numbers whose number of divisors is a power of 2.

Offset 1, canonical program `A372380.P16009025847209616017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372380 (n : ℕ) : ℤ :=
  A372380.P16009025847209616017.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372381.P12777939245543083101

`∏{e}[n+1, A053644(#+1)]`
-/

namespace A372381.P12777939245543083101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A053644 (Nat.factorization (f1 n) p + 1)

end

end A372381.P12777939245543083101

noncomputable section

/-- A372381: The number of divisors of the largest divisor of n whose number of divisors is a power of 2.

Offset 1, canonical program `A372381.P12777939245543083101`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372381 (n : ℕ) : ℤ :=
  A372381.P12777939245543083101.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372381.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372397.P7539782668515379309

`∩[A005375(2*n+1), A005375(2*n)]`
-/

namespace A372397.P7539782668515379309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005375 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005375 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372397.P7539782668515379309

noncomputable section

/-- A372397: Numbers occurring exactly twice in Hofstadter G/H-like sequence H_4 (A005375).

Offset 1, canonical program `A372397.P7539782668515379309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2755 terms. -/
def A372397 (n : ℕ) : ℤ :=
  (A372397.P7539782668515379309.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2755 terms. -/
def A372397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372602.P14612393718629536272

`A052928(A051903(n+1))`
-/

namespace A372602.P14612393718629536272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A051903 (n + 1)).toNat

end

end A372602.P14612393718629536272

noncomputable section

/-- A372602: The maximal exponent in the prime factorization of the largest square dividing n.

Offset 1, canonical program `A372602.P14612393718629536272`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372602 (n : ℕ) : ℤ :=
  A372602.P14612393718629536272.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372602.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372604.P12316326984431536577

`A092323(A051903(n+1)+1)`
-/

namespace A372604.P12316326984431536577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092323 (A051903 (n + 1) + 1).toNat

end

end A372604.P12316326984431536577

noncomputable section

/-- A372604: The maximal exponent in the prime factorization of the largest divisor of n whose number of divisors is a power of 2.

Offset 1, canonical program `A372604.P12316326984431536577`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372604 (n : ℕ) : ℤ :=
  A372604.P12316326984431536577.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372604.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373087.P7180067676949029928

`(eq[3, A001221(2*(n+1))]+1)²`
-/

namespace A373087.P7180067676949029928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A373087.P7180067676949029928

noncomputable section

/-- A373087: k is a term if k is a square and its odd part is divisible by exactly two distinct primes.

Offset 1, canonical program `A373087.P7180067676949029928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373087 (n : ℕ) : ℤ :=
  (A373087.P7180067676949029928.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373101.P8641558268484953081

`C(A014430(n)+2, 3)`
-/

namespace A373101.P8641558268484953081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014430 n + 2).toNat 3

end

end A373101.P8641558268484953081

noncomputable section

/-- A373101: Triangle read by rows, T(n,k) = (binomial(n,k)^3 - binomial(n,k))/6 for k=1..n-1 and n >= 2.

Offset 2, canonical program `A373101.P8641558268484953081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6494 terms. -/
def A373101 (n : ℕ) : ℤ :=
  (A373101.P8641558268484953081.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6494 terms. -/
def A373101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373185.P3689991770781756836

`∑{d}[n+1, A084432(#)*A154269((n+1)/#)]`
-/

namespace A373185.P3689991770781756836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A084432 d * A154269 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373185.P3689991770781756836

noncomputable section

/-- A373185: G.f. A(x) satisfies A(x) = 1/(1 - x)^2 - 1 + A(x^4).

Offset 1, canonical program `A373185.P3689991770781756836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373185 (n : ℕ) : ℤ :=
  A373185.P3689991770781756836.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373440.P6703772280667380685

`A017668(∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A373440.P6703772280667380685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017668 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

end

end A373440.P6703772280667380685

noncomputable section

/-- A373440: Denominator of sum of reciprocals of square divisors of n.

Offset 1, canonical program `A373440.P6703772280667380685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373440 (n : ℕ) : ℤ :=
  A373440.P6703772280667380685.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373546.P4206591312085507531

`xor(1, A236348(n))+1`
-/

namespace A373546.P4206591312085507531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A236348 n) + 1

end

end A373546.P4206591312085507531

noncomputable section

/-- A373546: a(1) = 1, a(2) = 2; for n > 2, a(n) is the smallest unused positive number that shares a factor with a(n-1) if a(n-1) is even otherwise is coprime to a(n-1) if a(n-1) is odd.

Offset 1, canonical program `A373546.P4206591312085507531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373546 (n : ℕ) : ℤ :=
  A373546.P4206591312085507531.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373710.P6586249079354997292

`A048147(lt[n, A038722(n+1)])`
-/

namespace A373710.P6586249079354997292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048147 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A373710.P6586249079354997292

noncomputable section

/-- A373710: Triangle read by rows: T(n,k) is the area of the square whose vertices divide the sides n of a circumscribed square into integer sections k and n - k, 0 <= k <= floor(n/2).

Offset 0, canonical program `A373710.P6586249079354997292`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A373710 (n : ℕ) : ℤ :=
  A373710.P6586249079354997292.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5041 terms. -/
def A373710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373976.P9485791187912278564

`A001222(n+1)-A342956(n+1)`
-/

namespace A373976.P9485791187912278564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A342956 (n + 1)

end

end A373976.P9485791187912278564

noncomputable section

/-- A373976: a(n) = A001222(n) - A001222(A001414(n)), where A001222 is bigomega, the number of prime factors with multiplicity, and A001414 is sopfr, sum of prime factors with multiplicity. a(1) = 0 by convention.

Offset 1, canonical program `A373976.P9485791187912278564`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342956, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373976 (n : ℕ) : ℤ :=
  A373976.P9485791187912278564.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342956, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373976.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373977.P2023498345375672924

`A073898(n+1)%A087204(n)`
-/

namespace A373977.P2023498345375672924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073898 (n + 1)) (A087204 n)

end

end A373977.P2023498345375672924

noncomputable section

/-- A373977: a(n) = 1 if n is a nonprime of the form 3*k + 1, otherwise 0.

Offset 1, canonical program `A373977.P2023498345375672924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373977 (n : ℕ) : ℤ :=
  A373977.P2023498345375672924.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373978.P17916728233483269752

`A121262(A113637(n+1))`
-/

namespace A373978.P17916728233483269752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (A113637 (n + 1)).toNat

end

end A373978.P17916728233483269752

noncomputable section

/-- A373978: a(n) = 1 if n is a nonprime of the form 4*k + 1, otherwise 0.

Offset 1, canonical program `A373978.P17916728233483269752`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373978 (n : ℕ) : ℤ :=
  A373978.P17916728233483269752.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373979.P3246657904887622498

`A006002(n)%A118136(n)`
-/

namespace A373979.P3246657904887622498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006002 n) (A118136 n)

end

end A373979.P3246657904887622498

noncomputable section

/-- A373979: a(n) = 1 if n is a nonprime of the form 4*k + 3, otherwise 0.

Offset 1, canonical program `A373979.P3246657904887622498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373979 (n : ℕ) : ℤ :=
  A373979.P3246657904887622498.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374043.P13803670517917627766

`A011655(n+1)*A373157(n+1)`
-/

namespace A374043.P13803670517917627766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (n + 1) * A373157 (n + 1)

end

end A374043.P13803670517917627766

noncomputable section

/-- A374043: a(n) = 1 if n is a non-multiple of 3 whose 2-adic valuation is a multiple of 3, otherwise 0.

Offset 1, canonical program `A374043.P13803670517917627766`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374043 (n : ℕ) : ℤ :=
  A374043.P13803670517917627766.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373157, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374043.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374054.P11266633794218928703

`A062153(n+1)+A061282(A260316(n+1))`
-/

namespace A374054.P11266633794218928703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (n + 1) + A061282 (A260316 (n + 1)).toNat

end

end A374054.P11266633794218928703

noncomputable section

/-- A374054: a(n) = max_{i=0..n} S_3(i) + S_3(n-i) where S_3(x) = A053735(x) is the base-3 digit sum of x.

Offset 0, canonical program `A374054.P11266633794218928703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A374054 (n : ℕ) : ℤ :=
  A374054.P11266633794218928703.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A374054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374102.P10809450866151071324

`p?[A010061(n+1)]`
-/

namespace A374102.P10809450866151071324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A374102.P10809450866151071324

noncomputable section

/-- A374102: Prime binary self (or Colombian) numbers: primes not expressible as the sum of an integer and its binary weight.

Offset 1, canonical program `A374102.P10809450866151071324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 976 terms. -/
def A374102 (n : ℕ) : ℤ :=
  A374102.P10809450866151071324.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 976 terms. -/
def A374102.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374384.P8550118917188238012

`A100583(n)+A016777(n)`
-/

namespace A374384.P8550118917188238012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100583 n + A016777 n

end

end A374384.P8550118917188238012

noncomputable section

/-- A374384: a(n) = floor(Sum_{k=n^3..(n+1)^3} k^(1/3)).

Offset 0, canonical program `A374384.P8550118917188238012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374384 (n : ℕ) : ℤ :=
  A374384.P8550118917188238012.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374446.P17465126024641626848

`Δ[A224923(n)]+n`
-/

namespace A374446.P17465126024641626848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A374446.P17465126024641626848

noncomputable section

/-- A374446: Positions of zeros in the expansion of Product_{k>=0} (1 - x^(2^k))^3; A373308(a(n)) = 0 for n >= 1.

Offset 1, canonical program `A374446.P17465126024641626848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. -/
def A374446 (n : ℕ) : ℤ :=
  A374446.P17465126024641626848.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. -/
def A374446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374492.P9547584820120626624

`comp[∪[A047221(n+1), n²]]`
-/

namespace A374492.P9547584820120626624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047221 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A374492.P9547584820120626624

noncomputable section

/-- A374492: Nonsquares with last digit in {0, 1, 4, 5, 6, 9}.

Offset 1, canonical program `A374492.P9547584820120626624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374492 (n : ℕ) : ℤ :=
  (A374492.P9547584820120626624.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374730.P15477775403620783569

`n*C(A070939(n), 2)`
-/

namespace A374730.P15477775403620783569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (A070939 n).toNat 2

end

end A374730.P15477775403620783569

noncomputable section

/-- A374730: a(n) = n * binomial(floor(log_2(n)) + 1, 2).

Offset 0, canonical program `A374730.P15477775403620783569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374730 (n : ℕ) : ℤ :=
  (A374730.P15477775403620783569.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375039.P1824785250283838263

`A051903(2*n+1)`
-/

namespace A375039.P1824785250283838263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (2 * n + 1)

end

end A375039.P1824785250283838263

noncomputable section

/-- A375039: The maximum exponent in the prime factorization of 2*n-1.

Offset 1, canonical program `A375039.P1824785250283838263`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375039 (n : ℕ) : ℤ :=
  A375039.P1824785250283838263.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375039.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375040.P3424596127254957025

`A051903(2*(n+1))`
-/

namespace A375040.P3424596127254957025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (2 * (n + 1))

end

end A375040.P3424596127254957025

noncomputable section

/-- A375040: The maximum exponent in the prime factorization of 2*n.

Offset 1, canonical program `A375040.P3424596127254957025`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375040 (n : ℕ) : ℤ :=
  A375040.P3424596127254957025.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375040.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375166.P13823784569073551818

`filter[A056991(n+3), A049240(#)]`
-/

namespace A375166.P13823784569073551818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056991 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A375166.P13823784569073551818

noncomputable section

/-- A375166: Nonsquares congruent to {0, 1, 4, 7} modulo 9.

Offset 1, canonical program `A375166.P13823784569073551818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375166 (n : ℕ) : ℤ :=
  A375166.P13823784569073551818.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375241.P10688031051260759881

`filter[A055264(n+1), A123110(#)]`
-/

namespace A375241.P10688031051260759881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123110 (f1 j).toNat = 1) n)

end

end A375241.P10688031051260759881

noncomputable section

/-- A375241: Nontriangular numbers with digital root in {1, 3, 6, 9}.

Offset 1, canonical program `A375241.P10688031051260759881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9637 terms. -/
def A375241 (n : ℕ) : ℤ :=
  A375241.P10688031051260759881.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9637 terms. -/
def A375241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375265.P16436060166849004059

`A006370(A186101(n+1))`
-/

namespace A375265.P16436060166849004059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A186101 (n + 1)).toNat

end

end A375265.P16436060166849004059

noncomputable section

/-- A375265: a(n) = n/3 if n mod 3 = 0; otherwise a(n) = n/2 if n mod 2 = 0; otherwise a(n) = 3*n + 1.

Offset 1, canonical program `A375265.P16436060166849004059`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A375265 (n : ℕ) : ℤ :=
  A375265.P16436060166849004059.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A375265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375359.P18365082364199674777

`ceil(A051903(n+1)/2)`
-/

namespace A375359.P18365082364199674777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A051903 (n + 1) : ℚ) / 2⌉

end

end A375359.P18365082364199674777

noncomputable section

/-- A375359: The maximum exponent in the prime factorization of the smallest number whose square is divisible by n.

Offset 1, canonical program `A375359.P18365082364199674777`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375359 (n : ℕ) : ℤ :=
  A375359.P18365082364199674777.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375359.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375378.P14882579800046314677

`A065120(n)^a(A053645(n))` with `a(0)=1`
-/

namespace A375378.P14882579800046314677
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (A065120 n : ℝ) ^ (a (A053645 n).toNat)

end

end A375378.P14882579800046314677

noncomputable section

/-- A375378: Value of the power tower formed by the numbers in the n-th composition (in standard order).

Offset 0, canonical program `A375378.P14882579800046314677`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065120, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375378 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375378.P14882579800046314677.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065120, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375378.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375379.P12503235433013472216

`(A065120(n)+1)^a(A053645(n))` with `a(0)=1`
-/

namespace A375379.P12503235433013472216
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (A065120 n + 1 : ℝ) ^ (a (A053645 n).toNat)

end

end A375379.P12503235433013472216

noncomputable section

/-- A375379: Value of the power tower formed by the numbers obtained by adding 1 to the terms in the n-th composition (in standard order).

Offset 0, canonical program `A375379.P12503235433013472216`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065120, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375379 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375379.P12503235433013472216.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065120, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375379.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375430.P15072398528399193857

`A000045(ceil(log((A051903(n+1)+1)²)))`
-/

namespace A375430.P15072398528399193857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈Real.log ((A051903 (n + 1) + 1) ^ 2 : ℝ)⌉.toNat

end

end A375430.P15072398528399193857

noncomputable section

/-- A375430: The maximum exponent in the unique factorization of n in terms of distinct terms of A115975 using the dual Zeckendorf representation of the exponents in the prime factorization of n; a(1) = 0.

Offset 1, canonical program `A375430.P15072398528399193857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375430 (n : ℕ) : ℤ :=
  A375430.P15072398528399193857.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375430.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375431.P1013115202346062773

`A048766(18*A051903(n+1))`
-/

namespace A375431.P1013115202346062773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (18 * A051903 (n + 1)).toNat

end

end A375431.P1013115202346062773

noncomputable section

/-- A375431: The indices of the terms of A375430 in the Fibonacci sequence.

Offset 1, canonical program `A375431.P1013115202346062773`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375431 (n : ℕ) : ℤ :=
  A375431.P1013115202346062773.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375551.P17811213240839334410

`2*A099027(n)`
-/

namespace A375551.P17811213240839334410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099027 n

end

end A375551.P17811213240839334410

noncomputable section

/-- A375551: a(n) = Sum_{k=0..n} k XOR n-k, where XOR is the bitwise exclusive disjunction. Row sums of A003987.

Offset 0, canonical program `A375551.P17811213240839334410`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099027, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375551 (n : ℕ) : ℤ :=
  A375551.P17811213240839334410.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A099027, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375551.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375667.P6684781765441991120

`A051903(A007310(n+1))`
-/

namespace A375667.P6684781765441991120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A007310 (n + 1)).toNat

end

end A375667.P6684781765441991120

noncomputable section

/-- A375667: The maximum exponent in the prime factorization of the 5-rough numbers (A007310).

Offset 1, canonical program `A375667.P6684781765441991120`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375667 (n : ℕ) : ℤ :=
  A375667.P6684781765441991120.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375667.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375668.P7310849845523855614

`A051903(A007775(n+1))`
-/

namespace A375668.P7310849845523855614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A007775 (n + 1)).toNat

end

end A375668.P7310849845523855614

noncomputable section

/-- A375668: The maximum exponent in the prime factorization of the 7-rough numbers (A007775).

Offset 1, canonical program `A375668.P7310849845523855614`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375668 (n : ℕ) : ℤ :=
  A375668.P7310849845523855614.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375668.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375669.P4375013482018991559

`A051903(A000265(n+1))`
-/

namespace A375669.P4375013482018991559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A000265 (n + 1)).toNat

end

end A375669.P4375013482018991559

noncomputable section

/-- A375669: The maximum exponent in the prime factorization of the largest odd divisor of n.

Offset 1, canonical program `A375669.P4375013482018991559`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375669 (n : ℕ) : ℤ :=
  A375669.P4375013482018991559.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375669.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375670.P18259153866628924363

`A051903(A065330(n+1))`
-/

namespace A375670.P18259153866628924363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A065330 (n + 1)).toNat

end

end A375670.P18259153866628924363

noncomputable section

/-- A375670: The maximum exponent in the prime factorization of the largest 5-rough divisor of n.

Offset 1, canonical program `A375670.P18259153866628924363`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375670 (n : ℕ) : ℤ :=
  A375670.P18259153866628924363.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375670.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375706.P12414521071869908907

`A007916(n+2)-A007916(n+1)`
-/

namespace A375706.P12414521071869908907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 2) - A007916 (n + 1)

end

end A375706.P12414521071869908907

noncomputable section

/-- A375706: First differences of non-perfect-powers.

Offset 1, canonical program `A375706.P12414521071869908907`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007916, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375706 (n : ℕ) : ℤ :=
  A375706.P12414521071869908907.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007916, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375706.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375852.P8022826770874438667

`A047242(A248375(n+1))`
-/

namespace A375852.P8022826770874438667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047242 (A248375 (n + 1)).toNat

end

end A375852.P8022826770874438667

noncomputable section

/-- A375852: Numbers congruent to {0, 1, 3, 6, 7, 9, 12, 15} mod 18.

Offset 1, canonical program `A375852.P8022826770874438667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8889 terms. -/
def A375852 (n : ℕ) : ℤ :=
  A375852.P8022826770874438667.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8889 terms. -/
def A375852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375882.P4989773900037239940

`(1-2*n%2)*Δ[A375885(n)]`
-/

namespace A375882.P4989773900037239940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((2 * (n % 2) : ℕ) : ℤ)) * (f1 (n + 1) - f1 n)

end

end A375882.P4989773900037239940

noncomputable section

/-- A375882: a(n) = 4^n*cos(nC), where C is the angle opposite side AB in a triangle ABC having sidelengths |BC|=2, |CA| = 3, |AB| = 4; ABC is the smallest integer-sided scalene triangle.

Offset 0, canonical program `A375882.P4989773900037239940`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A375882 (n : ℕ) : ℤ :=
  A375882.P4989773900037239940.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A375882.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375976.P12460029172972807041

`A003132(A000079(n))`
-/

namespace A375976.P12460029172972807041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A000079 n).toNat

end

end A375976.P12460029172972807041

noncomputable section

/-- A375976: Sum of squares of the decimal digits of 2^n.

Offset 0, canonical program `A375976.P12460029172972807041`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003132, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375976 (n : ℕ) : ℤ :=
  A375976.P12460029172972807041.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003132, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375976.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375999.P7786675138920784206

`lt[0, char[A001263(n+1)]]`
-/

namespace A375999.P7786675138920784206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375999.P7786675138920784206

noncomputable section

/-- A375999: Narayana numbers (A001263), sorted, duplicates removed.

Offset 1, canonical program `A375999.P7786675138920784206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A375999 (n : ℕ) : ℤ :=
  (A375999.P7786675138920784206.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A375999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376139.P13428466626577619161

`(-1)^A051903(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A376139.P13428466626577619161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A051903 (n + 1) : ℤ)

end

end A376139.P13428466626577619161

noncomputable section

/-- A376139: a(n) = (-1)^A051903(n).

Offset 1, canonical program `A376139.P13428466626577619161`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376139 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A376139.P13428466626577619161.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376139.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376154.P4336669941809621595

`comp[A000203(n+1)-A008472(n+1)]`
-/

namespace A376154.P4336669941809621595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A008472 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A376154.P4336669941809621595

noncomputable section

/-- A376154: Numbers that are not the sum of the nonprime divisors of k for any k.

Offset 1, canonical program `A376154.P4336669941809621595`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376154 (n : ℕ) : ℤ :=
  (A376154.P4336669941809621595.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376270.P2407315113390054031

`A000030(n)*A003132(n)`
-/

namespace A376270.P2407315113390054031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n * A003132 n

end

end A376270.P2407315113390054031

noncomputable section

/-- A376270: a(n) is the product of the leading digit of n and the sum of the squares of its digits.

Offset 0, canonical program `A376270.P2407315113390054031`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, A003132, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376270 (n : ℕ) : ℤ :=
  A376270.P2407315113390054031.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, A003132, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376270.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376279.P14030068633923779886

`lt[0, A010057(n*n²%3)]`
-/

namespace A376279.P14030068633923779886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (n * (n ^ 2 % 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A376279.P14030068633923779886

noncomputable section

/-- A376279: Numbers k such that k^k is a cube.

Offset 1, canonical program `A376279.P14030068633923779886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1693 terms. -/
def A376279 (n : ℕ) : ℤ :=
  (A376279.P14030068633923779886.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1693 terms. -/
def A376279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376354.P18229745816785603977

`lt[2, or(2, a(A002260(n+1)-1))]` with `a(0)=1, a(1)=2, a(2)=-2`
-/

namespace A376354.P18229745816785603977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, -2] fun n f2 =>
  Int.lor 2 (f2 (A002260 (n + 1) - 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A376354.P18229745816785603977

noncomputable section

/-- A376354: Numbers that end in 0 when written in base of triangular numbers (cf. A000462).

Offset 1, canonical program `A376354.P18229745816785603977`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4504 terms. -/
def A376354 (n : ℕ) : ℤ :=
  (A376354.P18229745816785603977.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4504 terms. -/
def A376354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376355.P7755162109576139838

`eq[2, a(A002262(n))!]` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A376355.P7755162109576139838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n f2 =>
  Nat.factorial (f2 (A002262 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376355.P7755162109576139838

noncomputable section

/-- A376355: Numbers that end in 1 when written in base of triangular numbers (cf. A000462).

Offset 1, canonical program `A376355.P7755162109576139838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3197 terms. -/
def A376355 (n : ℕ) : ℤ :=
  (A376355.P7755162109576139838.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3197 terms. -/
def A376355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376356.P4105760595979517289

`eq[1, 2-a(A002262(n))]` with `a(0)=6, a(1)=3, a(2)=1, a(3)=0, a(4)=-5`
-/

namespace A376356.P4105760595979517289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6, 3, 1, 0, -5] fun n f2 =>
  2 - f2 (A002262 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376356.P4105760595979517289

noncomputable section

/-- A376356: Positions of numbers in A000462 that end in 2.

Offset 1, canonical program `A376356.P4105760595979517289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2834 terms. -/
def A376356 (n : ℕ) : ℤ :=
  (A376356.P4105760595979517289.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2834 terms. -/
def A376356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376357.P16342717570296244240

`lt[4, (n-1)*a(n-A000196(n)²)]` with `a(0)=3`
-/

namespace A376357.P16342717570296244240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  ((n : ℤ) - 1) * f2 ((n : ℤ) - A000196 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A376357.P16342717570296244240

noncomputable section

/-- A376357: Positions of numbers in A007961 that end in 0.

Offset 1, canonical program `A376357.P16342717570296244240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3285 terms. -/
def A376357 (n : ℕ) : ℤ :=
  (A376357.P16342717570296244240.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3285 terms. -/
def A376357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376360.P17607441378898775448

`lt[1, floor(a(A053186(n)))]` with `a(0)=-1, a(1)=1, a(2)=1, a(3)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A376360.P17607441378898775448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1, 1, 1, 7] fun n f2 =>
  f2 (A053186 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A376360.P17607441378898775448

noncomputable section

/-- A376360: Positions of numbers in A007961 that end in 3.

Offset 1, canonical program `A376360.P17607441378898775448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1911 terms. -/
def A376360 (n : ℕ) : ℤ :=
  (A376360.P17607441378898775448.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1911 terms. -/
def A376360.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376507.P3628631858648821774

`A056021(A047425(n+1))`
-/

namespace A376507.P3628631858648821774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056021 (A047425 (n + 1)).toNat

end

end A376507.P3628631858648821774

noncomputable section

/-- A376507: Natural numbers whose iterated squaring modulo 100 eventually settles at the attractor 76.

Offset 1, canonical program `A376507.P3628631858648821774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A376507 (n : ℕ) : ℤ :=
  A376507.P3628631858648821774.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A376507.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376538.P147642025610415414

`A056082(A047527(n+2))`
-/

namespace A376538.P147642025610415414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056082 (A047527 (n + 2)).toNat

end

end A376538.P147642025610415414

noncomputable section

/-- A376538: Natural numbers whose iterated squaring modulo 1000 eventually settles at the attractor 1.

Offset 1, canonical program `A376538.P147642025610415414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A376538 (n : ℕ) : ℤ :=
  A376538.P147642025610415414.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A376538.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376539.P10670533322709829725

`A056082(A047425(n+1))`
-/

namespace A376539.P10670533322709829725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056082 (A047425 (n + 1)).toNat

end

end A376539.P10670533322709829725

noncomputable section

/-- A376539: Natural numbers whose iterated squaring modulo 1000 eventually settles at the attractor 376.

Offset 1, canonical program `A376539.P10670533322709829725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A376539 (n : ℕ) : ℤ :=
  A376539.P10670533322709829725.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A376539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376714.P15979935111988966873

`A003132(A000040(n+1))`
-/

namespace A376714.P15979935111988966873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A000040 (n + 1)).toNat

end

end A376714.P15979935111988966873

noncomputable section

/-- A376714: Sum of squares of the decimal digits of the n-th prime.

Offset 1, canonical program `A376714.P15979935111988966873`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003132, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376714 (n : ℕ) : ℤ :=
  A376714.P15979935111988966873.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003132, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376714.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377414.P9376123289896213115

`and(n, xor(n, A002264(2^ceil(log2(n+1)))))`
-/

namespace A377414.P9376123289896213115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (Int.xor (n : ℤ) (A002264 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))).toNat))

end

end A377414.P9376123289896213115

noncomputable section

/-- A377414: a(n) is the largest term of A126684, say b, such that n AND b = b (where AND denotes the bitwise AND operator).

Offset 0, canonical program `A377414.P9376123289896213115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A377414 (n : ℕ) : ℤ :=
  A377414.P9376123289896213115.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A377414.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377573.P10716120878224455127

`A094052(abs(1-n))`
-/

namespace A377573.P10716120878224455127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094052 |1 - (n : ℤ)|.toNat

end

end A377573.P10716120878224455127

noncomputable section

/-- A377573: Cogrowth sequence for the 14-element dihedral group D7 = <S,T | S^7, T^2, (ST)^2>.

Offset 0, canonical program `A377573.P10716120878224455127`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A377573 (n : ℕ) : ℤ :=
  A377573.P10716120878224455127.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A377573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377721.P13608278594952562135

`A074279(n+1)+n`
-/

namespace A377721.P13608278594952562135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074279 (n + 1) + (n : ℤ)

end

end A377721.P13608278594952562135

noncomputable section

/-- A377721: Numbers that are not of the form k(k+1)(2k+1)/6 + k.

Offset 1, canonical program `A377721.P13608278594952562135`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074279, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377721 (n : ℕ) : ℤ :=
  A377721.P13608278594952562135.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074279, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377721.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377728.P7667033957001193499

`A126646(n)-A066629(n)`
-/

namespace A377728.P7667033957001193499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A066629 n

end

end A377728.P7667033957001193499

noncomputable section

/-- A377728: Convolution of Leonardo numbers with Jacobsthal numbers.

Offset 0, canonical program `A377728.P7667033957001193499`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A377728 (n : ℕ) : ℤ :=
  A377728.P7667033957001193499.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A377728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377866.P11288015747233166131

`A010049(2*A289207(n))`
-/

namespace A377866.P11288015747233166131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (2 * A289207 n).toNat

end

end A377866.P11288015747233166131

noncomputable section

/-- A377866: Number of subwords of the form DUUD or DDUUD in nondecreasing Dyck paths of length 2n.

Offset 0, canonical program `A377866.P11288015747233166131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A377866 (n : ℕ) : ℤ :=
  A377866.P11288015747233166131.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A377866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377930.P17544471663374099892

`val(A003990(n+1), 2)`
-/

namespace A377930.P17544471663374099892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003990 (n + 1)).toNat 2

end

end A377930.P17544471663374099892

noncomputable section

/-- A377930: Square array A(n, k), n, k > 0, read by antidiagonals; A(n, k) = max(A007814(n), A007814(k)).

Offset 1, canonical program `A377930.P17544471663374099892`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377930 (n : ℕ) : ℤ :=
  (A377930.P17544471663374099892.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377943.P419477848472387058

`or(1, A002452(n))`
-/

namespace A377943.P419477848472387058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A002452 n)

end

end A377943.P419477848472387058

noncomputable section

/-- A377943: Cogrowth sequence of the 16-element Pauli group C4 o D4 = <S,T,U | s^4, T^2, U^2, S^2(TU)^2, [S,T], [S,U]>.

Offset 0, canonical program `A377943.P419477848472387058`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A377943 (n : ℕ) : ℤ :=
  A377943.P419477848472387058.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A377943.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377946.P16763880135453843413

`A038503(n)²+A038505(n)²`
-/

namespace A377946.P16763880135453843413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 n ^ 2 + A038505 n ^ 2

end

end A377946.P16763880135453843413

noncomputable section

/-- A377946: Cogrowth sequence of the 16-element group C2^2:C4 = <S,T | S^4, T^2, (ST)^2, (S^2T)^2>.

Offset 0, canonical program `A377946.P16763880135453843413`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A377946 (n : ℕ) : ℤ :=
  A377946.P16763880135453843413.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A377946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377979.P7080257391251934501

`ceil(ceil(A135370(n+1)/2)/2)%(n+1)²`
-/

namespace A377979.P7080257391251934501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(⌈(A135370 (n + 1) : ℚ) / 2⌉ : ℚ) / 2⌉ ((n + 1) ^ 2 : ℤ)

end

end A377979.P7080257391251934501

noncomputable section

/-- A377979: List of exponents in the expansion of (1 - q)*Sum_{n >= 0} q^(2*n*(n+1))*Product_{k >= 2*n+1} 1 - q^k.

Offset 1, canonical program `A377979.P7080257391251934501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377979 (n : ℕ) : ℤ :=
  A377979.P7080257391251934501.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378053.P13354335164074839749

`gcd(A020696(n+1), A377484(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378053.P13354335164074839749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020696 (n + 1)) (A377484 (n + 1))

end

end A378053.P13354335164074839749

noncomputable section

/-- A378053: a(n) = gcd(Product_{d|n} (d + 1), Product_{d|n, d>1} (d - 1)) = gcd(A020696(n), A377484(n)).

Offset 1, canonical program `A378053.P13354335164074839749`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020696, A377484, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378053 (n : ℕ) : ℤ :=
  (A378053.P13354335164074839749.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020696, A377484, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378053.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378248.P16323363356914607129

`A029041(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A378248.P16323363356914607129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A029041 n + a (n - 3)

end

end A378248.P16323363356914607129

noncomputable section

/-- A378248: Number of sets of chess pieces whose collective material value adds to n.

Offset 0, canonical program `A378248.P16323363356914607129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378248 (n : ℕ) : ℤ :=
  A378248.P16323363356914607129.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378301.P12860967816760152657

`A214857(n+1)-A022846(n)`
-/

namespace A378301.P12860967816760152657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214857 (n + 1) - A022846 n

end

end A378301.P12860967816760152657

noncomputable section

/-- A378301: a(n) is the number of triangular numbers (A000217) in the interval [n^2, (n + 1)^2].

Offset 0, canonical program `A378301.P12860967816760152657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378301 (n : ℕ) : ℤ :=
  A378301.P12860967816760152657.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378377.P1377304433949360129

`A176992(A056943(n+1))`
-/

namespace A378377.P1377304433949360129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176992 (A056943 (n + 1)).toNat

end

end A378377.P1377304433949360129

noncomputable section

/-- A378377: Triangle read by rows: T(n,k) is the number of non-descending sequences with length k such that the maximum of the length and the last number is n.

Offset 1, canonical program `A378377.P1377304433949360129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A378377 (n : ℕ) : ℤ :=
  A378377.P1377304433949360129.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. -/
def A378377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378624.P4838368887206382302

`lt[(2*(A003278(n+1)-1)+1)%10, 2]`
-/

namespace A378624.P4838368887206382302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * (A003278 (n + 1) - 1) + 1) 10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A378624.P4838368887206382302

noncomputable section

/-- A378624: Numbers whose binary representation interpreted as being base-3 is divisible by 5.

Offset 1, canonical program `A378624.P4838368887206382302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A378624 (n : ℕ) : ℤ :=
  (A378624.P4838368887206382302.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A378624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378725.P17767535879698643150

`A378724(n+2)-A378724(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378725.P17767535879698643150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378724 (n + 2) - A378724 (n + 1)

end

end A378725.P17767535879698643150

noncomputable section

/-- A378725: a(n) = A378724(n+1) - A378724(n).

Offset 1, canonical program `A378725.P17767535879698643150`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378724, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378725 (n : ℕ) : ℤ :=
  A378725.P17767535879698643150.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378724, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378725.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378788.P15862671358062057024

`A007980(n)-A002264(n*A079978(n))`
-/

namespace A378788.P15862671358062057024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 n - A002264 ((n : ℤ) * A079978 n).toNat

end

end A378788.P15862671358062057024

noncomputable section

/-- A378788: Lower matching number of the (n,n)-stacked book graph.

Offset 1, canonical program `A378788.P15862671358062057024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378788 (n : ℕ) : ℤ :=
  A378788.P15862671358062057024.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378790.P611562375653118169

`round(A032438(n+1)/2)`
-/

namespace A378790.P611562375653118169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A032438 (n + 1) : ℚ) / 2)

end

end A378790.P611562375653118169

noncomputable section

/-- A378790: Lower matching number of the n X n king graph.

Offset 1, canonical program `A378790.P611562375653118169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378790 (n : ℕ) : ℤ :=
  A378790.P611562375653118169.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378816.P12073139735814832910

`Δ[Δ[A005773(n)]*A033999(n)]`
-/

namespace A378816.P12073139735814832910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378816.P12073139735814832910

noncomputable section

/-- A378816: Expansion of 2*(x - 1)^3/(3*x^3 - 5*x^2 + x + 1 + sqrt(-(x - 1)^3*(x + 1)^2*(3*x + 1))).

Offset 0, canonical program `A378816.P12073139735814832910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A378816 (n : ℕ) : ℤ :=
  A378816.P12073139735814832910.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. -/
def A378816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378962.P5441024568918404344

`A000340(A378724(n+2)-A378724(n+1)-1)`
-/

namespace A378962.P5441024568918404344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000340 (A378724 (n + 2) - A378724 (n + 1) - 1).toNat

end

end A378962.P5441024568918404344

noncomputable section

/-- A378962: First differences of A378726.

Offset 1, canonical program `A378962.P5441024568918404344`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378724, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378962 (n : ℕ) : ℤ :=
  A378962.P5441024568918404344.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378724, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378962.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378996.P6732452737629520424

`A017666(2*(n+1))`
-/

namespace A378996.P6732452737629520424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (2 * (n + 1))

end

end A378996.P6732452737629520424

noncomputable section

/-- A378996: Denominator of sigma(2*n)/(2*n).

Offset 1, canonical program `A378996.P6732452737629520424`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378996 (n : ℕ) : ℤ :=
  A378996.P6732452737629520424.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378996.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379215.P8620567409241679117

`A103517(n)+A087291(n)`
-/

namespace A379215.P8620567409241679117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n + A087291 n

end

end A379215.P8620567409241679117

noncomputable section

/-- A379215: Number of minimal edge cuts in the complete bipartite graph K_{n,n}.

Offset 1, canonical program `A379215.P8620567409241679117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A379215 (n : ℕ) : ℤ :=
  A379215.P8620567409241679117.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. -/
def A379215.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379421.P17566647080812889774

`A133872(A005563(n))+A063247(n+1)`
-/

namespace A379421.P17566647080812889774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (A005563 n).toNat + A063247 (n + 1)

end

end A379421.P17566647080812889774

noncomputable section

/-- A379421: a(n) = n + floor(n*r/s) + floor(n*t/s), where r = 5^(1/4), s = 5^(1/2), t = 5^(3/4).

Offset 1, canonical program `A379421.P17566647080812889774`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A379421 (n : ℕ) : ℤ :=
  A379421.P17566647080812889774.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A379421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379728.P7822751634517358611

`abs(A343173(n))`
-/

namespace A379728.P7822751634517358611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A343173 n|

end

end A379728.P7822751634517358611

noncomputable section

/-- A379728: Absolute value of first differences of paperfolding sequence A014577.

Offset 1, canonical program `A379728.P7822751634517358611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379728 (n : ℕ) : ℤ :=
  A379728.P7822751634517358611.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379732.P15172099030873058908

`9-A021212(n)`
-/

namespace A379732.P15172099030873058908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A021212 n

end

end A379732.P15172099030873058908

noncomputable section

/-- A379732: Decimal expansion of 207/208.

Offset 0, canonical program `A379732.P15172099030873058908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379732 (n : ℕ) : ℤ :=
  A379732.P15172099030873058908.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379952.P2246859147419391597

`A379480(A142150(n))`
-/

namespace A379952.P2246859147419391597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379480 (A142150 n).toNat

end

end A379952.P2246859147419391597

noncomputable section

/-- A379952: a(n) = 1 if n is an odd number or a perfect square, otherwise 0.

Offset 0, canonical program `A379952.P2246859147419391597`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379952 (n : ℕ) : ℤ :=
  A379952.P2246859147419391597.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379971.P13806193812172545761

`A323239(n)*A323239(n+2)`
-/

namespace A379971.P13806193812172545761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 n * A323239 (n + 2)

end

end A379971.P13806193812172545761

noncomputable section

/-- A379971: a(n) = 1 if n^2-1 is squarefree, otherwise 0.

Offset 1, canonical program `A379971.P13806193812172545761`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323239, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379971 (n : ℕ) : ℤ :=
  A379971.P13806193812172545761.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A323239, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379971.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380548.P5588617361391462724

`∑[n]+n-C(A083920(n), 2)+1`
-/

namespace A380548.P5588617361391462724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n : ℤ) - (Nat.choose (A083920 n).toNat 2 : ℤ)) + 1

end

end A380548.P5588617361391462724

noncomputable section

/-- A380548: Main diagonal of A125585.

Offset 1, canonical program `A380548.P5588617361391462724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380548 (n : ℕ) : ℤ :=
  A380548.P5588617361391462724.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380788.P17890132981315215586

`eq[2, A105700(A070939(n)²)]`
-/

namespace A380788.P17890132981315215586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A070939 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A380788.P17890132981315215586

noncomputable section

/-- A380788: Numbers with a prime number of binary digits.

Offset 1, canonical program `A380788.P17890132981315215586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5206 terms. -/
def A380788 (n : ℕ) : ℤ :=
  (A380788.P17890132981315215586.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5206 terms. -/
def A380788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380909.P658941744693780821

`A006882(n)/A095987(n)`
-/

namespace A380909.P658941744693780821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006882 n : ℚ) / (A095987 n : ℚ)

end

end A380909.P658941744693780821

noncomputable section

/-- A380909: a(n) = numerator(n!! / (n - 1)!!).

Offset 0, canonical program `A380909.P658941744693780821`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A095987, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380909 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A380909.P658941744693780821.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A095987, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380909.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A381096.P9367970727555691698

`(n-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])%(n+1)-A032741((n+1)/∏{p}[n+1, #])`
-/

namespace A381096.P9367970727555691698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))) (n + 1 : ℤ) - A032741 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ))).toNat

end

end A381096.P9367970727555691698

noncomputable section

/-- A381096: Number of k <= n such that k is neither coprime to n and rad(k) != rad(n), where rad = A007947.

Offset 1, canonical program `A381096.P9367970727555691698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381096 (n : ℕ) : ℤ :=
  A381096.P9367970727555691698.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381122.P9181683385261929794

`eq[n, A110146(n)]`
-/

namespace A381122.P9181683385261929794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110146 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A381122.P9181683385261929794

noncomputable section

/-- A381122: Numbers k such that k^(k+1) == k (mod k+2).

Offset 1, canonical program `A381122.P9181683385261929794`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 703 terms. -/
def A381122 (n : ℕ) : ℤ :=
  (A381122.P9181683385261929794.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 703 terms. -/
def A381122.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381233.P13633514905474936498

`A001057(n-floor(sqrt(n))²)`
-/

namespace A381233.P13633514905474936498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n - Nat.sqrt n ^ 2)

end

end A381233.P13633514905474936498

noncomputable section

/-- A381233: Concatenate the sequences S(k) = [0, 1, -1, ..., k, -k] for k = 0, 1, ...

Offset 0, canonical program `A381233.P13633514905474936498`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381233 (n : ℕ) : ℤ :=
  A381233.P13633514905474936498.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381233.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381255.P14805503171048512925

`comp[floor(A056469(n)/5)]`
-/

namespace A381255.P14805503171048512925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A056469 n : ℚ) / 5⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A381255.P14805503171048512925

noncomputable section

/-- A381255: Positive integers not of the form round(2^(k+2)/5). Complement of A007910.

Offset 1, canonical program `A381255.P14805503171048512925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381255 (n : ℕ) : ℤ :=
  (A381255.P14805503171048512925.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381255.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381319.P14834546129870653751

`1+A063994(n+2)`
-/

namespace A381319.P14834546129870653751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A063994 (n + 2)

end

end A381319.P14834546129870653751

noncomputable section

/-- A381319: Order of linear recurrence with constant coefficients of solutions of k satisfying k^(n-1) == 1 (mod n^2) for a given n.

Offset 2, canonical program `A381319.P14834546129870653751`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A381319 (n : ℕ) : ℤ :=
  A381319.P14834546129870653751.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063994, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A381319.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A381401.P17306812054606808102

`∑{e}[n+1, A010051(#)+1]`
-/

namespace A381401.P17306812054606808102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (A010051 (Nat.factorization (f1 n) p) + 1)

end

end A381401.P17306812054606808102

noncomputable section

/-- A381401: a(n) is the number of (possibly non-distinct) prime elements in the multiset of bases and exponents in the prime factorization of n.

Offset 1, canonical program `A381401.P17306812054606808102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381401 (n : ℕ) : ℤ :=
  A381401.P17306812054606808102.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381847.P7980523954427739077

`A387598(n+1)+A052928(n)`
-/

namespace A381847.P7980523954427739077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387598 (n + 1) + A052928 n

end

end A381847.P7980523954427739077

noncomputable section

/-- A381847: Number of 3 element sets of distinct integer sided rectangles that fill an n X n square.

Offset 1, canonical program `A381847.P7980523954427739077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 775 terms. -/
def A381847 (n : ℕ) : ℤ :=
  A381847.P7980523954427739077.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 775 terms. -/
def A381847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381952.P13602993248681907933

`gcd(n+1, A051903(n+1))`
-/

namespace A381952.P13602993248681907933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A051903 (n + 1))

end

end A381952.P13602993248681907933

noncomputable section

/-- A381952: a(n) is the greatest common divisor of n and the maximum exponent in the prime factorization of n.

Offset 1, canonical program `A381952.P13602993248681907933`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A381952 (n : ℕ) : ℤ :=
  (A381952.P13602993248681907933.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A381952.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A381955.P6171942052485703408

`A051903(n+1)%2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A381955.P6171942052485703408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051903 (n + 1)) 2

end

end A381955.P6171942052485703408

noncomputable section

/-- A381955: a(n) = A051903(n) mod 2.

Offset 1, canonical program `A381955.P6171942052485703408`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A381955 (n : ℕ) : ℤ :=
  A381955.P6171942052485703408.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A381955.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A381972.P8049536125631911176

`lt[Δ[A001414(n+1)], 1]+2`
-/

namespace A381972.P8049536125631911176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 2

end

end A381972.P8049536125631911176

noncomputable section

/-- A381972: Numbers k>=3 such that k/A001414(k) > (k-1)/A001414(k-1).

Offset 1, canonical program `A381972.P8049536125631911176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5009 terms. -/
def A381972 (n : ℕ) : ℤ :=
  (A381972.P8049536125631911176.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5009 terms. -/
def A381972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382432.P11268986047534422817

`Δ[A176085(n)]`
-/

namespace A382432.P11268986047534422817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A382432.P11268986047534422817

noncomputable section

/-- A382432: a(n) = A074829(2*n-1, n).

Offset 1, canonical program `A382432.P11268986047534422817`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A382432 (n : ℕ) : ℤ :=
  A382432.P11268986047534422817.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A382432.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A382511.P17328053456808510659`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322078, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382511 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382511.P17328053456808510659.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A322078, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382511.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382744.P11948343297158825481

`comp[(n+1)*A062157(val(n+1, 5))]`
-/

namespace A382744.P11948343297158825481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A062157 (SequenceMachineLib.valuation (n + 1) 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382744.P11948343297158825481

noncomputable section

/-- A382744: If k appears, 5*k does not.

Offset 1, canonical program `A382744.P11948343297158825481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382744 (n : ℕ) : ℤ :=
  (A382744.P11948343297158825481.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382745.P15305106904039031028

`record[A033999(val(n+1, 7))+n]`
-/

namespace A382745.P15305106904039031028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (SequenceMachineLib.valuation (n + 1) 7) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A382745.P15305106904039031028

noncomputable section

/-- A382745: If k appears, 7*k does not.

Offset 1, canonical program `A382745.P15305106904039031028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382745 (n : ℕ) : ℤ :=
  A382745.P15305106904039031028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382789.P16110672853359686492

`∑[∑{e}[1-A000040(A028310(n)), #]]`
-/

namespace A382789.P16110672853359686492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000040 (A028310 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382789.P16110672853359686492

noncomputable section

/-- A382789: The number of prime factors of Euler phi of the n-th primorial number, counted with multiplicity.

Offset 0, canonical program `A382789.P16110672853359686492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382789 (n : ℕ) : ℤ :=
  (A382789.P16110672853359686492.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383077.P12520996747514148992

`A006358(n+1)+Δ[A006358(n)]`
-/

namespace A383077.P12520996747514148992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006358 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006358 (n + 1) + (f1 (n + 1) - f1 n)

end

end A383077.P12520996747514148992

noncomputable section

/-- A383077: Number of n-digit positive integers where all pairs of consecutive digits have a difference of at least 5.

Offset 1, canonical program `A383077.P12520996747514148992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. -/
def A383077 (n : ℕ) : ℤ :=
  A383077.P12520996747514148992.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. -/
def A383077.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383078.P12298779047005222962

`A373568(n+1)+A373568(n+1)-A006357(n)`
-/

namespace A383078.P12298779047005222962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373568 (n + 1) + (A373568 (n + 1) - A006357 n)

end

end A383078.P12298779047005222962

noncomputable section

/-- A383078: Number of n-digit positive integers where all pairs of consecutive digits have a difference of at least 6.

Offset 1, canonical program `A383078.P12298779047005222962`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A383078 (n : ℕ) : ℤ :=
  A383078.P12298779047005222962.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A383078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383156.P4501511777961019996

`∑{d}[n+1, A051903(#)]`
-/

namespace A383156.P4501511777961019996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051903 d

end

end A383156.P4501511777961019996

noncomputable section

/-- A383156: The sum of the maximum exponents in the prime factorizations of the divisors of n.

Offset 1, canonical program `A383156.P4501511777961019996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383156 (n : ℕ) : ℤ :=
  A383156.P4501511777961019996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383259.P13748571776509736098

`A065033(n)-A033271(n+1)`
-/

namespace A383259.P13748571776509736098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n - A033271 (n + 1)

end

end A383259.P13748571776509736098

noncomputable section

/-- A383259: a(n) is the excess of even composites over odd composites in the first n positive integers.

Offset 1, canonical program `A383259.P13748571776509736098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383259 (n : ℕ) : ℤ :=
  A383259.P13748571776509736098.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383325.P8303941941289924886

`comp[A383324(n)]`
-/

namespace A383325.P8303941941289924886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383324 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A383325.P8303941941289924886

noncomputable section

/-- A383325: Numbers not of the form round(3^k/5). Complement of A383324.

Offset 1, canonical program `A383325.P8303941941289924886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383325 (n : ℕ) : ℤ :=
  (A383325.P8303941941289924886.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383431.P12354164242503902528

`A051920(2*n+1)/A000034(∏{p}[n+1, #-1])`
-/

namespace A383431.P12354164242503902528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051920 (2 * n + 1) : ℚ) / (A000034 (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)).toNat : ℚ)

end

end A383431.P12354164242503902528

noncomputable section

/-- A383431: a(n) is the denominator of tanh(Sum_{k=1..n-1} artanh(k/n)), where artanh is the inverse hyperbolic tangent function.

Offset 1, canonical program `A383431.P12354164242503902528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A383431 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A383431.P12354164242503902528.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A383431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383578.P17294025589639841997

`A000040(n+1)^(char[(n*a(n-1))²+n]+1)` with `a(0)=2`
-/

namespace A383578.P17294025589639841997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  (n * f1 (n - 1)) ^ 2 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ ((if ∃ j, f1 j = n then 1 else 0) + 1)

end

end A383578.P17294025589639841997

noncomputable section

/-- A383578: Let p = prime(n), then a(n) is the p-smooth part of (p-1)! + 1.

Offset 1, canonical program `A383578.P17294025589639841997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383578 (n : ℕ) : ℤ :=
  A383578.P17294025589639841997.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383601.P257771129488146488

`∑[A377233(n)]`
-/

namespace A383601.P257771129488146488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383601.P257771129488146488

noncomputable section

/-- A383601: Expansion of 1/( (1-x) * (1-10*x)^2 )^(1/3).

Offset 0, canonical program `A383601.P257771129488146488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A383601 (n : ℕ) : ℤ :=
  A383601.P257771129488146488.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A383601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383641.P12370481159656482094

`∑[(A010051(n+1)-1)*A131738(n)]`
-/

namespace A383641.P12370481159656482094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010051 (n + 1) - 1) * A131738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383641.P12370481159656482094

noncomputable section

/-- A383641: a(n) is the difference between the sum of even composites and the sum of the odd composites in the first n positive integers.

Offset 1, canonical program `A383641.P12370481159656482094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383641 (n : ℕ) : ℤ :=
  A383641.P12370481159656482094.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383641.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383670.P12936080934003293389

`A188432(n+1)+A188432(n+1)+A003849(n)`
-/

namespace A383670.P12936080934003293389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188432 (n + 1) + (A188432 (n + 1) + A003849 n)

end

end A383670.P12936080934003293389

noncomputable section

/-- A383670: Limiting word, as a sequence, obtained by prefixing with 0 the limiting sequence of s(n) defined by s(0) = 0, s(1) = 12, s(n) = the concatenation of s(n - 1) and s(n - 2).

Offset 1, canonical program `A383670.P12936080934003293389`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383670 (n : ℕ) : ℤ :=
  A383670.P12936080934003293389.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383705.P15354307696166593991

`∏{e}[n+1, A127974(#)]`
-/

namespace A383705.P15354307696166593991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A127974 (Nat.factorization (f1 n) p)

end

end A383705.P15354307696166593991

noncomputable section

/-- A383705: Numerator of Dirichlet g.f.: Sum_{n>=1} a(n)/n^s = zeta(s)^(2/3).

Offset 1, canonical program `A383705.P15354307696166593991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383705 (n : ℕ) : ℤ :=
  A383705.P15354307696166593991.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383705.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383762.P17957299951470629655

`∏{e}[n+1, A008966(#)+1]`
-/

namespace A383762.P17957299951470629655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A008966 (Nat.factorization (f1 n) p) + 1)

end

end A383762.P17957299951470629655

noncomputable section

/-- A383762: The number of unitary divisors of n that are exponentially squarefree numbers.

Offset 1, canonical program `A383762.P17957299951470629655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383762 (n : ℕ) : ℤ :=
  A383762.P17957299951470629655.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383911.P13606611818806099941

`A383913(n)+A383913(n)-A383910(n)`
-/

namespace A383911.P13606611818806099941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383913 n + (A383913 n - A383910 n)

end

end A383911.P13606611818806099941

noncomputable section

/-- A383911: Expansion of Product_{k=0..4} (1 + k*x)/(1 - k*x).

Offset 0, canonical program `A383911.P13606611818806099941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A383911 (n : ℕ) : ℤ :=
  A383911.P13606611818806099941.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A383911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383946.P16362307403769968417

`Δ[A000217(n)*A059231(n)]`
-/

namespace A383946.P16362307403769968417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A059231 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A383946.P16362307403769968417

noncomputable section

/-- A383946: Expansion of 1/sqrt((1-9*x)^3 * (1-x)).

Offset 0, canonical program `A383946.P16362307403769968417`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A383946 (n : ℕ) : ℤ :=
  A383946.P16362307403769968417.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A383946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383999.P17329043194853492655

`xor(A003849(n)+1, A003849(n+2))`
-/

namespace A383999.P17329043194853492655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003849 n + 1) (A003849 (n + 2))

end

end A383999.P17329043194853492655

noncomputable section

/-- A383999: Sequence obtained by replacing 3-term subwords of A003849 by 0,1,2,3 as described in Comments.

Offset 1, canonical program `A383999.P17329043194853492655`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383999 (n : ℕ) : ℤ :=
  A383999.P17329043194853492655.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384096.P3432400259258719839

`2*n-A053646(n+1)`
-/

namespace A384096.P3432400259258719839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A053646 (n + 1)

end

end A384096.P3432400259258719839

noncomputable section

/-- A384096: a(n) = 2*n - A080776(n).

Offset 0, canonical program `A384096.P3432400259258719839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384096 (n : ℕ) : ℤ :=
  A384096.P3432400259258719839.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384096.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384153.P11731211239372390351

`2^n-A005251(n+2)`
-/

namespace A384153.P11731211239372390351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A005251 (n + 2)

end

end A384153.P11731211239372390351

noncomputable section

/-- A384153: a(n) is the number of binary strings of length n whose shortest run of 1s is of length 1.

Offset 0, canonical program `A384153.P11731211239372390351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A384153 (n : ℕ) : ℤ :=
  A384153.P11731211239372390351.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A384153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384154.P3815110510942756679

`A005251(n+2)-A005252(n+1)`
-/

namespace A384154.P3815110510942756679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (n + 2) - A005252 (n + 1)

end

end A384154.P3815110510942756679

noncomputable section

/-- A384154: a(n) is the number of binary strings of length n whose shortest run of 1s is of length 2.

Offset 0, canonical program `A384154.P3815110510942756679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 411 terms. -/
def A384154 (n : ℕ) : ℤ :=
  A384154.P3815110510942756679.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 411 terms. -/
def A384154.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384197.P16927393950934576976

`floor(A000302(A070939(n+1))/(n+1))`
-/

namespace A384197.P16927393950934576976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000302 (A070939 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)⌋

end

end A384197.P16927393950934576976

noncomputable section

/-- A384197: The Barrett reducer reciprocal mod n.

Offset 1, canonical program `A384197.P16927393950934576976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A384197 (n : ℕ) : ℤ :=
  A384197.P16927393950934576976.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A384197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384219.P9210733678085374232

`A070550(3*n+1)`
-/

namespace A384219.P9210733678085374232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070550 (3 * n + 1)

end

end A384219.P9210733678085374232

noncomputable section

/-- A384219: Areas of triangles whose three vertices are consecutive ordered pairs of consecutive odd Fibonacci numbers such that an ordered pair's y-value is the next ordered pair's x-value.

Offset 1, canonical program `A384219.P9210733678085374232`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A384219 (n : ℕ) : ℤ :=
  A384219.P9210733678085374232.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A384219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384543.P10493386867404407549

`A352228(A352228(3*n+1)+A004755(n+1))`
-/

namespace A384543.P10493386867404407549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352228 (A352228 (3 * n + 1) + A004755 (n + 1)).toNat

end

end A384543.P10493386867404407549

noncomputable section

/-- A384543: Number of distinct values from the bitwise operation i XOR j for all integers i and j in the range [1, n].

Offset 1, canonical program `A384543.P10493386867404407549`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A384543 (n : ℕ) : ℤ :=
  A384543.P10493386867404407549.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A384543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384601.P16727066867523399097

`∩[A283769(n+1), A016789(n)]`
-/

namespace A384601.P16727066867523399097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384601.P16727066867523399097

noncomputable section

/-- A384601: Numbers k such that T(k, 1) mod 3 = 1 and T(k, 2) mod 3 = 1, where T is the Wythoff array (A035513).

Offset 1, canonical program `A384601.P16727066867523399097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A384601 (n : ℕ) : ℤ :=
  (A384601.P16727066867523399097.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A384601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384602.P13490862903164101311

`∩[A283770(n+1), A016777(n)]`
-/

namespace A384602.P13490862903164101311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384602.P13490862903164101311

noncomputable section

/-- A384602: Numbers k such that T(k, 1) mod 3 = 1 and T(k, 2) mod 3 = 2, where T is the Wythoff array (A035513).

Offset 1, canonical program `A384602.P13490862903164101311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A384602 (n : ℕ) : ℤ :=
  (A384602.P13490862903164101311.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3335 terms. -/
def A384602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384812.P3201192687683523015

`∑{e}[n+1, A000040(#)]`
-/

namespace A384812.P3201192687683523015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)

end

end A384812.P3201192687683523015

noncomputable section

/-- A384812: If n = Product prime(i)^e(i) then a(n) = Sum prime(e(i)).

Offset 1, canonical program `A384812.P3201192687683523015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384812 (n : ℕ) : ℤ :=
  A384812.P3201192687683523015.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384812.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385108.P4617157348366069827

`A033436(A376102(n))+1`
-/

namespace A385108.P4617157348366069827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033436 (A376102 n).toNat + 1

end

end A385108.P4617157348366069827

noncomputable section

/-- A385108: Triangle a(n,k) read by antidiagonals: a(n,k) is the number of dots in the k-augmented centered triangle of order n, k>=0, n>=1.

Offset 1, canonical program `A385108.P4617157348366069827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A385108 (n : ℕ) : ℤ :=
  A385108.P4617157348366069827.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. -/
def A385108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385167.P4826086116355619044

`∪[A142187(n+1), A142198(n+1)]`
-/

namespace A385167.P4826086116355619044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385167.P4826086116355619044

noncomputable section

/-- A385167: Primes p == 3 (mod 4) such that (p+1) * ord(5,p) / ord(2+-i,p) is even. Here ord(a,m) is the multiplicative order of a modulo m.

Offset 1, canonical program `A385167.P4826086116355619044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385167 (n : ℕ) : ℤ :=
  (A385167.P4826086116355619044.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385177.P2434834977820488632

`A183136(n+1)+n+1`
-/

namespace A385177.P2434834977820488632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183136 (n + 1) + (n + 1 : ℤ)

end

end A385177.P2434834977820488632

noncomputable section

/-- A385177: a(n) = Sum_{k=1..n} ceiling(k/phi), where phi is the golden ratio (A001622).

Offset 1, canonical program `A385177.P2434834977820488632`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183136, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385177 (n : ℕ) : ℤ :=
  A385177.P2434834977820488632.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183136, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385177.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385182.P1223750767979018473

`comp[A181972(n+1)]-n`
-/

namespace A385182.P1223750767979018473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181972 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A385182.P1223750767979018473

noncomputable section

/-- A385182: Values of u in the quartets (1,u,v,w); i.e., values of u for solutions to (1+u) = v*(v+w), in positive integers, with v>1, sorted by nondecreasing values of u; see Comments.

Offset 1, canonical program `A385182.P1223750767979018473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385182 (n : ℕ) : ℤ :=
  A385182.P1223750767979018473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385378.P16507919324572335447

`∑{e}[n+1, A003056(#)]`
-/

namespace A385378.P16507919324572335447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A003056 (Nat.factorization (f1 n) p)

end

end A385378.P16507919324572335447

noncomputable section

/-- A385378: The maximum possible number of distinct factors in the factorization of n into prime powers (A246655).

Offset 1, canonical program `A385378.P16507919324572335447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385378 (n : ℕ) : ℤ :=
  A385378.P16507919324572335447.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385412.P1663864152010749443

`∩[A007916(n+1), A038687(n+1)]`
-/

namespace A385412.P1663864152010749443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385412.P1663864152010749443

noncomputable section

/-- A385412: Numbers k that are not perfect powers and whose trailing digits form a power of b, where 1 < b < k.

Offset 1, canonical program `A385412.P1663864152010749443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9885 terms. -/
def A385412 (n : ℕ) : ℤ :=
  (A385412.P1663864152010749443.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9885 terms. -/
def A385412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385457.P1892993541243509914

`A071044(A131452(n))`
-/

namespace A385457.P1892993541243509914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (A131452 n).toNat

end

end A385457.P1892993541243509914

noncomputable section

/-- A385457: Number of odd entries in row n of the Fibonomial triangle (A010048).

Offset 0, canonical program `A385457.P1892993541243509914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7500 terms. -/
def A385457 (n : ℕ) : ℤ :=
  A385457.P1892993541243509914.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7500 terms. -/
def A385457.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385476.P6490758313331182239

`comp[∑[A032741(n)]]-n+2`
-/

namespace A385476.P6490758313331182239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) + 2

end

end A385476.P6490758313331182239

noncomputable section

/-- A385476: Values of u in the quartets (1, u, v, w) of type 3; i.e., values of u for solutions to (1 - u) = v(v - w), in distinct positive integers, with v > 1, sorted by nondecreasing values of u; see Comments.

Offset 1, canonical program `A385476.P6490758313331182239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385476 (n : ℕ) : ℤ :=
  A385476.P6490758313331182239.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385494.P9916212289199863013

`∑{d}[n+1, A268643(#)]`
-/

namespace A385494.P9916212289199863013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A268643 d

end

end A385494.P9916212289199863013

noncomputable section

/-- A385494: Total number of 1's in the decimal digits of the divisors of n.

Offset 1, canonical program `A385494.P9916212289199863013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385494 (n : ℕ) : ℤ :=
  A385494.P9916212289199863013.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385554.P5664007560876723036

`A062383(n)*A385552(n)`
-/

namespace A385554.P5664007560876723036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n * A385552 n

end

end A385554.P5664007560876723036

noncomputable section

/-- A385554: Period of {binomial(N,n) mod 10: N in Z}.

Offset 0, canonical program `A385554.P5664007560876723036`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A385552, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385554 (n : ℕ) : ℤ :=
  A385554.P5664007560876723036.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A385552, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385554.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385610.P4272775089795650141

`A006368(2*a(floor(n/2))-(-1)^n)` with `a(0)=1`
-/

namespace A385610.P4272775089795650141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006368 (2 * a ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n).toNat

end

end A385610.P4272775089795650141

noncomputable section

/-- A385610: Galileo sequence with ratio k = 2: a(1) = 1, a(2) = k, a(2*n-1) = floor(((k + 1)*a(n) -1)/2), and a(2*n) = floor((k + 1)*a(n)/2) + 1 for n > 2.

Offset 1, canonical program `A385610.P4272775089795650141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385610 (n : ℕ) : ℤ :=
  A385610.P4272775089795650141.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385704.P143017808627893424

`comp[A184535(n+1)-1]+1`
-/

namespace A385704.P143017808627893424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184535 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A385704.P143017808627893424

noncomputable section

/-- A385704: Complement of A184535.

Offset 1, canonical program `A385704.P143017808627893424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385704 (n : ℕ) : ℤ :=
  (A385704.P143017808627893424.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385704.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385827.P17938306064123805802

`ceil(log2(A082685(n)))`
-/

namespace A385827.P17938306064123805802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A082685 n : ℝ)⌉

end

end A385827.P17938306064123805802

noncomputable section

/-- A385827: a(n) is the unique k such that 2^k is closest to 5^n.

Offset 0, canonical program `A385827.P17938306064123805802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A385827 (n : ℕ) : ℤ :=
  A385827.P17938306064123805802.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A385827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385879.P5429911478239775443

`∑[char[∑[A069905(n)]]]+2`
-/

namespace A385879.P5429911478239775443
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A385879.P5429911478239775443

noncomputable section

/-- A385879: Values of u in triples (u, v, w) such that the polynomial x^3 + u*x^2 + v*x + w has 3 (possibly repeated) negative integer zeros; the triples are ordered by the inequality u < v.

Offset 1, canonical program `A385879.P5429911478239775443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385879 (n : ℕ) : ℤ :=
  (A385879.P5429911478239775443.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385879.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385938.P15670182765899731212

`A318972(A004772(n+1))`
-/

namespace A385938.P15670182765899731212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318972 (A004772 (n + 1)).toNat

end

end A385938.P15670182765899731212

noncomputable section

/-- A385938: a(n) = 2*n/3 if n == 0 (mod 3), (2*n+1)/3 if n == 1 (mod 3), (7*n+1)/3 if n == 2 (mod 3).

Offset 0, canonical program `A385938.P15670182765899731212`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7500 terms. -/
def A385938 (n : ℕ) : ℤ :=
  A385938.P15670182765899731212.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7500 terms. -/
def A385938.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386262.P4974348746514539254

`A051903(A066301(n+1)+1)`
-/

namespace A386262.P4974348746514539254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A066301 (n + 1) + 1).toNat

end

end A386262.P4974348746514539254

noncomputable section

/-- A386262: a(n) = A051903(A051903(n)) for n >= 2, a(1) = 0.

Offset 1, canonical program `A386262.P4974348746514539254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386262 (n : ℕ) : ℤ :=
  A386262.P4974348746514539254.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386270.P15296392339893213735

`A045623(n)-A122391(n)`
-/

namespace A386270.P15296392339893213735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n - A122391 n

end

end A386270.P15296392339893213735

noncomputable section

/-- A386270: Total number of ones in runs of 1s of length <=2 over all binary strings of length n.

Offset 0, canonical program `A386270.P15296392339893213735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A386270 (n : ℕ) : ℤ :=
  A386270.P15296392339893213735.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A386270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386477.P859100336923927337

`A063128(n)+a(n-1)` with `a(0)=1`
-/

namespace A386477.P859100336923927337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A063128 n + a (n - 1)

end

end A386477.P859100336923927337

noncomputable section

/-- A386477: a(0) = 1; thereafter a(n) = 2*(6*n^2 - 3*n + 1).

Offset 0, canonical program `A386477.P859100336923927337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386477 (n : ℕ) : ℤ :=
  A386477.P859100336923927337.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386571.P6980462762357179349

`comp[n-A001221(n+1)]+1`
-/

namespace A386571.P6980462762357179349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A386571.P6980462762357179349

noncomputable section

/-- A386571: Numbers that are not of the form k - omega(k), where omega(k) is the number of distinct primes dividing k.

Offset 1, canonical program `A386571.P6980462762357179349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386571 (n : ℕ) : ℤ :=
  (A386571.P6980462762357179349.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386572.P15637048353248042012

`comp[n-A001222(n+1)]+1`
-/

namespace A386572.P15637048353248042012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A386572.P15637048353248042012

noncomputable section

/-- A386572: Numbers that are not of the form k - Omega(k), where Omega(k) is the number of prime factors of k counted with multiplicity.

Offset 1, canonical program `A386572.P15637048353248042012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386572 (n : ℕ) : ℤ :=
  (A386572.P15637048353248042012.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386796.P17260301346217221759

`eq[2, A368885(n+1)]+1`
-/

namespace A386796.P17260301346217221759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368885 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A386796.P17260301346217221759

noncomputable section

/-- A386796: Numbers that have exactly one exponent in their prime factorization that is equal to 2.

Offset 1, canonical program `A386796.P17260301346217221759`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2263 terms. -/
def A386796 (n : ℕ) : ℤ :=
  (A386796.P17260301346217221759.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2263 terms. -/
def A386796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386832.P17191505806885496330

`ceil(A077028(n)/A002260(n+1))`
-/

namespace A386832.P17191505806885496330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A077028 n : ℚ) / (A002260 (n + 1) : ℚ)⌉

end

end A386832.P17191505806885496330

noncomputable section

/-- A386832: Triangle read by rows: T(n,k) is the number of the sets of partitions of n with length k grouped by largest part.

Offset 1, canonical program `A386832.P17191505806885496330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A386832 (n : ℕ) : ℤ :=
  A386832.P17191505806885496330.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A386832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386884.P4556650635656247242

`(n-3)*C(A004526(n), 2)`
-/

namespace A386884.P4556650635656247242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) * (Nat.choose (A004526 n).toNat 2 : ℤ)

end

end A386884.P4556650635656247242

noncomputable section

/-- A386884: a(n) is the number of distinct four-cuboid combinations that fill an n X n X n cube using only strict cuboids.

Offset 1, canonical program `A386884.P4556650635656247242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A386884 (n : ℕ) : ℤ :=
  A386884.P4556650635656247242.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A386884.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387038.P17225137594155425418

`A139398(3*n+2)`
-/

namespace A387038.P17225137594155425418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139398 (3 * n + 2)

end

end A387038.P17225137594155425418

noncomputable section

/-- A387038: a(n) = Sum_{k=0..n} binomial(3*n+2,5*k).

Offset 0, canonical program `A387038.P17225137594155425418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A387038 (n : ℕ) : ℤ :=
  A387038.P17225137594155425418.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A387038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387209.P14191999222405322353

`A025828(n)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A387209.P14191999222405322353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A025828 n + a (n - 2)

end

end A387209.P14191999222405322353

noncomputable section

/-- A387209: Number of convex polygons with perimeter n on the regular triangular lattice, not counting rotations and reflections as distinct.

Offset 0, canonical program `A387209.P14191999222405322353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387209 (n : ℕ) : ℤ :=
  A387209.P14191999222405322353.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387228.P6541808313867296877

`∑[∑[A377199(n)]]`
-/

namespace A387228.P6541808313867296877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377199 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387228.P6541808313867296877

noncomputable section

/-- A387228: Expansion of sqrt((1-x) / (1-5*x)^5).

Offset 0, canonical program `A387228.P6541808313867296877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A387228 (n : ℕ) : ℤ :=
  A387228.P6541808313867296877.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A387228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387312.P4428100148096621254

`xor(A004526(n), A163617(n))`
-/

namespace A387312.P4428100148096621254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004526 n) (A163617 n)

end

end A387312.P4428100148096621254

noncomputable section

/-- A387312: a(n) is the action of "Rule 30" elementary cellular automaton on the binary representation of n if the cells may only expand into the significant bit.

Offset 0, canonical program `A387312.P4428100148096621254`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387312 (n : ℕ) : ℤ :=
  A387312.P4428100148096621254.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387332.P6355845914133237599

`2^n-A028495(n+1)`
-/

namespace A387332.P6355845914133237599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A028495 (n + 1)

end

end A387332.P6355845914133237599

noncomputable section

/-- A387332: Number of binary strings of length n that contain at least one maximal run of ones of even length.

Offset 0, canonical program `A387332.P6355845914133237599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A387332 (n : ℕ) : ℤ :=
  A387332.P6355845914133237599.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A387332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387394.P3160881083450002832

`∑{d}[n+1, A316863(#)]`
-/

namespace A387394.P3160881083450002832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A316863 d

end

end A387394.P3160881083450002832

noncomputable section

/-- A387394: Total number of 2's in the decimal digits of the divisors of n.

Offset 1, canonical program `A387394.P3160881083450002832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387394 (n : ℕ) : ℤ :=
  A387394.P3160881083450002832.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387394.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387463.P7935693683231435009

`∑{d}[n+1, A316864(#)]`
-/

namespace A387463.P7935693683231435009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A316864 d

end

end A387463.P7935693683231435009

noncomputable section

/-- A387463: Total number of 3's in the decimal digits of the divisors of n.

Offset 1, canonical program `A387463.P7935693683231435009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387463 (n : ℕ) : ℤ :=
  A387463.P7935693683231435009.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387463.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387644.P12775165900026762

`A002264(A092200(A216256(n+1)))+n`
-/

namespace A387644.P12775165900026762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A092200 (A216256 (n + 1)).toNat).toNat + (n : ℤ)

end

end A387644.P12775165900026762

noncomputable section

/-- A387644: Complement of A045944.

Offset 1, canonical program `A387644.P12775165900026762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387644 (n : ℕ) : ℤ :=
  A387644.P12775165900026762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387644.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387844.P39258131773140473

`A139398(2*n)`
-/

namespace A387844.P39258131773140473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139398 (2 * n)

end

end A387844.P39258131773140473

noncomputable section

/-- A387844: a(n) = Sum_{k=0..n} binomial(2*n,5*k).

Offset 0, canonical program `A387844.P39258131773140473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A387844 (n : ℕ) : ℤ :=
  A387844.P39258131773140473.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A387844.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387847.P7653341057243768813

`A139398(3*n)`
-/

namespace A387847.P7653341057243768813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139398 (3 * n)

end

end A387847.P7653341057243768813

noncomputable section

/-- A387847: a(n) = Sum_{k=0..n} binomial(3*n,5*k).

Offset 0, canonical program `A387847.P7653341057243768813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A387847 (n : ℕ) : ℤ :=
  A387847.P7653341057243768813.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A387847.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387871.P16244056214977471768

`A139398(Δ[n²])`
-/

namespace A387871.P16244056214977471768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139398 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A387871.P16244056214977471768

noncomputable section

/-- A387871: a(n) = Sum_{k=0..n} binomial(2*n+1,5*k).

Offset 0, canonical program `A387871.P16244056214977471768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A387871 (n : ℕ) : ℤ :=
  A387871.P16244056214977471768.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A387871.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387872.P4622119094112307466

`A139398(3*n+1)`
-/

namespace A387872.P4622119094112307466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139398 (3 * n + 1)

end

end A387872.P4622119094112307466

noncomputable section

/-- A387872: a(n) = Sum_{k=0..n} binomial(3*n+1,5*k).

Offset 0, canonical program `A387872.P4622119094112307466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A387872 (n : ℕ) : ℤ :=
  A387872.P4622119094112307466.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A387872.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387883.P10055298116302213478

`A374584(A004274(n+1))`
-/

namespace A387883.P10055298116302213478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374584 (A004274 (n + 1)).toNat

end

end A387883.P10055298116302213478

noncomputable section

/-- A387883: a(n) is the number of regions into which the plane is divided by n^2 circles of radius 1, the centers of which are located at the nodes of a square lattice n X n.

Offset 0, canonical program `A387883.P10055298116302213478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A387883 (n : ℕ) : ℤ :=
  A387883.P10055298116302213478.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A387883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388073.P2282890064848621379

`A102283(n)*A011583(n)`
-/

namespace A388073.P2282890064848621379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 n * A011583 n

end

end A388073.P2282890064848621379

noncomputable section

/-- A388073: a(n) = Kronecker symbol (-39/n) = (n/39).

Offset 0, canonical program `A388073.P2282890064848621379`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A011583, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388073 (n : ℕ) : ℤ :=
  A388073.P2282890064848621379.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A011583, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388073.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A388077.P17750427128830897830

`eq[0, A256436(n)]`
-/

namespace A388077.P17750427128830897830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256436 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A388077.P17750427128830897830

noncomputable section

/-- A388077: Complement of A000332.

Offset 1, canonical program `A388077.P17750427128830897830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A388077 (n : ℕ) : ℤ :=
  (A388077.P17750427128830897830.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A388077.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A388994.P3930905186296382464`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162296, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388994 (n : ℕ) : ℤ :=
  A388994.P3930905186296382464.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162296, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388994.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389227.P12429541221648021924

`filter[A341646(n+1), A087049(#)]`
-/

namespace A389227.P12429541221648021924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A389227.P12429541221648021924

noncomputable section

/-- A389227: Numbers in A126706 that are less than the square of their squarefree kernel.

Offset 1, canonical program `A389227.P12429541221648021924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3711 terms. -/
def A389227 (n : ℕ) : ℤ :=
  A389227.P12429541221648021924.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3711 terms. -/
def A389227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389471.P8174744093872280267

`∑[A257633(n)]`
-/

namespace A389471.P8174744093872280267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389471.P8174744093872280267

noncomputable section

/-- A389471: a(n) = Sum_{k=0..n} binomial(4*k+2,k).

Offset 0, canonical program `A389471.P8174744093872280267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A389471 (n : ℕ) : ℤ :=
  A389471.P8174744093872280267.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A389471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389594.P16283464142215270582

`A057716(a(n-1))` with `a(0)=1`
-/

namespace A389594.P16283464142215270582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A057716 (a (n - 1)).toNat

end

end A389594.P16283464142215270582

noncomputable section

/-- A389594: a(1) = 1; a(n+1) = a(n)-th positive integer that is not a power of 2.

Offset 1, canonical program `A389594.P16283464142215270582`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389594 (n : ℕ) : ℤ :=
  A389594.P16283464142215270582.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389594.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389607.P8527242215205205422

`2*(A110293(n+1)-1)`
-/

namespace A389607.P8527242215205205422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A110293 (n + 1) - 1)

end

end A389607.P8527242215205205422

noncomputable section

/-- A389607: A bisection of A221075.

Offset 1, canonical program `A389607.P8527242215205205422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A389607 (n : ℕ) : ℤ :=
  A389607.P8527242215205205422.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. -/
def A389607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389698.P11786458541430065540

`∏{e}[n+1, A005899(#)]`
-/

namespace A389698.P11786458541430065540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A005899 (Nat.factorization (f1 n) p)

end

end A389698.P11786458541430065540

noncomputable section

/-- A389698: Multiplicative sequence a(n) with a(p^e) = 4 * e^2 + 2 for prime p and e > 0.

Offset 1, canonical program `A389698.P11786458541430065540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389698 (n : ℕ) : ℤ :=
  A389698.P11786458541430065540.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389809.P18305442377972474179

`A000040(A003057(n+2))`
-/

namespace A389809.P18305442377972474179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A003057 (n + 2)).toNat

end

end A389809.P18305442377972474179

noncomputable section

/-- A389809: Sequence containing k-1 occurrences of prime(k) ordered by k.

Offset 1, canonical program `A389809.P18305442377972474179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389809 (n : ℕ) : ℤ :=
  A389809.P18305442377972474179.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389809.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389832.P16160485029740737369

`∏{e}[n+1, A098178(#)]`
-/

namespace A389832.P16160485029740737369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A098178 (Nat.factorization (f1 n) p)

end

end A389832.P16160485029740737369

noncomputable section

/-- A389832: Multiplicative sequence a(n) with a(p^e) = abs(2 - (e mod 4)) for prime p and e > 0.

Offset 1, canonical program `A389832.P16160485029740737369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389832 (n : ℕ) : ℤ :=
  A389832.P16160485029740737369.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389887.P17353469086998159465

`∑{d}[n+1, A303915(#)]`
-/

namespace A389887.P17353469086998159465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A303915 d

end

end A389887.P17353469086998159465

noncomputable section

/-- A389887: Multiplicative sequence a(n) with a(p^e) = (3 + (-1)^e * (2*e+1)) / 4 for prime p and e >= 0.

Offset 1, canonical program `A389887.P17353469086998159465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389887 (n : ℕ) : ℤ :=
  A389887.P17353469086998159465.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389887.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389989.P16156357177488395831

`A100103(n)%A134064(n)`
-/

namespace A389989.P16156357177488395831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100103 n) (A134064 n)

end

end A389989.P16156357177488395831

noncomputable section

/-- A389989: a(n) = 3^n - 2^n - 2*n - 1, n > 1; a(0)=a(1)=0.

Offset 0, canonical program `A389989.P16156357177488395831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A389989 (n : ℕ) : ℤ :=
  A389989.P16156357177488395831.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A389989.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390326.P10922664327684501157

`A002378(lt[A209229(n), A164089(n+1)])`
-/

namespace A390326.P10922664327684501157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A390326.P10922664327684501157

noncomputable section

/-- A390326: Oblong numbers not of the forms 2^k*(2^k - 1) or 2^k*(2^k + 1).

Offset 1, canonical program `A390326.P10922664327684501157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9973 terms. -/
def A390326 (n : ℕ) : ℤ :=
  A390326.P10922664327684501157.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9973 terms. -/
def A390326.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390411.P2957758563450737005

`∑[A052203(n)]`
-/

namespace A390411.P2957758563450737005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390411.P2957758563450737005

noncomputable section

/-- A390411: a(n) = Sum_{k=0..n} binomial(4*k+1,k).

Offset 0, canonical program `A390411.P2957758563450737005`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A390411 (n : ℕ) : ℤ :=
  A390411.P2957758563450737005.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A390411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390437.P11752335666826313270

`eq[0, A366124(n+1)]+1`
-/

namespace A390437.P11752335666826313270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366124 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A390437.P11752335666826313270

noncomputable section

/-- A390437: Numbers whose prime factorization exponents are not divisible by 3.

Offset 1, canonical program `A390437.P11752335666826313270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8955 terms. -/
def A390437 (n : ℕ) : ℤ :=
  (A390437.P11752335666826313270.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8955 terms. -/
def A390437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390442.P3251703464741091877

`A061503(10^n)`
-/

namespace A390442.P3251703464741091877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061503 (10 ^ n)

end

end A390442.P3251703464741091877

noncomputable section

/-- A390442: a(n) = Sum_{k<=10^n} d(k^2), where d(k^2) = number of divisors function A000005 for k^2.

Offset 0, canonical program `A390442.P3251703464741091877`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061503, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390442 (n : ℕ) : ℤ :=
  A390442.P3251703464741091877.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061503, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390442.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390483.P1083108438533826406

`A002819(2^n)`
-/

namespace A390483.P1083108438533826406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002819 (2 ^ n)

end

end A390483.P1083108438533826406

noncomputable section

/-- A390483: Values of L(2^n), where L(n) is the summatory function of the Liouville function A008836(n).

Offset 0, canonical program `A390483.P1083108438533826406`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002819, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390483 (n : ℕ) : ℤ :=
  A390483.P1083108438533826406.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002819, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390483.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390541.P3504011345047521333

`A045721(n)-a(n-1)` with `a(0)=1`
-/

namespace A390541.P3504011345047521333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A045721 n - a (n - 1)

end

end A390541.P3504011345047521333

noncomputable section

/-- A390541: a(n) = Sum_{k=0..n} (-1)^(n-k) * binomial(3*k+1,k).

Offset 0, canonical program `A390541.P3504011345047521333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A390541 (n : ℕ) : ℤ :=
  A390541.P3504011345047521333.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. -/
def A390541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390562.P11016725646029615047

`A187331(n)+A118406(n)`
-/

namespace A390562.P11016725646029615047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187331 n + A118406 n

end

end A390562.P11016725646029615047

noncomputable section

/-- A390562: Upper (1/5,1/2) midsequence of (2^n) and (5*n); see Comments.

Offset 0, canonical program `A390562.P11016725646029615047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A390562 (n : ℕ) : ℤ :=
  A390562.P11016725646029615047.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A390562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390566.P12025773443612493557

`ceil(n*A045944(n)/6)`
-/

namespace A390566.P12025773443612493557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) * A045944 n : ℚ) / 6⌉

end

end A390566.P12025773443612493557

noncomputable section

/-- A390566: Upper (1/3,1/2) midsequence of (n^2) and (n^3); see Comments.

Offset 0, canonical program `A390566.P12025773443612493557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390566 (n : ℕ) : ℤ :=
  A390566.P12025773443612493557.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390614.P12437563007930374621

`A080891(n)*A175629(n)`
-/

namespace A390614.P12437563007930374621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 n * A175629 n

end

end A390614.P12437563007930374621

noncomputable section

/-- A390614: a(n) = Kronecker symbol (-35/n) = (n/35).

Offset 0, canonical program `A390614.P12437563007930374621`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175629, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390614 (n : ℕ) : ℤ :=
  A390614.P12437563007930374621.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175629, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390614.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390724.P10032212923704831388

`A000108(A002262(n))*A048993(n)`
-/

namespace A390724.P10032212923704831388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A002262 n).toNat * A048993 n

end

end A390724.P10032212923704831388

noncomputable section

/-- A390724: Triangle read by rows: T(n, k) = Stirling2(n, k)*CatalanNumber(k).

Offset 0, canonical program `A390724.P10032212923704831388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3269 terms. -/
def A390724 (n : ℕ) : ℤ :=
  A390724.P10032212923704831388.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3269 terms. -/
def A390724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390767.P7294743232023992105

`A081604(floor(sqrt(n)))`
-/

namespace A390767.P7294743232023992105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (Nat.sqrt n)

end

end A390767.P7294743232023992105

noncomputable section

/-- A390767: Number of digits in base-9 representation of n.

Offset 0, canonical program `A390767.P7294743232023992105`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390767 (n : ℕ) : ℤ :=
  A390767.P7294743232023992105.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391502.P16587956580403437799

`A102283(n)*A011582(n)`
-/

namespace A391502.P16587956580403437799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 n * A011582 n

end

end A391502.P16587956580403437799

noncomputable section

/-- A391502: a(n) = Kronecker symbol (33/n).

Offset 0, canonical program `A391502.P16587956580403437799`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A011582, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391502 (n : ℕ) : ℤ :=
  A391502.P16587956580403437799.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A011582, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391502.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391552.P11241042363183505534

`A143495(n+3)*A233543(n)`
-/

namespace A391552.P11241042363183505534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143495 (n + 3) * A233543 n

end

end A391552.P11241042363183505534

noncomputable section

/-- A391552: Triangle read by rows: T(n,k) = Sum_{j=0..k} (-1)^(k-j) * binomial(k,j) * (3+j)^n.

Offset 0, canonical program `A391552.P11241042363183505534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2184 terms. -/
def A391552 (n : ℕ) : ℤ :=
  A391552.P11241042363183505534.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2184 terms. -/
def A391552.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391614.P9333302647466192623

`A356874(n)%2`
-/

namespace A391614.P9333302647466192623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356874 n) 2

end

end A391614.P9333302647466192623

noncomputable section

/-- A391614: a(4n) = a(2n+a(n)), a(4n+2) = a(2n+1-a(n)) and a(2n+1) = 1-a(2n), with a(0) = 0.

Offset 0, canonical program `A391614.P9333302647466192623`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391614 (n : ℕ) : ℤ :=
  A391614.P9333302647466192623.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391637.P2302561987821921609

`a(n-1)+A094345(n)` with `a(0)=0`
-/

namespace A391637.P2302561987821921609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A094345 n

end

end A391637.P2302561987821921609

noncomputable section

/-- A391637: Partial sums of A094345.

Offset 0, canonical program `A391637.P2302561987821921609`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094345, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391637 (n : ℕ) : ℤ :=
  A391637.P2302561987821921609.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094345, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391637.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391682.P12413487597952990575

`∑[A079289(n)]`
-/

namespace A391682.P12413487597952990575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391682.P12413487597952990575

noncomputable section

/-- A391682: Number of integer compositions of n that are the first sums of more than one nonnegative sequence.

Offset 1, canonical program `A391682.P12413487597952990575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A391682 (n : ℕ) : ℤ :=
  A391682.P12413487597952990575.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. -/
def A391682.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391683.P9562436176935939481

`A063759(n)-A164001(n+1)`
-/

namespace A391683.P9562436176935939481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063759 n - A164001 (n + 1)

end

end A391683.P9562436176935939481

noncomputable section

/-- A391683: Number of integer compositions of n that are the first sums of some composition.

Offset 1, canonical program `A391683.P9562436176935939481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. -/
def A391683 (n : ℕ) : ℤ :=
  A391683.P9562436176935939481.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. -/
def A391683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391826.P2783923816481553111

`1+A180762(n+1)+A230813(n+1)/2`
-/

namespace A391826.P2783923816481553111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A180762 (n + 1) : ℚ) + (A230813 (n + 1) : ℚ) / 2

end

end A391826.P2783923816481553111

noncomputable section

/-- A391826: Number of partitions of the vertices of the n-ladder graph into dominating sets.

Offset 1, canonical program `A391826.P2783923816481553111`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A180762, A230813, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391826 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A391826.P2783923816481553111.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A180762, A230813, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391826.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391962.P2553170299100446233

`A228577(Δ[n²])`
-/

namespace A391962.P2553170299100446233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228577 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A391962.P2553170299100446233

noncomputable section

/-- A391962: a(n) = Sum_{k=0..n} (k+1) * binomial(k,2*(n-k)).

Offset 0, canonical program `A391962.P2553170299100446233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. -/
def A391962 (n : ℕ) : ℤ :=
  A391962.P2553170299100446233.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 401 terms. -/
def A391962.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392116.P7884063924206955522

`Δ[floor(A000040(n+1)/5)]`
-/

namespace A392116.P7884063924206955522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A392116.P7884063924206955522

noncomputable section

/-- A392116: a(n) = f(n+1) - f(n), where f(n) = floor(prime(n)/5).

Offset 1, canonical program `A392116.P7884063924206955522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A392116 (n : ℕ) : ℤ :=
  A392116.P7884063924206955522.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A392116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392221.P1263781422373612323

`A070939(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A392221.P1263781422373612323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A070939 n + a (n - 2)

end

end A392221.P1263781422373612323

noncomputable section

/-- A392221: Sum of depths of leaves in a complete binary tree with n nodes.

Offset 1, canonical program `A392221.P1263781422373612323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392221 (n : ℕ) : ℤ :=
  A392221.P1263781422373612323.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392275.P6230307979190573459

`ceil(A051903(n+1)/3)`
-/

namespace A392275.P6230307979190573459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A051903 (n + 1) : ℚ) / 3⌉

end

end A392275.P6230307979190573459

noncomputable section

/-- A392275: The maximum exponent in the prime factorization of the smallest number whose cube is divisible by n.

Offset 1, canonical program `A392275.P6230307979190573459`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392275 (n : ℕ) : ℤ :=
  A392275.P6230307979190573459.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392275.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392276.P5223539805736873685

`floor(A051903(n+1)/2)`
-/

namespace A392276.P5223539805736873685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051903 (n + 1) : ℚ) / 2⌋

end

end A392276.P5223539805736873685

noncomputable section

/-- A392276: The maximum exponent in the prime factorization of the square root of the largest square dividing n.

Offset 1, canonical program `A392276.P5223539805736873685`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392276 (n : ℕ) : ℤ :=
  A392276.P5223539805736873685.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392276.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392281.P15155535942076632488

`A029837(A051903(n+2))`
-/

namespace A392281.P15155535942076632488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A051903 (n + 2)).toNat

end

end A392281.P15155535942076632488

noncomputable section

/-- A392281: a(n) = log_2(A392280(n)).

Offset 2, canonical program `A392281.P15155535942076632488`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392281 (n : ℕ) : ℤ :=
  A392281.P15155535942076632488.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392281.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392356.P11729082620594076471

`A017877(5*n)`
-/

namespace A392356.P11729082620594076471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017877 (5 * n)

end

end A392356.P11729082620594076471

noncomputable section

/-- A392356: a(n) = Sum_{k=0..floor(5*n/9)} binomial(k,5*n-9*k).

Offset 0, canonical program `A392356.P11729082620594076471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 637 terms. -/
def A392356 (n : ℕ) : ℤ :=
  A392356.P11729082620594076471.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 637 terms. -/
def A392356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392403.P11128076169223223160

`A370722(2*n)`
-/

namespace A392403.P11128076169223223160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370722 (2 * n)

end

end A392403.P11128076169223223160

noncomputable section

/-- A392403: a(n) = Sum_{k=0..floor(2*n/7)} binomial(2*n-4*k,3*k).

Offset 0, canonical program `A392403.P11128076169223223160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. -/
def A392403 (n : ℕ) : ℤ :=
  A392403.P11128076169223223160.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 263 terms. -/
def A392403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392433.P7928443320864027511

`A369815(6*n)`
-/

namespace A392433.P7928443320864027511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369815 (6 * n)

end

end A392433.P7928443320864027511

noncomputable section

/-- A392433: a(n) = Sum_{k=0..floor(n/2)} binomial(3*k,2*n-4*k).

Offset 0, canonical program `A392433.P7928443320864027511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. -/
def A392433 (n : ℕ) : ℤ :=
  A392433.P7928443320864027511.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. -/
def A392433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392781.P4887849297626016326

`A004526(∑{p}[n+1, #*val(n+1, #)]+1-∑{e}[n+1, #])`
-/

namespace A392781.P4887849297626016326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p + 1 - ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A392781.P4887849297626016326

noncomputable section

/-- A392781: Length of the longest reduced word in the cyclic group C_n.

Offset 1, canonical program `A392781.P4887849297626016326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392781 (n : ℕ) : ℤ :=
  A392781.P4887849297626016326.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393139.P6748471815250712617

`A005773(n+2)-A001405(n+1)`
-/

namespace A393139.P6748471815250712617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 2) - A001405 (n + 1)

end

end A393139.P6748471815250712617

noncomputable section

/-- A393139: Row sums of A393138.

Offset 0, canonical program `A393139.P6748471815250712617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A393139 (n : ℕ) : ℤ :=
  A393139.P6748471815250712617.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A393139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393443.P16093483747421340757

`A162609(n+1)+A049780(n)`
-/

namespace A393443.P16093483747421340757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162609 (n + 1) + A049780 n

end

end A393443.P16093483747421340757

noncomputable section

/-- A393443: Array read by downward antidiagonals: T(n,k) (n>=0, k>=0) = 1+k+2*n*k+k*(k-1)/2+n*(n-1).

Offset 0, canonical program `A393443.P16093483747421340757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393443 (n : ℕ) : ℤ :=
  A393443.P16093483747421340757.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393443.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393554.P14953028031373062451

`A029252(2*n)`
-/

namespace A393554.P14953028031373062451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029252 (2 * n)

end

end A393554.P14953028031373062451

noncomputable section

/-- A393554: Number of ways, up to rotations and reflections, to distribute n guards on the corners and walls of an equilateral triangle castle so that each wall has an equal number of guards.

Offset 0, canonical program `A393554.P14953028031373062451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A393554 (n : ℕ) : ℤ :=
  A393554.P14953028031373062451.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A393554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393907.P7757244301669931271

`floor((A092055(n)+1)/2)`
-/

namespace A393907.P7757244301669931271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A092055 n + 1 : ℚ) / 2⌋

end

end A393907.P7757244301669931271

noncomputable section

/-- A393907: Number of planar embedding isomorphism classes of the n-Hanoi graph.

Offset 1, canonical program `A393907.P7757244301669931271`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A393907 (n : ℕ) : ℤ :=
  A393907.P7757244301669931271.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A393907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393945.P2240198450366095358

`A104767(n)+A011782(n)`
-/

namespace A393945.P2240198450366095358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104767 n + A011782 n

end

end A393945.P2240198450366095358

noncomputable section

/-- A393945: Number of binary words of length n with an even number of occurrences of subword 101.

Offset 0, canonical program `A393945.P2240198450366095358`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A393945 (n : ℕ) : ℤ :=
  A393945.P2240198450366095358.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A393945.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394240.P15634924062511509081

`A241199(n+1)+A194073(n+1)`
-/

namespace A394240.P15634924062511509081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241199 (n + 1) + A194073 (n + 1)

end

end A394240.P15634924062511509081

noncomputable section

/-- A394240: Number of regions formed by extending the faces of a regular n-gonal pyramid.

Offset 3, canonical program `A394240.P15634924062511509081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394240 (n : ℕ) : ℤ :=
  A394240.P15634924062511509081.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394240.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394246.P12221301581339972486

`ceil(A397107(n)/3)`
-/

namespace A394246.P12221301581339972486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A397107 n : ℚ) / 3⌉

end

end A394246.P12221301581339972486

noncomputable section

/-- A394246: Upper (1/3,2/3) midsequence of (floor[n/2]^2) and (ceiling[n/2]^2); see Comments.

Offset 0, canonical program `A394246.P12221301581339972486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394246 (n : ℕ) : ℤ :=
  A394246.P12221301581339972486.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394246.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395101.P16581405830071828920

`A016777(n)%A182770(n+1)`
-/

namespace A395101.P16581405830071828920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016777 n) (A182770 (n + 1))

end

end A395101.P16581405830071828920

noncomputable section

/-- A395101: Indices k such that A080764(k) = 1.

Offset 1, canonical program `A395101.P16581405830071828920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395101 (n : ℕ) : ℤ :=
  A395101.P16581405830071828920.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395108.P9114937873138834343

`2*A135094(n)+1`
-/

namespace A395108.P9114937873138834343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135094 n + 1

end

end A395108.P9114937873138834343

noncomputable section

/-- A395108: Number of points covered by a minimal level n H-Tree on a square lattice.

Offset 0, canonical program `A395108.P9114937873138834343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A395108 (n : ℕ) : ℤ :=
  A395108.P9114937873138834343.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A395108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395282.P4869537209626327474

`∑{d}[n+1, A008683(#)*A048575((n+1)/#-1)]`
-/

namespace A395282.P4869537209626327474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A048575 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A395282.P4869537209626327474

noncomputable section

/-- A395282: a(n) = Sum_{d|n} mu(d)*Fibonacci(2*(n/d)+1).

Offset 1, canonical program `A395282.P4869537209626327474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A395282 (n : ℕ) : ℤ :=
  A395282.P4869537209626327474.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. -/
def A395282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395535.P38086071388283955

`A003188(A059029(n))`
-/

namespace A395535.P38086071388283955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A059029 n).toNat

end

end A395535.P38086071388283955

noncomputable section

/-- A395535: a(n) = (n XOR n*2+1) for odd n, (n XOR n/2) for even n.

Offset 0, canonical program `A395535.P38086071388283955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395535 (n : ℕ) : ℤ :=
  A395535.P38086071388283955.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395535.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A395767.P6540470511524819013

`A394572(n)+2^n`
-/

namespace A395767.P6540470511524819013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394572 n + (2 ^ n : ℤ)

end

end A395767.P6540470511524819013

noncomputable section

/-- A395767: Minimal value of p(1) + Sum_{i=2...n} p(i-1)*p(i), as p ranges over all permutations of powers of 2 {1,2,4,...,2^(n-1)}.

Offset 1, canonical program `A395767.P6540470511524819013`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A395767 (n : ℕ) : ℤ :=
  A395767.P6540470511524819013.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A395767.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395770.P6054457820381532371

`A394572(n)+A131577(n)`
-/

namespace A395770.P6054457820381532371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394572 n + A131577 n

end

end A395770.P6054457820381532371

noncomputable section

/-- A395770: Minimal value of Sum_{i=1..n-1} p(i)*p(i+1), as p ranges over all permutations of powers of 2 {1,2,4,...,2^(n-1)}.

Offset 1, canonical program `A395770.P6054457820381532371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A395770 (n : ℕ) : ℤ :=
  A395770.P6054457820381532371.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A395770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396583.P10507654169071020260

`C(row(n), col(n))*A396201(col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396583.P10507654169071020260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) * A396201 (SequenceMachineLib.triCol n)

end

end A396583.P10507654169071020260

noncomputable section

/-- A396583: Triangle read by rows: T(n, k) = binomial(n, k) * A396201(k).

Offset 0, canonical program `A396583.P10507654169071020260`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A396201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396583 (n : ℕ) : ℤ :=
  A396583.P10507654169071020260.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A396201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396583.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A396637.P18262143251193077548

`A068293(n+1)-A168193(n)`
-/

namespace A396637.P18262143251193077548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068293 (n + 1) - A168193 n

end

end A396637.P18262143251193077548

noncomputable section

/-- A396637: Number of elements of geodesic length n in the braid group B_3.

Offset 0, canonical program `A396637.P18262143251193077548`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A396637 (n : ℕ) : ℤ :=
  A396637.P18262143251193077548.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. -/
def A396637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396776.P18268578886540690482

`2*n+3-A073254(n)`
-/

namespace A396776.P18268578886540690482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A073254 n

end

end A396776.P18268578886540690482

noncomputable section

/-- A396776: Square array read by upwards antidiagonals: T(p,q) is the number cells required to completely surround a single cell of the regular tiling with Schläfli symbol {p,q}.

Offset 3, canonical program `A396776.P18268578886540690482`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396776 (n : ℕ) : ℤ :=
  A396776.P18268578886540690482.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396811.P3366068091821481228

`A144065(n)-A265430(n)`
-/

namespace A396811.P3366068091821481228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144065 n - A265430 n

end

end A396811.P3366068091821481228

noncomputable section

/-- A396811: Lower (1,1/2) midsequence of (floor[n/2]^2) and (ceiling[n/2]^2); see Comments.

Offset 0, canonical program `A396811.P3366068091821481228`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396811 (n : ℕ) : ℤ :=
  A396811.P3366068091821481228.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396811.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397085.P2550365972256081373

`A062157(A053186(n))`
-/

namespace A397085.P2550365972256081373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A053186 n).toNat

end

end A397085.P2550365972256081373

noncomputable section

/-- A397085: a(n) = (-1)^(n-floor(sqrt(n))^2-1) if n is not a perfect square and 0 otherwise.

Offset 0, canonical program `A397085.P2550365972256081373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397085 (n : ℕ) : ℤ :=
  A397085.P2550365972256081373.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397111.P2464221293818646851

`∩[A184792(n+1), A184794(n+1)]`
-/

namespace A397111.P2464221293818646851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184794 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397111.P2464221293818646851

noncomputable section

/-- A397111: Numbers k such that A000201(k) and A001950(k) are both prime.

Offset 1, canonical program `A397111.P2464221293818646851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 895 terms. -/
def A397111 (n : ℕ) : ℤ :=
  (A397111.P2464221293818646851.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 895 terms. -/
def A397111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397424.P11634624968641727163

`A074854(n+1)%(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397424.P11634624968641727163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074854 (n + 1)) (n + 1 : ℤ)

end

end A397424.P11634624968641727163

noncomputable section

/-- A397424: a(n) = A074854(n) mod n.

Offset 1, canonical program `A397424.P11634624968641727163`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074854, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397424 (n : ℕ) : ℤ :=
  A397424.P11634624968641727163.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074854, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397424.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A397518.P17952571297489702475

`A318937(n)%7`
-/

namespace A397518.P17952571297489702475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318937 n) 7

end

end A397518.P17952571297489702475

noncomputable section

/-- A397518: a(n) is the number of integer solutions of x^2 + 7*y^2 = 2*n + 1.

Offset 0, canonical program `A397518.P17952571297489702475`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A397518 (n : ℕ) : ℤ :=
  A397518.P17952571297489702475.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A397518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397616.P364916226218916289

`A000040(comp[floor(n*sqrt(5))])`
-/

namespace A397616.P364916226218916289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A397616.P364916226218916289

noncomputable section

/-- A397616: a(n) = prime(floor(n*r)), where r = (5 + sqrt(5))/4.

Offset 1, canonical program `A397616.P364916226218916289`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5528 terms. -/
def A397616 (n : ℕ) : ℤ :=
  A397616.P364916226218916289.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5528 terms. -/
def A397616.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397622.P12107232560436362639

`A000040(A005653(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397622.P12107232560436362639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A005653 (n + 1)).toNat

end

end A397622.P12107232560436362639

noncomputable section

/-- A397622: a(n) = prime(A005653(n)).

Offset 1, canonical program `A397622.P12107232560436362639`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005653, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397622 (n : ℕ) : ℤ :=
  A397622.P12107232560436362639.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005653, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397622.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A398470.P15258585584443073451

`A036486(A000982(n+1))-A036486(n+1)`
-/

namespace A398470.P15258585584443073451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036486 (A000982 (n + 1)).toNat - A036486 (n + 1)

end

end A398470.P15258585584443073451

noncomputable section

/-- A398470: Number of increasing 3-term arithmetic progressions in an n^3 cube.

Offset 1, canonical program `A398470.P15258585584443073451`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A398470 (n : ℕ) : ℤ :=
  A398470.P15258585584443073451.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A398470.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398709.P7989658470484696830

`A159289(n)-1`
-/

namespace A398709.P7989658470484696830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159289 n - 1

end

end A398709.P7989658470484696830

noncomputable section

/-- A398709: a(n) = floor(((5 + sqrt(17))/2)^n).

Offset 1, canonical program `A398709.P7989658470484696830`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A159289, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A398709 (n : ℕ) : ℤ :=
  A398709.P7989658470484696830.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A159289, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A398709.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395829.P11120994273887423255

`8^n-A395831(n)`
-/

namespace A395829.P11120994273887423255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) - A395831 n

end

end A395829.P11120994273887423255

noncomputable section

/-- A395829: Number of octal strings of length n that contain a specific string xx (where x is a single digit).

Offset 0, canonical program `A395829.P11120994273887423255`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395831, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395829 (n : ℕ) : ℤ :=
  A395829.P11120994273887423255.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A395831, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395829.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369720.P12052647085879140276

`A000203(A356193(n+1))`
-/

namespace A369720.P12052647085879140276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A356193 (n + 1)).toNat

end

end A369720.P12052647085879140276

noncomputable section

/-- A369720: The sum of divisors of the smallest cubefull number that is a multiple of n.

Offset 1, canonical program `A369720.P12052647085879140276`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356193, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369720 (n : ℕ) : ℤ :=
  A369720.P12052647085879140276.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356193, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369720.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374356.P5036985431895007089

`n-A374355(n)`
-/

namespace A374356.P5036985431895007089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A374355 n

end

end A374356.P5036985431895007089

noncomputable section

/-- A374356: a(n) is the greatest fibbinary number f <= n such that n - f is also a fibbinary number whose binary expansion has no common 1's with that of f (where fibbinary numbers correspond to A003714).

Offset 0, canonical program `A374356.P5036985431895007089`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374355, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374356 (n : ℕ) : ℤ :=
  A374356.P5036985431895007089.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374355, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374356.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374362.P13095679311797135054

`A005836(1+A289814(n))`
-/

namespace A374362.P13095679311797135054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (1 + A289814 n).toNat

end

end A374362.P13095679311797135054

noncomputable section

/-- A374362: a(n) is the least term t of A005836 such that n - t also belongs to A005836.

Offset 0, canonical program `A374362.P13095679311797135054`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289814, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374362 (n : ℕ) : ℤ :=
  A374362.P13095679311797135054.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A289814, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374362.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380454.P17620072490413482272

`1-(A359471(n+1)+A359472(n+1))`
-/

namespace A380454.P17620072490413482272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A359471 (n + 1) + A359472 (n + 1))

end

end A380454.P17620072490413482272

noncomputable section

/-- A380454: a(n) = 1 if the product of exponents in its prime factorization is greater than 3, otherwise 0.

Offset 1, canonical program `A380454.P17620072490413482272`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359471, A359472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380454 (n : ℕ) : ℤ :=
  A380454.P17620072490413482272.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359471, A359472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380454.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A381488.P698145488236481017

`filter[A000326(n+1), A294934(#)]`
-/

namespace A381488.P698145488236481017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A381488.P698145488236481017

noncomputable section

/-- A381488: Pentagonal numbers that are deficient.

Offset 1, canonical program `A381488.P698145488236481017`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A381488 (n : ℕ) : ℤ :=
  A381488.P698145488236481017.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A381488.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381647.P11576463338051621201

`filter[A005448(n+1), A294934(#)]`
-/

namespace A381647.P11576463338051621201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A381647.P11576463338051621201

noncomputable section

/-- A381647: Centered triangular numbers that are deficient.

Offset 1, canonical program `A381647.P11576463338051621201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. -/
def A381647 (n : ℕ) : ℤ :=
  A381647.P11576463338051621201.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. -/
def A381647.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383025.P585027559849338286

`filter[A005891(n), A294934(#)]`
-/

namespace A383025.P585027559849338286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A383025.P585027559849338286

noncomputable section

/-- A383025: Centered pentagonal numbers that are deficient.

Offset 1, canonical program `A383025.P585027559849338286`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A383025 (n : ℕ) : ℤ :=
  A383025.P585027559849338286.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A383025.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385298.P1717443801627157010

`∪[A010785(n), A097256(n)]`
-/

namespace A385298.P1717443801627157010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097256 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A385298.P1717443801627157010

noncomputable section

/-- A385298: Numbers whose digits all belong to the same residue class mod 9.

Offset 1, canonical program `A385298.P1717443801627157010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385298 (n : ℕ) : ℤ :=
  (A385298.P1717443801627157010.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385298.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396237.P5450698312826948600

`A169810(n)-A396236(n)`
-/

namespace A396237.P5450698312826948600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169810 n - A396236 n

end

end A396237.P5450698312826948600

noncomputable section

/-- A396237: a(n) = n AND NOT n^2.

Offset 0, canonical program `A396237.P5450698312826948600`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A396236, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396237 (n : ℕ) : ℤ :=
  A396237.P5450698312826948600.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A396236, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396237.provenance : SequenceMachineLib.Provenance := .conditional

