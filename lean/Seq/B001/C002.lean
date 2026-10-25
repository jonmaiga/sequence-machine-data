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

/-! ## A057977.P14807751039632147938

`gcd(A001405(n+1), A001405(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A057977.P14807751039632147938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001405 (n + 1)) (A001405 n)

end

end A057977.P14807751039632147938

noncomputable section

/-- A057977: GCD of consecutive central binomial coefficients: a(n) = gcd(A001405(n+1), A001405(n)).

Offset 0, canonical program `A057977.P14807751039632147938`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A001405(n+1), A001405(n))` (program `A057977.P14807751039632147938`, by `A057977.P14807751039632147938.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A057977 (n : ℕ) : ℤ :=
  (A057977.P14807751039632147938.a n : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A001405(n+1), A001405(n))` (program `A057977.P14807751039632147938`, by `A057977.P14807751039632147938.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A057977.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A065087.P1873219144939937365

`A000166(n)*C(n+1, 2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065087.P1873219144939937365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n * (Nat.choose (n + 1) 2 : ℤ)

end

end A065087.P1873219144939937365

noncomputable section

/-- A065087: a(n) = A000166(n)*binomial(n+1,2).

Offset 0, canonical program `A065087.P1873219144939937365`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000166(n)*C(n+1, 2)` (program `A065087.P1873219144939937365`, by `A065087.P1873219144939937365.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A065087 (n : ℕ) : ℤ :=
  A065087.P1873219144939937365.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000166(n)*C(n+1, 2)` (program `A065087.P1873219144939937365`, by `A065087.P1873219144939937365.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A065087.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A065088.P18194710171340571273

`A000166(n)*C(n, 2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A065088.P18194710171340571273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n * (Nat.choose n 2 : ℤ)

end

end A065088.P18194710171340571273

noncomputable section

/-- A065088: a(n) = A000166(n)*binomial(n,2).

Offset 0, canonical program `A065088.P18194710171340571273`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000166(n)*C(n, 2)` (program `A065088.P18194710171340571273`, by `A065088.P18194710171340571273.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A065088 (n : ℕ) : ℤ :=
  A065088.P18194710171340571273.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000166(n)*C(n, 2)` (program `A065088.P18194710171340571273`, by `A065088.P18194710171340571273.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A065088.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A066033.P8853775670846094508

`a(n-1)+A000040(n+1)*(-1)^(n+1)` with `a(0)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066033.P8853775670846094508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + A000040 (n + 1) * (-1) ^ (n + 1)

end

end A066033.P8853775670846094508

noncomputable section

/-- A066033: Alternating sum of primes: a(1) = A000040(1) = 2 and a(n) = a(n-1) + A000040(n)*(-1)^n for n > 1.

Offset 1, canonical program `A066033.P8853775670846094508`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+A000040(n+1)*(-1)^(n+1)` (program `A066033.P8853775670846094508`, by `A066033.P8853775670846094508.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A066033 (n : ℕ) : ℤ :=
  A066033.P8853775670846094508.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+A000040(n+1)*(-1)^(n+1)` (program `A066033.P8853775670846094508`, by `A066033.P8853775670846094508.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A066033.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A071232.P17086031509511629369

`A000217(n^3)`
-/

namespace A071232.P17086031509511629369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n ^ 3)

end

end A071232.P17086031509511629369

noncomputable section

/-- A071232: a(n) = (n^6 + n^3)/2.

Offset 0, canonical program `A071232.P17086031509511629369`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^6+n^3)/2` (program `A071232.P16499632068895716457`, by `A071232.P16499632068895716457.correct`). Lean does not check the parsing of the name. -/
def A071232 (n : ℕ) : ℤ :=
  A071232.P17086031509511629369.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^6+n^3)/2` (program `A071232.P16499632068895716457`, by `A071232.P16499632068895716457.correct`). Lean does not check the parsing of the name. -/
def A071232.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A071579.P14432582664150717918

`2*a(n-1)*A002812(n-1)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A071579.P14432582664150717918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) * A002812 (n - 1)

end

end A071579.P14432582664150717918

noncomputable section

/-- A071579: a(n) = 2*a(n-1)*A002812(n-1), starting a(0)=1.

Offset 0, canonical program `A071579.P14432582664150717918`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)*A002812(n-1)` (program `A071579.P14432582664150717918`, by `A071579.P14432582664150717918.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A071579 (n : ℕ) : ℤ :=
  A071579.P14432582664150717918.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)*A002812(n-1)` (program `A071579.P14432582664150717918`, by `A071579.P14432582664150717918.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A071579.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A072231.P5944342534428297672

`floor((n+1)²/A005185(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A072231.P5944342534428297672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 : ℚ) / (A005185 (n + 1) : ℚ)⌋

end

end A072231.P5944342534428297672

noncomputable section

/-- A072231: a(n) = floor(n^2/A005185(n-1)), where A005185 is Hofstadter's Q-sequence.

Offset 1, canonical program `A072231.P5944342534428297672`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)²/A005185(n+1))` (program `A072231.P5944342534428297672`, by `A072231.P5944342534428297672.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A072231 (n : ℕ) : ℤ :=
  A072231.P5944342534428297672.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)²/A005185(n+1))` (program `A072231.P5944342534428297672`, by `A072231.P5944342534428297672.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A072231.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A073591.P4345016296114240383

`A000522(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A073591.P4345016296114240383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 n + 1

end

end A073591.P4345016296114240383

noncomputable section

/-- A073591: a(n) = A000522(n) + 1.

Offset 0, canonical program `A073591.P4345016296114240383`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000522(n)+1` (program `A073591.P4345016296114240383`, by `A073591.P4345016296114240383.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A073591 (n : ℕ) : ℤ :=
  A073591.P4345016296114240383.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000522(n)+1` (program `A073591.P4345016296114240383`, by `A073591.P4345016296114240383.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A073591.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A073702.P17056224288813557959

`A073145(n)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A073702.P17056224288813557959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073145 n ^ 2

end

end A073702.P17056224288813557959

noncomputable section

/-- A073702: a(n) = A073145(n)^2.

Offset 0, canonical program `A073702.P17056224288813557959`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A073145(n)²` (program `A073702.P17056224288813557959`, by `A073702.P17056224288813557959.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A073702 (n : ℕ) : ℤ :=
  A073702.P17056224288813557959.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A073145(n)²` (program `A073702.P17056224288813557959`, by `A073702.P17056224288813557959.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A073702.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A075269.P5026483521809880558

`A000032(n)*A075193(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A075269.P5026483521809880558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A075193 n

end

end A075269.P5026483521809880558

noncomputable section

/-- A075269: Product of Lucas numbers and inverted Lucas numbers: a(n)=A000032(n)*A075193(n).

Offset 0, canonical program `A075269.P5026483521809880558`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000032(n)*A075193(n)` (program `A075269.P5026483521809880558`, by `A075269.P5026483521809880558.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A075269 (n : ℕ) : ℤ :=
  A075269.P5026483521809880558.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000032(n)*A075193(n)` (program `A075269.P5026483521809880558`, by `A075269.P5026483521809880558.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A075269.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A077043.P527302642051147366

`n²-A002620(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A077043.P527302642051147366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A002620 n

end

end A077043.P527302642051147366

noncomputable section

/-- A077043: "Three-quarter squares": a(n) = n^2 - A002620(n).

Offset 0, canonical program `A077043.P527302642051147366`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²-A002620(n)` (program `A077043.P527302642051147366`, by `A077043.P527302642051147366.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A077043 (n : ℕ) : ℤ :=
  A077043.P527302642051147366.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²-A002620(n)` (program `A077043.P527302642051147366`, by `A077043.P527302642051147366.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A077043.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A080677.P3667813120543566006

`n+2-A004001(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A080677.P3667813120543566006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A004001 (n + 1)

end

end A080677.P3667813120543566006

noncomputable section

/-- A080677: a(n) = n + 1 - A004001(n).

Offset 1, canonical program `A080677.P3667813120543566006`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+2-A004001(n+1)` (program `A080677.P3667813120543566006`, by `A080677.P3667813120543566006.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A080677 (n : ℕ) : ℤ :=
  A080677.P3667813120543566006.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+2-A004001(n+1)` (program `A080677.P3667813120543566006`, by `A080677.P3667813120543566006.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A080677.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A081660.P3609957473961011549

`n+A001045(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081660.P3609957473961011549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A001045 (n + 1)

end

end A081660.P3609957473961011549

noncomputable section

/-- A081660: n+A001045(n+1).

Offset 0, canonical program `A081660.P3609957473961011549`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+A001045(n+1)` (program `A081660.P3609957473961011549`, by `A081660.P3609957473961011549.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A081660 (n : ℕ) : ℤ :=
  A081660.P3609957473961011549.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+A001045(n+1)` (program `A081660.P3609957473961011549`, by `A081660.P3609957473961011549.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A081660.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A082094.P9458574918407849658

`A000040(a(n-1))+A000720(a(n-2))` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082094.P9458574918407849658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000040 (a (n - 1)).toNat + A000720 (a (n - 2)).toNat

end

end A082094.P9458574918407849658

noncomputable section

/-- A082094: A 2nd-order recursion: a(1)=a(2)=1; a(n) = prime(a(n-1)) + primepi(a(n-2)) = A000040(a(n-1)) + A000720(a(n-2)).

Offset 1, canonical program `A082094.P9458574918407849658`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(a(n-1))+A000720(a(n-2))` (program `A082094.P9458574918407849658`, by `A082094.P9458574918407849658.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A082094 (n : ℕ) : ℤ :=
  A082094.P9458574918407849658.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(a(n-1))+A000720(a(n-2))` (program `A082094.P9458574918407849658`, by `A082094.P9458574918407849658.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A082094.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A082095.P9373068488610990300

`A000040(a(n-2))+A000720(a(n-1))` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082095.P9373068488610990300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000040 (a (n - 2)).toNat + A000720 (a (n - 1)).toNat

end

end A082095.P9373068488610990300

noncomputable section

/-- A082095: A 2nd order recursion: a(1)=a(2)=1, a(n) = prime(a(n-2)) + pi(a(n-1)) = A000040(a(n-2)) + A000720(a(n-1)).

Offset 1, canonical program `A082095.P9373068488610990300`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(a(n-2))+A000720(a(n-1))` (program `A082095.P9373068488610990300`, by `A082095.P9373068488610990300.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A082095 (n : ℕ) : ℤ :=
  A082095.P9373068488610990300.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(a(n-2))+A000720(a(n-1))` (program `A082095.P9373068488610990300`, by `A082095.P9373068488610990300.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A082095.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A082096.P9035175122493942486

`A000040(a(n-2)+a(n-1))` with `a(0)=1, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082096.P9035175122493942486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000040 (a (n - 2) + a (n - 1)).toNat

end

end A082096.P9035175122493942486

noncomputable section

/-- A082096: A 2nd order recursion: a(1)=a(2)=1; a(n) = prime(a(n-2)+a(n-1)) = A000040(a(n-2)+a(n-1)).

Offset 1, canonical program `A082096.P9035175122493942486`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(a(n-2)+a(n-1))` (program `A082096.P9035175122493942486`, by `A082096.P9035175122493942486.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A082096 (n : ℕ) : ℤ :=
  A082096.P9035175122493942486.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(a(n-2)+a(n-1))` (program `A082096.P9035175122493942486`, by `A082096.P9035175122493942486.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A082096.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A082911.P1325522171464418407

`A000040(n+A000720(n+1)+1)-A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082911.P1325522171464418407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((n : ℤ) + A000720 (n + 1) + 1).toNat - A000040 (n + 1)

end

end A082911.P1325522171464418407

noncomputable section

/-- A082911: a(n) = prime(n+pi(n)) - prime(n) = A000040(n+A000720(n)) - A000040(n).

Offset 1, canonical program `A082911.P1325522171464418407`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1+A000720(n+1))-A000040(n+1)` (program `A082911.P7396302864402239672`, by `A082911.P7396302864402239672.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A082911 (n : ℕ) : ℤ :=
  A082911.P1325522171464418407.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1+A000720(n+1))-A000040(n+1)` (program `A082911.P7396302864402239672`, by `A082911.P7396302864402239672.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A082911.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A083198.P17915299577347371668

`A061419(n+5)-A002379(n+5)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083198.P17915299577347371668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061419 (n + 5) - A002379 (n + 5)

end

end A083198.P17915299577347371668

noncomputable section

/-- A083198: a(n) = A061419(n) - A002379(n).

Offset 5, canonical program `A083198.P17915299577347371668`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A061419(n+5)-A002379(n+5)` (program `A083198.P17915299577347371668`, by `A083198.P17915299577347371668.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A083198 (n : ℕ) : ℤ :=
  A083198.P17915299577347371668.a (n - 5)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A061419(n+5)-A002379(n+5)` (program `A083198.P17915299577347371668`, by `A083198.P17915299577347371668.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A083198.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A083694.P8538574103418569436

`2*A002532(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083694.P8538574103418569436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002532 n

end

end A083694.P8538574103418569436

noncomputable section

/-- A083694: a(n) = 2*A002532(n).

Offset 0, canonical program `A083694.P8538574103418569436`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A002532(n)` (program `A083694.P8538574103418569436`, by `A083694.P8538574103418569436.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A083694 (n : ℕ) : ℤ :=
  A083694.P8538574103418569436.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A002532(n)` (program `A083694.P8538574103418569436`, by `A083694.P8538574103418569436.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A083694.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A084421.P15852507782448595974

`A005187(A000040(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A084421.P15852507782448595974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A000040 (n + 1)).toNat

end

end A084421.P15852507782448595974

noncomputable section

/-- A084421: a(n) = A005187(A000040(n)).

Offset 1, canonical program `A084421.P15852507782448595974`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A005187(A000040(n+1))` (program `A084421.P15852507782448595974`, by `A084421.P15852507782448595974.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A084421 (n : ℕ) : ℤ :=
  A084421.P15852507782448595974.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A005187(A000040(n+1))` (program `A084421.P15852507782448595974`, by `A084421.P15852507782448595974.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A084421.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A085744.P6091616498061970500

`A000217(n^3)-n^3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A085744.P6091616498061970500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n ^ 3) - (n ^ 3 : ℤ)

end

end A085744.P6091616498061970500

noncomputable section

/-- A085744: a(n) = A000217(n^3) - n^3.

Offset 0, canonical program `A085744.P6091616498061970500`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000217(n^3)-n^3` (program `A085744.P6091616498061970500`, by `A085744.P6091616498061970500.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A085744 (n : ℕ) : ℤ :=
  A085744.P6091616498061970500.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000217(n^3)-n^3` (program `A085744.P6091616498061970500`, by `A085744.P6091616498061970500.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A085744.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A086602.P17561333100341916164

`A000217(A000217(n))-n²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A086602.P17561333100341916164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000217 n).toNat - (n ^ 2 : ℤ)

end

end A086602.P17561333100341916164

noncomputable section

/-- A086602: a(n) = A000217(A000217(n))-n^2.

Offset 0, canonical program `A086602.P17561333100341916164`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000217(A000217(n))-n²` (program `A086602.P17561333100341916164`, by `A086602.P17561333100341916164.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A086602 (n : ℕ) : ℤ :=
  A086602.P17561333100341916164.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000217(A000217(n))-n²` (program `A086602.P17561333100341916164`, by `A086602.P17561333100341916164.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A086602.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A086847.P2184080056741312262

`gcd(A001608(n+1), n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A086847.P2184080056741312262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001608 (n + 1)) (n + 1 : ℤ)

end

end A086847.P2184080056741312262

noncomputable section

/-- A086847: a(n) = gcd(A001608(n), n), where A001608 = Perrin sequence.

Offset 1, canonical program `A086847.P2184080056741312262`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A001608(n+1), n+1)` (program `A086847.P2184080056741312262`, by `A086847.P2184080056741312262.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A086847 (n : ℕ) : ℤ :=
  (A086847.P2184080056741312262.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A001608(n+1), n+1)` (program `A086847.P2184080056741312262`, by `A086847.P2184080056741312262.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A086847.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A057599.P2314703557819511826

`A034841(n)/A000142(n)`
-/

namespace A057599.P2314703557819511826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034841 n : ℚ) / (A000142 n : ℚ)

end

end A057599.P2314703557819511826

noncomputable section

/-- A057599: a(n) = (n^2)!/(n!)^(n+1); number of ways of dividing n^2 labeled items into n unlabeled boxes of n items each.

Offset 0, canonical program `A057599.P2314703557819511826`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057599 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A057599.P2314703557819511826.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057599.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057813.P13879157937402332304

`2*A050533(n)+1`
-/

namespace A057813.P13879157937402332304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050533 n + 1

end

end A057813.P13879157937402332304

noncomputable section

/-- A057813: a(n) = (2*n+1)*(4*n^2+4*n+3)/3.

Offset 0, canonical program `A057813.P13879157937402332304`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057813 (n : ℕ) : ℤ :=
  A057813.P13879157937402332304.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057813.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057901.P13324023212543556702

`3^A000040(n+1)`
-/

namespace A057901.P13324023212543556702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A057901.P13324023212543556702

noncomputable section

/-- A057901: a(n) = 3^prime(n).

Offset 1, canonical program `A057901.P13324023212543556702`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057901 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A057901.P13324023212543556702.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057901.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057902.P13074004454325797661

`5^A000040(n+1)`
-/

namespace A057902.P13074004454325797661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A057902.P13074004454325797661

noncomputable section

/-- A057902: a(n) = 5^prime(n).

Offset 1, canonical program `A057902.P13074004454325797661`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057902 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A057902.P13074004454325797661.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057902.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057944.P16851463738746886639

`A000217(A003056(n))`
-/

namespace A057944.P16851463738746886639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A003056 n).toNat

end

end A057944.P16851463738746886639

noncomputable section

/-- A057944: Largest triangular number less than or equal to n; write m-th triangular number m+1 times.

Offset 0, canonical program `A057944.P16851463738746886639`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057944 (n : ℕ) : ℤ :=
  A057944.P16851463738746886639.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A057944.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A058006.P4738084839548430624

`A005165(n)*(-1)^n+1`
-/

namespace A058006.P4738084839548430624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005165 n * (-1) ^ n + 1

end

end A058006.P4738084839548430624

noncomputable section

/-- A058006: Alternating factorials: 0! - 1! + 2! - ... + (-1)^n n!

Offset 0, canonical program `A058006.P4738084839548430624`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058006 (n : ℕ) : ℤ :=
  A058006.P4738084839548430624.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058006.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A058187.P11225617256787788162

`A000292(A008619(n))`
-/

namespace A058187.P11225617256787788162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A008619 n).toNat

end

end A058187.P11225617256787788162

noncomputable section

/-- A058187: Expansion of (1+x)/(1-x^2)^4: duplicated tetrahedral numbers.

Offset 0, canonical program `A058187.P11225617256787788162`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058187 (n : ℕ) : ℤ :=
  A058187.P11225617256787788162.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058187.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A058635.P11783534453267586822

`a(n-1)*A001566(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A058635.P11783534453267586822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A001566 (n - 2)

end

end A058635.P11783534453267586822

noncomputable section

/-- A058635: a(n) = Fibonacci(2^n).

Offset 0, canonical program `A058635.P11783534453267586822`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058635 (n : ℕ) : ℤ :=
  A058635.P11783534453267586822.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058635.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A058987.P11261467021102399372

`A000108(n+1)-A001006(n)`
-/

namespace A058987.P11261467021102399372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - A001006 n

end

end A058987.P11261467021102399372

noncomputable section

/-- A058987: a(n) = Catalan(n) - Motzkin(n-1).

Offset 1, canonical program `A058987.P11261467021102399372`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058987 (n : ℕ) : ℤ :=
  A058987.P11261467021102399372.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058987.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059133.P2812660293215290748

`2*A213387(n+2)`
-/

namespace A059133.P2812660293215290748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213387 (n + 2)

end

end A059133.P2812660293215290748

noncomputable section

/-- A059133: A hierarchical sequence (S(W2{2}c) - see A059126).

Offset 0, canonical program `A059133.P2812660293215290748`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059133 (n : ℕ) : ℤ :=
  A059133.P2812660293215290748.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059133.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059204.P17151573816621482727

`A000142(n)-A011782(n)`
-/

namespace A059204.P17151573816621482727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A011782 n

end

end A059204.P17151573816621482727

noncomputable section

/-- A059204: Number of non-unimodal permutations of n items (i.e., those which do not simply go up for the first part and then down for the rest, but at some point go down then up).

Offset 0, canonical program `A059204.P17151573816621482727`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059204 (n : ℕ) : ℤ :=
  A059204.P17151573816621482727.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059204.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059255.P3301445240807100974

`A000330(A014106(n))-A000330(A046092(n))`
-/

namespace A059255.P3301445240807100974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A014106 n).toNat - A000330 (A046092 n).toNat

end

end A059255.P3301445240807100974

noncomputable section

/-- A059255: Both sum of n+1 consecutive squares and sum of the immediately following n consecutive squares.

Offset 0, canonical program `A059255.P3301445240807100974`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059255 (n : ℕ) : ℤ :=
  A059255.P3301445240807100974.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059255.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059304.P7987591590417581669

`A000079(n)*A000984(n)`
-/

namespace A059304.P7987591590417581669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A000984 n

end

end A059304.P7987591590417581669

noncomputable section

/-- A059304: a(n) = 2^n * (2*n)! / (n!)^2.

Offset 0, canonical program `A059304.P7987591590417581669`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059304 (n : ℕ) : ℤ :=
  A059304.P7987591590417581669.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059304.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059396.P16168764180705293964

`A000720(A000196(A000040(n+1)))`
-/

namespace A059396.P16168764180705293964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000196 (A000040 (n + 1)).toNat).toNat

end

end A059396.P16168764180705293964

noncomputable section

/-- A059396: Number of primes less than square root of n-th prime; i.e., number of trial divisions by smaller primes to show that n-th prime is indeed prime.

Offset 1, canonical program `A059396.P16168764180705293964`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059396 (n : ℕ) : ℤ :=
  A059396.P16168764180705293964.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059396.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059532.P6901203589356187192

`n+1+A022844(n+1)`
-/

namespace A059532.P6901203589356187192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A022844 (n + 1)

end

end A059532.P6901203589356187192

noncomputable section

/-- A059532: Beatty sequence for 1 + Pi.

Offset 1, canonical program `A059532.P6901203589356187192`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059532 (n : ℕ) : ℤ :=
  A059532.P6901203589356187192.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059532.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059555.P16390647683451287344

`n+1+A038128(n+1)`
-/

namespace A059555.P16390647683451287344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A038128 (n + 1)

end

end A059555.P16390647683451287344

noncomputable section

/-- A059555: Beatty sequence for 1 + gamma A001620.

Offset 1, canonical program `A059555.P16390647683451287344`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059555 (n : ℕ) : ℤ :=
  A059555.P16390647683451287344.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059555.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059861.P7495224884849833739

`a(n-1)*(A000040(n+1)-2)` with `a(0)=1`
-/

namespace A059861.P7495224884849833739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (A000040 (n + 1) - 2)

end

end A059861.P7495224884849833739

noncomputable section

/-- A059861: a(n) = Product_{i=2..n} (prime(i) - 2).

Offset 1, canonical program `A059861.P7495224884849833739`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059861 (n : ℕ) : ℤ :=
  A059861.P7495224884849833739.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059861.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059929.P8456040648123541286

`A000045(n+1)²-A033999(n)`
-/

namespace A059929.P8456040648123541286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) ^ 2 - A033999 n

end

end A059929.P8456040648123541286

noncomputable section

/-- A059929: a(n) = Fibonacci(n)*Fibonacci(n+2).

Offset 0, canonical program `A059929.P8456040648123541286`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059929 (n : ℕ) : ℤ :=
  A059929.P8456040648123541286.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059929.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059939.P14472836675643454889

`A000523(n+2)-1`
-/

namespace A059939.P14472836675643454889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 2) - 1

end

end A059939.P14472836675643454889

noncomputable section

/-- A059939: a(n) = floor(log_2(n+1) - 1).

Offset 1, canonical program `A059939.P14472836675643454889`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059939 (n : ℕ) : ℤ :=
  A059939.P14472836675643454889.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059939.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A059989.P4306678296345226909

`(A001570(n+1)²-1)/3`
-/

namespace A059989.P4306678296345226909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001570 (n + 1) ^ 2 - 1 : ℚ) / 3

end

end A059989.P4306678296345226909

noncomputable section

/-- A059989: Numbers k such that 3*k+1 and 4*k+1 are both squares.

Offset 1, canonical program `A059989.P4306678296345226909`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059989 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A059989.P4306678296345226909.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A059989.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060001.P2343612909125798087

`A000142(A000045(n+1))`
-/

namespace A060001.P2343612909125798087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A000045 (n + 1)).toNat

end

end A060001.P2343612909125798087

noncomputable section

/-- A060001: a(n) = Fibonacci(n)!.

Offset 1, canonical program `A060001.P2343612909125798087`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060001 (n : ℕ) : ℤ :=
  A060001.P2343612909125798087.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060001.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060080.P2889459714734994594

`A000330(n+1)*A001044(n)`
-/

namespace A060080.P2889459714734994594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) * A001044 n

end

end A060080.P2889459714734994594

noncomputable section

/-- A060080: Scaled sums of squares.

Offset 1, canonical program `A060080.P2889459714734994594`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060080 (n : ℕ) : ℤ :=
  A060080.P2889459714734994594.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060080.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060208.P7183975736576041079

`2*A000720(n+1)-A000720(2*(n+1))`
-/

namespace A060208.P7183975736576041079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000720 (n + 1) - A000720 (2 * (n + 1))

end

end A060208.P7183975736576041079

noncomputable section

/-- A060208: a(n) = 2*pi(n) - pi(2*n), where pi(i) = A000720(i).

Offset 1, canonical program `A060208.P7183975736576041079`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060208 (n : ℕ) : ℤ :=
  A060208.P7183975736576041079.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060208.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060401.P17035692861748186501

`n+1+A003418(n+1)`
-/

namespace A060401.P17035692861748186501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A003418 (n + 1)

end

end A060401.P17035692861748186501

noncomputable section

/-- A060401: a(n) = minimal m such that m>n, n divides m, n-1 divides m-1, n-2 divides m-2 and so on down to 1 divides m-n+1.

Offset 1, canonical program `A060401.P17035692861748186501`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060401 (n : ℕ) : ℤ :=
  A060401.P17035692861748186501.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060401.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060458.P4175634444508677456

`8*A016134(n)`
-/

namespace A060458.P4175634444508677456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A016134 n

end

end A060458.P4175634444508677456

noncomputable section

/-- A060458: Maximum value seen in the final n decimal digits of 2^j for all values of j.

Offset 1, canonical program `A060458.P4175634444508677456`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060458 (n : ℕ) : ℤ :=
  A060458.P4175634444508677456.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060458.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060545.P11052780647503334750

`C(A005563(n), n)`
-/

namespace A060545.P11052780647503334750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A005563 n).toNat n

end

end A060545.P11052780647503334750

noncomputable section

/-- A060545: a(n) = binomial(n^2, n)/n.

Offset 1, canonical program `A060545.P11052780647503334750`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060545 (n : ℕ) : ℤ :=
  (A060545.P11052780647503334750.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060545.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060546.P1654444225821562750

`A016116(n+1)`
-/

namespace A060546.P1654444225821562750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1)

end

end A060546.P1654444225821562750

noncomputable section

/-- A060546: a(n) = 2^ceiling(n/2).

Offset 0, canonical program `A060546.P1654444225821562750`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060546 (n : ℕ) : ℤ :=
  A060546.P1654444225821562750.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060546.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060547.P16635624753728141466

`2^A008611(n)`
-/

namespace A060547.P16635624753728141466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008611 n : ℤ)

end

end A060547.P16635624753728141466

noncomputable section

/-- A060547: a(n) = 2^(floor(n/3) + ((n mod 3) mod 2)).

Offset 1, canonical program `A060547.P16635624753728141466`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060547 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A060547.P16635624753728141466.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060547.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060585.P14714864189265894970

`2*a(floor(n/3))+A060584(n)` with `a(0)=0`
-/

namespace A060585.P14714864189265894970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a ⌊(n : ℚ) / 3⌋.toNat + A060584 n

end

end A060585.P14714864189265894970

noncomputable section

/-- A060585: Write n in base 3, then (working from left to right) if the k-th digit of n is not equal to the digit to its left then the k-th digit of a(n) is 1, otherwise it is 0, and finally read the result as a base-2 number.

Offset 0, canonical program `A060585.P14714864189265894970`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060585 (n : ℕ) : ℤ :=
  A060585.P14714864189265894970.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060585.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060589.P18011316872635690004

`6*a(n-1)+A008776(n-1)` with `a(0)=0`
-/

namespace A060589.P18011316872635690004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  6 * a (n - 1) + A008776 (n - 1)

end

end A060589.P18011316872635690004

noncomputable section

/-- A060589: a(n) = 2*(2^n-1)*3^(n-1).

Offset 0, canonical program `A060589.P18011316872635690004`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060589 (n : ℕ) : ℤ :=
  A060589.P18011316872635690004.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060589.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060635.P900422356418885628

`2*A001654(n+1)²`
-/

namespace A060635.P900422356418885628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001654 (n + 1) ^ 2

end

end A060635.P900422356418885628

noncomputable section

/-- A060635: a(n) is the number of 2 X 1 domino tilings of the set S in the plane R^2 consisting of the union of the following two rectangles: rectangle1: |x| <= n, |y| <= 1, rectangle2: |x| <= 1, |y| <= n.

Offset 1, canonical program `A060635.P900422356418885628`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060635 (n : ℕ) : ℤ :=
  A060635.P900422356418885628.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060635.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060692.P7779810104552752769

`A002379(n+1)+A002380(n+1)`
-/

namespace A060692.P7779810104552752769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002379 (n + 1) + A002380 (n + 1)

end

end A060692.P7779810104552752769

noncomputable section

/-- A060692: Number of parts if 3^n is partitioned into parts of size 2^n as far as possible and into parts of size 1^n.

Offset 1, canonical program `A060692.P7779810104552752769`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060692 (n : ℕ) : ℤ :=
  A060692.P7779810104552752769.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060692.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060780.P18068939114081509485

`gcd(A000203(n+2), A000203(n+1))`
-/

namespace A060780.P18068939114081509485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 2)) (A000203 (n + 1))

end

end A060780.P18068939114081509485

noncomputable section

/-- A060780: a(n) = gcd(sigma(n+1), sigma(n)), where sigma = A000203.

Offset 1, canonical program `A060780.P18068939114081509485`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060780 (n : ℕ) : ℤ :=
  (A060780.P18068939114081509485.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060780.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060781.P4512069175949259603

`lcm(A000203(n+2), A000203(n+1))`
-/

namespace A060781.P4512069175949259603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000203 (n + 2)) (A000203 (n + 1))

end

end A060781.P4512069175949259603

noncomputable section

/-- A060781: a(n) = lcm(sigma(n+1), sigma(n)), where sigma = A000203.

Offset 1, canonical program `A060781.P4512069175949259603`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060781 (n : ℕ) : ℤ :=
  (A060781.P4512069175949259603.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060781.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060818.P15252789731358603356

`2^A011371(n)`
-/

namespace A060818.P15252789731358603356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A011371 n : ℤ)

end

end A060818.P15252789731358603356

noncomputable section

/-- A060818: a(n) = 2^(n - HammingWeight(n)) = 2^(n - BitCount(n)) = 2^(n - A000120(n)).

Offset 0, canonical program `A060818.P15252789731358603356`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060818 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A060818.P15252789731358603356.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060818.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060827.P15751382796492742172

`2*A038196(n)`
-/

namespace A060827.P15751382796492742172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038196 n

end

end A060827.P15751382796492742172

noncomputable section

/-- A060827: 3-wave sequence beginning with 2's.

Offset 0, canonical program `A060827.P15751382796492742172`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060827 (n : ℕ) : ℤ :=
  A060827.P15751382796492742172.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060827.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060831.P8526254986242244020

`a(n-1)+A001227(n)` with `a(0)=0`
-/

namespace A060831.P8526254986242244020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A001227 n

end

end A060831.P8526254986242244020

noncomputable section

/-- A060831: a(n) = Sum_{k=1..n} (number of odd divisors of k) (cf. A001227).

Offset 0, canonical program `A060831.P8526254986242244020`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060831 (n : ℕ) : ℤ :=
  A060831.P8526254986242244020.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060831.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060901.P2200091392654414110

`A038500(A000045(n+1))`
-/

namespace A060901.P2200091392654414110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A000045 (n + 1)).toNat

end

end A060901.P2200091392654414110

noncomputable section

/-- A060901: Exact power of 3 that divides the n-th Fibonacci number (sequence A000045).

Offset 1, canonical program `A060901.P2200091392654414110`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060901 (n : ℕ) : ℤ :=
  A060901.P2200091392654414110.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060901.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060967.P12225233603475588556

`A000720(A017910(n))`
-/

namespace A060967.P12225233603475588556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A017910 n).toNat

end

end A060967.P12225233603475588556

noncomputable section

/-- A060967: Number of squared primes <= 2^n.

Offset 0, canonical program `A060967.P12225233603475588556`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060967 (n : ℕ) : ℤ :=
  A060967.P12225233603475588556.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060967.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060973.P9569280493827899348

`n+1-A006165(n+1)`
-/

namespace A060973.P9569280493827899348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A006165 (n + 1)

end

end A060973.P9569280493827899348

noncomputable section

/-- A060973: a(2*n+1) = a(n+1)+a(n), a(2*n) = 2*a(n), with a(1)=0 and a(2)=1.

Offset 1, canonical program `A060973.P9569280493827899348`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060973 (n : ℕ) : ℤ :=
  A060973.P9569280493827899348.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060973.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061318.P13431789142385319177

`A061316(n)+A006007(n)²`
-/

namespace A061318.P13431789142385319177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061316 n + A006007 n ^ 2

end

end A061318.P13431789142385319177

noncomputable section

/-- A061318: Column 3 of A061314.

Offset 0, canonical program `A061318.P13431789142385319177`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061318 (n : ℕ) : ℤ :=
  A061318.P13431789142385319177.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061318.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061349.P12457628590911601560

`a(n-1)+A001844(n-1)-A002378(A004526(n-1))` with `a(0)=0`
-/

namespace A061349.P12457628590911601560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A001844 (n - 1) - A002378 (A004526 (n - 1)).toNat

end

end A061349.P12457628590911601560

noncomputable section

/-- A061349: Sum of antidiagonals of A060736.

Offset 0, canonical program `A061349.P12457628590911601560`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061349 (n : ℕ) : ℤ :=
  A061349.P12457628590911601560.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061349.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061513.P8629884518458591812

`A061512(n)-1`
-/

namespace A061513.P8629884518458591812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061512 n - 1

end

end A061513.P8629884518458591812

noncomputable section

/-- A061513: a(0) = 0; a(n) is obtained by incrementing each digit of a(n-1) by 2.

Offset 0, canonical program `A061513.P8629884518458591812`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061513 (n : ℕ) : ℤ :=
  A061513.P8629884518458591812.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061513.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061573.P9066956734734051469

`(n+1)!*A002627(n+1)`
-/

namespace A061573.P9066956734734051469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A002627 (n + 1)

end

end A061573.P9066956734734051469

noncomputable section

/-- A061573: a(n) = (n!)^2*Sum_{k=1..n} 1/k!.

Offset 1, canonical program `A061573.P9066956734734051469`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061573 (n : ℕ) : ℤ :=
  A061573.P9066956734734051469.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061573.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061593.P3672767219440793987

`17*A027471(n+3)-126*A000244(n+1)+A025169(n+5)`
-/

namespace A061593.P3672767219440793987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A027471 (n + 3) - 126 * A000244 (n + 1) + A025169 (n + 5)

end

end A061593.P3672767219440793987

noncomputable section

/-- A061593: Number of ways to place 2n nonattacking kings on a 4 X 2n chessboard.

Offset 1, canonical program `A061593.P3672767219440793987`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061593 (n : ℕ) : ℤ :=
  A061593.P3672767219440793987.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061593.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061640.P12760700799484753330

`A000142(n)*A003422(n)`
-/

namespace A061640.P12760700799484753330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A003422 n

end

end A061640.P12760700799484753330

noncomputable section

/-- A061640: a(n) = !n*n!.

Offset 0, canonical program `A061640.P12760700799484753330`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061640 (n : ℕ) : ℤ :=
  A061640.P12760700799484753330.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061640.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061667.P6698465324237973844

`2*A001906(n+1)-A001906(n)-A000079(n)`
-/

namespace A061667.P6698465324237973844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001906 (n + 1) - A001906 n - A000079 n

end

end A061667.P6698465324237973844

noncomputable section

/-- A061667: a(n) = Fibonacci(2*n+1) - 2^(n-1).

Offset 1, canonical program `A061667.P6698465324237973844`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061667 (n : ℕ) : ℤ :=
  A061667.P6698465324237973844.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061667.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061716.P13140873367767329477

`A029837(A000040(n+1))`
-/

namespace A061716.P13140873367767329477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A000040 (n + 1)).toNat

end

end A061716.P13140873367767329477

noncomputable section

/-- A061716: Binary order of n-th prime.

Offset 1, canonical program `A061716.P13140873367767329477`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061716 (n : ℕ) : ℤ :=
  A061716.P13140873367767329477.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061716.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061719.P17348919647334143380

`A000178(n)^3`
-/

namespace A061719.P17348919647334143380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 n ^ 3

end

end A061719.P17348919647334143380

noncomputable section

/-- A061719: a(n) = Product_{k=0...n} (k!^3).

Offset 0, canonical program `A061719.P17348919647334143380`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061719 (n : ℕ) : ℤ :=
  A061719.P17348919647334143380.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061719.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062029.P12791945871435776065

`2^(n+1)*A057003(n+1)`
-/

namespace A062029.P12791945871435776065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A057003 (n + 1)

end

end A062029.P12791945871435776065

noncomputable section

/-- A062029: Group even numbers into (2), (4,6), (8,10,12), (14,16,18,20), ...; a(n) = product of n-th group.

Offset 1, canonical program `A062029.P12791945871435776065`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062029 (n : ℕ) : ℤ :=
  A062029.P12791945871435776065.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062029.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062050.P17235940281182373868

`(A006257(n+1)+1)/2`
-/

namespace A062050.P17235940281182373868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006257 (n + 1) + 1 : ℚ) / 2

end

end A062050.P17235940281182373868

noncomputable section

/-- A062050: n-th chunk consists of the numbers 1, ..., 2^n.

Offset 1, canonical program `A062050.P17235940281182373868`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062050 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A062050.P17235940281182373868.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062050.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062108.P1540959847004753283

`A061054(n)-n`
-/

namespace A062108.P1540959847004753283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061054 n - (n : ℤ)

end

end A062108.P1540959847004753283

noncomputable section

/-- A062108: a(n) = floor(n^(3/4)).

Offset 0, canonical program `A062108.P1540959847004753283`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062108 (n : ℕ) : ℤ :=
  A062108.P1540959847004753283.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062108.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062234.P8592873382335253705

`2*A000040(n+1)-A000040(n+2)`
-/

namespace A062234.P8592873382335253705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - A000040 (n + 2)

end

end A062234.P8592873382335253705

noncomputable section

/-- A062234: From Bertrand's postulate: a(n) = 2*prime(n) - prime(n+1).

Offset 1, canonical program `A062234.P8592873382335253705`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062234 (n : ℕ) : ℤ :=
  A062234.P8592873382335253705.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062234.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062298.P8226643735375377344

`n+1-A000720(n+1)`
-/

namespace A062298.P8226643735375377344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000720 (n + 1)

end

end A062298.P8226643735375377344

noncomputable section

/-- A062298: Number of nonprimes <= n.

Offset 1, canonical program `A062298.P8226643735375377344`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062298 (n : ℕ) : ℤ :=
  A062298.P8226643735375377344.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062298.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062357.P6547862121818116138

`(n+1)*A000040(n+2)-(n+2)*A000040(n+1)`
-/

namespace A062357.P6547862121818116138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000040 (n + 2) - (n + 2 : ℤ) * A000040 (n + 1)

end

end A062357.P6547862121818116138

noncomputable section

/-- A062357: a(n) = n*p(n+1)-(n+1)*p(n) = n*d(n)-p(n), where p(n) is the n-th prime and d(n) is the n-th prime-difference, A001223(n).

Offset 1, canonical program `A062357.P6547862121818116138`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062357 (n : ℕ) : ℤ :=
  A062357.P6547862121818116138.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062357.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062439.P4549804686274560624

`A000040(A000142(n))`
-/

namespace A062439.P4549804686274560624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000142 n).toNat

end

end A062439.P4549804686274560624

noncomputable section

/-- A062439: Primes at large indices: a(n) = prime(n!).

Offset 0, canonical program `A062439.P4549804686274560624`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062439 (n : ℕ) : ℤ :=
  A062439.P4549804686274560624.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062439.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062448.P17857974854903580756

`A000040(A000312(n))`
-/

namespace A062448.P17857974854903580756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000312 n).toNat

end

end A062448.P17857974854903580756

noncomputable section

/-- A062448: Prime numbers at large subscripts: a(n) = prime(n^n).

Offset 0, canonical program `A062448.P17857974854903580756`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062448 (n : ℕ) : ℤ :=
  A062448.P17857974854903580756.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062448.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062481.P10209660498964784841

`(n+1)^A000040(n+1)`
-/

namespace A062481.P10209660498964784841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A062481.P10209660498964784841

noncomputable section

/-- A062481: a(n) = n^prime(n).

Offset 1, canonical program `A062481.P10209660498964784841`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062481 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A062481.P10209660498964784841.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062481.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062569.P5415659174355555500

`A000203(A000142(n))`
-/

namespace A062569.P5415659174355555500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000142 n).toNat

end

end A062569.P5415659174355555500

noncomputable section

/-- A062569: a(n) = sigma(n!).

Offset 0, canonical program `A062569.P5415659174355555500`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062569 (n : ℕ) : ℤ :=
  A062569.P5415659174355555500.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062569.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062727.P11139965182496471587

`A000203(A000312(n))`
-/

namespace A062727.P11139965182496471587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000312 n).toNat

end

end A062727.P11139965182496471587

noncomputable section

/-- A062727: Sum of the divisors of n^n (A000312).

Offset 0, canonical program `A062727.P11139965182496471587`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062727 (n : ℕ) : ℤ :=
  A062727.P11139965182496471587.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062727.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062748.P14956383250975312494

`A000292(n+2)-1`
-/

namespace A062748.P14956383250975312494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 2) - 1

end

end A062748.P14956383250975312494

noncomputable section

/-- A062748: Fourth column (r=3) of FS(3) staircase array A062745.

Offset 0, canonical program `A062748.P14956383250975312494`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062748 (n : ℕ) : ℤ :=
  A062748.P14956383250975312494.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062748.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A062788.P2540204846468012777

`A049683(2*(n+1)-1)`
-/

namespace A062788.P2540204846468012777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049683 (2 * (n + 1) - 1)

end

end A062788.P2540204846468012777

noncomputable section

/-- A062788: Squares of the form 5n*(n-1)+1.

Offset 1, canonical program `A062788.P2540204846468012777`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062788 (n : ℕ) : ℤ :=
  A062788.P2540204846468012777.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A062788.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063016.P3883579534976481320

`A000108(n)*A126646(n)`
-/

namespace A063016.P3883579534976481320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A126646 n

end

end A063016.P3883579534976481320

noncomputable section

/-- A063016: a(n) is the product of Catalan(n) and (2^(n+1) - 1).

Offset 0, canonical program `A063016.P3883579534976481320`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063016 (n : ℕ) : ℤ :=
  A063016.P3883579534976481320.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063016.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063374.P5532301294767683893

`A000045(A000142(n))`
-/

namespace A063374.P5532301294767683893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000142 n).toNat

end

end A063374.P5532301294767683893

noncomputable section

/-- A063374: a(n) = Fibonacci(n!).

Offset 0, canonical program `A063374.P5532301294767683893`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063374 (n : ℕ) : ℤ :=
  A063374.P5532301294767683893.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063374.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063459.P17423234819915296512

`A022844(n)-n`
-/

namespace A063459.P17423234819915296512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n - (n : ℤ)

end

end A063459.P17423234819915296512

noncomputable section

/-- A063459: A Beatty sequence: a(n) = floor(n*(Pi - 1)).

Offset 0, canonical program `A063459.P17423234819915296512`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063459 (n : ℕ) : ℤ :=
  A063459.P17423234819915296512.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063459.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063477.P7827917804109814506

`A000203(A000045(n+1))`
-/

namespace A063477.P7827917804109814506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000045 (n + 1)).toNat

end

end A063477.P7827917804109814506

noncomputable section

/-- A063477: a(n) is the sum of the divisors of Fibonacci(n) (A000045).

Offset 1, canonical program `A063477.P7827917804109814506`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063477 (n : ℕ) : ℤ :=
  A063477.P7827917804109814506.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063477.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063496.P4774736945877541079

`A005900(2*(n+1)-1)`
-/

namespace A063496.P4774736945877541079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 (2 * (n + 1) - 1)

end

end A063496.P4774736945877541079

noncomputable section

/-- A063496: a(n) = (2*n - 1)*(8*n^2 - 8*n + 3)/3.

Offset 1, canonical program `A063496.P4774736945877541079`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063496 (n : ℕ) : ℤ :=
  A063496.P4774736945877541079.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063496.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A063524.P5631347671191003537

`A000007(abs(n-1))`
-/

namespace A063524.P5631347671191003537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 |(n : ℤ) - 1|.toNat

end

end A063524.P5631347671191003537

noncomputable section

/-- A063524: Characteristic function of 1.

Offset 0, canonical program `A063524.P5631347671191003537`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063524 (n : ℕ) : ℤ :=
  A063524.P5631347671191003537.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A063524.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064008.P14195947105022283276

`A002275(n+1)*A000040(n+1)`
-/

namespace A064008.P14195947105022283276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1) * A000040 (n + 1)

end

end A064008.P14195947105022283276

noncomputable section

/-- A064008: a(n) = (10^n - 1)/9*prime(n).

Offset 1, canonical program `A064008.P14195947105022283276`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064008 (n : ℕ) : ℤ :=
  A064008.P14195947105022283276.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064008.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064017.P1457114385268100959

`A025192(n)+A027471(n+1)`
-/

namespace A064017.P1457114385268100959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n + A027471 (n + 1)

end

end A064017.P1457114385268100959

noncomputable section

/-- A064017: Number of ternary trees (A001764) with n nodes and maximal diameter.

Offset 1, canonical program `A064017.P1457114385268100959`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064017 (n : ℕ) : ℤ :=
  A064017.P1457114385268100959.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064017.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064139.P11382071768367375373

`A000203(A001405(n+1))`
-/

namespace A064139.P11382071768367375373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A001405 (n + 1)).toNat

end

end A064139.P11382071768367375373

noncomputable section

/-- A064139: Sum of divisors of central binomial coefficient binomial(n, floor(n/2)).

Offset 1, canonical program `A064139.P11382071768367375373`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064139 (n : ℕ) : ℤ :=
  A064139.P11382071768367375373.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064139.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064151.P12814457112272775346

`A000720(A000312(n+1))`
-/

namespace A064151.P12814457112272775346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000312 (n + 1)).toNat

end

end A064151.P12814457112272775346

noncomputable section

/-- A064151: Number of primes < n^n.

Offset 1, canonical program `A064151.P12814457112272775346`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064151 (n : ℕ) : ℤ :=
  A064151.P12814457112272775346.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064151.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064322.P5777157630167942361

`A000217(A000217(A000217(n)))`
-/

namespace A064322.P5777157630167942361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000217 (A000217 n).toNat).toNat

end

end A064322.P5777157630167942361

noncomputable section

/-- A064322: Triply triangular numbers.

Offset 0, canonical program `A064322.P5777157630167942361`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064322 (n : ℕ) : ℤ :=
  A064322.P5777157630167942361.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064322.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064446.P16160038407461689017

`gcd(A051696(n+1), A003418(n+1))`
-/

namespace A064446.P16160038407461689017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051696 (n + 1)) (A003418 (n + 1))

end

end A064446.P16160038407461689017

noncomputable section

/-- A064446: a(n) = gcd(n!, n^n, lcm(1, 2, ..., n)), or gcd(n^n, lcm(1, 2, ..., n)).

Offset 1, canonical program `A064446.P16160038407461689017`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064446 (n : ℕ) : ℤ :=
  (A064446.P16160038407461689017.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064446.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064524.P9633384338654413116

`n-A048766(n)`
-/

namespace A064524.P9633384338654413116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A048766 n

end

end A064524.P9633384338654413116

noncomputable section

/-- A064524: Number of noncubes <= n.

Offset 0, canonical program `A064524.P9633384338654413116`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064524 (n : ℕ) : ℤ :=
  A064524.P9633384338654413116.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064524.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064549.P18019400484953624932

`(n+1)*A007947(n+1)`
-/

namespace A064549.P18019400484953624932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007947 (n + 1)

end

end A064549.P18019400484953624932

noncomputable section

/-- A064549: a(n) = n * Product_{primes p|n} p.

Offset 1, canonical program `A064549.P18019400484953624932`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064549 (n : ℕ) : ℤ :=
  A064549.P18019400484953624932.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064549.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064600.P2132377139288008707

`A000040(a(n-1)-1)` with `a(0)=5`
-/

namespace A064600.P2132377139288008707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A000040 (a (n - 1) - 1).toNat

end

end A064600.P2132377139288008707

noncomputable section

/-- A064600: a(n) indicates the position of 5 after n iterations of A064553.

Offset 0, canonical program `A064600.P2132377139288008707`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064600 (n : ℕ) : ℤ :=
  A064600.P2132377139288008707.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064600.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064706.P11682189123624134312

`A003188(A003188(n))`
-/

namespace A064706.P11682189123624134312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A003188 n).toNat

end

end A064706.P11682189123624134312

noncomputable section

/-- A064706: Square of permutation defined by A003188.

Offset 0, canonical program `A064706.P11682189123624134312`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064706 (n : ℕ) : ℤ :=
  A064706.P11682189123624134312.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064706.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064784.P5795352748328165414

`A053186(A000217(n+1))`
-/

namespace A064784.P5795352748328165414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A000217 (n + 1)).toNat

end

end A064784.P5795352748328165414

noncomputable section

/-- A064784: Difference between n-th triangular number t(n) and the largest square <= t(n).

Offset 1, canonical program `A064784.P5795352748328165414`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064784 (n : ℕ) : ℤ :=
  A064784.P5795352748328165414.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064784.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064806.P4738020535382042154

`n+1+A010888(n+1)`
-/

namespace A064806.P4738020535382042154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A010888 (n + 1)

end

end A064806.P4738020535382042154

noncomputable section

/-- A064806: a(n) = n + digital root of n.

Offset 1, canonical program `A064806.P4738020535382042154`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064806 (n : ℕ) : ℤ :=
  A064806.P4738020535382042154.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064806.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064836.P12935499272681872198

`A064835(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064836.P12935499272681872198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064835 n : ℚ) / 2

end

end A064836.P12935499272681872198

noncomputable section

/-- A064836: a(n) = A064835(n)/2.

Offset 0, canonical program `A064836.P12935499272681872198`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064836 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064836.P12935499272681872198.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064836.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064838.P8528437837125848175

`A064837(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064838.P8528437837125848175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064837 n : ℚ) / 2

end

end A064838.P8528437837125848175

noncomputable section

/-- A064838: a(n) = A064837(n)/2.

Offset 0, canonical program `A064838.P8528437837125848175`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064838 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064838.P8528437837125848175.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064838.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064843.P4509885471937543371

`A064842(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A064843.P4509885471937543371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064842 (n + 1) : ℚ) / 2

end

end A064843.P4509885471937543371

noncomputable section

/-- A064843: a(n) = A064842(n)/2.

Offset 1, canonical program `A064843.P4509885471937543371`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064843 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064843.P4509885471937543371.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064843.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065091.P6971844946592549357

`A000040(n+2)`
-/

namespace A065091.P6971844946592549357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

end

end A065091.P6971844946592549357

noncomputable section

/-- A065091: Odd primes.

Offset 1, canonical program `A065091.P6971844946592549357`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065091 (n : ℕ) : ℤ :=
  A065091.P6971844946592549357.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065091.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065101.P10088104874058875924

`2*A004191(n)`
-/

namespace A065101.P10088104874058875924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004191 n

end

end A065101.P10088104874058875924

noncomputable section

/-- A065101: a(0) = c, a(1) = p*c^3; a(n+2) = p*c^2*a(n+1) - a(n), for p = 3, c = 2.

Offset 0, canonical program `A065101.P10088104874058875924`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065101 (n : ℕ) : ℤ :=
  A065101.P10088104874058875924.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065101.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065102.P4376375145198812071

`3*A049660(n+1)`
-/

namespace A065102.P4376375145198812071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A049660 (n + 1)

end

end A065102.P4376375145198812071

noncomputable section

/-- A065102: a(0) = c, a(1) = p*c^3; a(n+2) = p*c^2*a(n+1) - a(n), for p = 2, c = 3.

Offset 0, canonical program `A065102.P4376375145198812071`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065102 (n : ℕ) : ℤ :=
  A065102.P4376375145198812071.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065102.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065151.P12575422823697040866

`A000040(A000720(A000040(n+2))-A000040(A000720(n+2))+1)`
-/

namespace A065151.P12575422823697040866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A000040 (n + 2)).toNat - A000040 (A000720 (n + 2)).toNat + 1).toNat

end

end A065151.P12575422823697040866

noncomputable section

/-- A065151: a(n) = prime(1 + A064722(n)).

Offset 2, canonical program `A065151.P12575422823697040866`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065151 (n : ℕ) : ℤ :=
  A065151.P12575422823697040866.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065151.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065309.P10521174923402398004

`A000040(n+1)-A000040(n+1-A000720(n+1))`
-/

namespace A065309.P10521174923402398004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A000040 ((n + 1 : ℤ) - A000720 (n + 1)).toNat

end

end A065309.P10521174923402398004

noncomputable section

/-- A065309: a(n) = prime(n) - prime(n - pi(n)).

Offset 1, canonical program `A065309.P10521174923402398004`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065309 (n : ℕ) : ℤ :=
  A065309.P10521174923402398004.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065309.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065328.P11633272553674192295

`A000720(A000040(n+1)-(n+1))`
-/

namespace A065328.P11633272553674192295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000040 (n + 1) - (n + 1 : ℤ)).toNat

end

end A065328.P11633272553674192295

noncomputable section

/-- A065328: a(n) is the number of primes less than or equal to prime(n) - n.

Offset 1, canonical program `A065328.P11633272553674192295`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065328 (n : ℕ) : ℤ :=
  A065328.P11633272553674192295.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065328.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065355.P6179604654936762676

`A000142(n)-A003422(n)`
-/

namespace A065355.P6179604654936762676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A003422 n

end

end A065355.P6179604654936762676

noncomputable section

/-- A065355: a(n) = n! - Sum_{k=0..n-1} k!.

Offset 0, canonical program `A065355.P6179604654936762676`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065355 (n : ℕ) : ℤ :=
  A065355.P6179604654936762676.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065355.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065506.P12524710124335100545

`2^(n+3)-A065455(n+3)`
-/

namespace A065506.P12524710124335100545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 3) : ℤ) - A065455 (n + 3)

end

end A065506.P12524710124335100545

noncomputable section

/-- A065506: Number of (binary) bit strings of length n having an even length block of 0's followed by an odd length block of 1's.

Offset 3, canonical program `A065506.P12524710124335100545`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065506 (n : ℕ) : ℤ :=
  A065506.P12524710124335100545.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065506.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065654.P18056448944285858251

`(A065653(n)+A065653(n+1)-1)/2`
-/

namespace A065654.P18056448944285858251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065653 n + A065653 (n + 1) - 1 : ℚ) / 2

end

end A065654.P18056448944285858251

noncomputable section

/-- A065654: Fixed points for A065652, a permutation of the natural numbers.

Offset 0, canonical program `A065654.P18056448944285858251`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065654 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A065654.P18056448944285858251.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065654.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065733.P3623888993656221851

`A000093(n)²`
-/

namespace A065733.P3623888993656221851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 n ^ 2

end

end A065733.P3623888993656221851

noncomputable section

/-- A065733: Largest square <= n^3.

Offset 0, canonical program `A065733.P3623888993656221851`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065733 (n : ℕ) : ℤ :=
  A065733.P3623888993656221851.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065733.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065764.P4876672908639630041

`A000203(A000290(n+1))`
-/

namespace A065764.P4876672908639630041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000290 (n + 1)).toNat

end

end A065764.P4876672908639630041

noncomputable section

/-- A065764: Sum of divisors of square numbers.

Offset 1, canonical program `A065764.P4876672908639630041`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065764 (n : ℕ) : ℤ :=
  A065764.P4876672908639630041.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065764.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A065765.P16091621034741371397

`A000203(2*A000290(n+1))`
-/

namespace A065765.P16091621034741371397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * A000290 (n + 1)).toNat

end

end A065765.P16091621034741371397

noncomputable section

/-- A065765: Sum of divisors of twice square numbers.

Offset 1, canonical program `A065765.P16091621034741371397`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065765 (n : ℕ) : ℤ :=
  A065765.P16091621034741371397.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A065765.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066052.P12493848751313193473

`(n+1)!-A000085(n+1)`
-/

namespace A066052.P12493848751313193473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - A000085 (n + 1)

end

end A066052.P12493848751313193473

noncomputable section

/-- A066052: Number of permutations in the symmetric group S_n with order >= 3.

Offset 1, canonical program `A066052.P12493848751313193473`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066052 (n : ℕ) : ℤ :=
  A066052.P12493848751313193473.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066052.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066096.P2651506377198414293

`A026351(n)-1`
-/

namespace A066096.P2651506377198414293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n - 1

end

end A066096.P2651506377198414293

noncomputable section

/-- A066096: a(n) = floor(n*phi), where phi = (1 + sqrt(5))/2.

Offset 0, canonical program `A066096.P2651506377198414293`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*ϕ)` (program `A066096.P1717811907399992909`, by `A066096.P1717811907399992909.correct`). Lean does not check the parsing of the name. -/
def A066096 (n : ℕ) : ℤ :=
  A066096.P2651506377198414293.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*ϕ)` (program `A066096.P1717811907399992909`, by `A066096.P1717811907399992909.correct`). Lean does not check the parsing of the name. -/
def A066096.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A066116.P11816805237793030790

`A000040(n+1)*A000040(n+2)²*A000040(n+3)`
-/

namespace A066116.P11816805237793030790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A000040 (n + 2) ^ 2 * A000040 (n + 3)

end

end A066116.P11816805237793030790

noncomputable section

/-- A066116: a(n) = prime(n-2)*prime(n-1)^2*prime(n).

Offset 3, canonical program `A066116.P11816805237793030790`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066116 (n : ℕ) : ℤ :=
  A066116.P11816805237793030790.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066116.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066209.P1765855322789560175

`A053041(n+1)-10^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A066209.P1765855322789560175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053041 (n + 1) - (10 ^ n : ℤ)

end

end A066209.P1765855322789560175

noncomputable section

/-- A066209: A053041(n)-10^(n-1).

Offset 1, canonical program `A066209.P1765855322789560175`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066209 (n : ℕ) : ℤ :=
  A066209.P1765855322789560175.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066209.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066318.P3631376829345142844

`2*A000165(n)`
-/

namespace A066318.P3631376829345142844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000165 n

end

end A066318.P3631376829345142844

noncomputable section

/-- A066318: Number of necklaces with n labeled beads of 2 colors.

Offset 1, canonical program `A066318.P3631376829345142844`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066318 (n : ℕ) : ℤ :=
  A066318.P3631376829345142844.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066318.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066370.P15573265195693973332

`A000217(A000217(A000217(A000217(n))))`
-/

namespace A066370.P15573265195693973332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000217 (A000217 (A000217 n).toNat).toNat).toNat

end

end A066370.P15573265195693973332

noncomputable section

/-- A066370: Quadruply triangular numbers.

Offset 0, canonical program `A066370.P15573265195693973332`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066370 (n : ℕ) : ℤ :=
  A066370.P15573265195693973332.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066370.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066503.P17588364347287804265

`n+1-A007947(n+1)`
-/

namespace A066503.P17588364347287804265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A007947 (n + 1)

end

end A066503.P17588364347287804265

noncomputable section

/-- A066503: a(n) = n - squarefree kernel of n, A007947.

Offset 1, canonical program `A066503.P17588364347287804265`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066503 (n : ℕ) : ℤ :=
  A066503.P17588364347287804265.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066503.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066534.P11849088704617755458

`A010842(n)-2^n`
-/

namespace A066534.P11849088704617755458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010842 n - (2 ^ n : ℤ)

end

end A066534.P11849088704617755458

noncomputable section

/-- A066534: Total number of walks with length > 0 in the Hasse diagram of a Boolean algebra of order n.

Offset 0, canonical program `A066534.P11849088704617755458`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066534 (n : ℕ) : ℤ :=
  A066534.P11849088704617755458.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066534.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066643.P17762996301981300215

`A022844(n²)`
-/

namespace A066643.P17762996301981300215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 (n ^ 2)

end

end A066643.P17762996301981300215

noncomputable section

/-- A066643: a(n) = floor(Pi*n^2).

Offset 0, canonical program `A066643.P17762996301981300215`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066643 (n : ℕ) : ℤ :=
  A066643.P17762996301981300215.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066643.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A066857.P5971232569893465926

`A053186((n+1)!)`
-/

namespace A066857.P5971232569893465926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (Nat.factorial (n + 1))

end

end A066857.P5971232569893465926

noncomputable section

/-- A066857: Smallest number k such that n! - k is a square.

Offset 1, canonical program `A066857.P5971232569893465926`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066857 (n : ℕ) : ℤ :=
  A066857.P5971232569893465926.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A066857.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067046.P15996770694766795448

`A033931(n+1)/6`
-/

namespace A067046.P15996770694766795448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033931 (n + 1) : ℚ) / 6

end

end A067046.P15996770694766795448

noncomputable section

/-- A067046: a(n) = lcm(n, n+1, n+2)/6.

Offset 1, canonical program `A067046.P15996770694766795448`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067046 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A067046.P15996770694766795448.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067046.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067161.P10768475031495002266

`A000040(A000203(n+1))`
-/

namespace A067161.P10768475031495002266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000203 (n + 1)).toNat

end

end A067161.P10768475031495002266

noncomputable section

/-- A067161: a(n) = prime(sigma(n)).

Offset 1, canonical program `A067161.P10768475031495002266`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067161 (n : ℕ) : ℤ :=
  A067161.P10768475031495002266.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067161.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067819.P15035980335268541507

`A000203(A000984(n+1))`
-/

namespace A067819.P15035980335268541507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000984 (n + 1)).toNat

end

end A067819.P15035980335268541507

noncomputable section

/-- A067819: Sum of the divisors of binomial(2n,n).

Offset 1, canonical program `A067819.P15035980335268541507`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067819 (n : ℕ) : ℤ :=
  A067819.P15035980335268541507.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067819.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067962.P6906518905069184204

`a(n-1)*A001654(n+1)` with `a(0)=1`
-/

namespace A067962.P6906518905069184204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A001654 (n + 1)

end

end A067962.P6906518905069184204

noncomputable section

/-- A067962: a(n) = F(n+2)*(Product_{i=1..n+1} F(i))^2 where F(i)=A000045(i) is the i-th Fibonacci number.

Offset 0, canonical program `A067962.P6906518905069184204`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067962 (n : ℕ) : ℤ :=
  A067962.P6906518905069184204.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067962.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068073.P13340883488754094545

`2-A056594(n)`
-/

namespace A068073.P13340883488754094545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A056594 n

end

end A068073.P13340883488754094545

noncomputable section

/-- A068073: Period 4 sequence [ 1, 2, 3, 2, ...].

Offset 0, canonical program `A068073.P13340883488754094545`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068073 (n : ℕ) : ℤ :=
  A068073.P13340883488754094545.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068073.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068181.P6110322210593194977

`A007661(6*n)`
-/

namespace A068181.P6110322210593194977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007661 (6 * n)

end

end A068181.P6110322210593194977

noncomputable section

/-- A068181: a(n)=-1/b(2n) where 1/(e^y-e^(y/3))= sum(i=-1,inf,b(i)*y^i).

Offset 0, canonical program `A068181.P6110322210593194977`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068181 (n : ℕ) : ℤ :=
  A068181.P6110322210593194977.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068181.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068219.P5528515115272368905

`3*A060819(n+1)`
-/

namespace A068219.P5528515115272368905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A060819 (n + 1)

end

end A068219.P5528515115272368905

noncomputable section

/-- A068219: Denominators of coefficients in log(1+x)*(1+x)^(1/3) power series.

Offset 1, canonical program `A068219.P5528515115272368905`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068219 (n : ℕ) : ℤ :=
  A068219.P5528515115272368905.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068219.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068550.P11016822675318453931

`A003418(2*n)/A001405(2*n)`
-/

namespace A068550.P11016822675318453931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (2 * n) : ℚ) / (A001405 (2 * n) : ℚ)

end

end A068550.P11016822675318453931

noncomputable section

/-- A068550: a(n) = lcm{1, ..., 2n} / binomial(2n, n).

Offset 0, canonical program `A068550.P11016822675318453931`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068550 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A068550.P11016822675318453931.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068550.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A068869.P17738796255132670994

`A055228(n+1)²-(n+1)!`
-/

namespace A068869.P17738796255132670994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055228 (n + 1) ^ 2 - (Nat.factorial (n + 1) : ℤ)

end

end A068869.P17738796255132670994

noncomputable section

/-- A068869: Smallest number k such that n! + k is a square.

Offset 1, canonical program `A068869.P17738796255132670994`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068869 (n : ℕ) : ℤ :=
  A068869.P17738796255132670994.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A068869.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069061.P10159908662818453705

`A000203(A000051(n+1))`
-/

namespace A069061.P10159908662818453705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000051 (n + 1)).toNat

end

end A069061.P10159908662818453705

noncomputable section

/-- A069061: Sum of divisors of 2^n+1.

Offset 1, canonical program `A069061.P10159908662818453705`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069061 (n : ℕ) : ℤ :=
  A069061.P10159908662818453705.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069061.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069271.P14577300285001042328

`A005810(n)*A016813(n)/A060544(n+1)`
-/

namespace A069271.P14577300285001042328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005810 n * A016813 n : ℚ) / (A060544 (n + 1) : ℚ)

end

end A069271.P14577300285001042328

noncomputable section

/-- A069271: a(n) = binomial(4*n+1,n)*2/(3*n+2).

Offset 0, canonical program `A069271.P14577300285001042328`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069271 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A069271.P14577300285001042328.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069271.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069429.P11282281024164806613

`A084326(n+2)/2`
-/

namespace A069429.P11282281024164806613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084326 (n + 2) : ℚ) / 2

end

end A069429.P11282281024164806613

noncomputable section

/-- A069429: Half the number of 3 X n binary arrays with no path of adjacent 1's or adjacent 0's from top row to bottom row.

Offset 1, canonical program `A069429.P11282281024164806613`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069429 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A069429.P11282281024164806613.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069429.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069475.P16115383178570612089

`120*A056107(n+2)`
-/

namespace A069475.P16115383178570612089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  120 * A056107 (n + 2)

end

end A069475.P16115383178570612089

noncomputable section

/-- A069475: First differences of A069474, successive differences of (n+1)^6-n^6.

Offset 0, canonical program `A069475.P16115383178570612089`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069475 (n : ℕ) : ℤ :=
  A069475.P16115383178570612089.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069475.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070004.P1855053541036505447

`5*A029744(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A070004.P1855053541036505447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A029744 (n + 1)

end

end A070004.P1855053541036505447

noncomputable section

/-- A070004: Numbers of the form 5*2^n or 5*3*2^n; a(n) = 5*A029744(n).

Offset 1, canonical program `A070004.P1855053541036505447`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070004 (n : ℕ) : ℤ :=
  A070004.P1855053541036505447.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070004.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070198.P18115024891889206898

`A003418(n+1)-1`
-/

namespace A070198.P18115024891889206898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (n + 1) - 1

end

end A070198.P18115024891889206898

noncomputable section

/-- A070198: Smallest nonnegative number m such that m == i (mod i+1) for all 1 <= i <= n.

Offset 0, canonical program `A070198.P18115024891889206898`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070198 (n : ℕ) : ℤ :=
  A070198.P18115024891889206898.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070198.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070307.P11955919395310825608

`A000292(n+1)^(n+1)`
-/

namespace A070307.P11955919395310825608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) ^ (n + 1)

end

end A070307.P11955919395310825608

noncomputable section

/-- A070307: Number of n X n matrices with nonnegative integer entries such that every row sum equals 3.

Offset 1, canonical program `A070307.P11955919395310825608`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070307 (n : ℕ) : ℤ :=
  A070307.P11955919395310825608.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070307.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070803.P520655573842613320

`A000720(A000203(n+1))`
-/

namespace A070803.P520655573842613320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000203 (n + 1)).toNat

end

end A070803.P520655573842613320

noncomputable section

/-- A070803: Number of primes not exceeding sum of divisors of n.

Offset 1, canonical program `A070803.P520655573842613320`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070803 (n : ℕ) : ℤ :=
  A070803.P520655573842613320.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070803.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A070826.P17587218534478786378

`A000040(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A070826.P17587218534478786378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (n + 1) * a (n - 1)

end

end A070826.P17587218534478786378

noncomputable section

/-- A070826: One half of product of first n primes A000040.

Offset 1, canonical program `A070826.P17587218534478786378`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070826 (n : ℕ) : ℤ :=
  A070826.P17587218534478786378.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A070826.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071007.P3643576512482097279

`A057693(n)-A000085(n)`
-/

namespace A071007.P3643576512482097279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057693 n - A000085 n

end

end A071007.P3643576512482097279

noncomputable section

/-- A071007: Number of permutations in the symmetric group S_n such that the maximal cycle has length exactly 3.

Offset 0, canonical program `A071007.P3643576512482097279`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071007 (n : ℕ) : ℤ :=
  A071007.P3643576512482097279.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071007.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071028.P9767808195763007383

`(1+(-1)^A028392(n))/2`
-/

namespace A071028.P9767808195763007383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + (-1 : ℚ) ^ (A028392 n : ℤ)) / 2

end

end A071028.P9767808195763007383

noncomputable section

/-- A071028: Triangle read by rows giving successive states of cellular automaton generated by "Rule 50".

Offset 0, canonical program `A071028.P9767808195763007383`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071028 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A071028.P9767808195763007383.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071028.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071170.P3616014520815881904

`A000040(n+1)%A000203(n+1)`
-/

namespace A071170.P3616014520815881904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A000203 (n + 1))

end

end A071170.P3616014520815881904

noncomputable section

/-- A071170: n-th prime reduced modulo sigma(n).

Offset 1, canonical program `A071170.P3616014520815881904`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071170 (n : ℕ) : ℤ :=
  A071170.P3616014520815881904.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071170.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071423.P4735204547254809980

`a(n-1)+A034887(n+1)` with `a(0)=1`
-/

namespace A071423.P4735204547254809980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A034887 (n + 1)

end

end A071423.P4735204547254809980

noncomputable section

/-- A071423: a(n) = a(n-1) + number of decimal digits of 2^n. Number of decimal digits of concatenation of first n powers of 2.

Offset 1, canonical program `A071423.P4735204547254809980`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071423 (n : ℕ) : ℤ :=
  A071423.P4735204547254809980.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071423.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071725.P9517445065764979521

`6*(n²+1)/((n+2)*(n+3))*A000108(n)`
-/

namespace A071725.P9517445065764979521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * ((n ^ 2 + 1 : ℚ) / ((n + 2) * (n + 3) : ℚ)) * (A000108 n : ℚ)

end

end A071725.P9517445065764979521

noncomputable section

/-- A071725: Expansion of (1+x^2*C^4)*C, where C = (1 - sqrt(1-4*x))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071725.P9517445065764979521`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071725 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A071725.P9517445065764979521.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071725.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071798.P10857765123158863709

`A000680(n+1)-A001044(n+1)`
-/

namespace A071798.P10857765123158863709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000680 (n + 1) - A001044 (n + 1)

end

end A071798.P10857765123158863709

noncomputable section

/-- A071798: Number of paths on the surface of the n-dimensional lattice [0..2]^n; i.e., the lattice paths that do not pass through the point (1,1,...,1).

Offset 1, canonical program `A071798.P10857765123158863709`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071798 (n : ℕ) : ℤ :=
  A071798.P10857765123158863709.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071798.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071930.P4567808858666721799

`2*A003674(n)`
-/

namespace A071930.P4567808858666721799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003674 n

end

end A071930.P4567808858666721799

noncomputable section

/-- A071930: Number of words of length 2n in the two letters s and t that reduce to the identity 1 by using the relations ssTT=1, ststSS=1 and ststTT=1, where S and T are the inverses of s and t, respectively (i.e., sS=1 and tT=1). The generators s and t and the three stated relations generate the quaternion group Q4.

Offset 1, canonical program `A071930.P4567808858666721799`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071930 (n : ℕ) : ℤ :=
  A071930.P4567808858666721799.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071930.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A071986.P16196602093413610135

`A000035(A000720(n+1))`
-/

namespace A071986.P16196602093413610135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000720 (n + 1)).toNat

end

end A071986.P16196602093413610135

noncomputable section

/-- A071986: Parity of the prime-counting function pi(n).

Offset 1, canonical program `A071986.P16196602093413610135`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071986 (n : ℕ) : ℤ :=
  A071986.P16196602093413610135.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A071986.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A072474.P14611267747009341394

`A000330((n+1)*(n+2)/2)-A000330((n+1)*n/2)`
-/

namespace A072474.P14611267747009341394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (SequenceMachineLib.roundAway (((n + 1) * (n + 2) : ℚ) / 2)).toNat - A000330 (SequenceMachineLib.roundAway (((n + 1) * n : ℚ) / 2)).toNat

end

end A072474.P14611267747009341394

noncomputable section

/-- A072474: Sum of next n squares.

Offset 1, canonical program `A072474.P14611267747009341394`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072474 (n : ℕ) : ℤ :=
  A072474.P14611267747009341394.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072474.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A072626.P14153501150869386867

`A000035(A050500(n+2))`
-/

namespace A072626.P14153501150869386867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A050500 (n + 2)).toNat

end

end A072626.P14153501150869386867

noncomputable section

/-- A072626: Parity of floor(n/log(n)).

Offset 2, canonical program `A072626.P14153501150869386867`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072626 (n : ℕ) : ℤ :=
  A072626.P14153501150869386867.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072626.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A072785.P59472633773466682

`floor((2*A000027(n+1)-A003056(n)²-A003056(n))/(A003056(n)+3))*(-1)^A003056(n)`
-/

namespace A072785.P59472633773466682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(2 * A000027 (n + 1) - A003056 n ^ 2 - A003056 n : ℚ) / (A003056 n + 3 : ℚ)⌋ : ℚ) * (-1 : ℚ) ^ (A003056 n : ℤ)

end

end A072785.P59472633773466682

noncomputable section

/-- A072785: Differences between A072781 and A072738.

Offset 0, canonical program `A072785.P59472633773466682`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072785 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A072785.P59472633773466682.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072785.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A072819.P14090172225751623983

`4*A008911(n)`
-/

namespace A072819.P14090172225751623983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A008911 n

end

end A072819.P14090172225751623983

noncomputable section

/-- A072819: Variance of time for a random walk starting at 0 to reach one of the boundaries at +n or -n for the first time.

Offset 0, canonical program `A072819.P14090172225751623983`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072819 (n : ℕ) : ℤ :=
  A072819.P14090172225751623983.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072819.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A073028.P3432969580091455249

`C(n-A060065(n), A060065(n))`
-/

namespace A073028.P3432969580091455249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n : ℤ) - A060065 n).toNat (A060065 n).toNat

end

end A073028.P3432969580091455249

noncomputable section

/-- A073028: a(n) = max{ C(n,0), C(n-1,1), C(n-2,2), ..., C(n-n,n) }.

Offset 0, canonical program `A073028.P3432969580091455249`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073028 (n : ℕ) : ℤ :=
  (A073028.P3432969580091455249.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073028.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A073123.P10114706800614711162

`A000040(A000040(n+1)+1)-1`
-/

namespace A073123.P10114706800614711162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (n + 1) + 1).toNat - 1

end

end A073123.P10114706800614711162

noncomputable section

/-- A073123: a(n) is the largest number such that pi(a(n)) = prime(n).

Offset 1, canonical program `A073123.P10114706800614711162`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073123 (n : ℕ) : ℤ :=
  A073123.P10114706800614711162.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073123.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A073353.P4516188460080726977

`n+1+A007947(n+1)`
-/

namespace A073353.P4516188460080726977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A007947 (n + 1)

end

end A073353.P4516188460080726977

noncomputable section

/-- A073353: Sum of n and its squarefree kernel.

Offset 1, canonical program `A073353.P4516188460080726977`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073353 (n : ℕ) : ℤ :=
  A073353.P4516188460080726977.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073353.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A073354.P15295054596295826967

`C(n+1, A007947(n+1))`
-/

namespace A073354.P15295054596295826967
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A007947 (n + 1)).toNat

end

end A073354.P15295054596295826967

noncomputable section

/-- A073354: Binomial coefficient ( n, squarefree kernel(n) ).

Offset 1, canonical program `A073354.P15295054596295826967`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073354 (n : ℕ) : ℤ :=
  (A073354.P15295054596295826967.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073354.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A073888.P14403131331629854041

`2^A058798(n)`
-/

namespace A073888.P14403131331629854041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A058798 n : ℤ)

end

end A073888.P14403131331629854041

noncomputable section

/-- A073888: a(1) = 1, a(2) = 2; a(n+1) = a(n)^n/a(n-1).

Offset 1, canonical program `A073888.P14403131331629854041`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073888 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A073888.P14403131331629854041.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073888.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A073890.P1056685676492882943

`(n+1)/A067815(n+1)`
-/

namespace A073890.P1056685676492882943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A067815 (n + 1) : ℚ)

end

end A073890.P1056685676492882943

noncomputable section

/-- A073890: Numerator of n/floor(sqrt(n)).

Offset 1, canonical program `A073890.P1056685676492882943`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073890 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A073890.P1056685676492882943.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A073890.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A074056.P12732197370920598053

`a(n-1)*A057438(n+1)` with `a(0)=1`
-/

namespace A074056.P12732197370920598053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A057438 (n + 1)

end

end A074056.P12732197370920598053

noncomputable section

/-- A074056: a(n) = a(n-1)^3/a(n-2)^2 + a(n-1)*a(n-2) with a(1) = a(2) = 1.

Offset 1, canonical program `A074056.P12732197370920598053`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074056 (n : ℕ) : ℤ :=
  A074056.P12732197370920598053.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074056.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A074058.P13514722203274937124

`(-1)^n*A073937(n)`
-/

namespace A074058.P13514722203274937124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A073937 n

end

end A074058.P13514722203274937124

noncomputable section

/-- A074058: Reflected tetranacci numbers A073817.

Offset 0, canonical program `A074058.P13514722203274937124`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074058 (n : ℕ) : ℤ :=
  A074058.P13514722203274937124.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074058.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A074116.P5873740248549221374

`2^A066343(n+1)`
-/

namespace A074116.P5873740248549221374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A066343 (n + 1) : ℤ)

end

end A074116.P5873740248549221374

noncomputable section

/-- A074116: Largest n-digit power of 2.

Offset 1, canonical program `A074116.P5873740248549221374`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074116 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A074116.P5873740248549221374.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074116.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A074285.P13038604939427256824

`A000203(A000217(n+1))`
-/

namespace A074285.P13038604939427256824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000217 (n + 1)).toNat

end

end A074285.P13038604939427256824

noncomputable section

/-- A074285: Sum of the divisors of n-th triangular number.

Offset 1, canonical program `A074285.P13038604939427256824`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074285 (n : ℕ) : ℤ :=
  A074285.P13038604939427256824.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074285.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A074400.P16312391460013478761

`2*A000203(n+1)`
-/

namespace A074400.P16312391460013478761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000203 (n + 1)

end

end A074400.P16312391460013478761

noncomputable section

/-- A074400: Sum of the even divisors of 2n.

Offset 1, canonical program `A074400.P16312391460013478761`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074400 (n : ℕ) : ℤ :=
  A074400.P16312391460013478761.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074400.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A074941.P8071064073902629458

`A010872(A000203(n+1))`
-/

namespace A074941.P8071064073902629458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A000203 (n + 1)).toNat

end

end A074941.P8071064073902629458

noncomputable section

/-- A074941: a(n) = sigma(n) mod 3.

Offset 1, canonical program `A074941.P8071064073902629458`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074941 (n : ℕ) : ℤ :=
  A074941.P8071064073902629458.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074941.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A074990.P1274090054860792734

`A000720(3*(n+1))-A000720(n+1)`
-/

namespace A074990.P1274090054860792734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (3 * (n + 1)) - A000720 (n + 1)

end

end A074990.P1274090054860792734

noncomputable section

/-- A074990: Number of primes in the interval (n,3n].

Offset 1, canonical program `A074990.P1274090054860792734`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074990 (n : ℕ) : ℤ :=
  A074990.P1274090054860792734.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A074990.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A075059.P13005941669399506084

`1+A003418(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A075059.P13005941669399506084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A003418 n

end

end A075059.P13005941669399506084

noncomputable section

/-- A075059: a(n) = 1 + lcm(1, 2, ..., n) = 1 + A003418(n).

Offset 0, canonical program `A075059.P13005941669399506084`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075059 (n : ℕ) : ℤ :=
  A075059.P13005941669399506084.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075059.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A075104.P6994056113091172515

`gcd(n+1, A000523(n+1))`
-/

namespace A075104.P6994056113091172515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000523 (n + 1))

end

end A075104.P6994056113091172515

noncomputable section

/-- A075104: Greatest common divisor of n and integer part of log_2(n).

Offset 1, canonical program `A075104.P6994056113091172515`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075104 (n : ℕ) : ℤ :=
  (A075104.P6994056113091172515.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075104.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A075119.P17054687099876462793

`A000196(n+1)/A067815(n+1)`
-/

namespace A075119.P17054687099876462793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000196 (n + 1) : ℚ) / (A067815 (n + 1) : ℚ)

end

end A075119.P17054687099876462793

noncomputable section

/-- A075119: Denominator of n/floor(sqrt(n)); numerator is A073890(n).

Offset 1, canonical program `A075119.P17054687099876462793`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075119 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A075119.P17054687099876462793.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075119.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A075150.P6709441431228982623

`(-1)^n*A001254(n)`
-/

namespace A075150.P6709441431228982623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A001254 n

end

end A075150.P6709441431228982623

noncomputable section

/-- A075150: a(n) = L(n)*C(n), L(n)=Lucas numbers (A000032), C(n)=reflected Lucas numbers (see comment to A061084).

Offset 0, canonical program `A075150.P6709441431228982623`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075150 (n : ℕ) : ℤ :=
  A075150.P6709441431228982623.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075150.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A075319.P9049366003982921558

`A075317(n+1)+A075318(n+1)`
-/

namespace A075319.P9049366003982921558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075317 (n + 1) + A075318 (n + 1)

end

end A075319.P9049366003982921558

noncomputable section

/-- A075319: Pair the odd numbers such that the k-th pair is (r, r+2k) where r is the smallest odd number not included earlier: (1,3),(5,9),(7,13),(11,19),(15,25),(17,29),(21,35),(23,39),(27,45),... This is the sequence of the sum of the members of pairs.

Offset 1, canonical program `A075319.P9049366003982921558`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075319 (n : ℕ) : ℤ :=
  A075319.P9049366003982921558.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075319.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A075320.P2426209755735520172

`A075317(n+1)*A075318(n+1)`
-/

namespace A075320.P2426209755735520172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075317 (n + 1) * A075318 (n + 1)

end

end A075320.P2426209755735520172

noncomputable section

/-- A075320: Pair the odd numbers such that the k-th pair is (r, r+2k) where r is the smallest odd number not included earlier: (1, 3), (5, 9), (7, 13), (11, 19), (15, 25), (17, 29), (21, 35), (23, 39), (27, 45), ... This is the sequence of the product of the members of pairs.

Offset 1, canonical program `A075320.P2426209755735520172`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075320 (n : ℕ) : ℤ :=
  A075320.P2426209755735520172.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075320.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A075411.P3946849046165392203

`A002276(n)²`
-/

namespace A075411.P3946849046165392203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 n ^ 2

end

end A075411.P3946849046165392203

noncomputable section

/-- A075411: Squares of A002276.

Offset 0, canonical program `A075411.P3946849046165392203`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075411 (n : ℕ) : ℤ :=
  A075411.P3946849046165392203.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075411.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A075412.P250540107073247414

`A002277(n)²`
-/

namespace A075412.P250540107073247414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002277 n ^ 2

end

end A075412.P250540107073247414

noncomputable section

/-- A075412: Squares of A002277.

Offset 0, canonical program `A075412.P250540107073247414`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075412 (n : ℕ) : ℤ :=
  A075412.P250540107073247414.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075412.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A075413.P15256953375010345913

`A002278(n)²`
-/

namespace A075413.P15256953375010345913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002278 n ^ 2

end

end A075413.P15256953375010345913

noncomputable section

/-- A075413: Squares of A002278.

Offset 0, canonical program `A075413.P15256953375010345913`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075413 (n : ℕ) : ℤ :=
  A075413.P15256953375010345913.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075413.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A075414.P18308230916955902644

`25*A002275(n)²`
-/

namespace A075414.P18308230916955902644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  25 * A002275 n ^ 2

end

end A075414.P18308230916955902644

noncomputable section

/-- A075414: Squares of A002279: a(n) = (5*(10^n - 1)/9)^2.

Offset 0, canonical program `A075414.P18308230916955902644`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075414 (n : ℕ) : ℤ :=
  A075414.P18308230916955902644.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075414.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A075415.P11021567169670253529

`A002283(n)*A002278(n)`
-/

namespace A075415.P11021567169670253529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n * A002278 n

end

end A075415.P11021567169670253529

noncomputable section

/-- A075415: Squares of A002280 or numbers (666...6)^2.

Offset 0, canonical program `A075415.P11021567169670253529`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075415 (n : ℕ) : ℤ :=
  A075415.P11021567169670253529.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075415.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A075416.P12867209049900702389

`A002281(n)²`
-/

namespace A075416.P12867209049900702389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002281 n ^ 2

end

end A075416.P12867209049900702389

noncomputable section

/-- A075416: Squares of A002281.

Offset 0, canonical program `A075416.P12867209049900702389`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075416 (n : ℕ) : ℤ :=
  A075416.P12867209049900702389.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075416.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A075417.P7598423870228793073

`64*A002275(n)²`
-/

namespace A075417.P7598423870228793073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  64 * A002275 n ^ 2

end

end A075417.P7598423870228793073

noncomputable section

/-- A075417: Squares of A002282: a(n) = (8*(10^n - 1)/9)^2.

Offset 0, canonical program `A075417.P7598423870228793073`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075417 (n : ℕ) : ℤ :=
  A075417.P7598423870228793073.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075417.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A075699.P3710310327471917167

`A000720(4*(n+1))-A000720(n+1)`
-/

namespace A075699.P3710310327471917167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (4 * (n + 1)) - A000720 (n + 1)

end

end A075699.P3710310327471917167

noncomputable section

/-- A075699: Number of primes in the interval (n,4n].

Offset 1, canonical program `A075699.P3710310327471917167`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075699 (n : ℕ) : ℤ :=
  A075699.P3710310327471917167.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075699.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A075708.P5598313296190195080

`A000203(A000225(n+1))`
-/

namespace A075708.P5598313296190195080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000225 (n + 1)).toNat

end

end A075708.P5598313296190195080

noncomputable section

/-- A075708: Sum of the divisors of 2^n - 1.

Offset 1, canonical program `A075708.P5598313296190195080`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075708 (n : ℕ) : ℤ :=
  A075708.P5598313296190195080.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075708.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A075828.P3872734700419893431

`A024168(n+1)/gcd(A024168(n+1), A024168(n))`
-/

namespace A075828.P3872734700419893431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024168 (n + 1) : ℚ) / (Int.gcd (A024168 (n + 1)) (A024168 n) : ℚ)

end

end A075828.P3872734700419893431

noncomputable section

/-- A075828: Let u(1) = x and u(n+1) = (n^2/u(n)) + 1 for n >= 1; then a(n) is such that u(n) =(b(n)*x + a(n))/(c(n)*x + d(n)) (in lowest terms) and a(n), b(n), c(n), d(n) are positive integers.

Offset 1, canonical program `A075828.P3872734700419893431`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075828 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A075828.P3872734700419893431.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075828.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A075829.P4591232702968774976

`A024168(n)/gcd(A024168(n), A024168(n+1))`
-/

namespace A075829.P4591232702968774976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024168 n : ℚ) / (Int.gcd (A024168 n) (A024168 (n + 1)) : ℚ)

end

end A075829.P4591232702968774976

noncomputable section

/-- A075829: Let u(1) = x and u(n+1) = (n^2/u(n)) + 1 for n >= 1; then a(n) is such that u(n) = (b(n)*x + c(n))/(d(n)*x + a(n)) (in lowest terms) and a(n), b(n), c(n), d(n) are positive integers.

Offset 1, canonical program `A075829.P4591232702968774976`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075829 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A075829.P4591232702968774976.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075829.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A075891.P10980130095552009349

`A000108((A000040(n+2)-1)/2)`
-/

namespace A075891.P10980130095552009349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.roundAway ((A000040 (n + 2) - 1 : ℚ) / 2)).toNat

end

end A075891.P10980130095552009349

noncomputable section

/-- A075891: Quotient C[p(n),{p(n)+-1}/2]/p(n), where p(n)=n-th prime.

Offset 2, canonical program `A075891.P10980130095552009349`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075891 (n : ℕ) : ℤ :=
  A075891.P10980130095552009349.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A075891.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A076035.P12093958128708761214

`(16*a(n-1)-4*A000108(n-1))/3` with `a(0)=1`
-/

namespace A076035.P12093958128708761214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (16 * a (n - 1) - (4 * A000108 (n - 1) : ℚ)) / 3

end

end A076035.P12093958128708761214

noncomputable section

/-- A076035: Expansion of g.f. 1/(1-4*x*C) where C = (1/2-1/2*(1-4*x)^(1/2))/x = g.f. for Catalan numbers A000108.

Offset 0, canonical program `A076035.P12093958128708761214`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076035 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A076035.P12093958128708761214.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076035.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A076036.P13911866391085704958

`(25*a(n-1)-5*A000108(n-1))/4` with `a(0)=1`
-/

namespace A076036.P13911866391085704958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (25 * a (n - 1) - (5 * A000108 (n - 1) : ℚ)) / 4

end

end A076036.P13911866391085704958

noncomputable section

/-- A076036: G.f.: 1/(1 - 5*x*C(x)), where C(x) = (1 - sqrt(1 - 4*x))/(2*x) = g.f. for the Catalan numbers A000108.

Offset 0, canonical program `A076036.P13911866391085704958`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076036 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A076036.P13911866391085704958.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076036.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A076040.P12163343658986531048

`(-1)^n*A003462(n)`
-/

namespace A076040.P12163343658986531048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A003462 n

end

end A076040.P12163343658986531048

noncomputable section

/-- A076040: a(n) = (-1)^n * (3^n - 1)/2.

Offset 0, canonical program `A076040.P12163343658986531048`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076040 (n : ℕ) : ℤ :=
  A076040.P12163343658986531048.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076040.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A076312.P9189460286517996944

`A059995(n)+2*A010879(n)`
-/

namespace A076312.P9189460286517996944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 n + 2 * A010879 n

end

end A076312.P9189460286517996944

noncomputable section

/-- A076312: a(n) = floor(n/10) + 2*(n mod 10).

Offset 0, canonical program `A076312.P9189460286517996944`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076312 (n : ℕ) : ℤ :=
  A076312.P9189460286517996944.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076312.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A076334.P17741654376477125512

`A007947(n+2)-A007947(n+1)`
-/

namespace A076334.P17741654376477125512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 2) - A007947 (n + 1)

end

end A076334.P17741654376477125512

noncomputable section

/-- A076334: Differences between successive squarefree kernels.

Offset 1, canonical program `A076334.P17741654376477125512`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076334 (n : ℕ) : ℤ :=
  A076334.P17741654376477125512.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076334.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A076618.P8099091245670450071

`A007947(n+1)+1`
-/

namespace A076618.P8099091245670450071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) + 1

end

end A076618.P8099091245670450071

noncomputable section

/-- A076618: Least x>1 such that x^d == 1 (mod d) for each divisor d of n.

Offset 1, canonical program `A076618.P8099091245670450071`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076618 (n : ℕ) : ℤ :=
  A076618.P8099091245670450071.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076618.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A076729.P4306103095739859432

`2^n*A034430(n)`
-/

namespace A076729.P4306103095739859432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A034430 n

end

end A076729.P4306103095739859432

noncomputable section

/-- A076729: a(n) = A001147(n+1) * Integral_{x=0..1} (1 + x^2)^n dx.

Offset 0, canonical program `A076729.P4306103095739859432`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076729 (n : ℕ) : ℤ :=
  A076729.P4306103095739859432.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076729.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A076877.P347906767039016912

`1+2*A053644(n+1)`
-/

namespace A076877.P347906767039016912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * A053644 (n + 1)

end

end A076877.P347906767039016912

noncomputable section

/-- A076877: a(n) = A020330(n) / n.

Offset 1, canonical program `A076877.P347906767039016912`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076877 (n : ℕ) : ℤ :=
  A076877.P347906767039016912.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076877.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A076930.P16490374542533461625

`A007947(n+1)^(n+1)/(n+1)`
-/

namespace A076930.P16490374542533461625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) ^ (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A076930.P16490374542533461625

noncomputable section

/-- A076930: Smallest k such that n*k is an n-th power.

Offset 1, canonical program `A076930.P16490374542533461625`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076930 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A076930.P16490374542533461625.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076930.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A076936.P14071532336239768322

`2^A014682(n)`
-/

namespace A076936.P14071532336239768322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A014682 n : ℤ)

end

end A076936.P14071532336239768322

noncomputable section

/-- A076936: a(1) = 1; then the smallest number different from its predecessor such that the n-th partial product is an n-th power.

Offset 1, canonical program `A076936.P14071532336239768322`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076936 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A076936.P14071532336239768322.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A076936.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077086.P10461704167105930803

`A000203(n+2)%A000203(n+1)`
-/

namespace A077086.P10461704167105930803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 2)) (A000203 (n + 1))

end

end A077086.P10461704167105930803

noncomputable section

/-- A077086: Remainder when sigma(n+1) is divided by sigma(n).

Offset 1, canonical program `A077086.P10461704167105930803`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077086 (n : ℕ) : ℤ :=
  A077086.P10461704167105930803.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077086.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077115.P827730253123068802

`A048761(n^3)`
-/

namespace A077115.P827730253123068802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048761 (n ^ 3)

end

end A077115.P827730253123068802

noncomputable section

/-- A077115: Least integer square >= n^3.

Offset 0, canonical program `A077115.P827730253123068802`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077115 (n : ℕ) : ℤ :=
  A077115.P827730253123068802.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077115.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077119.P17256151960313143409

`A077118(n)-n^3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A077119.P17256151960313143409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077118 n - (n ^ 3 : ℤ)

end

end A077119.P17256151960313143409

noncomputable section

/-- A077119: a(n) = A077118(n) - n^3.

Offset 0, canonical program `A077119.P17256151960313143409`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077119 (n : ℕ) : ℤ :=
  A077119.P17256151960313143409.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077119.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077120.P9632200324540338006

`A000578(n)*A077118(n)`
-/

namespace A077120.P9632200324540338006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n * A077118 n

end

end A077120.P9632200324540338006

noncomputable section

/-- A077120: n^3 times nearest integer square to n^3.

Offset 0, canonical program `A077120.P9632200324540338006`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077120 (n : ℕ) : ℤ :=
  A077120.P9632200324540338006.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077120.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077147.P3811010944267521903

`floor(A007908(n+1)/(n+1))`
-/

namespace A077147.P3811010944267521903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007908 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A077147.P3811010944267521903

noncomputable section

/-- A077147: a(n) = floor({concatenation 123 ... up to n}/n).

Offset 1, canonical program `A077147.P3811010944267521903`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077147 (n : ℕ) : ℤ :=
  A077147.P3811010944267521903.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077147.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077261.P5826533451288904176

`5*A077260(n)`
-/

namespace A077261.P5826533451288904176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A077260 n

end

end A077261.P5826533451288904176

noncomputable section

/-- A077261: Triangular numbers that are 5 times another triangular number.

Offset 0, canonical program `A077261.P5826533451288904176`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077261 (n : ℕ) : ℤ :=
  A077261.P5826533451288904176.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077261.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077415.P16136648752436168051

`A077414(n+2)-A000292(n+2)`
-/

namespace A077415.P16136648752436168051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077414 (n + 2) - A000292 (n + 2)

end

end A077415.P16136648752436168051

noncomputable section

/-- A077415: a(n) = n*(n+2)*(n-2)/3.

Offset 2, canonical program `A077415.P16136648752436168051`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077415 (n : ℕ) : ℤ :=
  A077415.P16136648752436168051.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077415.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077694.P1372029401488759356

`A000217(A007908(n+1))`
-/

namespace A077694.P1372029401488759356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A007908 (n + 1)).toNat

end

end A077694.P1372029401488759356

noncomputable section

/-- A077694: a(n) = triangular number whose index is the concatenation of the first n natural numbers.

Offset 1, canonical program `A077694.P1372029401488759356`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077694 (n : ℕ) : ℤ :=
  A077694.P1372029401488759356.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077694.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078159.P2969682460774047245

`A055086(2^(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078159.P2969682460774047245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (2 ^ (n + 1))

end

end A078159.P2969682460774047245

noncomputable section

/-- A078159: a(n) = A055086(2^n).

Offset 1, canonical program `A078159.P2969682460774047245`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078159 (n : ℕ) : ℤ :=
  A078159.P2969682460774047245.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078159.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078160.P11759729529031580797

`A055086((n+1)!)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078160.P11759729529031580797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (Nat.factorial (n + 1))

end

end A078160.P11759729529031580797

noncomputable section

/-- A078160: a(n) = A055086(n!).

Offset 1, canonical program `A078160.P11759729529031580797`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078160 (n : ℕ) : ℤ :=
  A078160.P11759729529031580797.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078160.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078171.P15097859120339114672

`A055086(A000040(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078171.P15097859120339114672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A000040 (n + 1)).toNat

end

end A078171.P15097859120339114672

noncomputable section

/-- A078171: a(n) = A055086(A000040(n)).

Offset 1, canonical program `A078171.P15097859120339114672`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078171 (n : ℕ) : ℤ :=
  A078171.P15097859120339114672.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078171.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078422.P12376503140112654654

`A000040(n+2)^A000040(n+1)`
-/

namespace A078422.P12376503140112654654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 2) : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A078422.P12376503140112654654

noncomputable section

/-- A078422: a(n) = prime(n+1)^prime(n).

Offset 1, canonical program `A078422.P12376503140112654654`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078422 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A078422.P12376503140112654654.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078422.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078491.P15167737144172905274

`A003418(A000108(n))`
-/

namespace A078491.P15167737144172905274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A000108 n).toNat

end

end A078491.P15167737144172905274

noncomputable section

/-- A078491: a(n) = lcm(1..Catalan(n)).

Offset 0, canonical program `A078491.P15167737144172905274`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078491 (n : ℕ) : ℤ :=
  A078491.P15167737144172905274.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078491.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078617.P1339470262902785836

`floor(A000330(n+1)/(n+1))`
-/

namespace A078617.P1339470262902785836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000330 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A078617.P1339470262902785836

noncomputable section

/-- A078617: Floor(average of first n squares).

Offset 1, canonical program `A078617.P1339470262902785836`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078617 (n : ℕ) : ℤ :=
  A078617.P1339470262902785836.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078617.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078619.P1071406797044766145

`floor(A007489(n+1)/(n+1))`
-/

namespace A078619.P1071406797044766145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007489 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A078619.P1071406797044766145

noncomputable section

/-- A078619: Floor(average of first n factorials).

Offset 1, canonical program `A078619.P1071406797044766145`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078619 (n : ℕ) : ℤ :=
  A078619.P1071406797044766145.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078619.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078636.P18176940711855110838

`A007947(n+1)*A007947(n+2)`
-/

namespace A078636.P18176940711855110838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A007947 (n + 2)

end

end A078636.P18176940711855110838

noncomputable section

/-- A078636: a(n) = rad(n*(n+1)).

Offset 1, canonical program `A078636.P18176940711855110838`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078636 (n : ℕ) : ℤ :=
  A078636.P18176940711855110838.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078636.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078637.P3449017889750913495

`A007947(A033931(n+1))`
-/

namespace A078637.P3449017889750913495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A033931 (n + 1)).toNat

end

end A078637.P3449017889750913495

noncomputable section

/-- A078637: a(n) = rad(n(n+1)(n+2)), where rad(m) is the largest squarefree number dividing m (see A007947).

Offset 1, canonical program `A078637.P3449017889750913495`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078637 (n : ℕ) : ℤ :=
  A078637.P3449017889750913495.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078637.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078700.P11616980465027108275

`A000142(n)*A000045(n+2)`
-/

namespace A078700.P11616980465027108275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A000045 (n + 2)

end

end A078700.P11616980465027108275

noncomputable section

/-- A078700: Number of symmetric ways to lace a shoe that has n pairs of eyelets such that each eyelet has at least one direct connection to the opposite side.

Offset 1, canonical program `A078700.P11616980465027108275`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078700 (n : ℕ) : ℤ :=
  A078700.P11616980465027108275.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078700.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078705.P17275305234142086416

`A000196(A000203(n+1))`
-/

namespace A078705.P17275305234142086416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000203 (n + 1)).toNat

end

end A078705.P17275305234142086416

noncomputable section

/-- A078705: Integer part of the square root of sigma(n).

Offset 1, canonical program `A078705.P17275305234142086416`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078705 (n : ℕ) : ℤ :=
  A078705.P17275305234142086416.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078705.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078708.P10580976102168084767

`(A000203(3*(n+1))-A000203(n+1))/3`
-/

namespace A078708.P10580976102168084767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (3 * (n + 1)) - A000203 (n + 1) : ℚ) / 3

end

end A078708.P10580976102168084767

noncomputable section

/-- A078708: Sum of divisors d of n such that n/d is not congruent to 0 mod 3.

Offset 1, canonical program `A078708.P10580976102168084767`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078708 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A078708.P10580976102168084767.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078708.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078721.P3053392627358656708

`A000040(A000124(n))`
-/

namespace A078721.P3053392627358656708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000124 n).toNat

end

end A078721.P3053392627358656708

noncomputable section

/-- A078721: a(n) = prime(n*(n+1)/2 + 1).

Offset 0, canonical program `A078721.P3053392627358656708`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078721 (n : ℕ) : ℤ :=
  A078721.P3053392627358656708.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078721.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078723.P8853180363963204527

`A000040(A000096(n+1))`
-/

namespace A078723.P8853180363963204527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000096 (n + 1)).toNat

end

end A078723.P8853180363963204527

noncomputable section

/-- A078723: a(n) = prime(n*(n+1)/2 + n).

Offset 1, canonical program `A078723.P8853180363963204527`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078723 (n : ℕ) : ℤ :=
  A078723.P8853180363963204527.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078723.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078746.P2444291317857137827

`A000040(A001844(n))`
-/

namespace A078746.P2444291317857137827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A001844 n).toNat

end

end A078746.P2444291317857137827

noncomputable section

/-- A078746: a(n) = prime(2*n*(n+1)+1).

Offset 0, canonical program `A078746.P2444291317857137827`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078746 (n : ℕ) : ℤ :=
  A078746.P2444291317857137827.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078746.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078818.P8047679729662426791

`30*A000984(n)/(n+3)`
-/

namespace A078818.P8047679729662426791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (30 * A000984 n : ℚ) / (n + 3 : ℚ)

end

end A078818.P8047679729662426791

noncomputable section

/-- A078818: a(n) = 30*binomial(2n,n)/(n+3).

Offset 0, canonical program `A078818.P8047679729662426791`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078818 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A078818.P8047679729662426791.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078818.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078819.P15327375035959524109

`140*A000984(n)/(n+4)`
-/

namespace A078819.P15327375035959524109
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (140 * A000984 n : ℚ) / (n + 4 : ℚ)

end

end A078819.P15327375035959524109

noncomputable section

/-- A078819: a(n) = 140*C(2n,n)/(n+4).

Offset 0, canonical program `A078819.P15327375035959524109`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078819 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A078819.P15327375035959524109.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078819.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078881.P16027770372899334795

`A006165(n+2)`
-/

namespace A078881.P16027770372899334795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006165 (n + 2)

end

end A078881.P16027770372899334795

noncomputable section

/-- A078881: Size of the largest subset S of {1,2,3,...,n} with the property that if i and j are distinct elements of S then i XOR j is not in S, where XOR is the bitwise exclusive-OR operator.

Offset 1, canonical program `A078881.P16027770372899334795`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078881 (n : ℕ) : ℤ :=
  A078881.P16027770372899334795.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078881.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A078916.P983057791460608318

`A000040(n+1)+A005843(n+1)`
-/

namespace A078916.P983057791460608318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A005843 (n + 1)

end

end A078916.P983057791460608318

noncomputable section

/-- A078916: a(n) = prime(n) + 2*n.

Offset 1, canonical program `A078916.P983057791460608318`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078916 (n : ℕ) : ℤ :=
  A078916.P983057791460608318.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A078916.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A079034.P6997679153751098089

`A002415(n)+1`
-/

namespace A079034.P6997679153751098089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 n + 1

end

end A079034.P6997679153751098089

noncomputable section

/-- A079034: Determinant of M(n), the n X n matrix defined by m(i,i) = 1, m(i,j) = i-j.

Offset 0, canonical program `A079034.P6997679153751098089`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079034 (n : ℕ) : ℤ :=
  A079034.P6997679153751098089.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079034.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A079291.P10024746228279506186

`A000129(n)²`
-/

namespace A079291.P10024746228279506186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n ^ 2

end

end A079291.P10024746228279506186

noncomputable section

/-- A079291: Squares of Pell numbers.

Offset 0, canonical program `A079291.P10024746228279506186`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079291 (n : ℕ) : ℤ :=
  A079291.P10024746228279506186.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079291.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A079303.P16607349722935617848

`A000254(A000040(n+3)-1)/(2*A000040(n+3)²)`
-/

namespace A079303.P16607349722935617848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000254 (A000040 (n + 3) - 1).toNat : ℚ) / (2 * A000040 (n + 3) ^ 2 : ℚ)

end

end A079303.P16607349722935617848

noncomputable section

/-- A079303: a(n) = ((p-1)!/(2*p^2)) * Sum_{j=1..p-1} 1/j where p is the n-th prime.

Offset 3, canonical program `A079303.P16607349722935617848`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079303 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A079303.P16607349722935617848.a (n - 3))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079303.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A079472.P15749559243718195313

`2*A001654(n)`
-/

namespace A079472.P15749559243718195313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001654 n

end

end A079472.P15749559243718195313

noncomputable section

/-- A079472: Number of perfect matchings on an n X n L-shaped graph.

Offset 1, canonical program `A079472.P15749559243718195313`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079472 (n : ℕ) : ℤ :=
  A079472.P15749559243718195313.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079472.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A079478.P5002699263476771425

`A000178(2*n)/A000178(n)²`
-/

namespace A079478.P5002699263476771425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000178 (2 * n) : ℚ) / (A000178 n ^ 2 : ℚ)

end

end A079478.P5002699263476771425

noncomputable section

/-- A079478: Coefficient of x^0 in P(n,x) = (Product_{i=0..n-1} i!^2)/matdet(M(n)) of degree n^2 where M(n) is the n X n matrix m(i,j) = 1/(i+j+x).

Offset 0, canonical program `A079478.P5002699263476771425`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079478 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A079478.P5002699263476771425.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079478.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A079613.P8290668010841187312

`A000045(A007283(n))`
-/

namespace A079613.P8290668010841187312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A007283 n).toNat

end

end A079613.P8290668010841187312

noncomputable section

/-- A079613: a(n) = F(3*2^n) where F(k) denotes the k-th Fibonacci number.

Offset 0, canonical program `A079613.P8290668010841187312`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079613 (n : ℕ) : ℤ :=
  A079613.P8290668010841187312.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079613.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A079757.P11029413421237544602

`A057079(2*n+1)-(-1)^floor((2*n+1)/2)`
-/

namespace A079757.P11029413421237544602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057079 (2 * n + 1) : ℚ) - (-1 : ℚ) ^ (⌊(2 * n + 1 : ℚ) / 2⌋ : ℤ)

end

end A079757.P11029413421237544602

noncomputable section

/-- A079757: Periodic sequence 1, 0, -2, 3, -2, 0, ...

Offset 0, canonical program `A079757.P11029413421237544602`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079757 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A079757.P11029413421237544602.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079757.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A079884.P8102187884374382160

`2*(n+3)!-1+A079750(n+3)+A079753(n+3)`
-/

namespace A079884.P8102187884374382160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.factorial (n + 3) : ℤ) - 1 + A079750 (n + 3) + A079753 (n + 3)

end

end A079884.P8102187884374382160

noncomputable section

/-- A079884: Number of comparisons required to create all permutations of n distinct elements using the "streamlined" version of Algorithm L (lexicographic permutation generation) from Knuth's The Art of Computer Programming, Vol. 4, chapter 7.2.1.2.

Offset 3, canonical program `A079884.P8102187884374382160`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079884 (n : ℕ) : ℤ :=
  A079884.P8102187884374382160.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A079884.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A080041.P13302301843660589265

`A080040(n)-(1+(-1)^n)/2`
-/

namespace A080041.P13302301843660589265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080040 n : ℚ) - (1 + (-1) ^ n : ℚ) / 2

end

end A080041.P13302301843660589265

noncomputable section

/-- A080041: a(n) = floor((1+sqrt(3))^n).

Offset 0, canonical program `A080041.P13302301843660589265`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080041 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A080041.P13302301843660589265.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080041.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A080043.P6690340171102988928

`A080042(n)-(1+(-1)^n)/2`
-/

namespace A080043.P6690340171102988928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080042 n : ℚ) - (1 + (-1) ^ n : ℚ) / 2

end

end A080043.P6690340171102988928

noncomputable section

/-- A080043: a(n)=floor((2+sqrt(7))^n).

Offset 0, canonical program `A080043.P6690340171102988928`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080043 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A080043.P6690340171102988928.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080043.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A080079.P157048171739867416

`A062383(n+1)-(n+1)`
-/

namespace A080079.P157048171739867416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (n + 1) - (n + 1 : ℤ)

end

end A080079.P157048171739867416

noncomputable section

/-- A080079: Least number causing the longest carry sequence when adding numbers <= n to n in binary representation.

Offset 1, canonical program `A080079.P157048171739867416`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080079 (n : ℕ) : ℤ :=
  A080079.P157048171739867416.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080079.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A080143.P15882219857944714637

`(3*A027941(n)+7*A001654(n))/2`
-/

namespace A080143.P15882219857944714637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A027941 n + 7 * A001654 n : ℚ) / 2

end

end A080143.P15882219857944714637

noncomputable section

/-- A080143: a(n) = F(3)*F(n)*F(n+1) + F(4)*F(n+1)^2 - F(4) if n even, F(3)*F(n)*F(n+1) + F(4)*F(n+1)^2 if n odd, where F(n) is the n-th Fibonacci number (A000045).

Offset 0, canonical program `A080143.P15882219857944714637`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080143 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A080143.P15882219857944714637.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080143.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A080144.P8666941854186962833

`(5*A027941(n)+11*A001654(n))/2`
-/

namespace A080144.P8666941854186962833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * A027941 n + 11 * A001654 n : ℚ) / 2

end

end A080144.P8666941854186962833

noncomputable section

/-- A080144: a(n) = F(4)*F(n)*F(n+1) + F(5)*F(n+1)^2 if n odd, a(n) = F(4)*F(n)*F(n+1) + F(5)*F(n+1)^2 - F(5) if n even, where F(n) is the n-th Fibonacci number (A000045).

Offset 0, canonical program `A080144.P8666941854186962833`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080144 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A080144.P8666941854186962833.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080144.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A080278.P16077055743499868279

`(3^(A007949(n+1)+1)-1)/2`
-/

namespace A080278.P16077055743499868279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 : ℚ) ^ (A007949 (n + 1) + 1 : ℤ) - 1) / 2

end

end A080278.P16077055743499868279

noncomputable section

/-- A080278: a(n) = (3^(v_3(n) + 1) - 1)/2, where v_3(n) = highest power of 3 dividing n = A007949(n).

Offset 1, canonical program `A080278.P16077055743499868279`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080278 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A080278.P16077055743499868279.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080278.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A080322.P5409884554699055352

`A010892(n+1)-(n+2)²*A010892(n)`
-/

namespace A080322.P5409884554699055352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 1) - ((n + 2) ^ 2 : ℤ) * A010892 n

end

end A080322.P5409884554699055352

noncomputable section

/-- A080322: Determinant of the n X n tridiagonal matrix M with the elements on the diagonals equal to 1, except M(n,n-1)=M(n-1,n)=n.

Offset 2, canonical program `A080322.P5409884554699055352`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080322 (n : ℕ) : ℤ :=
  A080322.P5409884554699055352.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080322.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A080343.P17491293385629431961

`A023969(2*n)`
-/

namespace A080343.P17491293385629431961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023969 (2 * n)

end

end A080343.P17491293385629431961

noncomputable section

/-- A080343: a(n) = round(sqrt(2*n)) - floor(sqrt(2*n)).

Offset 0, canonical program `A080343.P17491293385629431961`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(sqrt(2*n))-floor(sqrt(2*n))` (program `A080343.P18029586935509098161`, by `A080343.P18029586935509098161.correct`). Lean does not check the parsing of the name. -/
def A080343 (n : ℕ) : ℤ :=
  A080343.P17491293385629431961.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(sqrt(2*n))-floor(sqrt(2*n))` (program `A080343.P18029586935509098161`, by `A080343.P18029586935509098161.correct`). Lean does not check the parsing of the name. -/
def A080343.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A080397.P6836437732879293385

`A007947(A000984(n))`
-/

namespace A080397.P6836437732879293385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A000984 n).toNat

end

end A080397.P6836437732879293385

noncomputable section

/-- A080397: Largest squarefree number dividing central binomial coefficient A000984(n).

Offset 0, canonical program `A080397.P6836437732879293385`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080397 (n : ℕ) : ℤ :=
  A080397.P6836437732879293385.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080397.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A080398.P9404556871884518458

`A007947(A000203(n+1))`
-/

namespace A080398.P9404556871884518458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A000203 (n + 1)).toNat

end

end A080398.P9404556871884518458

noncomputable section

/-- A080398: Largest squarefree number dividing sum of divisors of n.

Offset 1, canonical program `A080398.P9404556871884518458`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080398 (n : ℕ) : ℤ :=
  A080398.P9404556871884518458.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080398.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A080757.P8773996114739454746

`A007538(n+1)-1`
-/

namespace A080757.P8773996114739454746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007538 (n + 1) - 1

end

end A080757.P8773996114739454746

noncomputable section

/-- A080757: First differences of Beatty sequence A022838(n) = floor(n sqrt(3)).

Offset 0, canonical program `A080757.P8773996114739454746`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080757 (n : ℕ) : ℤ :=
  A080757.P8773996114739454746.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080757.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A080801.P9987531529484354991

`A008687(n+3)`
-/

namespace A080801.P9987531529484354991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (n + 3)

end

end A080801.P9987531529484354991

noncomputable section

/-- A080801: Similar to A080799 but count only addition steps.

Offset 1, canonical program `A080801.P9987531529484354991`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080801 (n : ℕ) : ℤ :=
  A080801.P9987531529484354991.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080801.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A080820.P3405857355669494182

`A080819(n+1)^(1/2)`
-/

namespace A080820.P3405857355669494182
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A080819 (n + 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)

end

end A080820.P3405857355669494182

noncomputable section

/-- A080820: Least m such that m^2 >= n*(n+1)/2.

Offset 1, canonical program `A080820.P3405857355669494182`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080820 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A080820.P3405857355669494182.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080820.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A080956.P12689175688767201437

`n+1-A000217(n)`
-/

namespace A080956.P12689175688767201437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000217 n

end

end A080956.P12689175688767201437

noncomputable section

/-- A080956: a(n) = (n+1)*(2-n)/2.

Offset 0, canonical program `A080956.P12689175688767201437`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(2-n)/2` (program `A080956.P12720933183541286972`, by `A080956.P12720933183541286972.correct`). Lean does not check the parsing of the name. -/
def A080956 (n : ℕ) : ℤ :=
  A080956.P12689175688767201437.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(2-n)/2` (program `A080956.P12720933183541286972`, by `A080956.P12720933183541286972.correct`). Lean does not check the parsing of the name. -/
def A080956.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A080978.P8726104547884348525

`2*A006046(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A080978.P8726104547884348525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006046 n + 1

end

end A080978.P8726104547884348525

noncomputable section

/-- A080978: a(n) = 2*A006046(n) + 1.

Offset 0, canonical program `A080978.P8726104547884348525`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080978 (n : ℕ) : ℤ :=
  A080978.P8726104547884348525.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080978.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081072.P6725620215786614116

`3+A033888(n)`
-/

namespace A081072.P6725620215786614116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 + A033888 n

end

end A081072.P6725620215786614116

noncomputable section

/-- A081072: a(n) = Fibonacci(4*n) + 3, or Fibonacci(2*n+2)*Lucas(2*n-2).

Offset 0, canonical program `A081072.P6725620215786614116`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081072 (n : ℕ) : ℤ :=
  A081072.P6725620215786614116.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081072.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081254.P10593241581811353927

`A000975(n)+2^n`
-/

namespace A081254.P10593241581811353927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n + (2 ^ n : ℤ)

end

end A081254.P10593241581811353927

noncomputable section

/-- A081254: Numbers k such that A081252(m)/m^2 has a local maximum for m = k.

Offset 1, canonical program `A081254.P10593241581811353927`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081254 (n : ℕ) : ℤ :=
  A081254.P10593241581811353927.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081254.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081293.P4681464809512952339

`A000108(n)+A014137(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081293.P4681464809512952339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + A014137 n

end

end A081293.P4681464809512952339

noncomputable section

/-- A081293: a(n) = A000108(n) + A014137(n).

Offset 0, canonical program `A081293.P4681464809512952339`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081293 (n : ℕ) : ℤ :=
  A081293.P4681464809512952339.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081293.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081341.P1992776411308600874

`A000244(n)*A011782(n)`
-/

namespace A081341.P1992776411308600874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A011782 n

end

end A081341.P1992776411308600874

noncomputable section

/-- A081341: Expansion of exp(3*x)*cosh(3*x).

Offset 0, canonical program `A081341.P1992776411308600874`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081341 (n : ℕ) : ℤ :=
  A081341.P1992776411308600874.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081341.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081476.P5809263402786271640

`2*A081475(n-1)*a(n-1)` with `a(0)=2`
-/

namespace A081476.P5809263402786271640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * A081475 (n - 1) * a (n - 1)

end

end A081476.P5809263402786271640

noncomputable section

/-- A081476: Consider the mapping f(x/y) = (x+y)/(2xy) where x/y is a reduced fraction. Beginning with x_0 = 1 and y_0 = 2, repeated application of this mapping produces a sequence of fractions x_n/y_n; a(n) is the n-th denominator.

Offset 0, canonical program `A081476.P5809263402786271640`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081476 (n : ℕ) : ℤ :=
  A081476.P5809263402786271640.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081476.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081528.P13309980270208809465

`A003418(n+1)*(n+1)`
-/

namespace A081528.P13309980270208809465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (n + 1) * (n + 1 : ℤ)

end

end A081528.P13309980270208809465

noncomputable section

/-- A081528: a(n) = n*lcm{1,2,...,n}.

Offset 1, canonical program `A081528.P13309980270208809465`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081528 (n : ℕ) : ℤ :=
  A081528.P13309980270208809465.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081528.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081601.P7694742959722061994

`3*A005836(n+1)`
-/

namespace A081601.P7694742959722061994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A005836 (n + 1)

end

end A081601.P7694742959722061994

noncomputable section

/-- A081601: Numbers m such that 3 does not divide Sum_{k=0..m} binomial(2k,k) = A006134(m).

Offset 1, canonical program `A081601.P7694742959722061994`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081601 (n : ℕ) : ℤ :=
  A081601.P7694742959722061994.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081601.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081666.P9890842432522954687

`n*3^(n-1)+A081567(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081666.P9890842432522954687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (A081567 n : ℚ)

end

end A081666.P9890842432522954687

noncomputable section

/-- A081666: n*3^(n-1)+A081567(n).

Offset 0, canonical program `A081666.P9890842432522954687`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081666 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A081666.P9890842432522954687.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081666.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081667.P13582439689550870142

`A000045(A000217(n+1))`
-/

namespace A081667.P13582439689550870142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000217 (n + 1)).toNat

end

end A081667.P13582439689550870142

noncomputable section

/-- A081667: a(n) = Fibonacci(binomial(n+2,2)).

Offset 0, canonical program `A081667.P13582439689550870142`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081667 (n : ℕ) : ℤ :=
  A081667.P13582439689550870142.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081667.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081827.P14419077917004219734

`A005185(n+2)-A005185(n+1)`
-/

namespace A081827.P14419077917004219734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (n + 2) - A005185 (n + 1)

end

end A081827.P14419077917004219734

noncomputable section

/-- A081827: Successive differences of Hofstadter Q-sequence.

Offset 1, canonical program `A081827.P14419077917004219734`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081827 (n : ℕ) : ℤ :=
  A081827.P14419077917004219734.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081827.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A082032.P9227803161975649599

`2^n*A000522(n)`
-/

namespace A082032.P9227803161975649599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000522 n

end

end A082032.P9227803161975649599

noncomputable section

/-- A082032: Expansion of e.g.f.: exp(2*x)/(1-2*x).

Offset 0, canonical program `A082032.P9227803161975649599`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082032 (n : ℕ) : ℤ :=
  A082032.P9227803161975649599.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082032.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A082365.P5652296555165269021

`4*A015565(n)+A015565(n+1)`
-/

namespace A082365.P5652296555165269021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A015565 n + A015565 (n + 1)

end

end A082365.P5652296555165269021

noncomputable section

/-- A082365: A Jacobsthal number sequence.

Offset 0, canonical program `A082365.P5652296555165269021`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082365 (n : ℕ) : ℤ :=
  A082365.P5652296555165269021.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082365.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A082368.P12661759483911251329

`A008977(n+1)/24`
-/

namespace A082368.P12661759483911251329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008977 (n + 1) : ℚ) / 24

end

end A082368.P12661759483911251329

noncomputable section

/-- A082368: a(n) = (4*n-1)! / (n! * n! * n! * (n-1)! * 3!).

Offset 1, canonical program `A082368.P12661759483911251329`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082368 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A082368.P12661759483911251329.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082368.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A082412.P15403250840934277229

`2^n*A001045(2*n+1)`
-/

namespace A082412.P15403250840934277229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001045 (2 * n + 1)

end

end A082412.P15403250840934277229

noncomputable section

/-- A082412: a(n) = (2*8^n + 2^n)/3.

Offset 0, canonical program `A082412.P15403250840934277229`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082412 (n : ℕ) : ℤ :=
  A082412.P15403250840934277229.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082412.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A082491.P14553396994209066988

`n!*A000166(n)`
-/

namespace A082491.P14553396994209066988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000166 n

end

end A082491.P14553396994209066988

noncomputable section

/-- A082491: a(n) = n! * d(n), where n! = factorial numbers (A000142), d(n) = subfactorial numbers (A000166).

Offset 0, canonical program `A082491.P14553396994209066988`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082491 (n : ℕ) : ℤ :=
  A082491.P14553396994209066988.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082491.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A082758.P14985198981559143875

`A002426(2*n)`
-/

namespace A082758.P14985198981559143875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 (2 * n)

end

end A082758.P14985198981559143875

noncomputable section

/-- A082758: Sum of the squares of the trinomial coefficients (A027907).

Offset 0, canonical program `A082758.P14985198981559143875`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082758 (n : ℕ) : ℤ :=
  A082758.P14985198981559143875.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082758.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A082762.P2252837519886206108

`2^n*A002878(n)`
-/

namespace A082762.P2252837519886206108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A002878 n

end

end A082762.P2252837519886206108

noncomputable section

/-- A082762: Trinomial transform of Lucas numbers (A000032).

Offset 0, canonical program `A082762.P2252837519886206108`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082762 (n : ℕ) : ℤ :=
  A082762.P2252837519886206108.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082762.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A082900.P11596540829630664572

`A082894(n+1)-A000079(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082900.P11596540829630664572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082894 (n + 1) - A000079 (n + 1)

end

end A082900.P11596540829630664572

noncomputable section

/-- A082900: a(n) = A082894(n)-A000079(n), the difference of 2^n and the number closest to it and divisible by n.

Offset 1, canonical program `A082900.P11596540829630664572`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082900 (n : ℕ) : ℤ :=
  A082900.P11596540829630664572.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082900.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A083086.P15318894095947502197

`(-1)^n*A000079(n)*A078008(n)`
-/

namespace A083086.P15318894095947502197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000079 n * A078008 n

end

end A083086.P15318894095947502197

noncomputable section

/-- A083086: a(n) = (2^(n+1) + (-4)^n)/3.

Offset 0, canonical program `A083086.P15318894095947502197`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083086 (n : ℕ) : ℤ :=
  A083086.P15318894095947502197.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083086.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A083228.P16210576374494080607

`A001045(C(n+2, 2))`
-/

namespace A083228.P16210576374494080607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (Nat.choose (n + 2) 2)

end

end A083228.P16210576374494080607

noncomputable section

/-- A083228: A Jacobsthal related sequence.

Offset 0, canonical program `A083228.P16210576374494080607`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083228 (n : ℕ) : ℤ :=
  A083228.P16210576374494080607.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083228.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A083322.P814296045214432664

`2^(n+1)-A081374(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083322.P814296045214432664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A081374 (n + 1)

end

end A083322.P814296045214432664

noncomputable section

/-- A083322: a(n) = 2^n - A081374(n).

Offset 1, canonical program `A083322.P814296045214432664`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083322 (n : ℕ) : ℤ :=
  A083322.P814296045214432664.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083322.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A083445.P10434029491111395614

`9*A083446(n+2)`
-/

namespace A083445.P10434029491111395614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A083446 (n + 2)

end

end A083445.P10434029491111395614

noncomputable section

/-- A083445: Largest n-digit number minus the product of its digits; i.e., a(n) = 99999... (n 9's) - 9^n.

Offset 2, canonical program `A083445.P10434029491111395614`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083445 (n : ℕ) : ℤ :=
  A083445.P10434029491111395614.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083445.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A083448.P10219045664575333824

`A007908(n+1)-A000142(n+1)`
-/

namespace A083448.P10219045664575333824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007908 (n + 1) - A000142 (n + 1)

end

end A083448.P10219045664575333824

noncomputable section

/-- A083448: Concatenation of first n numbers - n!. a(n) = 1234567891011... up to n - 1*2*3*4*5*6*7*8*9*10*11... up to n.

Offset 1, canonical program `A083448.P10219045664575333824`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083448 (n : ℕ) : ℤ :=
  A083448.P10219045664575333824.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083448.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A083539.P18082787048213749416

`A000203(A002378(n+1))`
-/

namespace A083539.P18082787048213749416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002378 (n + 1)).toNat

end

end A083539.P18082787048213749416

noncomputable section

/-- A083539: a(n) = sigma(n) * sigma(n+1): product of sigma-values for consecutive integers.

Offset 1, canonical program `A083539.P18082787048213749416`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083539 (n : ℕ) : ℤ :=
  A083539.P18082787048213749416.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083539.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A083697.P5603520656838925954

`2^(2^n-1)*A000045(2^n)`
-/

namespace A083697.P5603520656838925954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((2 ^ n : ℤ) - 1 : ℤ) * (A000045 (2 ^ n) : ℚ)

end

end A083697.P5603520656838925954

noncomputable section

/-- A083697: a(n) = 2^(2^n - 1) * Fibonacci(2^n).

Offset 0, canonical program `A083697.P5603520656838925954`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083697 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A083697.P5603520656838925954.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A083697.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084084.P11655744217698943536

`A000931(4*n+6)`
-/

namespace A084084.P11655744217698943536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (4 * n + 6)

end

end A084084.P11655744217698943536

noncomputable section

/-- A084084: Length of lists created by n substitutions k -> Range[0,1+Mod[k+1,3]] starting with {0}.

Offset 0, canonical program `A084084.P11655744217698943536`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084084 (n : ℕ) : ℤ :=
  A084084.P11655744217698943536.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084084.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084136.P15723460493383535174

`(1+A084058(n))/2`
-/

namespace A084136.P15723460493383535174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A084058 n : ℚ) / 2

end

end A084136.P15723460493383535174

noncomputable section

/-- A084136: Binomial transform of cosh(sqrt(2)*x)^2.

Offset 0, canonical program `A084136.P15723460493383535174`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084136 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A084136.P15723460493383535174.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084136.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084151.P1065768061746022074

`(A001541(n)-3^n)/8`
-/

namespace A084151.P1065768061746022074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001541 n - (3 ^ n : ℤ) : ℚ) / 8

end

end A084151.P1065768061746022074

noncomputable section

/-- A084151: Binomial transform of a Pell convolution.

Offset 0, canonical program `A084151.P1065768061746022074`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084151 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A084151.P1065768061746022074.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084151.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084169.P7090051231565700772

`A001045(n)*A000129(n)`
-/

namespace A084169.P7090051231565700772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A000129 n

end

end A084169.P7090051231565700772

noncomputable section

/-- A084169: A Pell Jacobsthal product.

Offset 0, canonical program `A084169.P7090051231565700772`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084169 (n : ℕ) : ℤ :=
  A084169.P7090051231565700772.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084169.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084188.P10075373482138290167

`A017910(2*n+1)`
-/

namespace A084188.P10075373482138290167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017910 (2 * n + 1)

end

end A084188.P10075373482138290167

noncomputable section

/-- A084188: a(0)=1, a(n+1) = 2*a(n) + b(n+2), where b(n)=A004539(n) is the n-th bit in the binary expansion of sqrt(2).

Offset 0, canonical program `A084188.P10075373482138290167`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084188 (n : ℕ) : ℤ :=
  A084188.P10075373482138290167.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084188.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084294.P12286291503589741630

`A000720(n+A000040(n+1)+1)-n`
-/

namespace A084294.P12286291503589741630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n : ℤ) + A000040 (n + 1) + 1).toNat - (n : ℤ)

end

end A084294.P12286291503589741630

noncomputable section

/-- A084294: Number of primes in the interval [prime(n),n+prime(n)].

Offset 1, canonical program `A084294.P12286291503589741630`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084294 (n : ℕ) : ℤ :=
  A084294.P12286291503589741630.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084294.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084301.P14730179483325713181

`A010875(A000203(n+1))`
-/

namespace A084301.P14730179483325713181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A000203 (n + 1)).toNat

end

end A084301.P14730179483325713181

noncomputable section

/-- A084301: a(n) = sigma(n) mod 6.

Offset 1, canonical program `A084301.P14730179483325713181`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084301 (n : ℕ) : ℤ :=
  A084301.P14730179483325713181.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084301.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084594.P9221866544632747182

`2*a(n-1)²-A001146(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A084594.P9221866544632747182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * a (n - 1) ^ 2 - A001146 (n - 1)

end

end A084594.P9221866544632747182

noncomputable section

/-- A084594: a(n) = Sum_{r=0..2^(n-1)} Binomial(2^n,2r)*3^r.

Offset 0, canonical program `A084594.P9221866544632747182`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084594 (n : ℕ) : ℤ :=
  A084594.P9221866544632747182.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084594.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084595.P11569587506132983415

`2*a(n-1)*sqrt(3*a(n-1)²+A001146(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A084595.P11569587506132983415
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) * Real.sqrt (3 * a (n - 1) ^ 2 + (A001146 (n - 1) : ℝ))

end

end A084595.P11569587506132983415

noncomputable section

/-- A084595: For n > 0: a(n) = Sum_{r=0..2^(n-1)-1} binomial(2^n, 2r+1)*3^r.

Offset 0, canonical program `A084595.P11569587506132983415`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084595 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A084595.P11569587506132983415.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084595.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084703.P2278992724606111080

`A001542(n)²`
-/

namespace A084703.P2278992724606111080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001542 n ^ 2

end

end A084703.P2278992724606111080

noncomputable section

/-- A084703: Squares k such that 2*k+1 is also a square.

Offset 0, canonical program `A084703.P2278992724606111080`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084703 (n : ℕ) : ℤ :=
  A084703.P2278992724606111080.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084703.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084756.P11840485018394104131

`A000522(n)+n!*n`
-/

namespace A084756.P11840485018394104131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 n + (Nat.factorial n * n : ℤ)

end

end A084756.P11840485018394104131

noncomputable section

/-- A084756: For n, k > 0, let T(n, k) be given by T(n, 1) = n and T(n, k+1) = k*T(n, k) + 1. Then a(n) = T(n, n).

Offset 1, canonical program `A084756.P11840485018394104131`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084756 (n : ℕ) : ℤ :=
  A084756.P11840485018394104131.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084756.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084773.P8407391943603613454

`2^n*A001850(n)`
-/

namespace A084773.P8407391943603613454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001850 n

end

end A084773.P8407391943603613454

noncomputable section

/-- A084773: Coefficients of 1/sqrt(1-12*x+4*x^2); also, a(n) is the central coefficient of (1+6*x+8*x^2)^n.

Offset 0, canonical program `A084773.P8407391943603613454`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084773 (n : ℕ) : ℤ :=
  A084773.P8407391943603613454.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084773.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084939.P7029245499545971231

`A000142(n)/A000079(n)*A008544(n)`
-/

namespace A084939.P7029245499545971231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A000079 n : ℚ) * (A008544 n : ℚ)

end

end A084939.P7029245499545971231

noncomputable section

/-- A084939: Pentagorials: n-th polygorial for k=5.

Offset 0, canonical program `A084939.P7029245499545971231`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084939 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A084939.P7029245499545971231.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084939.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084948.P14514199610506259215

`A084943(n)/A000142(n)*A000079(n)`
-/

namespace A084948.P14514199610506259215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084943 n : ℚ) / (A000142 n : ℚ) * (A000079 n : ℚ)

end

end A084948.P14514199610506259215

noncomputable section

/-- A084948: a(n) = Product_{i=0..n-1} (8*i+2).

Offset 0, canonical program `A084948.P14514199610506259215`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084948 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A084948.P14514199610506259215.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084948.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084968.P14169194673112967548

`7*A007775(n+1)`
-/

namespace A084968.P14169194673112967548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A007775 (n + 1)

end

end A084968.P14169194673112967548

noncomputable section

/-- A084968: Multiples of 7 coprime to 30.

Offset 1, canonical program `A084968.P14169194673112967548`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084968 (n : ℕ) : ℤ :=
  A084968.P14169194673112967548.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084968.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A085341.P4945583305381197546

`A000720(A000203(n+1))-A000720(n+1)`
-/

namespace A085341.P4945583305381197546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000203 (n + 1)).toNat - A000720 (n + 1)

end

end A085341.P4945583305381197546

noncomputable section

/-- A085341: Number of primes between sigma(n) and n inclusive.

Offset 1, canonical program `A085341.P4945583305381197546`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085341 (n : ℕ) : ℤ :=
  A085341.P4945583305381197546.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085341.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A085356.P12196543980335412904

`A067550(n+2)/2`
-/

namespace A085356.P12196543980335412904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067550 (n + 2) : ℚ) / 2

end

end A085356.P12196543980335412904

noncomputable section

/-- A085356: a(n) = polygorial(n,3)/polygorial(3,n), n >= 3.

Offset 0, canonical program `A085356.P12196543980335412904`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085356 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A085356.P12196543980335412904.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085356.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A085687.P17543566194425455463

`(n+1)*A000257(n+1)`
-/

namespace A085687.P17543566194425455463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000257 (n + 1)

end

end A085687.P17543566194425455463

noncomputable section

/-- A085687: Expansion of g.f. 8/(1+sqrt(1-8*x))^3.

Offset 0, canonical program `A085687.P17543566194425455463`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085687 (n : ℕ) : ℤ :=
  A085687.P17543566194425455463.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A085687.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A086161.P1959334638549911894

`A008620(n+1)`
-/

namespace A086161.P1959334638549911894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (n + 1)

end

end A086161.P1959334638549911894

noncomputable section

/-- A086161: Number of monomial ideals in two variables x, y that are Artinian, integrally closed, of colength n and contain x^2.

Offset 0, canonical program `A086161.P1959334638549911894`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086161 (n : ℕ) : ℤ :=
  A086161.P1959334638549911894.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086161.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A086325.P15899201594958227124

`(n+1)*A000166(n+1)`
-/

namespace A086325.P15899201594958227124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000166 (n + 1)

end

end A086325.P15899201594958227124

noncomputable section

/-- A086325: Let u(1)=0, u(2)=1, u(k)=u(k-1)+u(k-2)/(k-2); then a(n)=n!*u(n).

Offset 1, canonical program `A086325.P15899201594958227124`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086325 (n : ℕ) : ℤ :=
  A086325.P15899201594958227124.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086325.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A086351.P5732003736721579715

`A081179(n+1)-2*A081179(n)`
-/

namespace A086351.P5732003736721579715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081179 (n + 1) - 2 * A081179 n

end

end A086351.P5732003736721579715

noncomputable section

/-- A086351: Row T(n,3) of square array A086350.

Offset 0, canonical program `A086351.P5732003736721579715`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086351 (n : ℕ) : ℤ :=
  A086351.P5732003736721579715.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086351.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A086377.P18272257375655639388

`A064437(n+2)-2`
-/

namespace A086377.P18272257375655639388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064437 (n + 2) - 2

end

end A086377.P18272257375655639388

noncomputable section

/-- A086377: a(1)=1; a(n)=a(n-1)+2 if n is in the sequence; a(n)=a(n-1)+2 if n and (n-1) are not in the sequence; a(n)=a(n-1)+3 if n is not in the sequence but (n-1) is in the sequence.

Offset 1, canonical program `A086377.P18272257375655639388`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086377 (n : ℕ) : ℤ :=
  A086377.P18272257375655639388.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086377.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A086445.P11619309759868928111

`A000975(n)+A008619(n)`
-/

namespace A086445.P11619309759868928111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n + A008619 n

end

end A086445.P11619309759868928111

noncomputable section

/-- A086445: Partial sums of A005578.

Offset 0, canonical program `A086445.P11619309759868928111`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086445 (n : ℕ) : ℤ :=
  A086445.P11619309759868928111.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086445.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A086601.P131040437580756644

`A000124(n)²`
-/

namespace A086601.P131040437580756644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n ^ 2

end

end A086601.P131040437580756644

noncomputable section

/-- A086601: Triangular numbers + 1 squared.

Offset 0, canonical program `A086601.P131040437580756644`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086601 (n : ℕ) : ℤ :=
  A086601.P131040437580756644.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086601.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A086652.P12039658509500316263

`A000225(n+3)-A052955(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A086652.P12039658509500316263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 3) - A052955 n

end

end A086652.P12039658509500316263

noncomputable section

/-- A086652: a(n) = A000225(n+3)-A052955(n).

Offset 0, canonical program `A086652.P12039658509500316263`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086652 (n : ℕ) : ℤ :=
  A086652.P12039658509500316263.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086652.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A086755.P1666242869235654198

`2*A024166(n+1)`
-/

namespace A086755.P1666242869235654198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024166 (n + 1)

end

end A086755.P1666242869235654198

noncomputable section

/-- A086755: Sum_{k=1..n} (k(k+1))^2/2.

Offset 0, canonical program `A086755.P1666242869235654198`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086755 (n : ℕ) : ℤ :=
  A086755.P1666242869235654198.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086755.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A086849.P3631588082345199433

`A000217(A000037(n+1))-A000330(A000196(A000037(n+1)))`
-/

namespace A086849.P3631588082345199433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000037 (n + 1)).toNat - A000330 (A000196 (A000037 (n + 1)).toNat).toNat

end

end A086849.P3631588082345199433

noncomputable section

/-- A086849: Sum of first n nonsquares.

Offset 1, canonical program `A086849.P3631588082345199433`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086849 (n : ℕ) : ℤ :=
  A086849.P3631588082345199433.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086849.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A086894.P2071782429096505861

`(A000522(2*n)+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A086894.P2071782429096505861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000522 (2 * n) + 1 : ℚ) / 2

end

end A086894.P2071782429096505861

noncomputable section

/-- A086894: a(n) = (A000522(2*n) + 1)/2.

Offset 0, canonical program `A086894.P2071782429096505861`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086894 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A086894.P2071782429096505861.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086894.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A086895.P5602228210711638196

`1/3!*(A000522(3*n)+3*A000522(n)+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A086895.P5602228210711638196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial 3 : ℚ) * (A000522 (3 * n) + 3 * A000522 n + 2 : ℚ)

end

end A086895.P5602228210711638196

noncomputable section

/-- A086895: a(n) = 1/3!*(A000522(3*n) + 3*A000522(n) + 2).

Offset 0, canonical program `A086895.P5602228210711638196`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086895 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A086895.P5602228210711638196.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086895.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A086896.P3300108808957288730

`1/4!*(A000522(4*n)+6*A000522(2*n)+8*A000522(n)+9)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A086896.P3300108808957288730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial 4 : ℚ) * (A000522 (4 * n) + 6 * A000522 (2 * n) + 8 * A000522 n + 9 : ℚ)

end

end A086896.P3300108808957288730

noncomputable section

/-- A086896: a(n) = (1/4!)*(A000522(4*n) + 6*A000522(2*n) + 8*A000522(n) + 9).

Offset 0, canonical program `A086896.P3300108808957288730`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086896 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A086896.P3300108808957288730.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086896.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A087018.P17547077177949321628

`A000045(A000217(n+1)+2)-A000045(A000217(n)+2)`
-/

namespace A087018.P17547077177949321628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000217 (n + 1) + 2).toNat - A000045 (A000217 n + 2).toNat

end

end A087018.P17547077177949321628

noncomputable section

/-- A087018: Row sums of Fibonacci triangle shown below.

Offset 1, canonical program `A087018.P17547077177949321628`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087018 (n : ℕ) : ℤ :=
  A087018.P17547077177949321628.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087018.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A087069.P8198094130385700278

`A054893(4*n)`
-/

namespace A087069.P8198094130385700278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054893 (4 * n)

end

end A087069.P8198094130385700278

noncomputable section

/-- A087069: a(n) = Sum_{k >= 0} floor(n/(4^k)).

Offset 0, canonical program `A087069.P8198094130385700278`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087069 (n : ℕ) : ℤ :=
  A087069.P8198094130385700278.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087069.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A087298.P12395846992639470447

`A011371(3*(n+1))`
-/

namespace A087298.P12395846992639470447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (3 * (n + 1))

end

end A087298.P12395846992639470447

noncomputable section

/-- A087298: Exponent of 2 in the prime factorization of (3n)!.

Offset 1, canonical program `A087298.P12395846992639470447`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087298 (n : ℕ) : ℤ :=
  A087298.P12395846992639470447.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087298.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A087645.P8033487295196302795

`A052149(n+1)+2`
-/

namespace A087645.P8033487295196302795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052149 (n + 1) + 2

end

end A087645.P8033487295196302795

noncomputable section

/-- A087645: Third column of A071223.

Offset 2, canonical program `A087645.P8033487295196302795`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087645 (n : ℕ) : ℤ :=
  A087645.P8033487295196302795.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087645.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A058622.P7570831990351998700

`A027306(n)-A126869(n)`
-/

namespace A058622.P7570831990351998700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027306 n - A126869 n

end

end A058622.P7570831990351998700

noncomputable section

/-- A058622: a(n) = 2^(n-1) - ((1+(-1)^n)/4)*binomial(n, n/2).

Offset 0, canonical program `A058622.P7570831990351998700`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058622 (n : ℕ) : ℤ :=
  A058622.P7570831990351998700.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058622.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A058919.P2977155251623331247

`A080827(n²-n+1)`
-/

namespace A058919.P2977155251623331247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080827 ((n ^ 2 : ℤ) - (n : ℤ) + 1).toNat

end

end A058919.P2977155251623331247

noncomputable section

/-- A058919: a(n) = n^4/2 - n^3 + 3*n^2/2 - n + 1 = (n^2 + 1)*(n^2 - 2*n + 2)/2.

Offset 0, canonical program `A058919.P2977155251623331247`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058919 (n : ℕ) : ℤ :=
  A058919.P2977155251623331247.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A058919.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A060904.P2539972540385605862

`5^A112765(n+1)`
-/

namespace A060904.P2539972540385605862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A112765 (n + 1) : ℤ)

end

end A060904.P2539972540385605862

noncomputable section

/-- A060904: Largest power of 5 that divides n.

Offset 1, canonical program `A060904.P2539972540385605862`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060904 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A060904.P2539972540385605862.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A060904.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A061714.P16193808572727617002

`(-1)^n+A120765(n)`
-/

namespace A061714.P16193808572727617002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n + A120765 n

end

end A061714.P16193808572727617002

noncomputable section

/-- A061714: Number of types of (n-1)-swap moves for traveling salesman problem. Number of circular permutations on elements 0,1,...,2n-1 where every two elements 2i,2i+1 and no two elements 2i-1,2i are adjacent.

Offset 0, canonical program `A061714.P16193808572727617002`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061714 (n : ℕ) : ℤ :=
  A061714.P16193808572727617002.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A061714.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A064235.P9847577287596558339

`3^A080342(n+1)`
-/

namespace A064235.P9847577287596558339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A080342 (n + 1) : ℤ)

end

end A064235.P9847577287596558339

noncomputable section

/-- A064235: The smallest power of 3 that is greater than or equal to n.

Offset 1, canonical program `A064235.P9847577287596558339`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064235 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064235.P9847577287596558339.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A064235.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067689.P2153195530868206036

`A163085(2*n)`
-/

namespace A067689.P2153195530868206036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163085 (2 * n)

end

end A067689.P2153195530868206036

noncomputable section

/-- A067689: Inverse of determinant of n X n matrix whose (i,j)-th element is 1/(i+j).

Offset 0, canonical program `A067689.P2153195530868206036`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067689 (n : ℕ) : ℤ :=
  A067689.P2153195530868206036.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067689.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A067994.P15225735328066793155

`A057077(n)*A126869(n)*A081123(n)`
-/

namespace A067994.P15225735328066793155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A126869 n * A081123 n

end

end A067994.P15225735328066793155

noncomputable section

/-- A067994: Hermite numbers.

Offset 0, canonical program `A067994.P15225735328066793155`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067994 (n : ℕ) : ℤ :=
  A067994.P15225735328066793155.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A067994.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069017.P17525612143297999373

`2*A124174(n+1)+1`
-/

namespace A069017.P17525612143297999373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124174 (n + 1) + 1

end

end A069017.P17525612143297999373

noncomputable section

/-- A069017: Triangular numbers of the form k^2 + k + 1.

Offset 1, canonical program `A069017.P17525612143297999373`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069017 (n : ℕ) : ℤ :=
  A069017.P17525612143297999373.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069017.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069497.P15301364343814933143

`A000217(A108752(n+1))`
-/

namespace A069497.P15301364343814933143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A108752 (n + 1)).toNat

end

end A069497.P15301364343814933143

noncomputable section

/-- A069497: Triangular numbers of the form 6*k.

Offset 1, canonical program `A069497.P15301364343814933143`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069497 (n : ℕ) : ℤ :=
  A069497.P15301364343814933143.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069497.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069651.P8317026859462130817

`A163085(2*n)/n!²`
-/

namespace A069651.P8317026859462130817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163085 (2 * n) : ℚ) / (Nat.factorial n ^ 2 : ℚ)

end

end A069651.P8317026859462130817

noncomputable section

/-- A069651: For n >= 1, let M_n be the n X n matrix with M_n(i,j) = i^2/(i+j); then a(n) = 1/det(M_n). Also, a(0) = 1 by convention.

Offset 0, canonical program `A069651.P8317026859462130817`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069651 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A069651.P8317026859462130817.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069651.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A069813.P8808270607885708704

`A056829(n+3)-A097325(n+3)`
-/

namespace A069813.P8808270607885708704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056829 (n + 3) - A097325 (n + 3)

end

end A069813.P8808270607885708704

noncomputable section

/-- A069813: Maximum number of triangles in polyiamond with perimeter n.

Offset 3, canonical program `A069813.P8808270607885708704`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069813 (n : ℕ) : ℤ :=
  A069813.P8808270607885708704.a (n - 3)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A069813.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A072352.P11473744423060948537

`A000045(A072353(n+1))`
-/

namespace A072352.P11473744423060948537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A072353 (n + 1)).toNat

end

end A072352.P11473744423060948537

noncomputable section

/-- A072352: a(n) is the largest n-digit Fibonacci number.

Offset 1, canonical program `A072352.P11473744423060948537`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072352 (n : ℕ) : ℤ :=
  A072352.P11473744423060948537.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A072352.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077267.P10656974449840595018

`A079978(n)+a(floor(n/3))` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A077267.P10656974449840595018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A079978 n + a ⌊(n : ℚ) / 3⌋.toNat

end

end A077267.P10656974449840595018

noncomputable section

/-- A077267: Number of zeros in base-3 expansion of n.

Offset 0, canonical program `A077267.P10656974449840595018`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077267 (n : ℕ) : ℤ :=
  A077267.P10656974449840595018.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077267.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077421.P11984468828011570067

`sqrt((A077422(n+1)²-1)/30)/2`
-/

namespace A077421.P11984468828011570067
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A077422 (n + 1) ^ 2 - 1 : ℚ) / 30 : ℝ) / 2

end

end A077421.P11984468828011570067

noncomputable section

/-- A077421: Chebyshev sequence U(n,11)=S(n,22) with Diophantine property.

Offset 0, canonical program `A077421.P11984468828011570067`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077421 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A077421.P11984468828011570067.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077421.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A077443.P9244369192480918975

`2*A124124(n+1)+1`
-/

namespace A077443.P9244369192480918975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124124 (n + 1) + 1

end

end A077443.P9244369192480918975

noncomputable section

/-- A077443: Numbers k such that (k^2 - 7)/2 is a square.

Offset 1, canonical program `A077443.P9244369192480918975`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077443 (n : ℕ) : ℤ :=
  A077443.P9244369192480918975.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A077443.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A080468.P3042349121008537224

`A080578(n+2)-2*(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A080468.P3042349121008537224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080578 (n + 2) - (2 * (n + 2) : ℤ)

end

end A080468.P3042349121008537224

noncomputable section

/-- A080468: a(n) = A080578(n)-2n.

Offset 2, canonical program `A080468.P3042349121008537224`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080468 (n : ℕ) : ℤ :=
  A080468.P3042349121008537224.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080468.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A080599.P2500914518203076305

`A090932(n)*A002530(n+1)`
-/

namespace A080599.P2500914518203076305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090932 n * A002530 (n + 1)

end

end A080599.P2500914518203076305

noncomputable section

/-- A080599: Expansion of e.g.f.: 2/(2-2*x-x^2).

Offset 0, canonical program `A080599.P2500914518203076305`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080599 (n : ℕ) : ℤ :=
  A080599.P2500914518203076305.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A080599.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081089.P13086445699553807984

`A081090(n+1)²+1`
-/

namespace A081089.P13086445699553807984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081090 (n + 1) ^ 2 + 1

end

end A081089.P13086445699553807984

noncomputable section

/-- A081089: Ratios of the terms of A081088: a(n) = A081088(n+1)/A081088(n); involves the partial quotients of a series of continued fractions that sum to unity.

Offset 1, canonical program `A081089.P13086445699553807984`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081089 (n : ℕ) : ℤ :=
  A081089.P13086445699553807984.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081089.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A081714.P7362606135924003935

`A122367(n)-(-1)^n`
-/

namespace A081714.P7362606135924003935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n - (-1) ^ n

end

end A081714.P7362606135924003935

noncomputable section

/-- A081714: a(n) = F(n)*L(n+1) where F=Fibonacci and L=Lucas numbers.

Offset 0, canonical program `A081714.P7362606135924003935`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081714 (n : ℕ) : ℤ :=
  A081714.P7362606135924003935.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A081714.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A082375.P11690082017939293058

`A199474(n+1)-A122197(n+1)`
-/

namespace A082375.P11690082017939293058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199474 (n + 1) - A122197 (n + 1)

end

end A082375.P11690082017939293058

noncomputable section

/-- A082375: Irregular triangle read by rows: row n begins with n and decreases by 2 until 0 or 1 is reached, for n >= 0.

Offset 0, canonical program `A082375.P11690082017939293058`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082375 (n : ℕ) : ℤ :=
  A082375.P11690082017939293058.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A082375.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A084942.P4821313571364401220

`A000142(n)/A000079(n)*A084947(n)`
-/

namespace A084942.P4821313571364401220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A000079 n : ℚ) * (A084947 n : ℚ)

end

end A084942.P4821313571364401220

noncomputable section

/-- A084942: Enneagorials: n-th polygorial for k=9.

Offset 0, canonical program `A084942.P4821313571364401220`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084942 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A084942.P4821313571364401220.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A084942.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A086953.P11034586102236523776

`A024493(n)-A131708(n)+A024495(n)`
-/

namespace A086953.P11034586102236523776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 n - A131708 n + A024495 n

end

end A086953.P11034586102236523776

noncomputable section

/-- A086953: Binomial transform of (-1)^mod(n,3) (A257075).

Offset 0, canonical program `A086953.P11034586102236523776`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086953 (n : ℕ) : ℤ :=
  A086953.P11034586102236523776.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A086953.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A087088.P4925167282759649030

`3+A244040(3*n)-A244040(3*(n+1))`
-/

namespace A087088.P4925167282759649030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 + A244040 (3 * n) - A244040 (3 * (n + 1))

end

end A087088.P4925167282759649030

noncomputable section

/-- A087088: Positive ruler-type fractal sequence with 1's in every third position.

Offset 1, canonical program `A087088.P4925167282759649030`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087088 (n : ℕ) : ℤ :=
  A087088.P4925167282759649030.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A087088.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A057540.P4839102166846045494

`∩[A057539(n+1), A227144(n+1)]`
-/

namespace A057540.P4839102166846045494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A057540.P4839102166846045494

noncomputable section

/-- A057540: Birthday set of order 8: i.e., numbers congruent to +- 1 modulo 2, 3, 4, 5, 6, 7 and 8.

Offset 1, canonical program `A057540.P4839102166846045494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 915 terms. -/
def A057540 (n : ℕ) : ℤ :=
  (A057540.P4839102166846045494.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 915 terms. -/
def A057540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057590.P4961889276649306474

`∪[A027482(n+2), A027441(n)]`
-/

namespace A057590.P4961889276649306474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027482 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027441 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A057590.P4961889276649306474

noncomputable section

/-- A057590: Numbers of the form k*(k^3 +- 1)/2.

Offset 1, canonical program `A057590.P4961889276649306474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057590 (n : ℕ) : ℤ :=
  (A057590.P4961889276649306474.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057592.P11540212676059738396

`A022087(n)+Δ[A001654(n)]`
-/

namespace A057592.P11540212676059738396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 n + (f1 (n + 1) - f1 n)

end

end A057592.P11540212676059738396

noncomputable section

/-- A057592: a(n) = Fibonacci(n+1)^2 + 4*Fibonacci(n).

Offset 0, canonical program `A057592.P11540212676059738396`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A057592 (n : ℕ) : ℤ :=
  A057592.P11540212676059738396.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A057592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057894.P10049549361745002982

`eq[1, ∑{e}[n-A004514(n), #]]`
-/

namespace A057894.P10049549361745002982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004514 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A057894.P10049549361745002982

noncomputable section

/-- A057894: Negabinary numbral "primes".

Offset 0, canonical program `A057894.P10049549361745002982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1319 terms. -/
def A057894 (n : ℕ) : ℤ :=
  (A057894.P10049549361745002982.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1319 terms. -/
def A057894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057924.P17885427935178142664

`A057923(n+1)+A057923(n)`
-/

namespace A057924.P17885427935178142664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057923 (n + 1) + A057923 n

end

end A057924.P17885427935178142664

noncomputable section

/-- A057924: Sequence b(n) mentioned in A057923.

Offset 1, canonical program `A057924.P17885427935178142664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057924 (n : ℕ) : ℤ :=
  A057924.P17885427935178142664.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057927.P12642065213747382486

`or(a(n-1)+1, A057926(n))` with `a(0)=3`
-/

namespace A057927.P12642065213747382486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.lor (a (n - 1) + 1) (A057926 n)

end

end A057927.P12642065213747382486

noncomputable section

/-- A057927: Sequence b(n) mentioned in A057926.

Offset 1, canonical program `A057927.P12642065213747382486`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057927 (n : ℕ) : ℤ :=
  A057927.P12642065213747382486.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A057927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A057929.P14549081968536918667

`A057923(n+4)`
-/

namespace A057929.P14549081968536918667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057923 (n + 4)

end

end A057929.P14549081968536918667

noncomputable section

/-- A057929: a(0)=2, a(1)=5, a(n) = smallest number such that sequence b(n) = a(n) OR a(n+1) is strictly monotonically increasing.

Offset 0, canonical program `A057929.P14549081968536918667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A057929 (n : ℕ) : ℤ :=
  A057929.P14549081968536918667.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A057929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058075.P17438524686900330364

`record[(n+1)/gcd(A000203(n+1), A000203(n+2))]`
-/

namespace A058075.P17438524686900330364
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A000203 (n + 1)) (A000203 (n + 2)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058075.P17438524686900330364

noncomputable section

/-- A058075: Numbers k such that gcd(sigma(k), sigma(k+1)) = 1, where sigma(k) is sum of positive divisors of k.

Offset 1, canonical program `A058075.P17438524686900330364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 448 terms. -/
def A058075 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A058075.P17438524686900330364.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 448 terms. -/
def A058075.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058183.P4906920629226833825

`A055642(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A058183.P4906920629226833825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055642 (n + 1) + a (n - 1)

end

end A058183.P4906920629226833825

noncomputable section

/-- A058183: Number of digits in concatenation of first n positive integers.

Offset 1, canonical program `A058183.P4906920629226833825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058183 (n : ℕ) : ℤ :=
  A058183.P4906920629226833825.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058208.P11143344036866898331

`A060903(n+1)-∑{d}[n+1, #]`
-/

namespace A058208.P11143344036866898331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060903 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A058208.P11143344036866898331

noncomputable section

/-- A058208: a(n) = floor(6*n*sqrt(n)/Pi^2) - sigma(n), where sigma(n) is the sum of the divisors of n (A000203).

Offset 1, canonical program `A058208.P11143344036866898331`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A058208 (n : ℕ) : ℤ :=
  A058208.P11143344036866898331.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A058208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058209.P4584967785332005220

`A058210(n+2)-A000203(n+2)`
-/

namespace A058209.P4584967785332005220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058210 (n + 2) - A000203 (n + 2)

end

end A058209.P4584967785332005220

noncomputable section

/-- A058209: a(n) = floor( exp(gamma) n log log n ) - sigma(n), where gamma is Euler's constant (A001620) and sigma(n) is sum of divisors of n (A000203).

Offset 2, canonical program `A058209.P4584967785332005220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058209 (n : ℕ) : ℤ :=
  A058209.P4584967785332005220.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058268.P17499238582623554022

`A065475(A058266(n+1))`
-/

namespace A058268.P17499238582623554022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A058266 (n + 1)).toNat

end

end A058268.P17499238582623554022

noncomputable section

/-- A058268: An approximation to sigma_{1/2}(n): ceiling( sum_{d|n} sqrt(d) ).

Offset 1, canonical program `A058268.P17499238582623554022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058268 (n : ℕ) : ℤ :=
  A058268.P17499238582623554022.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059011.P915381792524988000

`A059009(A053738(n+1))`
-/

namespace A059011.P915381792524988000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059009 (A053738 (n + 1)).toNat

end

end A059011.P915381792524988000

noncomputable section

/-- A059011: Odd number of 0's and 1's in binary expansion.

Offset 1, canonical program `A059011.P915381792524988000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059011 (n : ℕ) : ℤ :=
  A059011.P915381792524988000.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059013.P9698162491277761355

`A059009(A053754(n+1))`
-/

namespace A059013.P9698162491277761355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059009 (A053754 (n + 1)).toNat

end

end A059013.P9698162491277761355

noncomputable section

/-- A059013: Odd number of 0's and even number of 1's in binary expansion.

Offset 1, canonical program `A059013.P9698162491277761355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059013 (n : ℕ) : ℤ :=
  A059013.P9698162491277761355.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059013.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059111.P17113221363624731460

`A000040(n+1)-A050502(n+1)`
-/

namespace A059111.P17113221363624731460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A050502 (n + 1)

end

end A059111.P17113221363624731460

noncomputable section

/-- A059111: a(n) = floor(prime(n) - n*log(n)).

Offset 1, canonical program `A059111.P17113221363624731460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059111 (n : ℕ) : ℤ :=
  A059111.P17113221363624731460.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059129.P3613843884237192219

`val(abs(A099254(n)), 2)+1`
-/

namespace A059129.P3613843884237192219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation |A099254 n|.toNat 2 + 1

end

end A059129.P3613843884237192219

noncomputable section

/-- A059129: A hierarchical sequence (W2{2}* - see A059126).

Offset 0, canonical program `A059129.P3613843884237192219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059129 (n : ℕ) : ℤ :=
  (A059129.P3613843884237192219.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059173.P6167581344001436890

`A046127(n-1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A059173.P6167581344001436890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A046127 (n - 1) + a (n - 1)

end

end A059173.P6167581344001436890

noncomputable section

/-- A059173: Maximal number of regions into which 4-space can be divided by n hyperspheres.

Offset 0, canonical program `A059173.P6167581344001436890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059173 (n : ℕ) : ℤ :=
  A059173.P6167581344001436890.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059258.P11658451383634834992

`p?[A146509(A087445(n+1))-n]`
-/

namespace A059258.P11658451383634834992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146509 (A087445 (n + 1)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059258.P11658451383634834992

noncomputable section

/-- A059258: Primes p such that x^53 = 2 has no solution mod p.

Offset 1, canonical program `A059258.P11658451383634834992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A059258 (n : ℕ) : ℤ :=
  A059258.P11658451383634834992.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. -/
def A059258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059376.P12656735072516275082

`∑{d}[n+1, A001158(#)*A007427((n+1)/#)]`
-/

namespace A059376.P12656735072516275082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001158 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059376.P12656735072516275082

noncomputable section

/-- A059376: Jordan function J_3(n).

Offset 1, canonical program `A059376.P12656735072516275082`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059376 (n : ℕ) : ℤ :=
  A059376.P12656735072516275082.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059377.P4346818254889849577

`∑{d}[n+1, A001159(#)*A007427((n+1)/#)]`
-/

namespace A059377.P4346818254889849577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001159 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059377.P4346818254889849577

noncomputable section

/-- A059377: Jordan function J_4(n).

Offset 1, canonical program `A059377.P4346818254889849577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059377 (n : ℕ) : ℤ :=
  A059377.P4346818254889849577.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059377.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059378.P847336418425473705

`∑{d}[n+1, A001160(#)*A007427((n+1)/#)]`
-/

namespace A059378.P847336418425473705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001160 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059378.P847336418425473705

noncomputable section

/-- A059378: Jordan function J_5(n).

Offset 1, canonical program `A059378.P847336418425473705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059378 (n : ℕ) : ℤ :=
  A059378.P847336418425473705.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059378.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059502.P7300969934803314136

`Δ[A116845(C(2, n+2)+n)]`
-/

namespace A059502.P7300969934803314136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116845 (Nat.choose 2 (n + 2) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059502.P7300969934803314136

noncomputable section

/-- A059502: a(n) = (3*n*F(2n-1) + (3-n)*F(2n))/5 where F() = Fibonacci numbers A000045.

Offset 0, canonical program `A059502.P7300969934803314136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A059502 (n : ℕ) : ℤ :=
  A059502.P7300969934803314136.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A059502.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059512.P308334945108769757

`A001906(n-2)+1-floor(1-a(n-1)-a(n-2))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A059512.P308334945108769757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A001906 (n - 2) + (1 - (1 - a (n - 1) - a (n - 2)))

end

end A059512.P308334945108769757

noncomputable section

/-- A059512: For n>=2, the number of (s(0), s(1), ..., s(n-1)) such that 0 < s(i) < 5 and |s(i) - s(i-1)| <= 1 for i = 1,2,....,n-1, s(0) = 2, s(n-1) = 2.

Offset 0, canonical program `A059512.P308334945108769757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. -/
def A059512 (n : ℕ) : ℤ :=
  A059512.P308334945108769757.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 242 terms. -/
def A059512.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059539.P5693483721270638567

`∑[A081129(n)]`
-/

namespace A059539.P5693483721270638567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059539.P5693483721270638567

noncomputable section

/-- A059539: Beatty sequence for 3^(1/3).

Offset 1, canonical program `A059539.P5693483721270638567`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059539 (n : ℕ) : ℤ :=
  A059539.P5693483721270638567.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059548.P14659020592617218728

`A059543(n+1)+1+n`
-/

namespace A059548.P14659020592617218728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059543 (n + 1) + 1 + (n : ℤ)

end

end A059548.P14659020592617218728

noncomputable section

/-- A059548: Beatty sequence for 1 + log(3).

Offset 1, canonical program `A059548.P14659020592617218728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059548 (n : ℕ) : ℤ :=
  A059548.P14659020592617218728.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059550.P7944428284410734695

`A059545(n+1)+1+n`
-/

namespace A059550.P7944428284410734695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059545 (n + 1) + 1 + (n : ℤ)

end

end A059550.P7944428284410734695

noncomputable section

/-- A059550: Beatty sequence for 1 + log(10).

Offset 1, canonical program `A059550.P7944428284410734695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059550 (n : ℕ) : ℤ :=
  A059550.P7944428284410734695.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059571.P5135965479004864575

`A000196(n+1)-abs(A002321(n+1))`
-/

namespace A059571.P5135965479004864575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 1) - |A002321 (n + 1)|

end

end A059571.P5135965479004864575

noncomputable section

/-- A059571: From Mertens's conjecture (1): floor(sqrt(n)) - |M(n)|, where M is Mertens's function A002321.

Offset 1, canonical program `A059571.P5135965479004864575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059571 (n : ℕ) : ℤ :=
  A059571.P5135965479004864575.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059572.P2225437894775727846

`A000196(n+1)-A002321(n+1)`
-/

namespace A059572.P2225437894775727846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 1) - A002321 (n + 1)

end

end A059572.P2225437894775727846

noncomputable section

/-- A059572: From Mertens's conjecture (2): floor(sqrt(n)) - Mertens's function A002321(n).

Offset 1, canonical program `A059572.P2225437894775727846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059572 (n : ℕ) : ℤ :=
  A059572.P2225437894775727846.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059617.P11277497583377156099

`A146535(n+1)*A176895(floor(n/2))`
-/

namespace A059617.P11277497583377156099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146535 (n + 1) * A176895 ⌊(n : ℚ) / 2⌋.toNat

end

end A059617.P11277497583377156099

noncomputable section

/-- A059617: Denominator of n*(n-1)/(8*(2*n+1)).

Offset 0, canonical program `A059617.P11277497583377156099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059617 (n : ℕ) : ℤ :=
  A059617.P11277497583377156099.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059617.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059624.P2258279082146612919

`∑[A060559(n)]`
-/

namespace A059624.P2258279082146612919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059624.P2258279082146612919

noncomputable section

/-- A059624: Expansion of (3+10*x+3*x^2)/(1-x)^12.

Offset 0, canonical program `A059624.P2258279082146612919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059624 (n : ℕ) : ℤ :=
  A059624.P2258279082146612919.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059624.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059650.P2634749567942594963

`Δ[A059649(n+1)]`
-/

namespace A059650.P2634749567942594963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059650.P2634749567942594963

noncomputable section

/-- A059650: First differences of A059649.

Offset 1, canonical program `A059650.P2634749567942594963`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A059650 (n : ℕ) : ℤ :=
  A059650.P2634749567942594963.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A059650.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059727.P9881445159819085903

`2*C(A001611(n), 2)`
-/

namespace A059727.P9881445159819085903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (A001611 n).toNat 2

end

end A059727.P9881445159819085903

noncomputable section

/-- A059727: a(n) = Fibonacci(n)*(Fibonacci(n) + 1).

Offset 0, canonical program `A059727.P9881445159819085903`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A059727 (n : ℕ) : ℤ :=
  (A059727.P9881445159819085903.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A059727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059840.P3631537578918260503

`A001654(n)-n%2`
-/

namespace A059840.P3631537578918260503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n - ((n % 2 : ℕ) : ℤ)

end

end A059840.P3631537578918260503

noncomputable section

/-- A059840: a(n) = F(n)*F(n-1) if n odd otherwise F(n)*F(n-1)-1, where F = Fibonacci numbers A000045.

Offset 1, canonical program `A059840.P3631537578918260503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A059840 (n : ℕ) : ℤ :=
  A059840.P3631537578918260503.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. -/
def A059840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059857.P4669686708820666510

`A034326(A073762(n+1)+A001057(n))`
-/

namespace A059857.P4669686708820666510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034326 (A073762 (n + 1) + A001057 n).toNat

end

end A059857.P4669686708820666510

noncomputable section

/-- A059857: Alternating clock-face numbers.

Offset 0, canonical program `A059857.P4669686708820666510`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 409 terms. -/
def A059857 (n : ℕ) : ℤ :=
  A059857.P4669686708820666510.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 409 terms. -/
def A059857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059909.P2458430778338620869

`A059907((n+1)²)`
-/

namespace A059909.P2458430778338620869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059907 ((n + 1) ^ 2)

end

end A059909.P2458430778338620869

noncomputable section

/-- A059909: a(n) = |{m : multiplicative order of n mod m = 4}|.

Offset 1, canonical program `A059909.P2458430778338620869`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A059909 (n : ℕ) : ℤ :=
  A059909.P2458430778338620869.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A059909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059974.P9604430135129621907

`A000045(∑[C(∑{p}[n, #], n)])`
-/

namespace A059974.P9604430135129621907
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ p ∈ Nat.primeFactors (f2 n), p) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059974.P9604430135129621907

noncomputable section

/-- A059974: a(n)=a(p)+a(q) where p and q are the two primes less than n and closest to n; with a(1)=1, a(2)=1, a(3) = 1.

Offset 1, canonical program `A059974.P9604430135129621907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3413 terms. -/
def A059974 (n : ℕ) : ℤ :=
  A059974.P9604430135129621907.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3413 terms. -/
def A059974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060011.P16813881645005587022

`dr(A004095(3*n))`
-/

namespace A060011.P16813881645005587022
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A004095 (3 * n))

end

end A060011.P16813881645005587022

noncomputable section

/-- A060011: Schizophrenic sequence: these are the repeating digits in the decimal expansion of sqrt(f(2n+1)), where f(m) = A014824(m).

Offset 0, canonical program `A060011.P16813881645005587022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A060011 (n : ℕ) : ℤ :=
  (A060011.P16813881645005587022.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A060011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060019.P11572960328212097102

`floor(sqrt(A001749(n+1)-8))`
-/

namespace A060019.P11572960328212097102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A001749 (n + 1) - 8)

end

end A060019.P11572960328212097102

noncomputable section

/-- A060019: a(n) = floor(2*sqrt(prime(n)-2)) where prime(n) = n-th prime.

Offset 1, canonical program `A060019.P11572960328212097102`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060019 (n : ℕ) : ℤ :=
  A060019.P11572960328212097102.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060061.P6398792366015292347

`∑[(n+1)²*A060060(n+1)]`
-/

namespace A060061.P6398792366015292347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A060060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060061.P6398792366015292347

noncomputable section

/-- A060061: Fourth column of triangle A060058.

Offset 0, canonical program `A060061.P6398792366015292347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A060061 (n : ℕ) : ℤ :=
  A060061.P6398792366015292347.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A060061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060101.P6144054388817537936

`∑[A038165(n)]`
-/

namespace A060101.P6144054388817537936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038165 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060101.P6144054388817537936

noncomputable section

/-- A060101: Sixth column (m=5) of triangle A060098.

Offset 0, canonical program `A060101.P6144054388817537936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060101 (n : ℕ) : ℤ :=
  A060101.P6144054388817537936.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060105.P4951254481858871071

`∑[A059602(n)+A059601(n)]-A059602(n)`
-/

namespace A060105.P4951254481858871071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059602 n + A059601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A059602 n

end

end A060105.P4951254481858871071

noncomputable section

/-- A060105: Sixth column (m=5) of triangle A060102.

Offset 0, canonical program `A060105.P4951254481858871071`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060105 (n : ℕ) : ℤ :=
  A060105.P4951254481858871071.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060145.P9806475002723103157

`abs(A004956(n)-A195121(n))`
-/

namespace A060145.P9806475002723103157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004956 n - A195121 n|

end

end A060145.P9806475002723103157

noncomputable section

/-- A060145: a(n) = floor(n/tau) - floor(n/(1 + tau)).

Offset 0, canonical program `A060145.P9806475002723103157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060145 (n : ℕ) : ℤ :=
  A060145.P9806475002723103157.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060197.P6380392400821796485

`a(A033270(n+1))+1` with `a(0)=2`
-/

namespace A060197.P6380392400821796485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (A033270 (n + 1)).toNat + 1

end

end A060197.P6380392400821796485

noncomputable section

/-- A060197: Start at n, repeatedly apply pi(x) until reach 0; a(n) = number of steps to reach 0.

Offset 1, canonical program `A060197.P6380392400821796485`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060197 (n : ℕ) : ℤ :=
  (A060197.P6380392400821796485.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060469.P17771194765734652220

`∪[A003662(n+1), A038874(n+1)]`
-/

namespace A060469.P17771194765734652220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A060469.P17771194765734652220

noncomputable section

/-- A060469: Smallest positive a(n) such that number of solutions to a(n) = a(j)+a(k) j

Offset 1, canonical program `A060469.P17771194765734652220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060469 (n : ℕ) : ℤ :=
  (A060469.P17771194765734652220.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060473.P10331882386203944157

`lcm(A000217(n+1), A023896(n+1))/A000217(n+1)`
-/

namespace A060473.P10331882386203944157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000217 (n + 1)) (A023896 (n + 1)) : ℚ) / (A000217 (n + 1) : ℚ)

end

end A060473.P10331882386203944157

noncomputable section

/-- A060473: a(n) = numerator of phi(n)/(n+1), where phi(n) is Euler's phi, A000010.

Offset 1, canonical program `A060473.P10331882386203944157`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060473 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A060473.P10331882386203944157.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060473.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060474.P1792175694855090900

`(n+2)/A058656(n+1)`
-/

namespace A060474.P1792175694855090900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A058656 (n + 1) : ℚ)

end

end A060474.P1792175694855090900

noncomputable section

/-- A060474: a(n) = denominator of phi(n)/(n+1), where phi(n) is Euler's phi, A000010.

Offset 1, canonical program `A060474.P1792175694855090900`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060474 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A060474.P1792175694855090900.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060511.P6613141027037058169

`n-A000384(A351846(n))`
-/

namespace A060511.P6613141027037058169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000384 (A351846 n).toNat

end

end A060511.P6613141027037058169

noncomputable section

/-- A060511: Hexagonal excess: smallest amount by which n exceeds a hexagonal number (2k^2-k, A000384).

Offset 0, canonical program `A060511.P6613141027037058169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060511 (n : ℕ) : ℤ :=
  A060511.P6613141027037058169.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060569.P7759732019281529303

`A076294(∑[2-n%2])`
-/

namespace A060569.P7759732019281529303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076294 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A060569.P7759732019281529303

noncomputable section

/-- A060569: Consider Pythagorean triples which satisfy X^2+(X+7)^2=Z^2; sequence gives increasing values of Z.

Offset 1, canonical program `A060569.P7759732019281529303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. -/
def A060569 (n : ℕ) : ℤ :=
  A060569.P7759732019281529303.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. -/
def A060569.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060583.P3294459721720643481

`3*a(floor(n/3))+A060582(n)` with `a(0)=0`
-/

namespace A060583.P3294459721720643481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 * a ⌊(n : ℚ) / 3⌋.toNat + A060582 n

end

end A060583.P3294459721720643481

noncomputable section

/-- A060583: A ternary code related to the Tower of Hanoi.

Offset 0, canonical program `A060583.P3294459721720643481`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060582, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060583 (n : ℕ) : ℤ :=
  A060583.P3294459721720643481.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060582, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060583.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A060606.P8446617235737320077

`A060605(n+1)-(n+1)`
-/

namespace A060606.P8446617235737320077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060605 (n + 1) - (n + 1 : ℤ)

end

end A060606.P8446617235737320077

noncomputable section

/-- A060606: The n-th term is the sum of lengths of iteration chains to get fixed points (=1) for the Euler totient function from 1 to n.

Offset 0, canonical program `A060606.P8446617235737320077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060606 (n : ℕ) : ℤ :=
  A060606.P8446617235737320077.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060646.P4391028413269326424

`a(n-1)+C(n+2, A000040(a(n-1))+a(n-1))` with `a(0)=1`
-/

namespace A060646.P4391028413269326424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (n + 2) (A000040 (a (n - 1)) + (a (n - 1) : ℤ)).toNat

end

end A060646.P4391028413269326424

noncomputable section

/-- A060646: Bonse sequence: a(n) = minimal j such that n-j+1 < prime(j).

Offset 1, canonical program `A060646.P4391028413269326424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060646 (n : ℕ) : ℤ :=
  (A060646.P4391028413269326424.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060646.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060687.P13266842757816177506

`eq[2, A005361(n+1)]+1`
-/

namespace A060687.P13266842757816177506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A060687.P13266842757816177506

noncomputable section

/-- A060687: Numbers k such that there exist exactly 2 Abelian groups of order k, i.e., A000688(k) = 2.

Offset 1, canonical program `A060687.P13266842757816177506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060687 (n : ℕ) : ℤ :=
  (A060687.P13266842757816177506.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060755.P8092056796497788820

`log2(A060723(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A060755.P8092056796497788820
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A060723 n : ℝ)

end

end A060755.P8092056796497788820

noncomputable section

/-- A060755: a(n) = log_2(A060723(n)).

Offset 0, canonical program `A060755.P8092056796497788820`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060723, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060755 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A060755.P8092056796497788820.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060723, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060755.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A060805.P1394850094581464072

`A008642(A014681(abs(1-n)))`
-/

namespace A060805.P1394850094581464072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 (A014681 |1 - (n : ℤ)|.toNat).toNat

end

end A060805.P1394850094581464072

noncomputable section

/-- A060805: Numerators of special continued fraction for 2*zeta(3).

Offset 1, canonical program `A060805.P1394850094581464072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060805 (n : ℕ) : ℤ :=
  A060805.P1394850094581464072.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060805.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060822.P11802503559072820179

`A000040(n+1)+A007742(n+1)+A000578(n)`
-/

namespace A060822.P11802503559072820179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A007742 (n + 1) + A000578 n)

end

end A060822.P11802503559072820179

noncomputable section

/-- A060822: a(n) = prime(n) + n^3 + n^2 + 4n - 1.

Offset 1, canonical program `A060822.P11802503559072820179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060822 (n : ℕ) : ℤ :=
  A060822.P11802503559072820179.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A060822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060900.P6418703585910364633

`A001318(2*n)/A001318(n)*a(n-1)` with `a(0)=1`
-/

namespace A060900.P6418703585910364633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A001318 (2 * n) : ℚ) / (A001318 n : ℚ) * a (n - 1)

end

end A060900.P6418703585910364633

noncomputable section

/-- A060900: Number of walks of length n on square lattice, starting at origin, staying on points with x >= 0, y <= x.

Offset 0, canonical program `A060900.P6418703585910364633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A060900 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A060900.P6418703585910364633.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A060900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060926.P3658268357209895681

`A078006(A005843(n+1))-A077970(2*n)`
-/

namespace A060926.P3658268357209895681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078006 (A005843 (n + 1)).toNat - A077970 (2 * n)

end

end A060926.P3658268357209895681

noncomputable section

/-- A060926: Row sums of triangle A060923 (even part of bisection of Lucas triangle).

Offset 0, canonical program `A060926.P3658268357209895681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A060926 (n : ℕ) : ℤ :=
  A060926.P3658268357209895681.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A060926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060927.P1552723893086128136

`record[A077970(n)-Δ[A077970(n)]]`
-/

namespace A060927.P1552723893086128136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077970 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077970 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060927.P1552723893086128136

noncomputable section

/-- A060927: Row sums of triangle A060924 (odd part of bisection of Lucas triangle).

Offset 0, canonical program `A060927.P1552723893086128136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A060927 (n : ℕ) : ℤ :=
  A060927.P1552723893086128136.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A060927.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060929.P2101954034627007323

`A005408(n)*A136376(n+1)-A086926(n)`
-/

namespace A060929.P2101954034627007323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A136376 (n + 1) - A086926 n

end

end A060929.P2101954034627007323

noncomputable section

/-- A060929: Second convolution of Lucas numbers A000032(n+1), n >= 0.

Offset 0, canonical program `A060929.P2101954034627007323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 452 terms. -/
def A060929 (n : ℕ) : ℤ :=
  A060929.P2101954034627007323.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 452 terms. -/
def A060929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060970.P18394782073799357360

`A000720(A018048(n))`
-/

namespace A060970.P18394782073799357360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A018048 n).toNat

end

end A060970.P18394782073799357360

noncomputable section

/-- A060970: Number of fourth powers of primes <= 2^n.

Offset 0, canonical program `A060970.P18394782073799357360`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018048, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060970 (n : ℕ) : ℤ :=
  A060970.P18394782073799357360.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018048, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060970.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A060981.P12747927169127028284

`p?[A226097(xor(1, n))]`
-/

namespace A060981.P12747927169127028284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226097 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060981.P12747927169127028284

noncomputable section

/-- A060981: Primes of the form 4k^2 - 152k + 1487 + (6k - 114)*(-1)^k.

Offset 1, canonical program `A060981.P12747927169127028284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A060981 (n : ℕ) : ℤ :=
  A060981.P12747927169127028284.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. -/
def A060981.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061008.P3844537591406935097

`a(n-1)+A061007(n+1)` with `a(0)=0`
-/

namespace A061008.P3844537591406935097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A061007 (n + 1)

end

end A061008.P3844537591406935097

noncomputable section

/-- A061008: a(n) = Sum_{j=1..n} (-(n-1)! mod n).

Offset 1, canonical program `A061008.P3844537591406935097`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061007, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061008 (n : ℕ) : ℤ :=
  A061008.P3844537591406935097.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061007, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061008.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A061082.P12036528215142081119

`A053061(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A061082.P12036528215142081119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053061 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A061082.P12036528215142081119

noncomputable section

/-- A061082: a(n) = A053061(n)/n.

Offset 1, canonical program `A061082.P12036528215142081119`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061082 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A061082.P12036528215142081119.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061082.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A061178.P13876543038960591901

`A001628(2*n)`
-/

namespace A061178.P13876543038960591901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001628 (2 * n)

end

end A061178.P13876543038960591901

noncomputable section

/-- A061178: Third column (m=2) of triangle A060920 (bisection of Fibonacci triangle, even part).

Offset 0, canonical program `A061178.P13876543038960591901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. -/
def A061178 (n : ℕ) : ℤ :=
  A061178.P13876543038960591901.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. -/
def A061178.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061180.P6075713326514681743

`A001873(2*n)`
-/

namespace A061180.P6075713326514681743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001873 (2 * n)

end

end A061180.P6075713326514681743

noncomputable section

/-- A061180: Fifth column (m=4) of triangle A060920 (bisection of Fibonacci triangle, even part).

Offset 0, canonical program `A061180.P6075713326514681743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A061180 (n : ℕ) : ℤ :=
  A061180.P6075713326514681743.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A061180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061182.P38621950411227390

`A001628(Δ[n²])`
-/

namespace A061182.P38621950411227390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001628 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A061182.P38621950411227390

noncomputable section

/-- A061182: Third column (m=2) of triangle A060921 (bisection of Fibonacci triangle, odd part).

Offset 0, canonical program `A061182.P38621950411227390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. -/
def A061182 (n : ℕ) : ℤ :=
  A061182.P38621950411227390.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 228 terms. -/
def A061182.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061184.P646427770272767009

`A001873(Δ[n²])`
-/

namespace A061184.P646427770272767009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001873 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A061184.P646427770272767009

noncomputable section

/-- A061184: Fifth (m=4) column of triangle A060921 (bisection of Fibonacci triangle, odd part).

Offset 0, canonical program `A061184.P646427770272767009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A061184 (n : ℕ) : ℤ :=
  A061184.P646427770272767009.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A061184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061217.P10946344954140397278

`∑[A055641(n+1)]`
-/

namespace A061217.P10946344954140397278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A061217.P10946344954140397278

noncomputable section

/-- A061217: Number of zeros in the concatenation n(n-1)(n-2)(n-3)...321.

Offset 1, canonical program `A061217.P10946344954140397278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061217 (n : ℕ) : ℤ :=
  A061217.P10946344954140397278.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061287.P16595364071046665369

`floor(sqrt(A000045(n)))`
-/

namespace A061287.P16595364071046665369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000045 n)

end

end A061287.P16595364071046665369

noncomputable section

/-- A061287: Integer part of square root of n-th Fibonacci number.

Offset 0, canonical program `A061287.P16595364071046665369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A061287 (n : ℕ) : ℤ :=
  A061287.P16595364071046665369.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A061287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061338.P1052418466639521221

`n-A011371(and(n, n-1))`
-/

namespace A061338.P1052418466639521221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A011371 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

end

end A061338.P1052418466639521221

noncomputable section

/-- A061338: Increase in maximal number of comparisons for sorting n elements by list merging.

Offset 0, canonical program `A061338.P1052418466639521221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061338 (n : ℕ) : ℤ :=
  A061338.P1052418466639521221.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061391.P12752179287052150230

`∏{e}[n+1, A000326(#+1)]`
-/

namespace A061391.P12752179287052150230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000326 (Nat.factorization (f1 n) p + 1)

end

end A061391.P12752179287052150230

noncomputable section

/-- A061391: a(n) = t(n,3) = Sum_{d|n} tau(d^3), where tau(n) = number of divisors of n, cf. A000005.

Offset 1, canonical program `A061391.P12752179287052150230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061391 (n : ℕ) : ℤ :=
  A061391.P12752179287052150230.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061391.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061489.P13512089676603139105

`record[A103609(n)+A062157(n)]`
-/

namespace A061489.P13512089676603139105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 n + A062157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A061489.P13512089676603139105

noncomputable section

/-- A061489: Numbers that are Fibonacci numbers plus or minus 1.

Offset 1, canonical program `A061489.P13512089676603139105`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 956 terms. -/
def A061489 (n : ℕ) : ℤ :=
  A061489.P13512089676603139105.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 956 terms. -/
def A061489.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061506.P12700610903727524690

`2*A061495(n)`
-/

namespace A061506.P12700610903727524690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061495 n

end

end A061506.P12700610903727524690

noncomputable section

/-- A061506: a(n) = lcm(6n+2, 6n+4, 6n+6).

Offset 0, canonical program `A061506.P12700610903727524690`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061506 (n : ℕ) : ℤ :=
  A061506.P12700610903727524690.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061601.P11117984480287527776

`10^A055642(n)-1-n`
-/

namespace A061601.P11117984480287527776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A055642 n : ℤ) - 1 - (n : ℚ)

end

end A061601.P11117984480287527776

noncomputable section

/-- A061601: 9's complement of n: a(n) = 10^d - 1 - n where d is the number of digits in n. If a is a digit in n replace it with 9 - a.

Offset 0, canonical program `A061601.P11117984480287527776`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061601 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A061601.P11117984480287527776.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061601.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A061818.P6164946506137872965

`ceil(A024635(3*n)/2)`
-/

namespace A061818.P6164946506137872965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A024635 (3 * n) : ℚ) / 2⌉

end

end A061818.P6164946506137872965

noncomputable section

/-- A061818: Multiples of 2 containing only digits 0,1,2.

Offset 0, canonical program `A061818.P6164946506137872965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A061818 (n : ℕ) : ℤ :=
  A061818.P6164946506137872965.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A061818.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061826.P15676596452042369277

`∩[A008596(n), A024657(n)]`
-/

namespace A061826.P15676596452042369277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008596 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061826.P15676596452042369277

noncomputable section

/-- A061826: Multiples of 7 containing only even digits.

Offset 1, canonical program `A061826.P15676596452042369277`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A061826 (n : ℕ) : ℤ :=
  (A061826.P15676596452042369277.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A061826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061831.P6021332759442418635

`∩[A008600(n), A024657(n)]`
-/

namespace A061831.P6021332759442418635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008600 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061831.P6021332759442418635

noncomputable section

/-- A061831: Multiples of 9 having only even digits.

Offset 1, canonical program `A061831.P6021332759442418635`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 381 terms. -/
def A061831 (n : ℕ) : ℤ :=
  (A061831.P6021332759442418635.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 381 terms. -/
def A061831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061832.P11543862401762568469

`∩[A008604(n), A024657(n)]`
-/

namespace A061832.P11543862401762568469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008604 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061832.P11543862401762568469

noncomputable section

/-- A061832: Multiples of 11 having only even digits.

Offset 1, canonical program `A061832.P11543862401762568469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 405 terms. -/
def A061832 (n : ℕ) : ℤ :=
  (A061832.P11543862401762568469.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 405 terms. -/
def A061832.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061870.P8822362641979285632

`∩[A054684(n+1), A175885(n+1)]`
-/

namespace A061870.P8822362641979285632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A061870.P8822362641979285632

noncomputable section

/-- A061870: Numbers such that |first digit - second digit + third digit - fourth digit ...| = 1.

Offset 1, canonical program `A061870.P8822362641979285632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2623 terms. -/
def A061870 (n : ℕ) : ℤ :=
  (A061870.P8822362641979285632.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2623 terms. -/
def A061870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061886.P11094911804711347942

`A000007(n)+Δ[A060984(A028310(n))]`
-/

namespace A061886.P11094911804711347942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060984 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A061886.P11094911804711347942

noncomputable section

/-- A061886: Largest square less than or equal to sum of previous terms.

Offset 0, canonical program `A061886.P11094911804711347942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A061886 (n : ℕ) : ℤ :=
  A061886.P11094911804711347942.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A061886.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062009.P15091444349905616677

`floor(∑[sqrt(A000040(n+1))])`
-/

namespace A062009.P15091444349905616677
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000040 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A062009.P15091444349905616677

noncomputable section

/-- A062009: a(n) = floor(Sum_{k=1..n} sqrt(prime(k))).

Offset 1, canonical program `A062009.P15091444349905616677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3306 terms. -/
def A062009 (n : ℕ) : ℤ :=
  A062009.P15091444349905616677.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3306 terms. -/
def A062009.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062048.P8616500315973901057

`∑[floor(sqrt(A000040(n+1)))]`
-/

namespace A062048.P8616500315973901057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062048.P8616500315973901057

noncomputable section

/-- A062048: a(n) = Sum_{k=1..n} floor(sqrt(prime(k))).

Offset 1, canonical program `A062048.P8616500315973901057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062048 (n : ℕ) : ℤ :=
  A062048.P8616500315973901057.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062048.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062121.P11377876297193387401

`floor(exp((n+1)/π))%A001612(n)`
-/

namespace A062121.P11377876297193387401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.exp ((n + 1 : ℝ) / Real.pi)⌋ (A001612 n)

end

end A062121.P11377876297193387401

noncomputable section

/-- A062121: a(n) = floor(exp(n/Pi)).

Offset 1, canonical program `A062121.P11377876297193387401`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A062121 (n : ℕ) : ℤ :=
  A062121.P11377876297193387401.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A062121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062289.P3760834885258552887

`A057716(n+1)-1`
-/

namespace A062289.P3760834885258552887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057716 (n + 1) - 1

end

end A062289.P3760834885258552887

noncomputable section

/-- A062289: Numbers n such that n-th row in Pascal triangle contains an even number, i.e., A048967(n) > 0.

Offset 1, canonical program `A062289.P3760834885258552887`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062289 (n : ℕ) : ℤ :=
  A062289.P3760834885258552887.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062289.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062296.P12059922108062415392

`n+1-A006047(n)`
-/

namespace A062296.P12059922108062415392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A006047 n

end

end A062296.P12059922108062415392

noncomputable section

/-- A062296: a(n) = number of entries in n-th row of Pascal's triangle divisible by 3.

Offset 0, canonical program `A062296.P12059922108062415392`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006047, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062296 (n : ℕ) : ℤ :=
  A062296.P12059922108062415392.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006047, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062296.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062367.P13182524450785977824

`∏{e}[n+1, A047732(#)+#]`
-/

namespace A062367.P13182524450785977824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A047732 (Nat.factorization (f1 n) p) + (Nat.factorization (f1 n) p : ℤ))

end

end A062367.P13182524450785977824

noncomputable section

/-- A062367: Multiplicative with a(p^e) = (e+1)*(e+2)*(2*e+3)/6.

Offset 1, canonical program `A062367.P13182524450785977824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062367 (n : ℕ) : ℤ :=
  A062367.P13182524450785977824.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062368.P7963604696117707024

`∏{e}[n+1, A002623(#+#)]`
-/

namespace A062368.P7963604696117707024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A002623 (Nat.factorization (f1 n) p + Nat.factorization (f1 n) p)

end

end A062368.P7963604696117707024

noncomputable section

/-- A062368: Multiplicative with a(p^e) = (e+1)*(e+2)*(4*e+3)/6.

Offset 1, canonical program `A062368.P7963604696117707024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062368 (n : ℕ) : ℤ :=
  A062368.P7963604696117707024.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062372.P14434391431021769466

`record[(n+1)*(1-A070923(A051801(n+1)))]`
-/

namespace A062372.P14434391431021769466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A070923 (A051801 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062372.P14434391431021769466

noncomputable section

/-- A062372: Numbers the product of whose nonzero digits is a cube.

Offset 1, canonical program `A062372.P14434391431021769466`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 525 terms. -/
def A062372 (n : ℕ) : ℤ :=
  A062372.P14434391431021769466.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 525 terms. -/
def A062372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062379.P2146115628841648253

`(n+1)/A058035(n+1)`
-/

namespace A062379.P2146115628841648253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A058035 (n + 1) : ℚ)

end

end A062379.P2146115628841648253

noncomputable section

/-- A062379: n divided by largest 4th-power-free factor of n.

Offset 1, canonical program `A062379.P2146115628841648253`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058035, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062379 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A062379.P2146115628841648253.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A058035, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A062379.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062720.P5446721574008662633

`((A000040(n+1)-(n+2))*and(1, n)+n)*gcd(2, n)+2`
-/

namespace A062720.P5446721574008662633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A000040 (n + 1) - (n + 2 : ℤ)) * (Nat.land 1 n : ℤ) + (n : ℤ)) * (Nat.gcd 2 n : ℤ) + 2

end

end A062720.P5446721574008662633

noncomputable section

/-- A062720: If n is odd then 2*n else prime(n).

Offset 1, canonical program `A062720.P5446721574008662633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062720 (n : ℕ) : ℤ :=
  A062720.P5446721574008662633.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062737.P15537786315737208090

`(p?[A001749(n+1)-1]+1)/4`
-/

namespace A062737.P15537786315737208090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 : ℚ) / 4

end

end A062737.P15537786315737208090

noncomputable section

/-- A062737: Primes p such that 4p-1 is also prime.

Offset 1, canonical program `A062737.P15537786315737208090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2127 terms. -/
def A062737 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A062737.P15537786315737208090.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2127 terms. -/
def A062737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062756.P1690328074711592095

`val(A006047(n), 2)`
-/

namespace A062756.P1690328074711592095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006047 n).toNat 2

end

end A062756.P1690328074711592095

noncomputable section

/-- A062756: Number of 1's in ternary (base-3) expansion of n.

Offset 0, canonical program `A062756.P1690328074711592095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062756 (n : ℕ) : ℤ :=
  (A062756.P1690328074711592095.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062789.P13648497980355874832

`gcd(A000027(n+1), A002378(A016035(n+1)))`
-/

namespace A062789.P13648497980355874832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A002378 (A016035 (n + 1)).toNat)

end

end A062789.P13648497980355874832

noncomputable section

/-- A062789: a(n) = gcd(n, phi(n) * (phi(n) + 1)).

Offset 1, canonical program `A062789.P13648497980355874832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062789 (n : ℕ) : ℤ :=
  (A062789.P13648497980355874832.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062791.P796838549966541692

`∑{d}[n+1, A007427(#)*A062798((n+1)/#)]`
-/

namespace A062791.P796838549966541692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A062798 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062791.P796838549966541692

noncomputable section

/-- A062791: Moebius transform of A001405 (binomial(n, floor(n/2))).

Offset 1, canonical program `A062791.P796838549966541692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A062791 (n : ℕ) : ℤ :=
  A062791.P796838549966541692.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A062791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062877.P13716015760311910933

`A036796(n)-1`
-/

namespace A062877.P13716015760311910933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036796 n - 1

end

end A062877.P13716015760311910933

noncomputable section

/-- A062877: 0 and numbers representable as a sum of distinct odd-indexed Fibonacci numbers.

Offset 0, canonical program `A062877.P13716015760311910933`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A062877 (n : ℕ) : ℤ :=
  A062877.P13716015760311910933.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. -/
def A062877.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062883.P17430366782360753676

`A189235(n+1)`
-/

namespace A062883.P17430366782360753676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189235 (n + 1)

end

end A062883.P17430366782360753676

noncomputable section

/-- A062883: (1-2*cos(1/11*Pi))^n+(1+2*cos(2/11*Pi))^n+(1-2*cos(3/11*Pi))^n+(1+2*cos(4/11*Pi))^n+(1-2*cos(5/11*Pi))^n.

Offset 1, canonical program `A062883.P17430366782360753676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A062883 (n : ℕ) : ℤ :=
  A062883.P17430366782360753676.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A062883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062890.P5257979174450164167

`A026810(n)-A181120(A004526(n))`
-/

namespace A062890.P5257979174450164167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n - A181120 (A004526 n).toNat

end

end A062890.P5257979174450164167

noncomputable section

/-- A062890: Number of quadrilaterals that can be formed with perimeter n. In other words, number of partitions of n into four parts such that the sum of any three is more than the fourth.

Offset 0, canonical program `A062890.P5257979174450164167`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062890 (n : ℕ) : ℤ :=
  A062890.P5257979174450164167.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062940.P116347299529594207

`A049415(n+1)+A000007(n)`
-/

namespace A062940.P116347299529594207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049415 (n + 1) + A000007 n

end

end A062940.P116347299529594207

noncomputable section

/-- A062940: Number of squares (including 0) with n digits.

Offset 1, canonical program `A062940.P116347299529594207`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A062940 (n : ℕ) : ℤ :=
  A062940.P116347299529594207.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A062940.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062998.P8525607989414604910

`lt[n*A062329(n), n]`
-/

namespace A062998.P8525607989414604910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A062329 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A062998.P8525607989414604910

noncomputable section

/-- A062998: Numbers whose sum of digits is less than or equal to its product of digits.

Offset 1, canonical program `A062998.P8525607989414604910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7284 terms. -/
def A062998 (n : ℕ) : ℤ :=
  (A062998.P8525607989414604910.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7284 terms. -/
def A062998.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063114.P7069837411164582979

`n+1+A051801(n+1)`
-/

namespace A063114.P7069837411164582979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A051801 (n + 1)

end

end A063114.P7069837411164582979

noncomputable section

/-- A063114: a(n) = n + product of the nonzero digits of n.

Offset 1, canonical program `A063114.P7069837411164582979`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051801, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063114 (n : ℕ) : ℤ :=
  A063114.P7069837411164582979.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051801, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063114.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A063229.P2455044806351860707

`4*n+A063207(n+1)+2`
-/

namespace A063229.P2455044806351860707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + (A063207 (n + 1) + 2)

end

end A063229.P2455044806351860707

noncomputable section

/-- A063229: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 69 ).

Offset 1, canonical program `A063229.P2455044806351860707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063229 (n : ℕ) : ℤ :=
  A063229.P2455044806351860707.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063230.P14545759985604796724

`A063223(n+1)+Δ[n²]`
-/

namespace A063230.P14545759985604796724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063223 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A063230.P14545759985604796724

noncomputable section

/-- A063230: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 71 ).

Offset 1, canonical program `A063230.P14545759985604796724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063230 (n : ℕ) : ℤ :=
  A063230.P14545759985604796724.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063236.P5255982037722682345

`4*n+A063220(n+1)+2`
-/

namespace A063236.P5255982037722682345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + (A063220 (n + 1) + 2)

end

end A063236.P5255982037722682345

noncomputable section

/-- A063236: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 85 ).

Offset 1, canonical program `A063236.P5255982037722682345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063236 (n : ℕ) : ℤ :=
  A063236.P5255982037722682345.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063244.P3216975161231170830

`4*n+A063214(n+1)+2`
-/

namespace A063244.P3216975161231170830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + (A063214 (n + 1) + 2)

end

end A063244.P3216975161231170830

noncomputable section

/-- A063244: Dimension of the space of weight 2n cuspidal newforms for Gamma_0( 94 ).

Offset 1, canonical program `A063244.P3216975161231170830`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063244 (n : ℕ) : ℤ :=
  A063244.P3216975161231170830.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063263.P3578646153030098628

`∑[∑[∑[A062988(n)-2]]]`
-/

namespace A063263.P3578646153030098628
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062988 n - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063263.P3578646153030098628

noncomputable section

/-- A063263: Ninth column (k=8) of sextinomial array A063260.

Offset 0, canonical program `A063263.P3578646153030098628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063263 (n : ℕ) : ℤ :=
  A063263.P3578646153030098628.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063418.P3031915557263829765

`∑[A063417(n)-∑[n+1]]`
-/

namespace A063418.P3031915557263829765
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063417 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A063418.P3031915557263829765

noncomputable section

/-- A063418: Tenth column (k=9) of septinomial array A063265.

Offset 0, canonical program `A063418.P3031915557263829765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063418 (n : ℕ) : ℤ :=
  A063418.P3031915557263829765.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063425.P10763160283365763615

`A028310(comp[A051801(n)+n])`
-/

namespace A063425.P10763160283365763615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A063425.P10763160283365763615

noncomputable section

/-- A063425: Unattainable numbers: integers not expressible as k + product of nonzero digits of k (A063114).

Offset 1, canonical program `A063425.P10763160283365763615`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2071 terms. -/
def A063425 (n : ℕ) : ℤ :=
  A063425.P10763160283365763615.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2071 terms. -/
def A063425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063543.P3901565496532426814

`n+1-A051801(n+1)`
-/

namespace A063543.P3901565496532426814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A051801 (n + 1)

end

end A063543.P3901565496532426814

noncomputable section

/-- A063543: a(n) = n - product of the nonzero digits of n.

Offset 1, canonical program `A063543.P3901565496532426814`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051801, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063543 (n : ℕ) : ℤ :=
  A063543.P3901565496532426814.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051801, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A063543.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A063549.P3440238765990311944

`C(or(1, n), n)*A000108(∑[n%2])`
-/

namespace A063549.P3440238765990311944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.lor 1 n) n : ℤ) * A000108 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A063549.P3440238765990311944

noncomputable section

/-- A063549: Smallest number of crossing-free matchings on n points in the plane.

Offset 1, canonical program `A063549.P3440238765990311944`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A063549 (n : ℕ) : ℤ :=
  A063549.P3440238765990311944.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A063549.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063595.P18202738297110492609

`floor(Δ[sqrt(A000045(n))])`
-/

namespace A063595.P18202738297110492609
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000045 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A063595.P18202738297110492609

noncomputable section

/-- A063595: a(n) = floor(sqrt(Fibonacci(n+1)) - sqrt(Fibonacci(n))).

Offset 0, canonical program `A063595.P18202738297110492609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A063595 (n : ℕ) : ℤ :=
  A063595.P18202738297110492609.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. -/
def A063595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063712.P7045674916285883197

`A023532(n-A023532(n))+A002024(n+1)`
-/

namespace A063712.P7045674916285883197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 ((n : ℤ) - A023532 n).toNat + A002024 (n + 1)

end

end A063712.P7045674916285883197

noncomputable section

/-- A063712: Table of bits required for product of n- and k-bit positive numbers read by antidiagonals.

Offset 1, canonical program `A063712.P7045674916285883197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063712 (n : ℕ) : ℤ :=
  A063712.P7045674916285883197.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063712.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063726.P9833521846343974685

`gcd(A001611(n), A212804(n))`
-/

namespace A063726.P9833521846343974685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001611 n) (A212804 n)

end

end A063726.P9833521846343974685

noncomputable section

/-- A063726: a(n) = gcd(1 + Fibonacci(n+1), 1 + Fibonacci(n)).

Offset 0, canonical program `A063726.P9833521846343974685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A063726 (n : ℕ) : ℤ :=
  (A063726.P9833521846343974685.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A063726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063842.P18276294030905061027

`∑[A100790(n)]+∑[n]²`
-/

namespace A063842.P18276294030905061027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100790 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

end

end A063842.P18276294030905061027

noncomputable section

/-- A063842: Number of colorings of K_4 using at most n colors.

Offset 0, canonical program `A063842.P18276294030905061027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063842 (n : ℕ) : ℤ :=
  A063842.P18276294030905061027.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063842.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063946.P14831572246508618093

`xor(n, A053644(floor(n/2)))`
-/

namespace A063946.P14831572246508618093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A053644 ⌊(n : ℚ) / 2⌋.toNat)

end

end A063946.P14831572246508618093

noncomputable section

/-- A063946: Write n in binary and complement second bit (from the left), with a(0)=0 and a(1)=1.

Offset 0, canonical program `A063946.P14831572246508618093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063946 (n : ℕ) : ℤ :=
  A063946.P14831572246508618093.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064054.P603331985912592333

`∑[A005716(n+4)+A005715(n+4)]`
-/

namespace A064054.P603331985912592333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005716 (n + 4) + A005715 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064054.P603331985912592333

noncomputable section

/-- A064054: Tenth column of trinomial coefficients.

Offset 0, canonical program `A064054.P603331985912592333`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064054 (n : ℕ) : ℤ :=
  A064054.P603331985912592333.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064054.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064055.P16541604894270962580

`∑[A001919(n+3)-A005718(n)]`
-/

namespace A064055.P16541604894270962580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001919 (n + 3) - A005718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064055.P16541604894270962580

noncomputable section

/-- A064055: Ninth column of quadrinomial coefficients.

Offset 0, canonical program `A064055.P16541604894270962580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064055 (n : ℕ) : ℤ :=
  A064055.P16541604894270962580.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064057.P17916192335594862832

`∑[∑[∑[A063258(n)-2]]]`
-/

namespace A064057.P17916192335594862832
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063258 n - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064057.P17916192335594862832

noncomputable section

/-- A064057: Eighth column of quintinomial coefficients.

Offset 0, canonical program `A064057.P17916192335594862832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064057 (n : ℕ) : ℤ :=
  A064057.P17916192335594862832.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064412.P10500995238747171540

`A212967(n)+A008804(n)`
-/

namespace A064412.P10500995238747171540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212967 n + A008804 n

end

end A064412.P10500995238747171540

noncomputable section

/-- A064412: At stage 1, start with a unit equilateral equiangular triangle. At each successive stage add 3*(n-1) new triangles around outside with edge-to-edge contacts. Sequence gives number of triangles (regardless of size) at n-th stage.

Offset 1, canonical program `A064412.P10500995238747171540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064412 (n : ℕ) : ℤ :=
  A064412.P10500995238747171540.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064497.P12690609797961739439

`A000045(n+1)*p?[A001057(n)]`
-/

namespace A064497.P12690609797961739439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A064497.P12690609797961739439

noncomputable section

/-- A064497: a(n) = prime(n) * Fibonacci(n).

Offset 1, canonical program `A064497.P12690609797961739439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 463 terms. -/
def A064497 (n : ℕ) : ℤ :=
  A064497.P12690609797961739439.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 463 terms. -/
def A064497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064517.P16939115465743237855

`record[(n+1)*A010052(A000720(n+1))]`
-/

namespace A064517.P16939115465743237855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010052 (A000720 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A064517.P16939115465743237855

noncomputable section

/-- A064517: Numbers k such that pi(k) is a square.

Offset 1, canonical program `A064517.P16939115465743237855`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. -/
def A064517 (n : ℕ) : ℤ :=
  A064517.P16939115465743237855.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 880 terms. -/
def A064517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064520.P16522075484483722400

`∑[(n+1)*A033999(A003056(n))]`
-/

namespace A064520.P16522075484483722400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A033999 (A003056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A064520.P16522075484483722400

noncomputable section

/-- A064520: a(n) = + 1 - 2 - 3 + 4 + 5 + 6 - 7 - 8 - 9 - 10 + 11 + 12 + 13 + 14 + 15 - ... + (+-1)*n, where there is one plus, two minuses, three pluses, etc. (see A002024).

Offset 1, canonical program `A064520.P16522075484483722400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064520 (n : ℕ) : ℤ :=
  A064520.P16522075484483722400.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064520.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064550.P4635487846824870834

`∑[2*A005185(n+1)]-A000124(n)`
-/

namespace A064550.P4635487846824870834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000124 n

end

end A064550.P4635487846824870834

noncomputable section

/-- A064550: a(1) = 2, a(n)=a(n-1)+2*Q(n)-n, n > 1 where Q = A005185.

Offset 0, canonical program `A064550.P4635487846824870834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064550 (n : ℕ) : ℤ :=
  A064550.P4635487846824870834.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064550.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064603.P2755138761296044456

`a(n-1)+A001158(n+1)` with `a(0)=1`
-/

namespace A064603.P2755138761296044456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A001158 (n + 1)

end

end A064603.P2755138761296044456

noncomputable section

/-- A064603: Partial sums of A001158: Sum_{j=1..n} sigma_3(j).

Offset 1, canonical program `A064603.P2755138761296044456`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001158, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064603 (n : ℕ) : ℤ :=
  A064603.P2755138761296044456.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001158, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064603.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064604.P11351988528342173262

`a(n-1)+A001159(n+1)` with `a(0)=1`
-/

namespace A064604.P11351988528342173262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A001159 (n + 1)

end

end A064604.P11351988528342173262

noncomputable section

/-- A064604: Partial sums of A001159: Sum_{j=1..n} sigma_4(j).

Offset 1, canonical program `A064604.P11351988528342173262`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001159, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064604 (n : ℕ) : ℤ :=
  A064604.P11351988528342173262.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001159, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064604.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064659.P6472487142109502257

`A000040(n+1)-A050503(n+1)`
-/

namespace A064659.P6472487142109502257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A050503 (n + 1)

end

end A064659.P6472487142109502257

noncomputable section

/-- A064659: a(n) = round(prime(n) - n*log(n)).

Offset 1, canonical program `A064659.P6472487142109502257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064659 (n : ℕ) : ℤ :=
  A064659.P6472487142109502257.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064692.P5168258694329805100

`∑{digits}[n, A029352(#)]`
-/

namespace A064692.P5168258694329805100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A029352 x).sum

end

end A064692.P5168258694329805100

noncomputable section

/-- A064692: Total number of holes in decimal expansion of the number n, assuming 4 has 1 hole.

Offset 0, canonical program `A064692.P5168258694329805100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064692 (n : ℕ) : ℤ :=
  A064692.P5168258694329805100.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064718.P6226458648572987889

`A057359(A016825(n)-1)+2`
-/

namespace A064718.P6226458648572987889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057359 (A016825 n - 1).toNat + 2

end

end A064718.P6226458648572987889

noncomputable section

/-- A064718: A Beatty sequence for 2^i + 2^-i where i = sqrt(-1).

Offset 1, canonical program `A064718.P6226458648572987889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A064718 (n : ℕ) : ℤ :=
  A064718.P6226458648572987889.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A064718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064997.P7944663439960374129

`A002266(A008587(2*(n+1))+A002265(3*n+2))`
-/

namespace A064997.P7944663439960374129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A008587 (2 * (n + 1)) + A002265 (3 * n + 2)).toNat

end

end A064997.P7944663439960374129

noncomputable section

/-- A064997: A Beatty sequence: [Pi^2 -8].

Offset 1, canonical program `A064997.P7944663439960374129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 930 terms. -/
def A064997 (n : ℕ) : ℤ :=
  A064997.P7944663439960374129.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 930 terms. -/
def A064997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065037.P9608909519015091916

`n+1+Δ[A161680(A068639(n))]`
-/

namespace A065037.P9608909519015091916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A068639 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (f1 (n + 1) - f1 n)

end

end A065037.P9608909519015091916

noncomputable section

/-- A065037: Inverse permutation to A036552.

Offset 1, canonical program `A065037.P9608909519015091916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065037 (n : ℕ) : ℤ :=
  A065037.P9608909519015091916.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065166.P5421407723204175398

`ceil(abs(12-A157142(n))/2)`
-/

namespace A065166.P5421407723204175398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|12 - A157142 n| : ℚ) / 2⌉

end

end A065166.P5421407723204175398

noncomputable section

/-- A065166: Permutation t->t+3 of Z, folded to N.

Offset 1, canonical program `A065166.P5421407723204175398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065166 (n : ℕ) : ℤ :=
  A065166.P5421407723204175398.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065166.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065308.P10618243787799868121

`A000040(∑[∏{p}[n+1, C(#%n, #)]])`
-/

namespace A065308.P10618243787799868121
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (p % n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A065308.P10618243787799868121

noncomputable section

/-- A065308: a(n) = prime(n - pi(n)).

Offset 1, canonical program `A065308.P10618243787799868121`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065308 (n : ℕ) : ℤ :=
  A065308.P10618243787799868121.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065335.P13783723182241918212

`A007949(n+1)*A065333(n+1)`
-/

namespace A065335.P13783723182241918212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (n + 1) * A065333 (n + 1)

end

end A065335.P13783723182241918212

noncomputable section

/-- A065335: 3-exponents to represent 3-smooth numbers (A065332).

Offset 1, canonical program `A065335.P13783723182241918212`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065333, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065335 (n : ℕ) : ℤ :=
  A065335.P13783723182241918212.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065333, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065335.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065347.P5764445465654465881

`eq[0, A065344(n+1)]+1`
-/

namespace A065347.P5764445465654465881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065344 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065347.P5764445465654465881

noncomputable section

/-- A065347: Positions of zeros in A065344, i.e., binomial(2n,n) mod ((n+1)*(n+2)) = 0.

Offset 1, canonical program `A065347.P5764445465654465881`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9605 terms. -/
def A065347 (n : ℕ) : ℤ :=
  (A065347.P5764445465654465881.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9605 terms. -/
def A065347.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065348.P1935091354727821189

`eq[0, A065345(n+1)]+1`
-/

namespace A065348.P1935091354727821189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065345 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065348.P1935091354727821189

noncomputable section

/-- A065348: Positions of zeros in A065345.

Offset 1, canonical program `A065348.P1935091354727821189`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8862 terms. -/
def A065348 (n : ℕ) : ℤ :=
  (A065348.P1935091354727821189.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8862 terms. -/
def A065348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065349.P18239229015317001529

`eq[0, A065346(n+1)]+1`
-/

namespace A065349.P18239229015317001529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065346 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A065349.P18239229015317001529

noncomputable section

/-- A065349: Positions of zeros in A065346.

Offset 1, canonical program `A065349.P18239229015317001529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7707 terms. -/
def A065349 (n : ℕ) : ℤ :=
  (A065349.P18239229015317001529.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7707 terms. -/
def A065349.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065369.P17665126162398518660

`2*A105186(n)-n`
-/

namespace A065369.P17665126162398518660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105186 n - (n : ℤ)

end

end A065369.P17665126162398518660

noncomputable section

/-- A065369: Replace 3^k with (-3)^k in ternary expansion of n.

Offset 0, canonical program `A065369.P17665126162398518660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065369 (n : ℕ) : ℤ :=
  A065369.P17665126162398518660.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065450.P6708041724933153573

`a(n-2)+A047883(n)` with `a(0)=1, a(1)=2`
-/

namespace A065450.P6708041724933153573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + A047883 n

end

end A065450.P6708041724933153573

noncomputable section

/-- A065450: Make an infinite chessboard from the squares in the first quadrant; sequence gives number of squares a knight can reach in n moves starting at the origin.

Offset 0, canonical program `A065450.P6708041724933153573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065450 (n : ℕ) : ℤ :=
  A065450.P6708041724933153573.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065495.P5148753834428374219

`2^(n+2)-A061279(n+2)`
-/

namespace A065495.P5148753834428374219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 2) : ℤ) - A061279 (n + 2)

end

end A065495.P5148753834428374219

noncomputable section

/-- A065495: Number of (binary) bit strings of length n in which an odd length block of 0's is followed by an odd length block of 1's.

Offset 2, canonical program `A065495.P5148753834428374219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A065495 (n : ℕ) : ℤ :=
  A065495.P5148753834428374219.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A065495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065554.P874369825482619796

`eq[0, A002379(n+1)%3]`
-/

namespace A065554.P874369825482619796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002379 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065554.P874369825482619796

noncomputable section

/-- A065554: Numbers k such that floor((3/2)^(k+1))/floor((3/2)^k) = 3/2.

Offset 1, canonical program `A065554.P874369825482619796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A065554 (n : ℕ) : ℤ :=
  (A065554.P874369825482619796.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A065554.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065564.P8392613647808291143

`eq[0, A064628(n+1)%4]`
-/

namespace A065564.P8392613647808291143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064628 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A065564.P8392613647808291143

noncomputable section

/-- A065564: Numbers k such that floor((4/3)^(k+1))/floor((4/3)^k) = 4/3.

Offset 1, canonical program `A065564.P8392613647808291143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A065564 (n : ℕ) : ℤ :=
  (A065564.P8392613647808291143.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. -/
def A065564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065801.P8989070980736403821

`A000027(A060508(n+2)+1)`
-/

namespace A065801.P8989070980736403821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A060508 (n + 2) + 1).toNat

end

end A065801.P8989070980736403821

noncomputable section

/-- A065801: Least k such that n^k > 2^n.

Offset 2, canonical program `A065801.P8989070980736403821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065801 (n : ℕ) : ℤ :=
  A065801.P8989070980736403821.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065801.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065863.P10840527793315109714

`A000040(n+1)%∑[∏{p}[n+1, C(#%n, #)]]`
-/

namespace A065863.P10840527793315109714
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose (p % n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A065863.P10840527793315109714

noncomputable section

/-- A065863: Remainder when n-th prime is divided by the number of nonprimes not exceeding n.

Offset 1, canonical program `A065863.P10840527793315109714`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065863 (n : ℕ) : ℤ :=
  A065863.P10840527793315109714.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065999.P18140349948238874302

`A004166(2*n)`
-/

namespace A065999.P18140349948238874302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004166 (2 * n)

end

end A065999.P18140349948238874302

noncomputable section

/-- A065999: Sum of digits of 9^n.

Offset 0, canonical program `A065999.P18140349948238874302`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A065999 (n : ℕ) : ℤ :=
  A065999.P18140349948238874302.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A065999.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066067.P14584696473161266079

`∑[A068928(n+1)-1]`
-/

namespace A066067.P14584696473161266079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068928 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A066067.P14584696473161266079

noncomputable section

/-- A066067: Number of binary strings u of any length with property that length(u) + number of 0's in u <= n (only one of a string and its reversal are counted).

Offset 1, canonical program `A066067.P14584696473161266079`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A066067 (n : ℕ) : ℤ :=
  A066067.P14584696473161266079.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A066067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066148.P15850086910344057196

`p?[A059010(n)]`
-/

namespace A066148.P15850086910344057196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066148.P15850086910344057196

noncomputable section

/-- A066148: Primes with an even number of 0's in binary expansion.

Offset 1, canonical program `A066148.P15850086910344057196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2364 terms. -/
def A066148 (n : ℕ) : ℤ :=
  A066148.P15850086910344057196.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2364 terms. -/
def A066148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066149.P805672905176407907

`p?[A059009(n)]`
-/

namespace A066149.P805672905176407907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A066149.P805672905176407907

noncomputable section

/-- A066149: Primes with an odd number of 0's in binary expansion.

Offset 1, canonical program `A066149.P805672905176407907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2769 terms. -/
def A066149 (n : ℕ) : ℤ :=
  A066149.P805672905176407907.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2769 terms. -/
def A066149.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066309.P688434385079463632

`lt[A066308(abs(1-n)+1), n]`
-/

namespace A066309.P688434385079463632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066308 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A066309.P688434385079463632

noncomputable section

/-- A066309: Numbers k such that k > (product of digits of k) * (sum of digits of k).

Offset 1, canonical program `A066309.P688434385079463632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5591 terms. -/
def A066309 (n : ℕ) : ℤ :=
  (A066309.P688434385079463632.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5591 terms. -/
def A066309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066342.P15556581999171577946

`∪[A066368(n+1), A066374(n+2)]`
-/

namespace A066342.P15556581999171577946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066374 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A066342.P15556581999171577946

noncomputable section

/-- A066342: Number of triangulations of the cyclic polytope C(n, n-4).

Offset 2, canonical program `A066342.P15556581999171577946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 647 terms. -/
def A066342 (n : ℕ) : ℤ :=
  (A066342.P15556581999171577946.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 647 terms. -/
def A066342.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066345.P89557897596914136

`A166920(n+1)-A171647(n+1)`
-/

namespace A066345.P89557897596914136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166920 (n + 1) - A171647 (n + 1)

end

end A066345.P89557897596914136

noncomputable section

/-- A066345: Winning binary "same game" templates of length n as defined below.

Offset 1, canonical program `A066345.P89557897596914136`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A066345 (n : ℕ) : ℤ :=
  A066345.P89557897596914136.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A066345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066438.P4806805632813582493

`A066429(n+1)%(n+1)`
-/

namespace A066438.P4806805632813582493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066429 (n + 1)) (n + 1 : ℤ)

end

end A066438.P4806805632813582493

noncomputable section

/-- A066438: a(n) = 7^n mod n.

Offset 1, canonical program `A066438.P4806805632813582493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066438 (n : ℕ) : ℤ :=
  A066438.P4806805632813582493.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066438.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066439.P15596551957165423481

`A066430(n+1)%(n+1)`
-/

namespace A066439.P15596551957165423481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066430 (n + 1)) (n + 1 : ℤ)

end

end A066439.P15596551957165423481

noncomputable section

/-- A066439: a(n) = 8^n mod n.

Offset 1, canonical program `A066439.P15596551957165423481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066439 (n : ℕ) : ℤ :=
  A066439.P15596551957165423481.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066440.P8418293446252948467

`A066431(n+1)%(n+1)`
-/

namespace A066440.P8418293446252948467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066431 (n + 1)) (n + 1 : ℤ)

end

end A066440.P8418293446252948467

noncomputable section

/-- A066440: a(n) = 9^n mod n.

Offset 1, canonical program `A066440.P8418293446252948467`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066440 (n : ℕ) : ℤ :=
  A066440.P8418293446252948467.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066441.P7694382468054374169

`A066444(n+1)%(n+1)`
-/

namespace A066441.P7694382468054374169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066444 (n + 1)) (n + 1 : ℤ)

end

end A066441.P7694382468054374169

noncomputable section

/-- A066441: a(n) = 11^n mod n.

Offset 1, canonical program `A066441.P7694382468054374169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066441 (n : ℕ) : ℤ :=
  A066441.P7694382468054374169.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066456.P12786158551663519628

`A000124(n)+∑[A028724(n)]-n`
-/

namespace A066456.P12786158551663519628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n + (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A066456.P12786158551663519628

noncomputable section

/-- A066456: Upper bound on number of regular triangulations of cyclic polytope C(n, n-4).

Offset 1, canonical program `A066456.P12786158551663519628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066456 (n : ℕ) : ℤ :=
  A066456.P12786158551663519628.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066456.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066577.P5294432664984290938

`floor((n+1)/A051801(n+1))`
-/

namespace A066577.P5294432664984290938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A051801 (n + 1) : ℚ)⌋

end

end A066577.P5294432664984290938

noncomputable section

/-- A066577: a(n) = floor(n/(product of nonzero digits of n)).

Offset 1, canonical program `A066577.P5294432664984290938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066577 (n : ℕ) : ℤ :=
  A066577.P5294432664984290938.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066601.P273108272121947781

`A066607(n+1)%(n+1)`
-/

namespace A066601.P273108272121947781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066607 (n + 1)) (n + 1 : ℤ)

end

end A066601.P273108272121947781

noncomputable section

/-- A066601: a(n) = 3^n mod n.

Offset 1, canonical program `A066601.P273108272121947781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066601 (n : ℕ) : ℤ :=
  A066601.P273108272121947781.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066601.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066628.P4571683134443220888

`(a(n-1)+1)%∑[A003849(n)]` with `a(0)=0`
-/

namespace A066628.P4571683134443220888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (a (n - 1) + 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A066628.P4571683134443220888

noncomputable section

/-- A066628: a(n) = n - the largest Fibonacci number <= n.

Offset 0, canonical program `A066628.P4571683134443220888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066628 (n : ℕ) : ℤ :=
  A066628.P4571683134443220888.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066636.P3666790557373503955

`A007947(n+1)^A051903(n+1)/(n+1)`
-/

namespace A066636.P3666790557373503955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) ^ (A051903 (n + 1) : ℤ) / (n + 1 : ℚ)

end

end A066636.P3666790557373503955

noncomputable section

/-- A066636: a(n) = A066638(n)/n, where A066638(n) is the smallest power of a squarefree kernel of n that is a multiple of n.

Offset 1, canonical program `A066636.P3666790557373503955`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066636 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A066636.P3666790557373503955.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066636.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066714.P4346487057166145415

`dr(A009946(n))*A099392(n+1)`
-/

namespace A066714.P4346487057166145415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A009946 n) : ℤ) * A099392 (n + 1)

end

end A066714.P4346487057166145415

noncomputable section

/-- A066714: Coordination sequence for ReO_3 net with respect to Re atom.

Offset 0, canonical program `A066714.P4346487057166145415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066714 (n : ℕ) : ℤ :=
  A066714.P4346487057166145415.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066768.P10388036879488056357

`∑{d}[n+1, A000984(#-1)]`
-/

namespace A066768.P10388036879488056357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000984 (d - 1)

end

end A066768.P10388036879488056357

noncomputable section

/-- A066768: a(n) = Sum_{d|n} binomial(2*d-2,d-1).

Offset 1, canonical program `A066768.P10388036879488056357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A066768 (n : ℕ) : ℤ :=
  A066768.P10388036879488056357.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A066768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066774.P15152739577050822243

`eq[4, A032741(n)+A023645(n+2)]`
-/

namespace A066774.P15152739577050822243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + A023645 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066774.P15152739577050822243

noncomputable section

/-- A066774: A066728(a(n))=3.

Offset 1, canonical program `A066774.P15152739577050822243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 855 terms. -/
def A066774 (n : ℕ) : ℤ :=
  (A066774.P15152739577050822243.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 855 terms. -/
def A066774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066929.P16442121695660913999

`eq[∑{e}[n+1, #], A000195(n+1)]+1`
-/

namespace A066929.P16442121695660913999
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n + 1

end

end A066929.P16442121695660913999

noncomputable section

/-- A066929: Numbers n such that Omega(n) = floor(log(n)).

Offset 1, canonical program `A066929.P16442121695660913999`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. -/
def A066929 (n : ℕ) : ℤ :=
  (A066929.P16442121695660913999.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 184 terms. -/
def A066929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067036.P9913651704098405117

`record[A061486(n)+1]`
-/

namespace A067036.P9913651704098405117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061486 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067036.P9913651704098405117

noncomputable section

/-- A067036: Records for the number of integers k such that an integer is of the form k + reverse(k).

Offset 1, canonical program `A067036.P9913651704098405117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A067036 (n : ℕ) : ℤ :=
  A067036.P9913651704098405117.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A067036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067057.P17424698232862678055

`round(2^(n-1)*∑[A006002(n)])`
-/

namespace A067057.P17424698232862678055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ))

end

end A067057.P17424698232862678055

noncomputable section

/-- A067057: Let A(n) = {1,2,3,...n}. Let B(r) and C(n-r) be two subsets of A(n) having r and n-r elements respectively, such that B(r) U C(n-r) = A(n) and B and C are disjoint; then a(n) = sum of the products of all combination sums of elements of B and C for r =1 to n-1.

Offset 1, canonical program `A067057.P17424698232862678055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 304 terms. -/
def A067057 (n : ℕ) : ℤ :=
  A067057.P17424698232862678055.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 304 terms. -/
def A067057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067132.P2149404699775634079

`A051903(n+1)+1`
-/

namespace A067132.P2149404699775634079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) + 1

end

end A067132.P2149404699775634079

noncomputable section

/-- A067132: Number of elements in the largest set of divisors of n which are in geometric progression.

Offset 1, canonical program `A067132.P2149404699775634079`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067132 (n : ℕ) : ℤ :=
  A067132.P2149404699775634079.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067132.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A067259.P11996182703076238055

`eq[2, A051903(n+1)]+1`
-/

namespace A067259.P11996182703076238055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A067259.P11996182703076238055

noncomputable section

/-- A067259: Cubefree numbers which are not squarefree.

Offset 1, canonical program `A067259.P11996182703076238055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067259 (n : ℕ) : ℤ :=
  (A067259.P11996182703076238055.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067259.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067283.P1833396838010038772

`eq[A032741(n+1)+1, A000195(n+1)]+1`
-/

namespace A067283.P1833396838010038772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A067283.P1833396838010038772

noncomputable section

/-- A067283: Numbers n such that the number of divisors of n is floor(log(n)).

Offset 1, canonical program `A067283.P1833396838010038772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1202 terms. -/
def A067283 (n : ℕ) : ℤ :=
  (A067283.P1833396838010038772.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1202 terms. -/
def A067283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067294.P8664796393436630874

`A038629(n)+A000108(n+2)`
-/

namespace A067294.P8664796393436630874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038629 n + A000108 (n + 2)

end

end A067294.P8664796393436630874

noncomputable section

/-- A067294: Third column of triangle A028364.

Offset 0, canonical program `A067294.P8664796393436630874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A067294 (n : ℕ) : ℤ :=
  A067294.P8664796393436630874.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. -/
def A067294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067315.P10432000283421290337

`lt[1, A049077(n+1)]+1`
-/

namespace A067315.P10432000283421290337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049077 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A067315.P10432000283421290337

noncomputable section

/-- A067315: Numbers k such that binomial(k, floor(k/2)) is not divisible by k.

Offset 1, canonical program `A067315.P10432000283421290337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4508 terms. -/
def A067315 (n : ℕ) : ℤ :=
  (A067315.P10432000283421290337.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4508 terms. -/
def A067315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067333.P9718857003289382618

`A067332(n)+A067331(n)`
-/

namespace A067333.P9718857003289382618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067332 n + A067331 n

end

end A067333.P9718857003289382618

noncomputable section

/-- A067333: Convolution of Fibonacci F(n+1), n>=0, with F(n+5), n>=0.

Offset 0, canonical program `A067333.P9718857003289382618`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A067333 (n : ℕ) : ℤ :=
  A067333.P9718857003289382618.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 464 terms. -/
def A067333.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067392.P7533820900183805373

`A000217(n+1)-A023896(n+1)`
-/

namespace A067392.P7533820900183805373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - A023896 (n + 1)

end

end A067392.P7533820900183805373

noncomputable section

/-- A067392: Sum of numbers <= n which have common prime factors with n.

Offset 1, canonical program `A067392.P7533820900183805373`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023896, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067392 (n : ℕ) : ℤ :=
  A067392.P7533820900183805373.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023896, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A067392.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A067431.P8250582183486252664

`A067430(n)+A067334(n)`
-/

namespace A067431.P8250582183486252664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067430 n + A067334 n

end

end A067431.P8250582183486252664

noncomputable section

/-- A067431: Convolution of Fibonacci F(n+1), n>=0, with F(n+8), n>=0.

Offset 0, canonical program `A067431.P8250582183486252664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 461 terms. -/
def A067431 (n : ℕ) : ℤ :=
  A067431.P8250582183486252664.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 461 terms. -/
def A067431.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067585.P1933781684501419981

`xor(2*(n-A053644(n)), floor(n/2))`
-/

namespace A067585.P1933781684501419981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * ((n : ℤ) - A053644 n)) ⌊(n : ℚ) / 2⌋

end

end A067585.P1933781684501419981

noncomputable section

/-- A067585: Binary representation of a(n) is obtained thus: replace every digit in the binary representation of n with "1" if the sum of its neighbors is 1 and with "0" otherwise.

Offset 0, canonical program `A067585.P1933781684501419981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067585 (n : ℕ) : ℤ :=
  A067585.P1933781684501419981.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067770.P15834457254967640433

`A065344(A028310(n))/(A028310(n)+1)`
-/

namespace A067770.P15834457254967640433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065344 (A028310 n).toNat : ℚ) / (A028310 n + 1 : ℚ)

end

end A067770.P15834457254967640433

noncomputable section

/-- A067770: a(n) = Catalan(n) mod (n+2).

Offset 0, canonical program `A067770.P15834457254967640433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067770 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A067770.P15834457254967640433.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067850.P433127479858209906

`A072831(n)-1`
-/

namespace A067850.P433127479858209906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072831 n - 1

end

end A067850.P433127479858209906

noncomputable section

/-- A067850: Highest power of 2 not exceeding n!.

Offset 0, canonical program `A067850.P433127479858209906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067850 (n : ℕ) : ℤ :=
  A067850.P433127479858209906.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067856.P11218736261645060229

`∑{d}[n+1, A007427(#)*A038712((n+1)/#)]`
-/

namespace A067856.P11218736261645060229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A038712 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A067856.P11218736261645060229

noncomputable section

/-- A067856: Sum_{n >= 1} a(n)/n^s = 1/(Sum_{n >= 1} (-1)^(n + 1)/n^s).

Offset 1, canonical program `A067856.P11218736261645060229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067856 (n : ℕ) : ℤ :=
  A067856.P11218736261645060229.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067867.P15646068572859364086

`A067866(A017377(n))`
-/

namespace A067867.P15646068572859364086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067866 (A017377 n).toNat

end

end A067867.P15646068572859364086

noncomputable section

/-- A067867: Numbers n such that n and 2^n end with the same 4 digits.

Offset 1, canonical program `A067867.P15646068572859364086`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A067867 (n : ℕ) : ℤ :=
  A067867.P15646068572859364086.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A067867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067897.P16427953332415347424

`∏[(n-1)/a(n-1)+1]%A245176(n)` with `a(0)=2`
-/

namespace A067897.P16427953332415347424
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  ((n : ℤ) - 1 : ℚ) / f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)) (A245176 n)

end

end A067897.P16427953332415347424

noncomputable section

/-- A067897: a(n) = A000085(n) - (1 + Sum_{j=1..n-1} A000085(j)).

Offset 0, canonical program `A067897.P16427953332415347424`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A067897 (n : ℕ) : ℤ :=
  A067897.P16427953332415347424.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A067897.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067946.P8604927095954536120

`record[gcd(n+1, A094920(n+1))]`
-/

namespace A067946.P8604927095954536120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A094920 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A067946.P8604927095954536120

noncomputable section

/-- A067946: Numbers k that divide 5^k - 1.

Offset 1, canonical program `A067946.P8604927095954536120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 303 terms. -/
def A067946 (n : ℕ) : ℤ :=
  (A067946.P8604927095954536120.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 303 terms. -/
def A067946.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067956.P18418777430934723321

`∑[A001845(A008619(n))]+2`
-/

namespace A067956.P18418777430934723321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001845 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A067956.P18418777430934723321

noncomputable section

/-- A067956: Number of nodes in virtual, "optimal", chordal graphs of diameter 4 and degree n+1.

Offset 1, canonical program `A067956.P18418777430934723321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067956 (n : ℕ) : ℤ :=
  A067956.P18418777430934723321.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067969.P16810876313038545020

`∑[A001846(round((n+1)/2))]+2`
-/

namespace A067969.P16810876313038545020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001846 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A067969.P16810876313038545020

noncomputable section

/-- A067969: Number of nodes in virtual, "optimal", chordal graphs of diameter 5, degree =n+1.

Offset 1, canonical program `A067969.P16810876313038545020`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067969 (n : ℕ) : ℤ :=
  A067969.P16810876313038545020.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067969.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068012.P13088167695542469923

`ceil(A068010(n)/2)`
-/

namespace A068012.P13088167695542469923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A068010 n : ℚ) / 2⌉

end

end A068012.P13088167695542469923

noncomputable section

/-- A068012: Number of subsets of {1,2,3,...,n} that sum to 0 mod 6.

Offset 0, canonical program `A068012.P13088167695542469923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A068012 (n : ℕ) : ℤ :=
  A068012.P13088167695542469923.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A068012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068093.P11725195299041626924

`C(A068092(n+1)+1, 2)`
-/

namespace A068093.P11725195299041626924
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A068092 (n + 1) + 1).toNat 2

end

end A068093.P11725195299041626924

noncomputable section

/-- A068093: Smallest n-digit triangular number.

Offset 1, canonical program `A068093.P11725195299041626924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A068093 (n : ℕ) : ℤ :=
  (A068093.P11725195299041626924.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A068093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068094.P8683545945666724130

`Δ[A068092(n+1)]`
-/

namespace A068094.P8683545945666724130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A068094.P8683545945666724130

noncomputable section

/-- A068094: Number of n-digit triangular numbers.

Offset 1, canonical program `A068094.P8683545945666724130`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A068094 (n : ℕ) : ℤ :=
  A068094.P8683545945666724130.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 199 terms. -/
def A068094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068244.P4361570666989602982

`(A060888(n+1)+n)*∑[∑[n+1]]`
-/

namespace A068244.P4361570666989602982
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060888 (n + 1) + (n : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A068244.P4361570666989602982

noncomputable section

/-- A068244: 1/6 the number of colorings of a 3 X 3 rhombic- or staggered- hexagonal array with n colors.

Offset 3, canonical program `A068244.P4361570666989602982`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A068244 (n : ℕ) : ℤ :=
  A068244.P4361570666989602982.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A068244.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068332.P3490794185837629796

`eq[A032741(n)+2, A070939(n)]`
-/

namespace A068332.P3490794185837629796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068332.P3490794185837629796

noncomputable section

/-- A068332: Numbers k such that 2^tau(k) <= k < 2*2^tau(k).

Offset 1, canonical program `A068332.P3490794185837629796`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 523 terms. -/
def A068332 (n : ℕ) : ℤ :=
  (A068332.P3490794185837629796.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 523 terms. -/
def A068332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068344.P56134880898199442

`A101688(n)-A101688(A061579(n))`
-/

namespace A068344.P56134880898199442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n - A101688 (A061579 n).toNat

end

end A068344.P56134880898199442

noncomputable section

/-- A068344: Square array read by antidiagonals of T(n,k) = sign(n-k).

Offset 0, canonical program `A068344.P56134880898199442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068344 (n : ℕ) : ℤ :=
  A068344.P56134880898199442.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A068344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068480.P17758720691650621398

`eq[A109534(n), A394666(n+1)]`
-/

namespace A068480.P17758720691650621398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109534 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394666 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A068480.P17758720691650621398

noncomputable section

/-- A068480: Numbers n such that gcd(n!-1,2^n+1)>1.

Offset 1, canonical program `A068480.P17758720691650621398`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A068480 (n : ℕ) : ℤ :=
  (A068480.P17758720691650621398.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. -/
def A068480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068518.P10058222252401921738

`∑[A027651(n)]`
-/

namespace A068518.P10058222252401921738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A068518.P10058222252401921738

noncomputable section

/-- A068518: The sequence S(n,-3,1,1), where S(n,k,t,q) is defined by Sum_{j=0..n} binomial(n+q,j)^t * B(j,k) and B(j,k) is the j-th k-poly-Bernoulli number.

Offset 0, canonical program `A068518.P10058222252401921738`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A068518 (n : ℕ) : ℤ :=
  A068518.P10058222252401921738.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A068518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069005.P14880868784159828699

`A091024(A065475(n+1))`
-/

namespace A069005.P14880868784159828699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091024 (A065475 (n + 1)).toNat

end

end A069005.P14880868784159828699

noncomputable section

/-- A069005: Let M = 4 X 4 matrix with rows /1,1,1,1/1,1,1,0/1,1,0,0/1,0,0,0/ and A(n) = vector (x(n),y(n),z(n),t(n)) = M^n*A where A is the vector (1,1,1,1); then a(n)=z(n).

Offset 1, canonical program `A069005.P14880868784159828699`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A069005 (n : ℕ) : ℤ :=
  A069005.P14880868784159828699.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A069005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069091.P1979038829960387113

`∑{d}[n+1, A007427(#)*A013954((n+1)/#)]`
-/

namespace A069091.P1979038829960387113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A013954 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069091.P1979038829960387113

noncomputable section

/-- A069091: Jordan function J_6(n).

Offset 1, canonical program `A069091.P1979038829960387113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069091 (n : ℕ) : ℤ :=
  A069091.P1979038829960387113.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069092.P6462397685710627288

`∑{d}[n+1, A007427(#)*A013955((n+1)/#)]`
-/

namespace A069092.P6462397685710627288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A013955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069092.P6462397685710627288

noncomputable section

/-- A069092: Jordan function J_7(n).

Offset 1, canonical program `A069092.P6462397685710627288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069092 (n : ℕ) : ℤ :=
  A069092.P6462397685710627288.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069092.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069093.P9664081380654551987

`∑{d}[n+1, A007427(#)*A013956((n+1)/#)]`
-/

namespace A069093.P9664081380654551987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A013956 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069093.P9664081380654551987

noncomputable section

/-- A069093: Jordan function J_8(n).

Offset 1, canonical program `A069093.P9664081380654551987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069093 (n : ℕ) : ℤ :=
  A069093.P9664081380654551987.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069094.P5596882665967745649

`∑{d}[n+1, A007427(#)*A013957((n+1)/#)]`
-/

namespace A069094.P5596882665967745649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A013957 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069094.P5596882665967745649

noncomputable section

/-- A069094: Jordan function J_9(n).

Offset 1, canonical program `A069094.P5596882665967745649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069094 (n : ℕ) : ℤ :=
  A069094.P5596882665967745649.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069094.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069095.P10263333998620390818

`∑{d}[n+1, A007427(#)*A013958((n+1)/#)]`
-/

namespace A069095.P10263333998620390818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A013958 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069095.P10263333998620390818

noncomputable section

/-- A069095: Jordan function J_10(n).

Offset 1, canonical program `A069095.P10263333998620390818`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069095 (n : ℕ) : ℤ :=
  A069095.P10263333998620390818.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069184.P2731157817083231715

`∑{d}[n+1, A186646(#)]`
-/

namespace A069184.P2731157817083231715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A186646 d

end

end A069184.P2731157817083231715

noncomputable section

/-- A069184: Sum of divisors d of n such that d or n/d is odd.

Offset 1, canonical program `A069184.P2731157817083231715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069184 (n : ℕ) : ℤ :=
  A069184.P2731157817083231715.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069188.P15317970325774764994

`(n+1)*A000792(n+1-A001414(n+1))`
-/

namespace A069188.P15317970325774764994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000792 ((n + 1 : ℤ) - A001414 (n + 1)).toNat

end

end A069188.P15317970325774764994

noncomputable section

/-- A069188: Look at all numbers formed by multiplying the parts in a partition of n; a(n) = maximal such number which is divisible by n.

Offset 1, canonical program `A069188.P15317970325774764994`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069188 (n : ℕ) : ℤ :=
  A069188.P15317970325774764994.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069188.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A069210.P17992503597027194116

`n-A032615(a(n-1))` with `a(0)=1`
-/

namespace A069210.P17992503597027194116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - A032615 (a (n - 1)).toNat

end

end A069210.P17992503597027194116

noncomputable section

/-- A069210: a(1)=a(2)=1, a(n+2) = a(n+1)+1 if sign(sin(a(n+1))) = sign(sin(a(n))), a(n+2) = a(n)+1 otherwise.

Offset 1, canonical program `A069210.P17992503597027194116`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069210 (n : ℕ) : ℤ :=
  A069210.P17992503597027194116.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069264.P9562559770750993337

`A064680(∑{e}[n+1, #]*∏{e}[n+1, #+1])`
-/

namespace A069264.P9562559770750993337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)))

end

end A069264.P9562559770750993337

noncomputable section

/-- A069264: Inverse Moebius transform of bigomega(n).

Offset 1, canonical program `A069264.P9562559770750993337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069264 (n : ℕ) : ℤ :=
  A069264.P9562559770750993337.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069265.P4815336299590380564

`lt[n+1, A068976(A028310(n))]`
-/

namespace A069265.P4815336299590380564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068976 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A069265.P4815336299590380564

noncomputable section

/-- A069265: Numbers k such that Sum_{d|k} d/core(d) > k, where core(d) is the squarefree part of d.

Offset 1, canonical program `A069265.P4815336299590380564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. -/
def A069265 (n : ℕ) : ℤ :=
  (A069265.P4815336299590380564.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 195 terms. -/
def A069265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069498.P10537288817338327856

`C(A151980(n+2), 2)`
-/

namespace A069498.P10537288817338327856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A151980 (n + 2)).toNat 2

end

end A069498.P10537288817338327856

noncomputable section

/-- A069498: Triangular numbers of the form 10*k.

Offset 1, canonical program `A069498.P10537288817338327856`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A069498 (n : ℕ) : ℤ :=
  (A069498.P10537288817338327856.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A069498.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069499.P4124095796989806507

`C(A151971(n+2), 2)`
-/

namespace A069499.P4124095796989806507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A151971 (n + 2)).toNat 2

end

end A069499.P4124095796989806507

noncomputable section

/-- A069499: Triangular numbers of the form 21*k.

Offset 1, canonical program `A069499.P4124095796989806507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A069499 (n : ℕ) : ℤ :=
  (A069499.P4124095796989806507.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A069499.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069533.P16176494315263745921

`A013940((n+1)²)`
-/

namespace A069533.P16176494315263745921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013940 ((n + 1) ^ 2)

end

end A069533.P16176494315263745921

noncomputable section

/-- A069533: a(n) = Sum_{p prime} floor(n^2/p^2) where the sum is over all the primes.

Offset 1, canonical program `A069533.P16176494315263745921`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A069533 (n : ℕ) : ℤ :=
  A069533.P16176494315263745921.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A069533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069547.P11485668563936763600

`xor(n, -1)²%A000040(n+1)`
-/

namespace A069547.P11485668563936763600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) (-1) ^ 2) (A000040 (n + 1))

end

end A069547.P11485668563936763600

noncomputable section

/-- A069547: a(n) = n^2 mod n-th prime.

Offset 1, canonical program `A069547.P11485668563936763600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069547 (n : ℕ) : ℤ :=
  A069547.P11485668563936763600.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069731.P9577180906258767501

`record[A000108(n+1)*A034008(n)]`
-/

namespace A069731.P9577180906258767501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069731.P9577180906258767501

noncomputable section

/-- A069731: Number of unicursal planar maps with n edges rooted at a vertex of odd valency (unicursal means that exactly two vertices are of odd valency; there is an Eulerian path).

Offset 1, canonical program `A069731.P9577180906258767501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A069731 (n : ℕ) : ℤ :=
  A069731.P9577180906258767501.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. -/
def A069731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069755.P3214116244876995295

`(A004526(n)+1)*A045943(n+3)-1`
-/

namespace A069755.P3214116244876995295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004526 n + 1) * A045943 (n + 3) - 1

end

end A069755.P3214116244876995295

noncomputable section

/-- A069755: Frobenius number of the numerical semigroup generated by 3 consecutive triangular numbers.

Offset 2, canonical program `A069755.P3214116244876995295`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A069755 (n : ℕ) : ℤ :=
  A069755.P3214116244876995295.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A069755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069764.P8811235578831581179

`A005900(n+2)*A005900(n+3)-A001845(n+2)`
-/

namespace A069764.P8811235578831581179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 (n + 2) * A005900 (n + 3) - A001845 (n + 2)

end

end A069764.P8811235578831581179

noncomputable section

/-- A069764: Frobenius number of the numerical semigroup generated by consecutive octahedral numbers.

Offset 2, canonical program `A069764.P8811235578831581179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A069764 (n : ℕ) : ℤ :=
  A069764.P8811235578831581179.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A069764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069908.P3766769676983889095

`A047615(A008621(n))+2+n`
-/

namespace A069908.P3766769676983889095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047615 (A008621 n).toNat + 2 + (n : ℤ)

end

end A069908.P3766769676983889095

noncomputable section

/-- A069908: Numbers congruent to +-2, +-3, +-4 or +-5 mod 16.

Offset 1, canonical program `A069908.P3766769676983889095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069908 (n : ℕ) : ℤ :=
  A069908.P3766769676983889095.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069908.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069928.P1695334417311087564

`∑[A000007(A054025(n+1))]`
-/

namespace A069928.P1695334417311087564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A054025 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069928.P1695334417311087564

noncomputable section

/-- A069928: Number of integers k, 1<=k<=n, such that tau(k) divides sigma(k) where tau(k) is the number of divisors of k and sigma(k) the sum of divisors of k.

Offset 1, canonical program `A069928.P1695334417311087564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069928 (n : ℕ) : ℤ :=
  A069928.P1695334417311087564.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069928.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069930.P13025091485286396037

`A032741(n+1)+A069283(n+1)`
-/

namespace A069930.P13025091485286396037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) + A069283 (n + 1)

end

end A069930.P13025091485286396037

noncomputable section

/-- A069930: Number of integers of the form (n+k)/(n-k) with 1 <= k <= n-1.

Offset 1, canonical program `A069930.P13025091485286396037`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032741, A069283, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A069930 (n : ℕ) : ℤ :=
  A069930.P13025091485286396037.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032741, A069283, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A069930.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A069965.P11980175962428664514

`A000584(∑{digits}[n, #])-∑{digits}[n, #^5]`
-/

namespace A069965.P11980175962428664514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x ^ 5).sum : ℕ) : ℤ)

end

end A069965.P11980175962428664514

noncomputable section

/-- A069965: (Sum of digits of n)^5 - (sum of digits^5 of n).

Offset 0, canonical program `A069965.P11980175962428664514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069965 (n : ℕ) : ℤ :=
  A069965.P11980175962428664514.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069965.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070045.P5901825577952937955

`p?[A185549(n)]%A155014(n+2)`
-/

namespace A070045.P5901825577952937955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185549 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A155014 (n + 2))

end

end A070045.P5901825577952937955

noncomputable section

/-- A070045: Primes of the form ceiling(k^1.5) for some integer k.

Offset 1, canonical program `A070045.P5901825577952937955`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 889 terms. -/
def A070045 (n : ℕ) : ℤ :=
  A070045.P5901825577952937955.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 889 terms. -/
def A070045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070083.P13732470108553400898

`comp[∑[A005044(n)]+n]-n`
-/

namespace A070083.P13732470108553400898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A070083.P13732470108553400898

noncomputable section

/-- A070083: Perimeters of integer triangles, sorted by perimeter, sides lexicographically ordered.

Offset 1, canonical program `A070083.P13732470108553400898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070083 (n : ℕ) : ℤ :=
  A070083.P13732470108553400898.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070106.P8148621780262521077

`A047329(n+1)%A003152(n+1)`
-/

namespace A070106.P8148621780262521077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047329 (n + 1)) (A003152 (n + 1))

end

end A070106.P8148621780262521077

noncomputable section

/-- A070106: Number of integer triangles with perimeter n which are obtuse and isosceles.

Offset 1, canonical program `A070106.P8148621780262521077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070106 (n : ℕ) : ℤ :=
  A070106.P8148621780262521077.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070162.P6067516089811518343

`eq[2, a(A016035(n))+1]` with `a(0)=0, a(1)=3`
-/

namespace A070162.P6067516089811518343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f2 =>
  f2 (A016035 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070162.P6067516089811518343

noncomputable section

/-- A070162: Numbers k such that k - phi(k) - 1 is a prime.

Offset 1, canonical program `A070162.P6067516089811518343`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1783 terms. -/
def A070162 (n : ℕ) : ℤ :=
  (A070162.P6067516089811518343.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1783 terms. -/
def A070162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070191.P17002932225715111264

`eq[9, A087968(or(1, 3*n))]`
-/

namespace A070191.P17002932225715111264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087968 (Nat.lor 1 (3 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A070191.P17002932225715111264

noncomputable section

/-- A070191: Numbers k such that gcd(3*k, 8^k+1) = 3.

Offset 1, canonical program `A070191.P17002932225715111264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7096 terms. -/
def A070191 (n : ℕ) : ℤ :=
  (A070191.P17002932225715111264.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7096 terms. -/
def A070191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070212.P830112465696645341

`∑[∑[∑[∑[A008498(n)]]]]`
-/

namespace A070212.P830112465696645341
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008498 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070212.P830112465696645341

noncomputable section

/-- A070212: Number of 5 X 5 pandiagonal magic squares with sum n.

Offset 0, canonical program `A070212.P830112465696645341`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070212 (n : ℕ) : ℤ :=
  A070212.P830112465696645341.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070212.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070286.P10750249744303801205

`lt[0, char[A000203(A000203(n+1))]]`
-/

namespace A070286.P10750249744303801205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070286.P10750249744303801205

noncomputable section

/-- A070286: Numbers k such that the equation sigma(sigma(x)) = k has solutions.

Offset 1, canonical program `A070286.P10750249744303801205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 690 terms. -/
def A070286 (n : ℕ) : ℤ :=
  (A070286.P10750249744303801205.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 690 terms. -/
def A070286.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070748.P9957700921087628630

`or(1, floor(sin(A000040(n+1))))`
-/

namespace A070748.P9957700921087628630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊Real.sin (A000040 (n + 1) : ℝ)⌋

end

end A070748.P9957700921087628630

noncomputable section

/-- A070748: a(n) = signum(sin(prime(n))), where signum=A057427, prime=A000040.

Offset 1, canonical program `A070748.P9957700921087628630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070748 (n : ℕ) : ℤ :=
  A070748.P9957700921087628630.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070749.P5792120864452831297

`round(sin(A000040(n+1)))`
-/

namespace A070749.P5792120864452831297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (A000040 (n + 1) : ℝ))

end

end A070749.P5792120864452831297

noncomputable section

/-- A070749: Nearest integer to sin(prime(n)), prime=A000040.

Offset 1, canonical program `A070749.P5792120864452831297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070749 (n : ℕ) : ℤ :=
  A070749.P5792120864452831297.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070883.P5422218626691008934

`xor(n+1, A000040(n+1))`
-/

namespace A070883.P5422218626691008934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A000040 (n + 1))

end

end A070883.P5422218626691008934

noncomputable section

/-- A070883: Bitwise XOR of n and n-th prime.

Offset 1, canonical program `A070883.P5422218626691008934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070883 (n : ℕ) : ℤ :=
  A070883.P5422218626691008934.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070919.P12544336825611404965

`∏{e}[n+1, A003215(#)]`
-/

namespace A070919.P12544336825611404965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A003215 (Nat.factorization (f1 n) p)

end

end A070919.P12544336825611404965

noncomputable section

/-- A070919: a(n) = Card{ (x,y,z) | lcm(x,y,z)=n }.

Offset 1, canonical program `A070919.P12544336825611404965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070919 (n : ℕ) : ℤ :=
  A070919.P12544336825611404965.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070920.P1109967768938964097

`∏{e}[n+1, A005917(#+1)]`
-/

namespace A070920.P1109967768938964097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A005917 (Nat.factorization (f1 n) p + 1)

end

end A070920.P1109967768938964097

noncomputable section

/-- A070920: a(n) = Card{ (x,y,z,u) | lcm(x,y,z,u)=n }.

Offset 1, canonical program `A070920.P1109967768938964097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070920 (n : ℕ) : ℤ :=
  A070920.P1109967768938964097.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070920.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070921.P11358675402838603622

`∏{e}[n+1, A022521(#)]`
-/

namespace A070921.P11358675402838603622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A022521 (Nat.factorization (f1 n) p)

end

end A070921.P11358675402838603622

noncomputable section

/-- A070921: a(n) = Card{ (x,y,z,u,v) | lcm(x,y,z,u,v)=n }.

Offset 1, canonical program `A070921.P11358675402838603622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070921 (n : ℕ) : ℤ :=
  A070921.P11358675402838603622.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A070921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071030.P11714086120576198242

`(A000196(n)+∑[∑[n+1]])%2`
-/

namespace A071030.P11714086120576198242
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000196 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) 2

end

end A071030.P11714086120576198242

noncomputable section

/-- A071030: Triangle read by rows giving successive states of cellular automaton generated by "Rule 54".

Offset 0, canonical program `A071030.P11714086120576198242`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071030 (n : ℕ) : ℤ :=
  A071030.P11714086120576198242.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071168.P12914104181432432926

`A000040(n+1)%((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A071168.P12914104181432432926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)))

end

end A071168.P12914104181432432926

noncomputable section

/-- A071168: n-th prime reduced modulo phi(n).

Offset 1, canonical program `A071168.P12914104181432432926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071168 (n : ℕ) : ℤ :=
  A071168.P12914104181432432926.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071353.P17742407206952160100

`floor(record[A135530(n)]/A002380(n+1))`
-/

namespace A071353.P17742407206952160100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A002380 (n + 1) : ℚ)⌋

end

end A071353.P17742407206952160100

noncomputable section

/-- A071353: First term of the continued fraction expansion of (3/2)^n.

Offset 1, canonical program `A071353.P17742407206952160100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A071353 (n : ℕ) : ℤ :=
  A071353.P17742407206952160100.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A071353.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071356.P4898186804671775641

`A374497(n)/A008805(2*n)`
-/

namespace A071356.P4898186804671775641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374497 n : ℚ) / (A008805 (2 * n) : ℚ)

end

end A071356.P4898186804671775641

noncomputable section

/-- A071356: Expansion of (1 - 2*x - sqrt(1 - 4*x - 4*x^2))/(4*x^2).

Offset 0, canonical program `A071356.P4898186804671775641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A071356 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A071356.P4898186804671775641.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. -/
def A071356.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071418.P16881111361451450051

`A014682(a(n-1)+n)` with `a(0)=0`
-/

namespace A071418.P16881111361451450051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A014682 (a (n - 1) + (n : ℤ)).toNat

end

end A071418.P16881111361451450051

noncomputable section

/-- A071418: a(1)=0, a(n+1)=(a(n)+n)/2 if a(n)+n is even, a(n+1)=(3*(a(n)+n)+1)/2 otherwise.

Offset 1, canonical program `A071418.P16881111361451450051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 492 terms. -/
def A071418 (n : ℕ) : ℤ :=
  A071418.P16881111361451450051.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 492 terms. -/
def A071418.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071419.P10901612576107053612

`A014682(a(n-1)+n)` with `a(0)=1`
-/

namespace A071419.P10901612576107053612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014682 (a (n - 1) + (n : ℤ)).toNat

end

end A071419.P10901612576107053612

noncomputable section

/-- A071419: a(1)=1, a(n+1)=(a(n)+n)/2 if a(n)+n is even, a(n+1)=(3*(a(n)+n)+1)/2 otherwise.

Offset 1, canonical program `A071419.P10901612576107053612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071419 (n : ℕ) : ℤ :=
  A071419.P10901612576107053612.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071419.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071535.P8937540856175484874

`(A131577(n)+A082138(n))*A001792(n)`
-/

namespace A071535.P8937540856175484874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131577 n + A082138 n) * A001792 n

end

end A071535.P8937540856175484874

noncomputable section

/-- A071535: (-1)^(n+1) * Determinant of n X n matrix of form [1^2 2^2 3^2 4^2 5^2 / 2^2 1^2 2^2 3^2 4^2 / 3^2 2^2 1^2 2^2 3^2 / 4^2 3^2 2^2 1^2 2^2 / 5^2 4^2 3^2 2^2 1^2].

Offset 1, canonical program `A071535.P8937540856175484874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A071535 (n : ℕ) : ℤ :=
  A071535.P8937540856175484874.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A071535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071542.P757842115832045753

`1+a(A011371(n))` with `a(0)=0`
-/

namespace A071542.P757842115832045753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (A011371 n).toNat

end

end A071542.P757842115832045753

noncomputable section

/-- A071542: Number of steps to reach 0 starting with n and using the iterated process : x -> x - (number of 1's in binary representation of x).

Offset 0, canonical program `A071542.P757842115832045753`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071542 (n : ℕ) : ℤ :=
  (A071542.P757842115832045753.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071622.P8008605956966720733

`∑[A064628(n+1)-xor(1, A064628(n+1))]`
-/

namespace A071622.P8008605956966720733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064628 (n + 1) - Int.xor 1 (A064628 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071622.P8008605956966720733

noncomputable section

/-- A071622: a(n) = (-1)*Sum_{k=1..n} (-1)^floor((4/3)^k).

Offset 1, canonical program `A071622.P8008605956966720733`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 800 terms. -/
def A071622 (n : ℕ) : ℤ :=
  A071622.P8008605956966720733.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 800 terms. -/
def A071622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071716.P13302059539819957554

`A000108(n)+A000108((n-1)%a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A071716.P13302059539819957554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000108 n + A000108 (Int.tmod ((n : ℤ) - 1) (a (n - 1))).toNat

end

end A071716.P13302059539819957554

noncomputable section

/-- A071716: Expansion of (1+x^2*C)*C, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071716.P13302059539819957554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A071716 (n : ℕ) : ℤ :=
  A071716.P13302059539819957554.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. -/
def A071716.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071721.P8058538894146431473

`Δ[gcd(6, 2^n)*A000108(n)]`
-/

namespace A071721.P8058538894146431473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 6 (2 ^ n) : ℤ) * A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071721.P8058538894146431473

noncomputable section

/-- A071721: Expansion of (1+x^2*C^2)*C^2, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071721.P8058538894146431473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071721 (n : ℕ) : ℤ :=
  A071721.P8058538894146431473.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071726.P12729125227773311374

`A000108(n)+A000108(n-2)%a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A071726.P12729125227773311374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000108 n + Int.tmod (A000108 (n - 2)) (a (n - 1))

end

end A071726.P12729125227773311374

noncomputable section

/-- A071726: Expansion of (1+x^3*C)*C, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071726.P12729125227773311374`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A071726 (n : ℕ) : ℤ :=
  A071726.P12729125227773311374.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A071726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071731.P2765701597909956439

`Δ[record[abs(1-n)*A091712(n)]]`
-/

namespace A071731.P2765701597909956439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| * A091712 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A071731.P2765701597909956439

noncomputable section

/-- A071731: Expansion of (1+x^3*C^2)*C^2, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

Offset 0, canonical program `A071731.P2765701597909956439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071731 (n : ℕ) : ℤ :=
  A071731.P2765701597909956439.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A071731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071973.P12908464986149979114

`A000720(A001672(n))`
-/

namespace A071973.P12908464986149979114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001672 n).toNat

end

end A071973.P12908464986149979114

noncomputable section

/-- A071973: Number of primes less than or equal to Pi^n.

Offset 0, canonical program `A071973.P12908464986149979114`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001672, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071973 (n : ℕ) : ℤ :=
  A071973.P12908464986149979114.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001672, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071973.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072100.P14039858533410770621

`∑[A001405(abs(1-n))]`
-/

namespace A072100.P14039858533410770621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072100.P14039858533410770621

noncomputable section

/-- A072100: Column 2 of the array m(i,1)=m(1,j)=1 m(i,j)=m(i-1,j-1)+m(i-1,j+1) (a(n)=m(n,2)).

Offset 1, canonical program `A072100.P14039858533410770621`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A072100 (n : ℕ) : ℤ :=
  A072100.P14039858533410770621.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A072100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072107.P18195778838886658705

`∑[A020500(n+1)]+1`
-/

namespace A072107.P18195778838886658705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A072107.P18195778838886658705

noncomputable section

/-- A072107: a(n) = Sum_{k=1..n} A014963(k).

Offset 1, canonical program `A072107.P18195778838886658705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072107 (n : ℕ) : ℤ :=
  A072107.P18195778838886658705.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072150.P7899580344826784914

`A008486(n)-A002264(A265667(n+1))`
-/

namespace A072150.P7899580344826784914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n - A002264 (A265667 (n + 1)).toNat

end

end A072150.P7899580344826784914

noncomputable section

/-- A072150: Coordination sequence for AlPO_4-11 structure with respect to node (Y) where decagon, hexagon and square meet and is adjacent to node of type (X).

Offset 0, canonical program `A072150.P7899580344826784914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7501 terms. -/
def A072150 (n : ℕ) : ℤ :=
  A072150.P7899580344826784914.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7501 terms. -/
def A072150.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072203.P10607381814224179151

`1-A002819(n+1)`
-/

namespace A072203.P10607381814224179151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A002819 (n + 1)

end

end A072203.P10607381814224179151

noncomputable section

/-- A072203: (Number of oddly factored numbers <= n) - (number of evenly factored numbers <= n).

Offset 1, canonical program `A072203.P10607381814224179151`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002819, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072203 (n : ℕ) : ℤ :=
  A072203.P10607381814224179151.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002819, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A072203.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072374.P5901401486414482009

`A122852(n+1)`
-/

namespace A072374.P5901401486414482009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122852 (n + 1)

end

end A072374.P5901401486414482009

noncomputable section

/-- A072374: a(1) = 1; a(n) = 1 + Sum_{i=1..n} Product_{j=i..2*i-1} (n-j).

Offset 1, canonical program `A072374.P5901401486414482009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A072374 (n : ℕ) : ℤ :=
  A072374.P5901401486414482009.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A072374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072388.P14205877717158669958

`floor((A000040(n+1)+A000040(n)+a(n-1))/3)` with `a(0)=1`
-/

namespace A072388.P14205877717158669958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(A000040 (n + 1) + A000040 n + a (n - 1) : ℚ) / 3⌋

end

end A072388.P14205877717158669958

noncomputable section

/-- A072388: a(0) = 1; for n > 0, a(n) = floor((prime(n+1) + prime(n) + a(n-1))/3).

Offset 0, canonical program `A072388.P14205877717158669958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072388 (n : ℕ) : ℤ :=
  A072388.P14205877717158669958.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072400.P6107365061276263182

`A065883(n+1)%8`
-/

namespace A072400.P6107365061276263182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065883 (n + 1)) 8

end

end A072400.P6107365061276263182

noncomputable section

/-- A072400: (Factors of 4 removed from n) modulo 8.

Offset 1, canonical program `A072400.P6107365061276263182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072400 (n : ℕ) : ℤ :=
  A072400.P6107365061276263182.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072403.P5671364084038198275

`A038502(∑[∏{p}[2*n, n*val(#², 2)]]-n)`
-/

namespace A072403.P5671364084038198275
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), n * SequenceMachineLib.valuation (p ^ 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A072403.P5671364084038198275

noncomputable section

/-- A072403: Numerator of the Reingold-Tarjan sequence, denominator=A072404.

Offset 1, canonical program `A072403.P5671364084038198275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A072403 (n : ℕ) : ℤ :=
  A072403.P5671364084038198275.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. -/
def A072403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072479.P734407684098892103

`ceil(A072346(n)/A028310(n))`
-/

namespace A072479.P734407684098892103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A072346 n : ℚ) / (A028310 n : ℚ)⌉

end

end A072479.P734407684098892103

noncomputable section

/-- A072479: Surface area of n-dimensional sphere of radius r is n*V_n*r^(n-1) = n*Pi^(n/2)*r^(n-1)/(n/2)! = S_n*Pi^floor(n/2)*r^(n-1); sequence gives denominator of S_n.

Offset 0, canonical program `A072479.P734407684098892103`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A072479 (n : ℕ) : ℤ :=
  A072479.P734407684098892103.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A072479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072504.P15978785907571623922

`gcd(A003418(A000194(n)), n+1)`
-/

namespace A072504.P15978785907571623922
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003418 (A000194 n).toNat) (n + 1 : ℤ)

end

end A072504.P15978785907571623922

noncomputable section

/-- A072504: a(n) = LCM of divisors of n which are <= sqrt(n).

Offset 1, canonical program `A072504.P15978785907571623922`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072504 (n : ℕ) : ℤ :=
  (A072504.P15978785907571623922.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072548.P12306959769484027666

`A000203(n+2)%A000720(n+2)`
-/

namespace A072548.P12306959769484027666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 2)) (A000720 (n + 2))

end

end A072548.P12306959769484027666

noncomputable section

/-- A072548: a(n) = sigma(n) mod PrimePi(n).

Offset 2, canonical program `A072548.P12306959769484027666`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072548 (n : ℕ) : ℤ :=
  A072548.P12306959769484027666.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072548.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072561.P15765092492089093831

`A047209(n+1)-A081598(n)`
-/

namespace A072561.P15765092492089093831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047209 (n + 1) - A081598 n

end

end A072561.P15765092492089093831

noncomputable section

/-- A072561: Denominators of w(n) equals 3 where w(1)=w(2)=w(3)=1, w(n)=(w(n-1)*w(n-2)+(w(n-1)+w(n-2))/3) / w(n-3).

Offset 1, canonical program `A072561.P15765092492089093831`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072561 (n : ℕ) : ℤ :=
  A072561.P15765092492089093831.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072561.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072587.P801725359986616698

`lt[1, gcd(2, A005361(n+1))]+1`
-/

namespace A072587.P801725359986616698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A005361 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A072587.P801725359986616698

noncomputable section

/-- A072587: Numbers having at least one prime factor with an even exponent.

Offset 1, canonical program `A072587.P801725359986616698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072587 (n : ℕ) : ℤ :=
  (A072587.P801725359986616698.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072625.P11221807616821932161

`∑{p}[A000040(n+1), #%ceil(log(#))]`
-/

namespace A072625.P11221807616821932161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Int.tmod (p : ℤ) ⌈Real.log (p : ℝ)⌉

end

end A072625.P11221807616821932161

noncomputable section

/-- A072625: a(n) = prime(n) mod ceiling(log(prime(n))).

Offset 1, canonical program `A072625.P11221807616821932161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072625 (n : ℕ) : ℤ :=
  A072625.P11221807616821932161.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072630.P7738086415550469995

`2*A000495(n+1)-1`
-/

namespace A072630.P7738086415550469995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000495 (n + 1) - 1

end

end A072630.P7738086415550469995

noncomputable section

/-- A072630: Values of n where A072629 switches from 01010.. into 0000.. or back.

Offset 1, canonical program `A072630.P7738086415550469995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 230 terms. -/
def A072630 (n : ℕ) : ℤ :=
  A072630.P7738086415550469995.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 230 terms. -/
def A072630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072643.P10513511673986297728

`∑[char[A014137(n)]]`
-/

namespace A072643.P10513511673986297728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072643.P10513511673986297728

noncomputable section

/-- A072643: Half of the binary width of the terms of A014486, the number of digits in A063171(n)/2.

Offset 0, canonical program `A072643.P10513511673986297728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072643 (n : ℕ) : ℤ :=
  (A072643.P10513511673986297728.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072708.P18291931151110653187

`A072682(n+2)+A008597(n)-A008597(n+1)`
-/

namespace A072708.P18291931151110653187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072682 (n + 2) + (A008597 n - A008597 (n + 1))

end

end A072708.P18291931151110653187

noncomputable section

/-- A072708: Last digit of F(n) is 6 where F(n) is the n-th Fibonacci number.

Offset 1, canonical program `A072708.P18291931151110653187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A072708 (n : ℕ) : ℤ :=
  A072708.P18291931151110653187.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A072708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072748.P725762028645036703

`∑[val(eq[1, A005361(n+1)]+1, 3)]`
-/

namespace A072748.P725762028645036703
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072748.P725762028645036703

noncomputable section

/-- A072748: Counting factor 3 in the first n squarefree numbers.

Offset 1, canonical program `A072748.P725762028645036703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072748 (n : ℕ) : ℤ :=
  (A072748.P725762028645036703.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072749.P16362701567912148616

`∑[val(eq[1, A005361(n+1)]+1, 5)]`
-/

namespace A072749.P16362701567912148616
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072749.P16362701567912148616

noncomputable section

/-- A072749: Count of factors of 5 in the first n squarefree numbers.

Offset 1, canonical program `A072749.P16362701567912148616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072749 (n : ℕ) : ℤ :=
  (A072749.P16362701567912148616.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072898.P3597929593974754705

`A000085(n)/∏[and(2, n^3)!]`
-/

namespace A072898.P3597929593974754705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.land 2 (n ^ 3))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000085 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A072898.P3597929593974754705

noncomputable section

/-- A072898: Numerator of c(n) where c(0)=1, c(n+1) = n/c(n) + 1.

Offset 0, canonical program `A072898.P3597929593974754705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A072898 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A072898.P3597929593974754705.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. -/
def A072898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072929.P14615629184669553561

`∑{d}[n+1, A000984(#)]`
-/

namespace A072929.P14615629184669553561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000984 d

end

end A072929.P14615629184669553561

noncomputable section

/-- A072929: a(n) = Sum_{d dividing n} binomial(2d,d).

Offset 1, canonical program `A072929.P14615629184669553561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A072929 (n : ℕ) : ℤ :=
  A072929.P14615629184669553561.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A072929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072960.P17418805968643026231

`eq[1, ∏{digits}[n, A025852(#)]]`
-/

namespace A072960.P17418805968643026231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => A025852 x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072960.P17418805968643026231

noncomputable section

/-- A072960: Numbers using only the curved digits 0, 3, 6, 8 and 9.

Offset 1, canonical program `A072960.P17418805968643026231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 625 terms. -/
def A072960 (n : ℕ) : ℤ :=
  (A072960.P17418805968643026231.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 625 terms. -/
def A072960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073076.P15256774051440457723

`lt[A256277(n+1), 1]+1`
-/

namespace A073076.P15256774051440457723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256277 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A073076.P15256774051440457723

noncomputable section

/-- A073076: Numbers k such that 2*k+1 divides C(2*k,k).

Offset 1, canonical program `A073076.P15256774051440457723`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. -/
def A073076 (n : ℕ) : ℤ :=
  (A073076.P15256774051440457723.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. -/
def A073076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073089.P6746371190418764077

`A382732(n)%2`
-/

namespace A073089.P6746371190418764077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A382732 n) 2

end

end A073089.P6746371190418764077

noncomputable section

/-- A073089: a(n) = (1/2)*(4n - 3 - Sum_{k=1..n} A007400(k)).

Offset 1, canonical program `A073089.P6746371190418764077`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073089 (n : ℕ) : ℤ :=
  A073089.P6746371190418764077.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073089.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073189.P2936447101762913504

`n-A001840(A073188(n))`
-/

namespace A073189.P2936447101762913504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001840 (A073188 n).toNat

end

end A073189.P2936447101762913504

noncomputable section

/-- A073189: Integers 0..k three times, then 0..k+1 three times, etc.

Offset 0, canonical program `A073189.P2936447101762913504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073189 (n : ℕ) : ℤ :=
  A073189.P2936447101762913504.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073356.P10809278047036063621

`gcd(A007947(n+1), A073355(n+1))`
-/

namespace A073356.P10809278047036063621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007947 (n + 1)) (A073355 (n + 1))

end

end A073356.P10809278047036063621

noncomputable section

/-- A073356: Greatest common divisor of squarefree kernel of n and sum of squarefree kernels of numbers <= n.

Offset 1, canonical program `A073356.P10809278047036063621`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073355, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073356 (n : ℕ) : ℤ :=
  (A073356.P10809278047036063621.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073355, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073356.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073388.P12142272651863392813

`∑[(n+2)*∑[A026150(n)/2]]`
-/

namespace A073388.P12142272651863392813
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026150 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073388.P12142272651863392813

noncomputable section

/-- A073388: Second column of the convolution triangle A073387(n+1, 1), for n >= 0.

Offset 0, canonical program `A073388.P12142272651863392813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. -/
def A073388 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A073388.P12142272651863392813.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. -/
def A073388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073446.P4818483135559375804

`A000032(n)*A001644(n)`
-/

namespace A073446.P4818483135559375804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A001644 n

end

end A073446.P4818483135559375804

noncomputable section

/-- A073446: Product L(n)*S(n), where L(n) are Lucas numbers and S(n) are Lucas 3-step numbers = A000032(n) * A001644(n).

Offset 0, canonical program `A073446.P4818483135559375804`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A073446 (n : ℕ) : ℤ :=
  A073446.P4818483135559375804.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A073446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073497.P4382820423101221026

`(n+1)²-A000040(n+1)`
-/

namespace A073497.P4382820423101221026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A000040 (n + 1)

end

end A073497.P4382820423101221026

noncomputable section

/-- A073497: a(n) = n^2 - prime(n).

Offset 1, canonical program `A073497.P4382820423101221026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073497 (n : ℕ) : ℤ :=
  A073497.P4382820423101221026.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073497.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073518.P11821529336065083572

`round(cot(π/A000040(n+1)))`
-/

namespace A073518.P11821529336065083572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (Real.pi / (A000040 (n + 1) : ℝ)))

end

end A073518.P11821529336065083572

noncomputable section

/-- A073518: Cotangent of Pi/prime(n), rounded to nearest integer.

Offset 1, canonical program `A073518.P11821529336065083572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073518 (n : ℕ) : ℤ :=
  A073518.P11821529336065083572.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073729.P3471242560532339437

`A000030(n+1)*10+A010879(n+1)`
-/

namespace A073729.P3471242560532339437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (n + 1) * 10 + A010879 (n + 1)

end

end A073729.P3471242560532339437

noncomputable section

/-- A073729: Concatenation of initial and final digits of n in decimal representation.

Offset 1, canonical program `A073729.P3471242560532339437`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073729 (n : ℕ) : ℤ :=
  A073729.P3471242560532339437.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073729.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073736.P9525934929482745287

`A000040(n)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A073736.P9525934929482745287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A000040 n + a (n - 3)

end

end A073736.P9525934929482745287

noncomputable section

/-- A073736: Sum of primes whose index is congruent to n (mod 3); equals the partial sums of A073737 (in which sums of three successive terms form the primes).

Offset 0, canonical program `A073736.P9525934929482745287`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073736 (n : ℕ) : ℤ :=
  A073736.P9525934929482745287.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073778.P5763979950030979350

`∑[A393073(abs(1-n))]`
-/

namespace A073778.P5763979950030979350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393073 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073778.P5763979950030979350

noncomputable section

/-- A073778: a(n) = Sum_{k=0..n} T(k)*T(n-k), where T is A000073; convolution of A000073 with itself.

Offset 0, canonical program `A073778.P5763979950030979350`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 374 terms. -/
def A073778 (n : ℕ) : ℤ :=
  A073778.P5763979950030979350.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 374 terms. -/
def A073778.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073795.P3953816640740393313

`xor(n, A249572(n))-A249572(n)`
-/

namespace A073795.P3953816640740393313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A249572 n) - A249572 n

end

end A073795.P3953816640740393313

noncomputable section

/-- A073795: Replace 8^k with (-8)^k in base 8 expansion of n.

Offset 0, canonical program `A073795.P3953816640740393313`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A073795 (n : ℕ) : ℤ :=
  A073795.P3953816640740393313.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. -/
def A073795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073845.P3227992193217113330

`A212804(n)+A084179(n)`
-/

namespace A073845.P3227992193217113330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A084179 n

end

end A073845.P3227992193217113330

noncomputable section

/-- A073845: a(1)=a(2)=1, a(n+2)=a(n+1)+a(n)+(-2)^n.

Offset 1, canonical program `A073845.P3227992193217113330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A073845 (n : ℕ) : ℤ :=
  A073845.P3227992193217113330.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A073845.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073996.P17359561944595902144

`∑[A038504(n)]*A038503(n+1)`
-/

namespace A073996.P17359561944595902144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A038503 (n + 1)

end

end A073996.P17359561944595902144

noncomputable section

/-- A073996: Number of strings of length n over GF(4) with trace 0 and subtrace 1.

Offset 1, canonical program `A073996.P17359561944595902144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A073996 (n : ℕ) : ℤ :=
  A073996.P17359561944595902144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A073996.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074081.P10294358627982683923

`(-1)^n*A073817(n)`
-/

namespace A074081.P10294358627982683923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A073817 n

end

end A074081.P10294358627982683923

noncomputable section

/-- A074081: Sum of determinants of 3rd-order principal minors of powers of inverse of tetramatrix ((1,1,0,0),(1,0,1,0),(1,0,0,1),(1,0,0,0)).

Offset 0, canonical program `A074081.P10294358627982683923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. -/
def A074081 (n : ℕ) : ℤ :=
  A074081.P10294358627982683923.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. -/
def A074081.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074118.P8215008649170498919

`ceil(A074117(n+1)/3)`
-/

namespace A074118.P8215008649170498919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A074117 (n + 1) : ℚ) / 3⌉

end

end A074118.P8215008649170498919

noncomputable section

/-- A074118: Largest power of 3 <= 10^n.

Offset 0, canonical program `A074118.P8215008649170498919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A074118 (n : ℕ) : ℤ :=
  A074118.P8215008649170498919.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A074118.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074155.P15347540932136368247

`A000567(n)+lcm(A016921(n), A308196(n))`
-/

namespace A074155.P15347540932136368247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n + (Int.lcm (A016921 n) (A308196 n) : ℤ)

end

end A074155.P15347540932136368247

noncomputable section

/-- A074155: Group the natural numbers so that the product of members of a group is a multiple of the sum: (1),(2,3,4,5,6),(7,8,9),(10,11,12),(13,14,15),(16,17,18),(19,20,21),(22,23,24),.... This is the sequence of the ratio of product /sum.

Offset 1, canonical program `A074155.P15347540932136368247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074155 (n : ℕ) : ℤ :=
  A074155.P15347540932136368247.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074155.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074307.P15096553677735678095

`A074305(A074305(n))`
-/

namespace A074307.P15096553677735678095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074305 (A074305 n).toNat

end

end A074307.P15096553677735678095

noncomputable section

/-- A074307: Square of permutation in A074305.

Offset 0, canonical program `A074307.P15096553677735678095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7501 terms. -/
def A074307 (n : ℕ) : ℤ :=
  A074307.P15096553677735678095.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7501 terms. -/
def A074307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074308.P12421467784667547018

`A074306(A074306(n))`
-/

namespace A074308.P12421467784667547018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074306 (A074306 n).toNat

end

end A074308.P12421467784667547018

noncomputable section

/-- A074308: Inverse of permutation in A074307.

Offset 0, canonical program `A074308.P12421467784667547018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6668 terms. -/
def A074308 (n : ℕ) : ℤ :=
  A074308.P12421467784667547018.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6668 terms. -/
def A074308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074374.P17699635575906020562

`C(A036288(A028310(n)), 2)`
-/

namespace A074374.P17699635575906020562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A036288 (A028310 n).toNat).toNat 2

end

end A074374.P17699635575906020562

noncomputable section

/-- A074374: a(n) = sopfr(n)*(sopfr(n)+1)/2 where sopfr is the sum of the prime factors of n with repetition (A001414).

Offset 0, canonical program `A074374.P17699635575906020562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074374 (n : ℕ) : ℤ :=
  (A074374.P17699635575906020562.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074376.P14527099379225967427

`A000326(A001414(n+1))`
-/

namespace A074376.P14527099379225967427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A001414 (n + 1)).toNat

end

end A074376.P14527099379225967427

noncomputable section

/-- A074376: s(3s-1)/2 where s is the sum of the prime factors of n (with repetition).

Offset 1, canonical program `A074376.P14527099379225967427`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074376 (n : ℕ) : ℤ :=
  A074376.P14527099379225967427.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074376.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074585.P10482400427346925936

`∑[A073145(n)-a(n-1)]` with `a(0)=3`
-/

namespace A074585.P10482400427346925936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A073145 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074585.P10482400427346925936

noncomputable section

/-- A074585: a(n)= Sum_{j=0..floor(n/2)} A073145(2*j + q), where q = 2*(n/2 - floor(n/2)).

Offset 0, canonical program `A074585.P10482400427346925936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 755 terms. -/
def A074585 (n : ℕ) : ℤ :=
  A074585.P10482400427346925936.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 755 terms. -/
def A074585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074591.P7866340962004254295

`(n+1)*(1-A010055(n+1))`
-/

namespace A074591.P7866340962004254295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A010055 (n + 1))

end

end A074591.P7866340962004254295

noncomputable section

/-- A074591: If n is a prime power then 0 else n.

Offset 1, canonical program `A074591.P7866340962004254295`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010055, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074591 (n : ℕ) : ℤ :=
  A074591.P7866340962004254295.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010055, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074591.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074627.P9456993586647811186

`eq[0, A000203(n+1)%6]+1`
-/

namespace A074627.P9456993586647811186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A074627.P9456993586647811186

noncomputable section

/-- A074627: Numbers n such that sigma(n) is divisible by 6.

Offset 1, canonical program `A074627.P9456993586647811186`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074627 (n : ℕ) : ℤ :=
  (A074627.P9456993586647811186.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074628.P11886909399494549536

`eq[2, A000203(n+1)%6]+1`
-/

namespace A074628.P11886909399494549536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A074628.P11886909399494549536

noncomputable section

/-- A074628: Numbers k such that sigma(k) == 2 mod 6.

Offset 1, canonical program `A074628.P11886909399494549536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6591 terms. -/
def A074628 (n : ℕ) : ℤ :=
  (A074628.P11886909399494549536.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6591 terms. -/
def A074628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074630.P4310877530525918201

`eq[3, A039653(n)%6]`
-/

namespace A074630.P4310877530525918201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039653 n) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A074630.P4310877530525918201

noncomputable section

/-- A074630: Numbers k such that sigma(k) == 4 mod 6.

Offset 1, canonical program `A074630.P4310877530525918201`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 608 terms. -/
def A074630 (n : ℕ) : ℤ :=
  (A074630.P4310877530525918201.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 608 terms. -/
def A074630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074724.P5377072150215440404

`3*A038500(n+1)`
-/

namespace A074724.P5377072150215440404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A038500 (n + 1)

end

end A074724.P5377072150215440404

noncomputable section

/-- A074724: Highest power of 3 dividing F(4n) where F(k) is the k-th Fibonacci number.

Offset 1, canonical program `A074724.P5377072150215440404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074724 (n : ℕ) : ℤ :=
  A074724.P5377072150215440404.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074739.P8677531906933437778

`lt[A062419(n+1), A062509(n+1)]+1`
-/

namespace A074739.P8677531906933437778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062509 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A074739.P8677531906933437778

noncomputable section

/-- A074739: Numbers n such that omega(n) > log(log(n)).

Offset 1, canonical program `A074739.P8677531906933437778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5416 terms. -/
def A074739 (n : ℕ) : ℤ :=
  (A074739.P8677531906933437778.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5416 terms. -/
def A074739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074740.P3277946273930303314

`A002866(n+1)/A066843(n+1)`
-/

namespace A074740.P3277946273930303314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002866 (n + 1) : ℚ) / (A066843 (n + 1) : ℚ)

end

end A074740.P3277946273930303314

noncomputable section

/-- A074740: a(n) = n!*2^(n-1)/Product_{k=1..n} tau(k) where tau = A000005.

Offset 1, canonical program `A074740.P3277946273930303314`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066843, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074740 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A074740.P3277946273930303314.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066843, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074740.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074752.P10712639327454673054

`A001399(n)+∑[A000217(A008615(n+1))]`
-/

namespace A074752.P10712639327454673054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A008615 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074752.P10712639327454673054

noncomputable section

/-- A074752: Number of combinatorially inequivalent cyclic subgroups of S_n of order 6. Number of partitions of n of order 6.

Offset 5, canonical program `A074752.P10712639327454673054`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074752 (n : ℕ) : ℤ :=
  A074752.P10712639327454673054.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074796.P12241950292265642730

`∑[val(A033120(∏{e}[n+1, #+1]), 2)]`
-/

namespace A074796.P12241950292265642730
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A033120 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074796.P12241950292265642730

noncomputable section

/-- A074796: Number of numbers k <= n such that tau(k) == 2 (mod 3) where tau(k) = A000005(k) is the number of divisors of k.

Offset 1, canonical program `A074796.P12241950292265642730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074796 (n : ℕ) : ℤ :=
  (A074796.P12241950292265642730.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074796.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074972.P802094365088414414

`(19*A000040(n+1))%20`
-/

namespace A074972.P802094365088414414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (19 * A000040 (n + 1)) 20

end

end A074972.P802094365088414414

noncomputable section

/-- A074972: a(n) == - prime(n) (modulo 20).

Offset 1, canonical program `A074972.P802094365088414414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074972 (n : ℕ) : ℤ :=
  A074972.P802094365088414414.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074976.P8649258416445497239

`round(2/Δ[sqrt(A001749(n+1))])`
-/

namespace A074976.P8649258416445497239
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001749 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / (f1 (n + 1) - f1 n))

end

end A074976.P8649258416445497239

noncomputable section

/-- A074976: a(n) = round(1/(sqrt(prime(n+1)) - sqrt(prime(n)))).

Offset 1, canonical program `A074976.P8649258416445497239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074976 (n : ℕ) : ℤ :=
  A074976.P8649258416445497239.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075052.P11734281029159209410

`A002760(n+2)-A002760(n+1)`
-/

namespace A075052.P11734281029159209410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002760 (n + 2) - A002760 (n + 1)

end

end A075052.P11734281029159209410

noncomputable section

/-- A075052: Write down squares and cubes in order, as in A002760. The sequence gives the first differences between terms.

Offset 1, canonical program `A075052.P11734281029159209410`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002760, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075052 (n : ℕ) : ℤ :=
  A075052.P11734281029159209410.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002760, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075052.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A075151.P11861447919673689050

`(-1)^n*A075155(n)`
-/

namespace A075151.P11861447919673689050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A075155 n

end

end A075151.P11861447919673689050

noncomputable section

/-- A075151: a(n)=L(n)^2*C(n), L(n)=Lucas numbers (A000032), C(n)=reflected Lucas numbers (comment to A061084).

Offset 0, canonical program `A075151.P11861447919673689050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A075151 (n : ℕ) : ℤ :=
  A075151.P11861447919673689050.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. -/
def A075151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075254.P6422447875050144596

`n+1+A001414(n+1)`
-/

namespace A075254.P6422447875050144596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A001414 (n + 1)

end

end A075254.P6422447875050144596

noncomputable section

/-- A075254: a(n) = n + (sum of prime factors of n taken with repetition).

Offset 1, canonical program `A075254.P6422447875050144596`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075254 (n : ℕ) : ℤ :=
  A075254.P6422447875050144596.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075254.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A075255.P12137973761347593222

`n+1-A001414(n+1)`
-/

namespace A075255.P12137973761347593222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001414 (n + 1)

end

end A075255.P12137973761347593222

noncomputable section

/-- A075255: a(n) = n - (sum of prime factors of n (with repetition)).

Offset 1, canonical program `A075255.P12137973761347593222`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075255 (n : ℕ) : ℤ :=
  A075255.P12137973761347593222.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075255.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A075311.P6686021265299365214

`lt[1, 2-a(n-A011371(n))]` with `a(0)=0, a(1)=21`
-/

namespace A075311.P6686021265299365214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 21] fun n f2 =>
  2 - f2 ((n : ℤ) - A011371 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A075311.P6686021265299365214

noncomputable section

/-- A075311: a(1) = 1; for n > 1, a(n) is the smallest number m > a(n-1) such that the number of 1's in the binary expansion of m is not already in the sequence.

Offset 1, canonical program `A075311.P6686021265299365214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4726 terms. -/
def A075311 (n : ℕ) : ℤ :=
  (A075311.P6686021265299365214.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4726 terms. -/
def A075311.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075359.P11140778885689139120

`A037123((n+1)*(n+2)/2)-A037123((n+1)*n/2)`
-/

namespace A075359.P11140778885689139120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 (SequenceMachineLib.roundAway (((n + 1) * (n + 2) : ℚ) / 2)).toNat - A037123 (SequenceMachineLib.roundAway (((n + 1) * n : ℚ) / 2)).toNat

end

end A075359.P11140778885689139120

noncomputable section

/-- A075359: Sum of the digits of the next n numbers.

Offset 1, canonical program `A075359.P11140778885689139120`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037123, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075359 (n : ℕ) : ℤ :=
  A075359.P11140778885689139120.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037123, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075359.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A075424.P8873536088424695582

`A075423(A075423(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A075424.P8873536088424695582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075423 (A075423 (n + 2)).toNat

end

end A075424.P8873536088424695582

noncomputable section

/-- A075424: a(n) = A075423(A075423(n)).

Offset 2, canonical program `A075424.P8873536088424695582`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A075423, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075424 (n : ℕ) : ℤ :=
  A075424.P8873536088424695582.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A075423, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075424.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A075495.P7130730270082164988

`A075298(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A075495.P7130730270082164988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A075298 n - a (n - 2)

end

end A075495.P7130730270082164988

noncomputable section

/-- A075495: Convolution of A075298 with A056594.

Offset 0, canonical program `A075495.P7130730270082164988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 748 terms. -/
def A075495 (n : ℕ) : ℤ :=
  A075495.P7130730270082164988.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 748 terms. -/
def A075495.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075518.P17044859685553142342

`floor(A000040(n+1)/4)`
-/

namespace A075518.P17044859685553142342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / 4⌋

end

end A075518.P17044859685553142342

noncomputable section

/-- A075518: a(n) = floor(prime(n)/4).

Offset 1, canonical program `A075518.P17044859685553142342`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075518 (n : ℕ) : ℤ :=
  A075518.P17044859685553142342.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075667.P5473521888596357976

`Δ[A000540(∑[n])]`
-/

namespace A075667.P5473521888596357976
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000540 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075667.P5473521888596357976

noncomputable section

/-- A075667: Sum of next n 6th powers.

Offset 1, canonical program `A075667.P5473521888596357976`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A075667 (n : ℕ) : ℤ :=
  A075667.P5473521888596357976.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A075667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075668.P16031332990849962930

`Δ[A000541(∑[n])]`
-/

namespace A075668.P16031332990849962930
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000541 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075668.P16031332990849962930

noncomputable section

/-- A075668: Sum of next n 7th powers.

Offset 1, canonical program `A075668.P16031332990849962930`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A075668 (n : ℕ) : ℤ :=
  A075668.P16031332990849962930.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A075668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075669.P8418588109550603356

`Δ[A000542(∑[n])]`
-/

namespace A075669.P8418588109550603356
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000542 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075669.P8418588109550603356

noncomputable section

/-- A075669: Sum of next n 8th powers.

Offset 1, canonical program `A075669.P8418588109550603356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A075669 (n : ℕ) : ℤ :=
  A075669.P8418588109550603356.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A075669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075670.P10395475035890779460

`Δ[A007487(∑[n])]`
-/

namespace A075670.P10395475035890779460
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007487 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075670.P10395475035890779460

noncomputable section

/-- A075670: Sum of next n 9th powers.

Offset 1, canonical program `A075670.P10395475035890779460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A075670 (n : ℕ) : ℤ :=
  A075670.P10395475035890779460.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A075670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075671.P12647582429914079415

`Δ[A023002(∑[n])]`
-/

namespace A075671.P12647582429914079415
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023002 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A075671.P12647582429914079415

noncomputable section

/-- A075671: Sum of next n 10th powers.

Offset 1, canonical program `A075671.P12647582429914079415`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A075671 (n : ℕ) : ℤ :=
  A075671.P12647582429914079415.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A075671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075701.P14381727279557985460

`A000203(abs(a(n-1)))-2*a(n-1)` with `a(0)=1`
-/

namespace A075701.P14381727279557985460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000203 |a (n - 1)|.toNat - 2 * a (n - 1)

end

end A075701.P14381727279557985460

noncomputable section

/-- A075701: a(1)=1, a(n+1)=sigma(a(n))-2*a(n).

Offset 1, canonical program `A075701.P14381727279557985460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075701 (n : ℕ) : ℤ :=
  A075701.P14381727279557985460.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075701.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075728.P10269947681919127988

`record[abs(2*(n+1)-A000203(n+1))]`
-/

namespace A075728.P10269947681919127988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * (n + 1) : ℤ) - A000203 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A075728.P10269947681919127988

noncomputable section

/-- A075728: Records in abs(sigma(n)-2*n) (absolute value of A033879).

Offset 1, canonical program `A075728.P10269947681919127988`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A075728 (n : ℕ) : ℤ :=
  A075728.P10269947681919127988.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. -/
def A075728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075731.P10395991786095525384

`A000045(record[∏{p}[n, #]])`
-/

namespace A075731.P10395991786095525384
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A075731.P10395991786095525384

noncomputable section

/-- A075731: Fibonacci numbers F(k) for k squarefree (A005117).

Offset 1, canonical program `A075731.P10395991786095525384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. -/
def A075731 (n : ℕ) : ℤ :=
  A075731.P10395991786095525384.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. -/
def A075731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075732.P15581762830098997151

`A000045(lt[1, ∏{e}[n, #]])`
-/

namespace A075732.P15581762830098997151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A075732.P15581762830098997151

noncomputable section

/-- A075732: Fibonacci numbers F(k) for k not squarefree (A013929).

Offset 0, canonical program `A075732.P15581762830098997151`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A075732 (n : ℕ) : ℤ :=
  A075732.P15581762830098997151.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 186 terms. -/
def A075732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075734.P17183931831588121213

`A000045(record[∏{p}[n, -#]])`
-/

namespace A075734.P17183931831588121213
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A075734.P17183931831588121213

noncomputable section

/-- A075734: Fibonacci numbers F(k) when k is a product of an even number of distinct primes A030229 (mu(k)=1).

Offset 1, canonical program `A075734.P17183931831588121213`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A075734 (n : ℕ) : ℤ :=
  A075734.P17183931831588121213.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A075734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075895.P13687500531108840947

`round((A000447(n+1)-1)/A000040(n+1))`
-/

namespace A075895.P13687500531108840947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000447 (n + 1) - 1 : ℚ) / (A000040 (n + 1) : ℚ))

end

end A075895.P13687500531108840947

noncomputable section

/-- A075895: Rounded sum of first n odd integers squared divided by n-th prime.

Offset 1, canonical program `A075895.P13687500531108840947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A075895 (n : ℕ) : ℤ :=
  A075895.P13687500531108840947.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A075895.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076049.P2274041520882839645

`∑[A079496(n+1)]-1`
-/

namespace A076049.P2274041520882839645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A076049.P2274041520882839645

noncomputable section

/-- A076049: Numbers k such that the sum of the k-th triangular number and (k+2)-nd triangular number is a triangular number.

Offset 1, canonical program `A076049.P2274041520882839645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A076049 (n : ℕ) : ℤ :=
  A076049.P2274041520882839645.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. -/
def A076049.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076051.P831162649335085033

`A060696(n+2)`
-/

namespace A076051.P831162649335085033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060696 (n + 2)

end

end A076051.P831162649335085033

noncomputable section

/-- A076051: Sum of product of odd numbers <= n and the product of even numbers <= n.

Offset 1, canonical program `A076051.P831162649335085033`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060696, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076051 (n : ℕ) : ℤ :=
  A076051.P831162649335085033.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060696, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076051.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076160.P7190906262861791826

`∑{digits}[n, A060884(#)-1]`
-/

namespace A076160.P7190906262861791826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A060884 x - 1).sum

end

end A076160.P7190906262861791826

noncomputable section

/-- A076160: Sod_4 - sod_3 + sod_2 - sod_1, where sod_k is the sum of k-th powers of digits of n.

Offset 0, canonical program `A076160.P7190906262861791826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076160 (n : ℕ) : ℤ :=
  A076160.P7190906262861791826.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076162.P12378569391942512575

`p?[A076161(n+1)]`
-/

namespace A076162.P12378569391942512575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076161 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076162.P12378569391942512575

noncomputable section

/-- A076162: Primes p such that p + sum of squares of digits of p is also prime.

Offset 1, canonical program `A076162.P12378569391942512575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 996 terms. -/
def A076162 (n : ℕ) : ℤ :=
  A076162.P12378569391942512575.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 996 terms. -/
def A076162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076206.P11566431045651896836

`eq[A032741(n)+1, dr(n)]`
-/

namespace A076206.P11566431045651896836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A076206.P11566431045651896836

noncomputable section

/-- A076206: Numbers with digital root equal to their number of divisors.

Offset 1, canonical program `A076206.P11566431045651896836`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 780 terms. -/
def A076206 (n : ℕ) : ℤ :=
  (A076206.P11566431045651896836.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 780 terms. -/
def A076206.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076411.P17634982879801196163

`n-∑[char[A007916(n+1)]]`
-/

namespace A076411.P17634982879801196163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A076411.P17634982879801196163

noncomputable section

/-- A076411: Number of perfect powers < n.

Offset 1, canonical program `A076411.P17634982879801196163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076411 (n : ℕ) : ℤ :=
  A076411.P17634982879801196163.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076536.P12036762961433065870

`A006370(A075884(n+1))`
-/

namespace A076536.P12036762961433065870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A075884 (n + 1)).toNat

end

end A076536.P12036762961433065870

noncomputable section

/-- A076536: Image of n at the third step in the 3x+1 Problem: syr(3,n).

Offset 1, canonical program `A076536.P12036762961433065870`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6665 terms. -/
def A076536 (n : ℕ) : ℤ :=
  A076536.P12036762961433065870.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6665 terms. -/
def A076536.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076543.P14043142973784260755

`2*A066779(n+1)-∑[n+1]`
-/

namespace A076543.P14043142973784260755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066779 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A076543.P14043142973784260755

noncomputable section

/-- A076543: a(n) = Sum_{k=1..n} k*sqf(k) where sqf(k)=1 if k is squarefree and sqf(k)=-1 otherwise.

Offset 1, canonical program `A076543.P14043142973784260755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076543 (n : ℕ) : ℤ :=
  A076543.P14043142973784260755.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076632.P14404458359531555987

`ceil(abs(∑[A078020(n)/2]))`
-/

namespace A076632.P14404458359531555987
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078020 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|∑ j ∈ Finset.range (n + 1), f1 j|⌉

end

end A076632.P14404458359531555987

noncomputable section

/-- A076632: Solve 2^n - 2 = 7(x^2 - x) + (y^2 - y) for (x,y) with x>0, y>0; sequence gives value of x.

Offset 1, canonical program `A076632.P14404458359531555987`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A076632 (n : ℕ) : ℤ :=
  A076632.P14404458359531555987.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A076632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076757.P14961246049753575220

`p?[A000720(n+1)+1+n]`
-/

namespace A076757.P14961246049753575220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A076757.P14961246049753575220

noncomputable section

/-- A076757: Primes of the form n + pi(n), that is, generated in A077510.

Offset 1, canonical program `A076757.P14961246049753575220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9502 terms. -/
def A076757 (n : ℕ) : ℤ :=
  A076757.P14961246049753575220.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9502 terms. -/
def A076757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076816.P12064210013836610838

`n²-C(A214857(n), 2)`
-/

namespace A076816.P12064210013836610838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (Nat.choose (A214857 n).toNat 2 : ℤ)

end

end A076816.P12064210013836610838

noncomputable section

/-- A076816: Squares modulo triangular numbers: n^2 minus the greatest triangular number smaller than or equal to n^2.

Offset 0, canonical program `A076816.P12064210013836610838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076816 (n : ℕ) : ℤ :=
  A076816.P12064210013836610838.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A076816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076885.P12736356851806597047

`A221150(n+1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A076885.P12736356851806597047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A221150 (n + 1) + a (n - 1)

end

end A076885.P12736356851806597047

noncomputable section

/-- A076885: Let u(0)=1, u(1)=1 u(n) = u(n-1) + u(n-2) - n*z where z = (5-sqrt(5))/10 =0.27..., then a(n)=floor(u(n)).

Offset 0, canonical program `A076885.P12736356851806597047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3929 terms. -/
def A076885 (n : ℕ) : ℤ :=
  A076885.P12736356851806597047.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3929 terms. -/
def A076885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076898.P2074698076264924769

`A053602(A008620(n))*A163806(n)`
-/

namespace A076898.P2074698076264924769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (A008620 n).toNat * A163806 n

end

end A076898.P2074698076264924769

noncomputable section

/-- A076898: Let u(1)=u(2)=u(3)=1, u(n)=sign(u(n-1)-u(n-2))/(u(n-3)+1); then a(n) is the numerator of u(n).

Offset 1, canonical program `A076898.P2074698076264924769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2855 terms. -/
def A076898 (n : ℕ) : ℤ :=
  A076898.P2074698076264924769.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2855 terms. -/
def A076898.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076899.P11870256552254514627

`A123231(Δ[A274583(n)])`
-/

namespace A076899.P11870256552254514627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274583 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123231 (f1 (n + 1) - f1 n).toNat

end

end A076899.P11870256552254514627

noncomputable section

/-- A076899: Let u(1)=u(2)=u(3)=1, u(n)=sign(u(n-1)-u(n-2))/(u(n-3)+1); then a(n) is the denominator of u(n).

Offset 1, canonical program `A076899.P11870256552254514627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2872 terms. -/
def A076899 (n : ℕ) : ℤ :=
  A076899.P11870256552254514627.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2872 terms. -/
def A076899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076968.P6330857276184368086

`sqrt(A076967(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A076968.P6330857276184368086
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A076967 (n + 1) : ℝ)

end

end A076968.P6330857276184368086

noncomputable section

/-- A076968: a(n) = sqrt(A076967(n)).

Offset 1, canonical program `A076968.P6330857276184368086`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076967, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076968 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A076968.P6330857276184368086.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076967, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076968.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076984.P13104546406193990713

`A023645(n+1)+1`
-/

namespace A076984.P13104546406193990713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (n + 1) + 1

end

end A076984.P13104546406193990713

noncomputable section

/-- A076984: Number of Fibonacci numbers that are divisors of the n-th Fibonacci number.

Offset 1, canonical program `A076984.P13104546406193990713`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076984 (n : ℕ) : ℤ :=
  A076984.P13104546406193990713.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023645, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076984.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A077107.P2088776491079219285

`A048763(n²)`
-/

namespace A077107.P2088776491079219285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (n ^ 2)

end

end A077107.P2088776491079219285

noncomputable section

/-- A077107: Least integer cube >= n^2.

Offset 0, canonical program `A077107.P2088776491079219285`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048763, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077107 (n : ℕ) : ℤ :=
  A077107.P2088776491079219285.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048763, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077107.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A077241.P11340406433568583916

`A143609(n+1)-A006452(n)`
-/

namespace A077241.P11340406433568583916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143609 (n + 1) - A006452 n

end

end A077241.P11340406433568583916

noncomputable section

/-- A077241: Combined Diophantine Chebyshev sequences A054488 and A077413.

Offset 0, canonical program `A077241.P11340406433568583916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A077241 (n : ℕ) : ℤ :=
  A077241.P11340406433568583916.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 262 terms. -/
def A077241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077248.P14244209318349117416

`A237262(n+1)+A070997(A004526(n))`
-/

namespace A077248.P14244209318349117416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237262 (n + 1) + A070997 (A004526 n).toNat

end

end A077248.P14244209318349117416

noncomputable section

/-- A077248: Combined Diophantine Chebyshev sequences A077246 and A077244.

Offset 0, canonical program `A077248.P14244209318349117416`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. -/
def A077248 (n : ℕ) : ℤ :=
  A077248.P14244209318349117416.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 224 terms. -/
def A077248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077272.P386906752104334311

`∑{d}[n, (n-#)*A001787(#)]`
-/

namespace A077272.P386906752104334311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n : ℤ) - (d : ℤ)) * A001787 d

end

end A077272.P386906752104334311

noncomputable section

/-- A077272: a(n) = Sum_{d|n} d^2*2^(d-1)*(n/d-1) for n > 0.

Offset 0, canonical program `A077272.P386906752104334311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A077272 (n : ℕ) : ℤ :=
  A077272.P386906752104334311.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A077272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077353.P7669968731459567172

`1+10^A055642(5^n)/5*a(n-1)` with `a(0)=1`
-/

namespace A077353.P7669968731459567172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  1 + (10 : ℚ) ^ (A055642 (5 ^ n) : ℤ) / 5 * a (n - 1)

end

end A077353.P7669968731459567172

noncomputable section

/-- A077353: a(n) = (concatenation in ascending order of divisors of 5^n)/5^n.

Offset 0, canonical program `A077353.P7669968731459567172`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077353 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A077353.P7669968731459567172.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077353.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A077425.P1482060704504981513

`∑[A000122(n)²+4]`
-/

namespace A077425.P1482060704504981513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n ^ 2 + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A077425.P1482060704504981513

noncomputable section

/-- A077425: a(n) == 1 (mod 4) (see A016813), but not a square (i.e., not in A000290).

Offset 1, canonical program `A077425.P1482060704504981513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077425 (n : ℕ) : ℤ :=
  A077425.P1482060704504981513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A077425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077433.P5984932603153973634

`floor(A077430(n+1)/2)`
-/

namespace A077433.P5984932603153973634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077430 (n + 1) : ℚ) / 2⌋

end

end A077433.P5984932603153973634

noncomputable section

/-- A077433: Number of separating zeros to represent A077431.

Offset 1, canonical program `A077433.P5984932603153973634`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077430, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077433 (n : ℕ) : ℤ :=
  A077433.P5984932603153973634.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077430, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077433.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A077454.P16236692966555869725

`A001158((n+1)^3)/A000203((n+1)^3)`
-/

namespace A077454.P16236692966555869725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001158 ((n + 1) ^ 3) : ℚ) / (A000203 ((n + 1) ^ 3) : ℚ)

end

end A077454.P16236692966555869725

noncomputable section

/-- A077454: a(n) = sigma_3(n^3)/sigma(n^3).

Offset 1, canonical program `A077454.P16236692966555869725`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001158, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077454 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A077454.P16236692966555869725.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001158, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077454.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A077512.P4999606685360311724

`(ceil(sqrt((n+2)*10^(n+1-A055642(n+1))))-1)²`
-/

namespace A077512.P4999606685360311724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.sqrt ((n + 2 : ℚ) * (10 : ℚ) ^ ((n + 1 : ℤ) - A055642 (n + 1) : ℤ) : ℝ)⌉ - 1) ^ 2

end

end A077512.P4999606685360311724

noncomputable section

/-- A077512: Largest n-digit square beginning with n.

Offset 1, canonical program `A077512.P4999606685360311724`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077512 (n : ℕ) : ℤ :=
  A077512.P4999606685360311724.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077512.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A077648.P9186107893677974913

`A000030(A000040(n+1))`
-/

namespace A077648.P9186107893677974913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A000040 (n + 1)).toNat

end

end A077648.P9186107893677974913

noncomputable section

/-- A077648: Initial digits of prime numbers.

Offset 1, canonical program `A077648.P9186107893677974913`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077648 (n : ℕ) : ℤ :=
  A077648.P9186107893677974913.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077648.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A077650.P17565632628296498569

`A000030(A000203(n+1))`
-/

namespace A077650.P17565632628296498569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A000203 (n + 1)).toNat

end

end A077650.P17565632628296498569

noncomputable section

/-- A077650: Initial decimal digit of sigma(n), the sum of divisors of n.

Offset 1, canonical program `A077650.P17565632628296498569`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077650 (n : ℕ) : ℤ :=
  A077650.P17565632628296498569.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A077650.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A077725.P13510070513711470878

`A000463(A005843(n+2)+Δ[A010052(n+2)])`
-/

namespace A077725.P13510070513711470878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A005843 (n + 2) + (f1 (n + 1) - f1 n)).toNat

end

end A077725.P13510070513711470878

noncomputable section

/-- A077725: a(n) = smallest square > 1 which can be expressed as a sum of distinct powers of n.

Offset 2, canonical program `A077725.P13510070513711470878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A077725 (n : ℕ) : ℤ :=
  A077725.P13510070513711470878.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. -/
def A077725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078181.P9139865131225983786

`∑{d}[n+1, #*A079978(#-1)]`
-/

namespace A078181.P9139865131225983786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A079978 (d - 1)

end

end A078181.P9139865131225983786

noncomputable section

/-- A078181: a(n) = Sum_{d|n, d == 1 (mod 3)} d.

Offset 1, canonical program `A078181.P9139865131225983786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078181 (n : ℕ) : ℤ :=
  A078181.P9139865131225983786.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078307.P15856725681295439327

`∑{d}[n+1, A309337(#)]`
-/

namespace A078307.P15856725681295439327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A309337 d

end

end A078307.P15856725681295439327

noncomputable section

/-- A078307: a(n) = Sum_{d divides n} (-1)^(n/d+1)*d^3.

Offset 1, canonical program `A078307.P15856725681295439327`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078307 (n : ℕ) : ℤ :=
  A078307.P15856725681295439327.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078411.P194247880700260291

`A008769(n)+∑[A000217(A004526(n))]`
-/

namespace A078411.P194247880700260291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008769 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078411.P194247880700260291

noncomputable section

/-- A078411: Expansion of Molien series for a certain 4-D group of order 48.

Offset 0, canonical program `A078411.P194247880700260291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078411 (n : ℕ) : ℤ :=
  A078411.P194247880700260291.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078411.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078412.P6734117719064636493

`A038502(a(n-1)+a(n-2))` with `a(0)=5, a(1)=8`
-/

namespace A078412.P6734117719064636493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 8] fun n a =>
  A038502 (a (n - 1) + a (n - 2)).toNat

end

end A078412.P6734117719064636493

noncomputable section

/-- A078412: a(0) = 5, a(1) = 8; for n > 1, a(n)=(a(n-1)+a(n-2))/3^k, where 3^k is the highest power of 3 dividing a(n-1)+a(n-2).

Offset 0, canonical program `A078412.P6734117719064636493`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078412 (n : ℕ) : ℤ :=
  A078412.P6734117719064636493.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078654.P8049831914724263825

`A000040(A002145(n+1))`
-/

namespace A078654.P8049831914724263825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002145 (n + 1)).toNat

end

end A078654.P8049831914724263825

noncomputable section

/-- A078654: a(n) = prime(k) where k = n-th prime congruent to 3 mod 4.

Offset 1, canonical program `A078654.P8049831914724263825`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078654 (n : ℕ) : ℤ :=
  A078654.P8049831914724263825.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078654.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078685.P14940977753041883889

`A053646(p?[abs(xor(n, -2))])`
-/

namespace A078685.P14940977753041883889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053646 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A078685.P14940977753041883889

noncomputable section

/-- A078685: Minimum value of |prime(n) - 2^x|.

Offset 1, canonical program `A078685.P14940977753041883889`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A078685 (n : ℕ) : ℤ :=
  A078685.P14940977753041883889.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A078685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078736.P8131664630174291717

`∏[A058281(n)+1/a(n-1)]` with `a(0)=1`
-/

namespace A078736.P8131664630174291717
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (A058281 n : ℚ) + 1 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A078736.P8131664630174291717

noncomputable section

/-- A078736: Numerators of convergents to sqrt(e).

Offset 1, canonical program `A078736.P8131664630174291717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A078736 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A078736.P8131664630174291717.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A078736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078737.P6563934209160110452

`∏[A058281(n)+1/a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A078737.P6563934209160110452
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (A058281 n : ℚ) + 1 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A078737.P6563934209160110452

noncomputable section

/-- A078737: Denominators of convergents to sqrt(e).

Offset 1, canonical program `A078737.P6563934209160110452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A078737 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A078737.P6563934209160110452.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A078737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078763.P9836869021178763523

`p?[A002024(abs(1-n)+1)+2*n]`
-/

namespace A078763.P9836869021178763523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (|1 - (n : ℤ)| + 1).toNat + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078763.P9836869021178763523

noncomputable section

/-- A078763: List primes between (2n-1)^2 and (2n)^2.

Offset 1, canonical program `A078763.P9836869021178763523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1144 terms. -/
def A078763 (n : ℕ) : ℤ :=
  A078763.P9836869021178763523.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1144 terms. -/
def A078763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078912.P16565108003118510431

`a(n-1)+a(A029578(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A078912.P16565108003118510431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (A029578 (n - 1)).toNat

end

end A078912.P16565108003118510431

noncomputable section

/-- A078912: a(1)=a(2)=1, a(n)=a(n-1)+a(n-2) if n is odd, a(n)=a(n-1)+a(n/2) if n is even.

Offset 1, canonical program `A078912.P16565108003118510431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. -/
def A078912 (n : ℕ) : ℤ :=
  (A078912.P16565108003118510431.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. -/
def A078912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078978.P13672447014390308062

`dr(or(28, val(A003485(n), 2)))`
-/

namespace A078978.P13672447014390308062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Nat.lor 28 (SequenceMachineLib.valuation (A003485 n).toNat 2) : ℤ)

end

end A078978.P13672447014390308062

noncomputable section

/-- A078978: Sequence is S(oo), where S(1)={1,2,3,4}, S(n+1)=S(n)S'(n) and S'(n) is obtained from S(n) by changing its last term using the cyclic permutation 1->2->3->4->1.

Offset 1, canonical program `A078978.P13672447014390308062`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078978 (n : ℕ) : ℤ :=
  (A078978.P13672447014390308062.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078979.P9508410524524561952

`A078711(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078979.P9508410524524561952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078711 (n + 1) - 1

end

end A078979.P9508410524524561952

noncomputable section

/-- A078979: a(n) = A078711(n) - 1.

Offset 1, canonical program `A078979.P9508410524524561952`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078711, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078979 (n : ℕ) : ℤ :=
  A078979.P9508410524524561952.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078711, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078979.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079248.P15294235973507137332

`∑{d}[n+1, A001318(#)]`
-/

namespace A079248.P15294235973507137332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001318 d

end

end A079248.P15294235973507137332

noncomputable section

/-- A079248: Sum of q in all pairs (p,q), 0 <= p < q, p+q divides n.

Offset 1, canonical program `A079248.P15294235973507137332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A079248 (n : ℕ) : ℤ :=
  A079248.P15294235973507137332.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A079248.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079255.P4224529867862457493

`A026363(2*n+1)`
-/

namespace A079255.P4224529867862457493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026363 (2 * n + 1)

end

end A079255.P4224529867862457493

noncomputable section

/-- A079255: a(n) is taken to be the smallest positive integer greater than a(n-1) such that the condition "n is in the sequence if and only if a(n) is odd and a(n+1) is even" can be satisfied.

Offset 1, canonical program `A079255.P4224529867862457493`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026363, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079255 (n : ℕ) : ℤ :=
  A079255.P4224529867862457493.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026363, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079255.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079282.P9213534698011007782

`(n-1)*2^n+A000045(n+3)`
-/

namespace A079282.P9213534698011007782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (2 ^ n : ℤ) + A000045 (n + 3)

end

end A079282.P9213534698011007782

noncomputable section

/-- A079282: Diagonal sums of triangle A055249.

Offset 0, canonical program `A079282.P9213534698011007782`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A079282 (n : ℕ) : ℤ :=
  A079282.P9213534698011007782.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A079282.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079284.P3745513152013179624

`A000045(n)+2*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A079284.P3745513152013179624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000045 n + 2 * a (n - 2)

end

end A079284.P3745513152013179624

noncomputable section

/-- A079284: Diagonal sums of triangle A008949.

Offset 0, canonical program `A079284.P3745513152013179624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A079284 (n : ℕ) : ℤ :=
  A079284.P3745513152013179624.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 478 terms. -/
def A079284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079285.P1716111026875183716

`Δ[A000045(n)]+2*a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A079285.P1716111026875183716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  f1 (n + 1) - f1 n + 2 * a (n - 2)

end

end A079285.P1716111026875183716

noncomputable section

/-- A079285: First differences of A079284.

Offset 0, canonical program `A079285.P1716111026875183716`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A079285 (n : ℕ) : ℤ :=
  A079285.P1716111026875183716.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A079285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079316.P891099002037030476

`A079314(n)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A079316.P891099002037030476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A079314 n + a (n - 2)

end

end A079316.P891099002037030476

noncomputable section

/-- A079316: Number of first-quadrant cells (including the two boundaries) that are ON at stage n of the cellular automaton described in A079317.

Offset 0, canonical program `A079316.P891099002037030476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4406 terms. -/
def A079316 (n : ℕ) : ℤ :=
  A079316.P891099002037030476.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4406 terms. -/
def A079316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079395.P17956439094879696764

`A000040(n+1)^11`
-/

namespace A079395.P17956439094879696764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 11

end

end A079395.P17956439094879696764

noncomputable section

/-- A079395: a(n) = prime(n)^11.

Offset 1, canonical program `A079395.P17956439094879696764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079395 (n : ℕ) : ℤ :=
  A079395.P17956439094879696764.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079416.P13839535260029094473

`round(A000040(n+1)/(n+1))`
-/

namespace A079416.P13839535260029094473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000040 (n + 1) : ℚ) / (n + 1 : ℚ))

end

end A079416.P13839535260029094473

noncomputable section

/-- A079416: a(n) = round(prime(n)/n).

Offset 1, canonical program `A079416.P13839535260029094473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079416 (n : ℕ) : ℤ :=
  A079416.P13839535260029094473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079592.P15799637742897185009

`p?[A062408(n)]`
-/

namespace A079592.P15799637742897185009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079592.P15799637742897185009

noncomputable section

/-- A079592: Primes p such that floor(Pi*p) is prime.

Offset 1, canonical program `A079592.P15799637742897185009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 982 terms. -/
def A079592 (n : ℕ) : ℤ :=
  A079592.P15799637742897185009.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 982 terms. -/
def A079592.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079593.P22308540367719002

`floor(π*p?[A062408(n)])`
-/

namespace A079593.P22308540367719002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ)⌋

end

end A079593.P22308540367719002

noncomputable section

/-- A079593: Primes equal to floor(Pi*x) where x is prime.

Offset 1, canonical program `A079593.P22308540367719002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 982 terms. -/
def A079593 (n : ℕ) : ℤ :=
  A079593.P22308540367719002.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 982 terms. -/
def A079593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079627.P9674258963199192435

`A002321(A000040(n+2)-1)-A002321(A000040(n+1))`
-/

namespace A079627.P9674258963199192435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (A000040 (n + 2) - 1).toNat - A002321 (A000040 (n + 1)).toNat

end

end A079627.P9674258963199192435

noncomputable section

/-- A079627: a(n) = Sum_{prime(n) < m < prime(n+1)} mu(m), where mu is the Moebius function (A008683).

Offset 1, canonical program `A079627.P9674258963199192435`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002321, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079627 (n : ℕ) : ℤ :=
  A079627.P9674258963199192435.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002321, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079627.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079675.P18407692208722494872

`A369837(n)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A079675.P18407692208722494872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A369837 n + a (n - 1)

end

end A079675.P18407692208722494872

noncomputable section

/-- A079675: a(1)=1; a(n)=sum(u=1,n-1,sum(v=1,u,sum(w=1,v,sum(x=1, w,sum(y=1,x,a(y)))))).

Offset 1, canonical program `A079675.P18407692208722494872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A079675 (n : ℕ) : ℤ :=
  A079675.P18407692208722494872.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A079675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079726.P14487602782044974592

`2*(n+1)-A156253(n+1)`
-/

namespace A079726.P14487602782044974592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A156253 (n + 1)

end

end A079726.P14487602782044974592

noncomputable section

/-- A079726: a(1)=1, a(n) is the smallest integer > a(n-1) such that a(n) is even if k(n)=1, a(n) is odd if k(n)=2, where k(n) denotes the n-th term of the Kolakoski sequence (A000002).

Offset 1, canonical program `A079726.P14487602782044974592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079726 (n : ℕ) : ℤ :=
  A079726.P14487602782044974592.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079821.P8748528471149396368

`ceil(10^n/A000040(n+1))*A000040(n+1)`
-/

namespace A079821.P8748528471149396368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(10 ^ n : ℚ) / (A000040 (n + 1) : ℚ)⌉ * A000040 (n + 1)

end

end A079821.P8748528471149396368

noncomputable section

/-- A079821: Smallest n-digit multiple of the n-th prime.

Offset 1, canonical program `A079821.P8748528471149396368`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A079821 (n : ℕ) : ℤ :=
  A079821.P8748528471149396368.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A079821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079867.P4677279557966897648

`A079866(n+1)^∑{e}[n+1, #]`
-/

namespace A079867.P4677279557966897648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079866 (n + 1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A079867.P4677279557966897648

noncomputable section

/-- A079867: a(1)=1 and for n>1: floor(n^(1/Omega(n)))^Omega(n), where Omega(n) is the total number of prime factors of n (A001222).

Offset 1, canonical program `A079867.P4677279557966897648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079867 (n : ℕ) : ℤ :=
  A079867.P4677279557966897648.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079869.P14772782790936458776

`A079868(n+1)^∑{e}[n+1, #]`
-/

namespace A079869.P14772782790936458776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079868 (n + 1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A079869.P14772782790936458776

noncomputable section

/-- A079869: a(1)=1 and for n>1: round(n^(1/Omega(n)))^Omega(n), where Omega(n) is the total number of prime factors of n (A001222).

Offset 1, canonical program `A079869.P14772782790936458776`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079869 (n : ℕ) : ℤ :=
  A079869.P14772782790936458776.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079878.P8509875506932410645

`A064434(n+1)+1`
-/

namespace A079878.P8509875506932410645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064434 (n + 1) + 1

end

end A079878.P8509875506932410645

noncomputable section

/-- A079878: a(1)=1, then a(n)=2*a(n-1) if 2*a(n-1)<=n, a(n)=2*a(n-1)-n otherwise.

Offset 1, canonical program `A079878.P8509875506932410645`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064434, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079878 (n : ℕ) : ℤ :=
  A079878.P8509875506932410645.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064434, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079878.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079980.P7549614995282751113

`A000930(n)*A182097(n)`
-/

namespace A079980.P7549614995282751113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n * A182097 n

end

end A079980.P7549614995282751113

noncomputable section

/-- A079980: Number of permutations of length 2n satisfying -k<=p(i)-i<=r and p(i)-i not in I, i=1..2n, with k=3, r=3, I={-2,0,1,2}. There is no one such permutation of length 2n+1.

Offset 0, canonical program `A079980.P7549614995282751113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. -/
def A079980 (n : ℕ) : ℤ :=
  A079980.P7549614995282751113.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 350 terms. -/
def A079980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079986.P17315729591086980002

`Δ[A008937(ceil(n/2))]²`
-/

namespace A079986.P17315729591086980002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 ⌈(n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A079986.P17315729591086980002

noncomputable section

/-- A079986: Number of permutations satisfying -k<=p(i)-i<=r and p(i)-i not in I, i=1..n, with k=3, r=3, I={-2,0,2}.

Offset 0, canonical program `A079986.P17315729591086980002`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 380 terms. -/
def A079986 (n : ℕ) : ℤ :=
  A079986.P17315729591086980002.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 380 terms. -/
def A079986.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080066.P16360937105414831017

`A000966(n+2)-A000966(n+1)`
-/

namespace A080066.P16360937105414831017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000966 (n + 2) - A000966 (n + 1)

end

end A080066.P16360937105414831017

noncomputable section

/-- A080066: First differences of A000966 (number of zeros that n! will never end in).

Offset 1, canonical program `A080066.P16360937105414831017`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000966, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080066 (n : ℕ) : ℤ :=
  A080066.P16360937105414831017.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000966, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080066.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080087.P17461455938318532576

`A027868(p?[xor(1, n)])`
-/

namespace A080087.P17461455938318532576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A080087.P17461455938318532576

noncomputable section

/-- A080087: Number of factors of 5 in the factorial of the n-th prime, counted with multiplicity.

Offset 1, canonical program `A080087.P17461455938318532576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A080087 (n : ℕ) : ℤ :=
  A080087.P17461455938318532576.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A080087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080165.P3889641676695789135

`p?[4*n+2-A006257(n)]`
-/

namespace A080165.P3889641676695789135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 2 : ℤ) - A006257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A080165.P3889641676695789135

noncomputable section

/-- A080165: Primes having initial digits "10" in binary representation.

Offset 1, canonical program `A080165.P3889641676695789135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080165 (n : ℕ) : ℤ :=
  A080165.P3889641676695789135.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080168.P14088762678047885577

`∩[A002145(n+1), A080166(n+1)]`
-/

namespace A080168.P14088762678047885577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A080168.P14088762678047885577

noncomputable section

/-- A080168: Primes beginning and ending with '11' in binary representation.

Offset 1, canonical program `A080168.P14088762678047885577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4155 terms. -/
def A080168 (n : ℕ) : ℤ :=
  (A080168.P14088762678047885577.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4155 terms. -/
def A080168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080225.P3972253355863549371

`∑{d}[n+1, val(A000203(#), 2*#)]`
-/

namespace A080225.P3972253355863549371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.valuation (A000203 d).toNat (2 * d)

end

end A080225.P3972253355863549371

noncomputable section

/-- A080225: Number of perfect divisors of n.

Offset 1, canonical program `A080225.P3972253355863549371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080225 (n : ℕ) : ℤ :=
  (A080225.P3972253355863549371.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080225.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080238.P10307931751839070652

`A007947(A001158(n+1))`
-/

namespace A080238.P10307931751839070652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A001158 (n + 1)).toNat

end

end A080238.P10307931751839070652

noncomputable section

/-- A080238: Largest squarefree number dividing sum of cubes of divisors of n.

Offset 1, canonical program `A080238.P10307931751839070652`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001158, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080238 (n : ℕ) : ℤ :=
  A080238.P10307931751839070652.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001158, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080238.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080261.P12885710306341528978

`xor(n, A003817(A000196(A004526(n))))`
-/

namespace A080261.P12885710306341528978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A003817 (A000196 (A004526 n).toNat).toNat)

end

end A080261.P12885710306341528978

noncomputable section

/-- A080261: Simple involution of natural numbers: complement [binary_width(n)/2] least significant bits in the binary expansion of n.

Offset 0, canonical program `A080261.P12885710306341528978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080261 (n : ℕ) : ℤ :=
  A080261.P12885710306341528978.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080267.P13654059577511968325

`∑{d}[n+1, A001787(n+1)/A001787(#)]`
-/

namespace A080267.P13654059577511968325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A001787 (n + 1) : ℚ) / (A001787 d : ℚ)

end

end A080267.P13654059577511968325

noncomputable section

/-- A080267: a(n) = Sum_{d divides n} d*2^(n-n/d).

Offset 1, canonical program `A080267.P13654059577511968325`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A080267 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A080267.P13654059577511968325.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A080267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080394.P11661718225289511357

`eq[n², A181861(n)]`
-/

namespace A080394.P11661718225289511357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080394.P11661718225289511357

noncomputable section

/-- A080394: Numbers k such that binomial(k, floor(k/2)) is divisible by k^2.

Offset 1, canonical program `A080394.P11661718225289511357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A080394 (n : ℕ) : ℤ :=
  (A080394.P11661718225289511357.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. -/
def A080394.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080566.P4000903305215095310

`∑[A079948(n)+a(n-1)]` with `a(0)=1`
-/

namespace A080566.P4000903305215095310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A079948 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080566.P4000903305215095310

noncomputable section

/-- A080566: Partial sums of A079000.

Offset 1, canonical program `A080566.P4000903305215095310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080566 (n : ℕ) : ℤ :=
  A080566.P4000903305215095310.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080572.P8137143480693309159

`A028310(n)²-A064194(A028310(n))`
-/

namespace A080572.P8137143480693309159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n ^ 2 - A064194 (A028310 n).toNat

end

end A080572.P8137143480693309159

noncomputable section

/-- A080572: Number of ordered pairs (i,j), 0 <= i,j < n, for which (i & j) is nonzero, where & is the bitwise AND operator.

Offset 0, canonical program `A080572.P8137143480693309159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080572 (n : ℕ) : ℤ :=
  A080572.P8137143480693309159.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080596.P10243355995937490864

`record[A079945(n)%(n²+2)]`
-/

namespace A080596.P10243355995937490864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079945 n) (n ^ 2 + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080596.P10243355995937490864

noncomputable section

/-- A080596: a(1)=1; for n >= 2, a(n) is smallest positive integer which is consistent with sequence being monotonically increasing and satisfying a(a(n)) = 2n+3.

Offset 1, canonical program `A080596.P10243355995937490864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080596 (n : ℕ) : ℤ :=
  A080596.P10243355995937490864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080639.P1103172142795349928

`A079948(n-1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A080639.P1103172142795349928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A079948 (n - 1) + a (n - 1)

end

end A080639.P1103172142795349928

noncomputable section

/-- A080639: a(1) = 1; for n>1, a(n) is taken to be the smallest integer greater than a(n-1) which is consistent with the condition "for n>1, n is a member of the sequence if and only if a(n) is even".

Offset 1, canonical program `A080639.P1103172142795349928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080639 (n : ℕ) : ℤ :=
  A080639.P1103172142795349928.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080672.P16756542385456588835

`∪[A080671(n+1), A147587(n)]`
-/

namespace A080672.P16756542385456588835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080672.P16756542385456588835

noncomputable section

/-- A080672: Numbers having divisors 2 or 3 or 5 or 7.

Offset 1, canonical program `A080672.P16756542385456588835`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080672 (n : ℕ) : ℤ :=
  (A080672.P16756542385456588835.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080678.P16778620546240237426

`∪[4*n, A053754(n+1)]-n`
-/

namespace A080678.P16778620546240237426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053754 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A080678.P16778620546240237426

noncomputable section

/-- A080678: Rooted at a(0)=0 and a(1)=a(2)=a(3)=1, 4 cases of index mod 4: a(4n)=4*a(n), a(4n+1)= 3*a(n)+a(n+1), a(4n+2) = 2*a(n)+2*a(n+1), and a(4n+3) = a(n)+3*a(n+1).

Offset 0, canonical program `A080678.P16778620546240237426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080678 (n : ℕ) : ℤ :=
  A080678.P16778620546240237426.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080678.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080746.P1652591669284040234

`a(n-1)+A059426(n)` with `a(0)=1, a(1)=4`
-/

namespace A080746.P1652591669284040234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + A059426 n

end

end A080746.P1652591669284040234

noncomputable section

/-- A080746: Inverse Aronson transform of lower Wythoff sequence A000201.

Offset 1, canonical program `A080746.P1652591669284040234`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080746 (n : ℕ) : ℤ :=
  A080746.P1652591669284040234.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080763.P7533574351288554750

`abs(2-A159684(n))`
-/

namespace A080763.P7533574351288554750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A159684 n|

end

end A080763.P7533574351288554750

noncomputable section

/-- A080763: Exchange 1's and 2's in the eta-sequence A006337.

Offset 1, canonical program `A080763.P7533574351288554750`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080763 (n : ℕ) : ℤ :=
  A080763.P7533574351288554750.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080883.P9881556766966149884

`abs(A048761(n+1)-n)`
-/

namespace A080883.P9881556766966149884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A048761 (n + 1) - (n : ℤ)|

end

end A080883.P9881556766966149884

noncomputable section

/-- A080883: Distance of n to next square.

Offset 0, canonical program `A080883.P9881556766966149884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080883 (n : ℕ) : ℤ :=
  A080883.P9881556766966149884.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081037.P705399685085553460

`(-1)^n*A045891(n)`
-/

namespace A081037.P705399685085553460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A045891 n

end

end A081037.P705399685085553460

noncomputable section

/-- A081037: Inverse binary transform of A027656.

Offset 0, canonical program `A081037.P705399685085553460`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. -/
def A081037 (n : ℕ) : ℤ :=
  A081037.P705399685085553460.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. -/
def A081037.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081083.P9286022400125285609

`record[(n+1)/(A007947(n+2)-A007947(n+1))]`
-/

namespace A081083.P9286022400125285609
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007947 (n + 2) - A007947 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081083.P9286022400125285609

noncomputable section

/-- A081083: Numbers n such that rad(n+1)=rad(n)+1, where rad(m)=A007947(m) is the squarefree kernel of m.

Offset 1, canonical program `A081083.P9286022400125285609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081083 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A081083.P9286022400125285609.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081223.P12973320959175258762

`A059556(n+1)-n`
-/

namespace A081223.P12973320959175258762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059556 (n + 1) - (n : ℤ)

end

end A081223.P12973320959175258762

noncomputable section

/-- A081223: Smallest k such that floor(k*gamma) begins with n (gamma=0.5772156649...).

Offset 1, canonical program `A081223.P12973320959175258762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081223 (n : ℕ) : ℤ :=
  A081223.P12973320959175258762.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081252.P15153065248392608660

`∑[A053646(n+1)]`
-/

namespace A081252.P15153065248392608660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081252.P15153065248392608660

noncomputable section

/-- A081252: Partial sums of A053646.

Offset 1, canonical program `A081252.P15153065248392608660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081252 (n : ℕ) : ℤ :=
  A081252.P15153065248392608660.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081283.P5094034475194814324

`∑[C(A052938(n), 3)]`
-/

namespace A081283.P5094034475194814324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A052938 n).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081283.P5094034475194814324

noncomputable section

/-- A081283: An interleaved sequence of pyramidal and polygonal numbers.

Offset 0, canonical program `A081283.P5094034475194814324`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081283 (n : ℕ) : ℤ :=
  (A081283.P5094034475194814324.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081290.P17861651078763600075

`comp[A000108(comp[A000108(n)+n]-n)+n]-n`
-/

namespace A081290.P17861651078763600075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n - n) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A081290.P17861651078763600075

noncomputable section

/-- A081290: a(0) = 0, and for n >=1, a(n) = the largest Catalan number <= n.

Offset 0, canonical program `A081290.P17861651078763600075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081290 (n : ℕ) : ℤ :=
  A081290.P17861651078763600075.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081370.P16224560842564592310

`eq[0, A081369(n+1)]+1`
-/

namespace A081370.P16224560842564592310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081369 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A081370.P16224560842564592310

noncomputable section

/-- A081370: Numbers k such that binomial(k^2, k) reduced mod k^2 is 0.

Offset 1, canonical program `A081370.P16224560842564592310`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. -/
def A081370 (n : ℕ) : ℤ :=
  (A081370.P16224560842564592310.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 191 terms. -/
def A081370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081477.P392372473796327645

`∑[A104521(n)+1]`
-/

namespace A081477.P392372473796327645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104521 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081477.P392372473796327645

noncomputable section

/-- A081477: Complement of A086377.

Offset 1, canonical program `A081477.P392372473796327645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081477 (n : ℕ) : ℤ :=
  A081477.P392372473796327645.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081534.P18284178302565562629

`eq[A036987(n), A069513(n+1)]`
-/

namespace A081534.P18284178302565562629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081534.P18284178302565562629

noncomputable section

/-- A081534: Numbers k such that 1 + 2 ... + k divides lcm(1,2,...,k), or, in other words, lcm(1,2,...,k) is a multiple of the k-th triangular number.

Offset 1, canonical program `A081534.P18284178302565562629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081534 (n : ℕ) : ℤ :=
  (A081534.P18284178302565562629.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081534.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081610.P55257795083380857

`∑[1-A039966(n)]`
-/

namespace A081610.P55257795083380857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A039966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081610.P55257795083380857

noncomputable section

/-- A081610: Number of numbers <= n having at least one 2 in their ternary representation.

Offset 0, canonical program `A081610.P55257795083380857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081610 (n : ℕ) : ℤ :=
  A081610.P55257795083380857.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081611.P15437231046551581943

`a(n-1)+A039966(n)` with `a(0)=1`
-/

namespace A081611.P15437231046551581943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A039966 n

end

end A081611.P15437231046551581943

noncomputable section

/-- A081611: Number of numbers <= n having no 2 in their ternary representation.

Offset 0, canonical program `A081611.P15437231046551581943`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039966, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A081611 (n : ℕ) : ℤ :=
  A081611.P15437231046551581943.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039966, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A081611.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A081642.P13471767013185929231

`filter[A028837(n+1), A049240(#)]`
-/

namespace A081642.P13471767013185929231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A081642.P13471767013185929231

noncomputable section

/-- A081642: Integers congruent to 0, 1 or 4 (mod 9) which are not squares.

Offset 1, canonical program `A081642.P13471767013185929231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9865 terms. -/
def A081642 (n : ℕ) : ℤ :=
  A081642.P13471767013185929231.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9865 terms. -/
def A081642.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081643.P14889491825710240957

`eq[and(10, A323724(n)), A000122(n)]`
-/

namespace A081643.P14889491825710240957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 10 (A323724 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081643.P14889491825710240957

noncomputable section

/-- A081643: Integers congruent to 0, 1, 4 or 9 (mod 16) which are not squares.

Offset 1, canonical program `A081643.P14889491825710240957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2400 terms. -/
def A081643 (n : ℕ) : ℤ :=
  (A081643.P14889491825710240957.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2400 terms. -/
def A081643.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081668.P14726056176343545514

`A000984(gcd(ceil(n²/2), ∑[n]))`
-/

namespace A081668.P14726056176343545514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (Int.gcd ⌈(n ^ 2 : ℚ) / 2⌉ ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A081668.P14726056176343545514

noncomputable section

/-- A081668: Expansion of 2*sinh(x) + BesselI_0(2*x).

Offset 0, canonical program `A081668.P14726056176343545514`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A081668 (n : ℕ) : ℤ :=
  A081668.P14726056176343545514.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. -/
def A081668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081669.P7664105217993223069

`A002426(n)+and(-2, 2^n)`
-/

namespace A081669.P7664105217993223069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n + Int.land (-2) (2 ^ n : ℤ)

end

end A081669.P7664105217993223069

noncomputable section

/-- A081669: Expansion of exp(2x)+exp(x)BesselI_0(2x).

Offset 0, canonical program `A081669.P7664105217993223069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A081669 (n : ℕ) : ℤ :=
  A081669.P7664105217993223069.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. -/
def A081669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081696.P144682512311677634

`A000984(n)-A176085(n)`
-/

namespace A081696.P144682512311677634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A176085 n

end

end A081696.P144682512311677634

noncomputable section

/-- A081696: Expansion of 1/(x + sqrt(1-4x)).

Offset 0, canonical program `A081696.P144682512311677634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A081696 (n : ℕ) : ℤ :=
  A081696.P144682512311677634.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A081696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081758.P13222533557675849893

`A001414(A001414(n+2))`
-/

namespace A081758.P13222533557675849893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A001414 (n + 2)).toNat

end

end A081758.P13222533557675849893

noncomputable section

/-- A081758: Sum of prime factors (with repetition) of sum of prime factors (with repetition) of n.

Offset 2, canonical program `A081758.P13222533557675849893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081758 (n : ℕ) : ℤ :=
  A081758.P13222533557675849893.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081841.P2164666565118837986

`comp[A001954(n)+2]+n`
-/

namespace A081841.P2164666565118837986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001954 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A081841.P2164666565118837986

noncomputable section

/-- A081841: a(1)=0, a(n)=a(n-1)+3 if n is already in the sequence, a(n)=a(n-1)+2 otherwise.

Offset 1, canonical program `A081841.P2164666565118837986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081841 (n : ℕ) : ℤ :=
  (A081841.P2164666565118837986.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082023.P820682903743471019

`ceil(A016035(abs(1-n)+1)/2)`
-/

namespace A082023.P820682903743471019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A016035 (|1 - (n : ℤ)| + 1).toNat : ℚ) / 2⌉

end

end A082023.P820682903743471019

noncomputable section

/-- A082023: Number of partitions of n into 2 parts which are not relatively prime.

Offset 0, canonical program `A082023.P820682903743471019`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082023 (n : ℕ) : ℤ :=
  A082023.P820682903743471019.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082050.P7404403862460474574

`∑{d}[n+1, #*A011655(#-1)]`
-/

namespace A082050.P7404403862460474574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A011655 (d - 1)

end

end A082050.P7404403862460474574

noncomputable section

/-- A082050: Sum of divisors of n that are not of the form 3k+1.

Offset 1, canonical program `A082050.P7404403862460474574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082050 (n : ℕ) : ℤ :=
  A082050.P7404403862460474574.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082050.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082051.P2858432596118488346

`∑{d}[n+1, #*A017450(#)%3]`
-/

namespace A082051.P2858432596118488346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * Int.tmod (A017450 d) 3

end

end A082051.P2858432596118488346

noncomputable section

/-- A082051: Sum of divisors of n that are not of the form 3k+2.

Offset 1, canonical program `A082051.P2858432596118488346`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082051 (n : ℕ) : ℤ :=
  A082051.P2858432596118488346.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082051.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082052.P17956952017327585217

`∑{d}[n+1, #*A166486(#-1)]`
-/

namespace A082052.P17956952017327585217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A166486 (d - 1)

end

end A082052.P17956952017327585217

noncomputable section

/-- A082052: Sum of divisors of n that are not of the form 4k+1.

Offset 1, canonical program `A082052.P17956952017327585217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082052 (n : ℕ) : ℤ :=
  A082052.P17956952017327585217.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082075.P3357822425675514285

`A002145(n+2)-A002145(n+1)`
-/

namespace A082075.P3357822425675514285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 2) - A002145 (n + 1)

end

end A082075.P3357822425675514285

noncomputable section

/-- A082075: First differences of primes of the form 4*k+3 (A002145).

Offset 1, canonical program `A082075.P3357822425675514285`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082075 (n : ℕ) : ℤ :=
  A082075.P3357822425675514285.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082075.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082076.P46094791616447460

`(A002145(n+2)-A002145(n+1))/4`
-/

namespace A082076.P46094791616447460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002145 (n + 2) - A002145 (n + 1) : ℚ) / 4

end

end A082076.P46094791616447460

noncomputable section

/-- A082076: First differences of primes of the form 4*k+3 (A002145), divided by 4.

Offset 1, canonical program `A082076.P46094791616447460`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082076 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A082076.P46094791616447460.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082076.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082091.P12026919801001082135

`1+a(A005361(n+1)-1)` with `a(0)=1`
-/

namespace A082091.P12026919801001082135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  1 + a (A005361 (n + 1) - 1).toNat

end

end A082091.P12026919801001082135

noncomputable section

/-- A082091: a(n) = one more than the number of iterations of A005361 needed to reach 1 from the starting value n.

Offset 1, canonical program `A082091.P12026919801001082135`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082091 (n : ℕ) : ℤ :=
  (A082091.P12026919801001082135.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082091.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082145.P2096171870735177110

`C(2*n+3, n)*A011782(n)`
-/

namespace A082145.P2096171870735177110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 3) n : ℤ) * A011782 n

end

end A082145.P2096171870735177110

noncomputable section

/-- A082145: A subdiagonal of number array A082137.

Offset 0, canonical program `A082145.P2096171870735177110`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A082145 (n : ℕ) : ℤ :=
  A082145.P2096171870735177110.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A082145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082287.P8276136193256728625

`∑[char[A082186(n+1)]]+1`
-/

namespace A082287.P8276136193256728625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082186 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A082287.P8276136193256728625

noncomputable section

/-- A082287: a(1) = 1; for n > 1, n appears omega(n) times, where omega(n)=A001221(n) is the number of distinct prime factors of n, a(1)=1.

Offset 1, canonical program `A082287.P8276136193256728625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082287 (n : ℕ) : ℤ :=
  (A082287.P8276136193256728625.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082287.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082299.P3935425848195700939

`gcd(n+1, A001414(n+1))`
-/

namespace A082299.P3935425848195700939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A001414 (n + 1))

end

end A082299.P3935425848195700939

noncomputable section

/-- A082299: Greatest common divisor of n and its sum of prime factors (with repetition).

Offset 1, canonical program `A082299.P3935425848195700939`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082299 (n : ℕ) : ℤ :=
  (A082299.P3935425848195700939.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082299.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082301.P12665611665047625573

`A008706(n/A028310(n))*A078009(n)`
-/

namespace A082301.P12665611665047625573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (SequenceMachineLib.roundAway ((n : ℚ) / (A028310 n : ℚ))).toNat * A078009 n

end

end A082301.P12665611665047625573

noncomputable section

/-- A082301: G.f.: (1 - 4*x - sqrt(16*x^2 - 12*x + 1))/(2*x).

Offset 0, canonical program `A082301.P12665611665047625573`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A082301 (n : ℕ) : ℤ :=
  A082301.P12665611665047625573.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A082301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082388.P15289165366183734569

`A006012(val(n+1, 2))`
-/

namespace A082388.P15289165366183734569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 (SequenceMachineLib.valuation (n + 1) 2)

end

end A082388.P15289165366183734569

noncomputable section

/-- A082388: a(1) = 1, a(2) = 2; further terms are defined by rules that for k >= 2, a(2^k-i) = a(2^k+i) for 1 <= i <= 2^k-1 and a(2^k) = a(2^(k-1)) + Sum_{i < 2^k} a(i).

Offset 1, canonical program `A082388.P15289165366183734569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082388 (n : ℕ) : ℤ :=
  A082388.P15289165366183734569.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082388.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082397.P14776032934976419240

`∑[A342912(n)]`
-/

namespace A082397.P14776032934976419240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342912 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082397.P14776032934976419240

noncomputable section

/-- A082397: Number of directed aggregates of height <= 2 with n cells.

Offset 1, canonical program `A082397.P14776032934976419240`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A082397 (n : ℕ) : ℤ :=
  A082397.P14776032934976419240.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A082397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082398.P13732524671903596160

`1-char[1]-n*A152163(2*n)`
-/

namespace A082398.P13732524671903596160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - (n : ℤ) * A152163 (2 * n)

end

end A082398.P13732524671903596160

noncomputable section

/-- A082398: Number of directed, diagonally convex polyominoes with n cells.

Offset 1, canonical program `A082398.P13732524671903596160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A082398 (n : ℕ) : ℤ :=
  A082398.P13732524671903596160.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. -/
def A082398.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082458.P9280145308101820266

`lcm(ceil(n/2), A007526(floor(n/2)))`
-/

namespace A082458.P9280145308101820266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌈(n : ℚ) / 2⌉ (A007526 ⌊(n : ℚ) / 2⌋.toNat)

end

end A082458.P9280145308101820266

noncomputable section

/-- A082458: Multiply by 1, add 1, multiply by 2, add 2, etc., starting with 0.

Offset 0, canonical program `A082458.P9280145308101820266`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A082458 (n : ℕ) : ℤ :=
  (A082458.P9280145308101820266.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. -/
def A082458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082476.P11184737203512620716

`A061200(A007947(n+1))`
-/

namespace A082476.P11184737203512620716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061200 (A007947 (n + 1)).toNat

end

end A082476.P11184737203512620716

noncomputable section

/-- A082476: a(n) = Sum_{d|n} mu(d)^2*tau(d)^2.

Offset 1, canonical program `A082476.P11184737203512620716`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061200, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082476 (n : ℕ) : ℤ :=
  A082476.P11184737203512620716.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061200, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082476.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082511.P12870741398205396426

`2*A094918(n+1)+1`
-/

namespace A082511.P12870741398205396426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094918 (n + 1) + 1

end

end A082511.P12870741398205396426

noncomputable section

/-- A082511: a(n) = 3^n mod 2n.

Offset 1, canonical program `A082511.P12870741398205396426`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082511 (n : ℕ) : ℤ :=
  A082511.P12870741398205396426.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082530.P17575170684115903491

`A004151(5*a(n-1))+1` with `a(0)=1`
-/

namespace A082530.P17575170684115903491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004151 (5 * a (n - 1)).toNat + 1

end

end A082530.P17575170684115903491

noncomputable section

/-- A082530: a(1)=1, a(n)=5*a(n-1)+1 if a(n-1) is odd, a(n)=a(n-1)/2+1 otherwise.

Offset 1, canonical program `A082530.P17575170684115903491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082530 (n : ℕ) : ℤ :=
  A082530.P17575170684115903491.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082530.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082560.P3511378537859311582

`A059841(n)+gcd(2, n)*a(floor((n+1)/2)-1)+1` with `a(0)=1`
-/

namespace A082560.P3511378537859311582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A059841 n + ((Nat.gcd 2 n : ℤ) * a (⌊(n + 1 : ℚ) / 2⌋ - 1).toNat + 1)

end

end A082560.P3511378537859311582

noncomputable section

/-- A082560: a(1)=1, a(n)=2*a(n-1) if n is odd, or a(n)=a(n/2)+1 if n is even.

Offset 1, canonical program `A082560.P3511378537859311582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082560 (n : ℕ) : ℤ :=
  A082560.P3511378537859311582.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082560.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082590.P7174176292408782637

`A000984(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A082590.P7174176292408782637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000984 n + 2 * a (n - 1)

end

end A082590.P7174176292408782637

noncomputable section

/-- A082590: Expansion of 1/((1 - 2*x)*sqrt(1 - 4*x)).

Offset 0, canonical program `A082590.P7174176292408782637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A082590 (n : ℕ) : ℤ :=
  A082590.P7174176292408782637.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A082590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082662.P8548728967217920194

`∑[a(n-1)*A000045(floor((n+1)/a(n-1)))]` with `a(0)=1`
-/

namespace A082662.P8548728967217920194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) * A000045 ⌊(n + 1 : ℚ) / (f1 (n - 1) : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A082662.P8548728967217920194

noncomputable section

/-- A082662: Numbers k such that the odd part of k is less than sqrt(2k).

Offset 1, canonical program `A082662.P8548728967217920194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082662 (n : ℕ) : ℤ :=
  A082662.P8548728967217920194.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082662.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082693.P2141410081354610043

`A000079(A053615(n))`
-/

namespace A082693.P2141410081354610043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A053615 n).toNat

end

end A082693.P2141410081354610043

noncomputable section

/-- A082693: Pyramidal sequence built with powers of 2.

Offset 0, canonical program `A082693.P2141410081354610043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082693 (n : ℕ) : ℤ :=
  A082693.P2141410081354610043.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082693.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082898.P8644397962785130186

`A082895(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082898.P8644397962785130186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082895 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A082898.P8644397962785130186

noncomputable section

/-- A082898: a(n) = A082895(n)/n, where A082895(n) is the closest number to sigma(n) which is divisible by n.

Offset 1, canonical program `A082898.P8644397962785130186`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082895, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082898 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A082898.P8644397962785130186.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082895, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082898.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082901.P13729791713076633821

`A082895(n+1)-A000203(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A082901.P13729791713076633821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082895 (n + 1) - A000203 (n + 1)

end

end A082901.P13729791713076633821

noncomputable section

/-- A082901: a(n) = A082895(n)-A000203(n); the distance from sigma(n) to that multiple of n which is closest to sigma(n), positive terms for cases where the closest multiple is after sigma(n), and negative terms where it is before sigma(n). In case of ties, a positive term is selected.

Offset 1, canonical program `A082901.P13729791713076633821`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082895, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082901 (n : ℕ) : ℤ :=
  A082901.P13729791713076633821.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A082895, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082901.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082913.P7963033786630401460

`A002387(2^n)`
-/

namespace A082913.P7963033786630401460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002387 (2 ^ n)

end

end A082913.P7963033786630401460

noncomputable section

/-- A082913: Least k such that H(k) > 2^n, where H(k) is the harmonic number Sum_{i=1..k} 1/i.

Offset 0, canonical program `A082913.P7963033786630401460`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002387, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082913 (n : ℕ) : ℤ :=
  A082913.P7963033786630401460.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002387, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082913.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082974.P7990936776049434385

`(A000040(n+1)+a(n-1))%A000040(n+2)` with `a(0)=2`
-/

namespace A082974.P7990936776049434385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod (A000040 (n + 1) + a (n - 1)) (A000040 (n + 2))

end

end A082974.P7990936776049434385

noncomputable section

/-- A082974: a(n) = (a(n-1) + p(n)) mod p(n+1).

Offset 1, canonical program `A082974.P7990936776049434385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A082974 (n : ℕ) : ℤ :=
  A082974.P7990936776049434385.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A082974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083036.P2474658439335323916

`∑[A083035(n+1)]`
-/

namespace A083036.P2474658439335323916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083036.P2474658439335323916

noncomputable section

/-- A083036: Partial sums of A083035.

Offset 1, canonical program `A083036.P2474658439335323916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083036 (n : ℕ) : ℤ :=
  A083036.P2474658439335323916.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083055.P8386572612985681419

`∑[A083054(n+1)%2]`
-/

namespace A083055.P8386572612985681419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083054 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083055.P8386572612985681419

noncomputable section

/-- A083055: a(n) = cardinality{ k<=n / A083054(k)=1}.

Offset 1, canonical program `A083055.P8386572612985681419`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083055 (n : ℕ) : ℤ :=
  A083055.P8386572612985681419.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083055.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083174.P3712066604536312936

`p?[xor(1, n)+1]*A080512(n+1)`
-/

namespace A083174.P3712066604536312936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) * A080512 (n + 1)

end

end A083174.P3712066604536312936

noncomputable section

/-- A083174: Leading diagonal of A083173.

Offset 1, canonical program `A083174.P3712066604536312936`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7255 terms. -/
def A083174 (n : ℕ) : ℤ :=
  A083174.P3712066604536312936.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7255 terms. -/
def A083174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083176.P12552362125242154043

`A083175(n+1)/(n+1)`
-/

namespace A083176.P12552362125242154043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083175 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A083176.P12552362125242154043

noncomputable section

/-- A083176: Arithmetic means of rows of A083173.

Offset 1, canonical program `A083176.P12552362125242154043`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083175, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083176 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A083176.P12552362125242154043.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083175, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083176.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083236.P16899612719890715469

`A000040(n)-a(n-1)` with `a(0)=2`
-/

namespace A083236.P16899612719890715469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000040 n - a (n - 1)

end

end A083236.P16899612719890715469

noncomputable section

/-- A083236: First order recursion: a(0)=2; a(n) = prime(n) - a(n-1).

Offset 0, canonical program `A083236.P16899612719890715469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083236 (n : ℕ) : ℤ :=
  A083236.P16899612719890715469.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083237.P3865752581450416523

`A000040(n)-a(n-1)` with `a(0)=5`
-/

namespace A083237.P3865752581450416523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A000040 n - a (n - 1)

end

end A083237.P3865752581450416523

noncomputable section

/-- A083237: First order recursion: a(0)=5; a(n)=prime(n)-a(n-1).

Offset 0, canonical program `A083237.P3865752581450416523`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083237 (n : ℕ) : ℤ :=
  A083237.P3865752581450416523.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083241.P84878704181718384

`Δ[A000040(n-1)+a(n-4)]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A083241.P84878704181718384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0] fun n f1 =>
  A000040 (n - 1) + f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083241.P84878704181718384

noncomputable section

/-- A083241: a(n) + a(n-1) + a(n-2) + a(n-3) = prime(n), n>2, a(0)=a(1)=a(2)=0;.

Offset 0, canonical program `A083241.P84878704181718384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083241 (n : ℕ) : ℤ :=
  A083241.P84878704181718384.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083266.P13941034721229126041

`A000203(n+1)+A023896(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A083266.P13941034721229126041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A023896 (n + 1) - 1

end

end A083266.P13941034721229126041

noncomputable section

/-- A083266: Sum of related numbers (counted in A073757) belonging to n: a(n) = A000203(n) + A023896(n) - 1; related = {divisor-set, RRS}.

Offset 1, canonical program `A083266.P13941034721229126041`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023896, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083266 (n : ℕ) : ℤ :=
  A083266.P13941034721229126041.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023896, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083266.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083379.P11455418921540216668

`∑[A083377(n+1)+1-A017936(n+1)]`
-/

namespace A083379.P11455418921540216668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083377 (n + 1) + (1 - A017936 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083379.P11455418921540216668

noncomputable section

/-- A083379: a(n) = the number of squares with at most n digits and first digit 1.

Offset 1, canonical program `A083379.P11455418921540216668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A083379 (n : ℕ) : ℤ :=
  A083379.P11455418921540216668.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. -/
def A083379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083413.P1377370701522611795

`and(-3, ∑{d}[n, #*A011782(#)])`
-/

namespace A083413.P1377370701522611795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A011782 d)

end

end A083413.P1377370701522611795

noncomputable section

/-- A083413: a(n) = Sum_{d|n} d*2^(d-1) for n > 0.

Offset 0, canonical program `A083413.P1377370701522611795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A083413 (n : ℕ) : ℤ :=
  A083413.P1377370701522611795.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. -/
def A083413.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083460.P13021508461951737120

`1+A083456(n+1)^(n+1)`
-/

namespace A083460.P13021508461951737120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A083456 (n + 1) ^ (n + 1)

end

end A083460.P13021508461951737120

noncomputable section

/-- A083460: Palindromes arising in A083456.

Offset 1, canonical program `A083460.P13021508461951737120`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083456, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083460 (n : ℕ) : ℤ :=
  A083460.P13021508461951737120.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083456, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083460.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083461.P7183069756666971818

`A083457(n+1)^(n+1)-1`
-/

namespace A083461.P7183069756666971818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083457 (n + 1) ^ (n + 1) - 1

end

end A083461.P7183069756666971818

noncomputable section

/-- A083461: Palindromes arising in A083457.

Offset 1, canonical program `A083461.P7183069756666971818`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083457, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083461 (n : ℕ) : ℤ :=
  A083461.P7183069756666971818.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083457, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A083461.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083511.P12398400288618322435

`11*A195313(n)+11`
-/

namespace A083511.P12398400288618322435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A195313 n + 11

end

end A083511.P12398400288618322435

noncomputable section

/-- A083511: Members of A000124 which are multiples of 11.

Offset 0, canonical program `A083511.P12398400288618322435`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083511 (n : ℕ) : ℤ :=
  A083511.P12398400288618322435.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083515.P15738582638108618042

`ceil(sqrt(A000042(n+1)))²-A000042(n+1)`
-/

namespace A083515.P15738582638108618042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A000042 (n + 1) : ℝ)⌉ ^ 2 - A000042 (n + 1)

end

end A083515.P15738582638108618042

noncomputable section

/-- A083515: Smallest number k such that R(n) + k is a square, where R(n) = A002275.

Offset 1, canonical program `A083515.P15738582638108618042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A083515 (n : ℕ) : ℤ :=
  A083515.P15738582638108618042.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A083515.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083528.P17588683822829383858

`A016813(A094920(n+1))%Δ[A027691(n)]`
-/

namespace A083528.P17588683822829383858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016813 (A094920 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A083528.P17588683822829383858

noncomputable section

/-- A083528: a(n) = 5^n mod 2*n.

Offset 1, canonical program `A083528.P17588683822829383858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A083528 (n : ℕ) : ℤ :=
  A083528.P17588683822829383858.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A083528.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083537.P9698171235928535448

`char[A109043(n)]+a(A028242(n)-1)` with `a(0)=0, a(1)=0`
-/

namespace A083537.P9698171235928535448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (A028242 n - 1).toNat

end

end A083537.P9698171235928535448

noncomputable section

/-- A083537: a(0) = a(1) = 0, a(2n) = a(n)+1, a(2n+1) = a(n-1).

Offset 0, canonical program `A083537.P9698171235928535448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A083537 (n : ℕ) : ℤ :=
  (A083537.P9698171235928535448.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A083537.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083657.P12921516313600058634

`∑[floor(sqrt(3)*A022838(n+1))]`
-/

namespace A083657.P12921516313600058634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (3 : ℝ) * (A022838 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083657.P12921516313600058634

noncomputable section

/-- A083657: a(n) = Sum_{i=1..n} floor(r*floor(r*i)) where r=sqrt(3).

Offset 1, canonical program `A083657.P12921516313600058634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083657 (n : ℕ) : ℤ :=
  A083657.P12921516313600058634.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083707.P10638826215811034503

`A213389(n)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A083707.P10638826215811034503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A213389 n + a (n - 3)

end

end A083707.P10638826215811034503

noncomputable section

/-- A083707: G.f.: (x+4*x^3+x^5)/((1-x)^2*(1-x^2)^2*(1-x^3)).

Offset 0, canonical program `A083707.P10638826215811034503`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083707 (n : ℕ) : ℤ :=
  A083707.P10638826215811034503.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083709.P18036757815071533500

`∑[Δ[A004396(n)]-A317300(n)]`
-/

namespace A083709.P18036757815071533500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A317300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A083709.P18036757815071533500

noncomputable section

/-- A083709: G.f.: (1-x+2*x^2+2*x^3+2*x^4-x^5+x^6)/((1-x)*(1-x^2)^2*(1-x^3)).

Offset 0, canonical program `A083709.P18036757815071533500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083709 (n : ℕ) : ℤ :=
  A083709.P18036757815071533500.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083709.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084052.P15896097742026339928

`A000030(ceil((n+1)/5))%2`
-/

namespace A084052.P15896097742026339928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000030 ⌈(n + 1 : ℚ) / 5⌉.toNat) 2

end

end A084052.P15896097742026339928

noncomputable section

/-- A084052: 2*n digit-reversed mod 2.

Offset 5, canonical program `A084052.P15896097742026339928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084052 (n : ℕ) : ℤ :=
  A084052.P15896097742026339928.a (n - 5)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084183.P9988908318949352096

`round(A154383(n+1)/3)`
-/

namespace A084183.P9988908318949352096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A154383 (n + 1) : ℚ) / 3)

end

end A084183.P9988908318949352096

noncomputable section

/-- A084183: Jacobsthal reverse-pair sequence.

Offset 0, canonical program `A084183.P9988908318949352096`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A084183 (n : ℕ) : ℤ :=
  A084183.P9988908318949352096.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A084183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084236.P206726255755332926

`A002321(2^n)`
-/

namespace A084236.P206726255755332926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (2 ^ n)

end

end A084236.P206726255755332926

noncomputable section

/-- A084236: a(n) = M(2^n), where M(n) is Mertens's function, A002321.

Offset 0, canonical program `A084236.P206726255755332926`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002321, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084236 (n : ℕ) : ℤ :=
  A084236.P206726255755332926.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002321, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A084236.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A084266.P5090138000761302846

`A084264(n)+A001787(n)`
-/

namespace A084266.P5090138000761302846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084264 n + A001787 n

end

end A084266.P5090138000761302846

noncomputable section

/-- A084266: Binomial transform of A084265.

Offset 0, canonical program `A084266.P5090138000761302846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A084266 (n : ℕ) : ℤ :=
  A084266.P5090138000761302846.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A084266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084351.P16633846142287889478

`lcm(2*n+1-n, A000032(C(2, n+2))²)`
-/

namespace A084351.P16633846142287889478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((2 * n + 1 : ℤ) - (n : ℤ)) (A000032 (Nat.choose 2 (n + 2)) ^ 2)

end

end A084351.P16633846142287889478

noncomputable section

/-- A084351: Length of period of sequences r(k,n)=floor(sin(1)*k!)-n*floor(sin(1)*k!/n) when n is fixed.

Offset 1, canonical program `A084351.P16633846142287889478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084351 (n : ℕ) : ℤ :=
  (A084351.P16633846142287889478.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084354.P18237609210739072839

`p?[n*(A066247(A051801(n)+1)+1)]`
-/

namespace A084354.P18237609210739072839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A066247 (A051801 n + 1).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A084354.P18237609210739072839

noncomputable section

/-- A084354: Primes whose product of nonzero digits + 1 is prime.

Offset 1, canonical program `A084354.P18237609210739072839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 484 terms. -/
def A084354 (n : ℕ) : ℤ :=
  A084354.P18237609210739072839.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 484 terms. -/
def A084354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084359.P13508041457539725378

`A080513(n)-A008619(A028391(n))`
-/

namespace A084359.P13508041457539725378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n - A008619 (A028391 n).toNat

end

end A084359.P13508041457539725378

noncomputable section

/-- A084359: a(n) = number of partitions of n into pair of parts n=p+q, p>=q>=1, with p-q equal to a square >= 0.

Offset 1, canonical program `A084359.P13508041457539725378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084359 (n : ℕ) : ℤ :=
  A084359.P13508041457539725378.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084359.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084439.P16361707424774785906

`∑[∑[A051263(n)]]`
-/

namespace A084439.P16361707424774785906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051263 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084439.P16361707424774785906

noncomputable section

/-- A084439: Number of triangular partitions of n of order 3.

Offset 0, canonical program `A084439.P16361707424774785906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084439 (n : ℕ) : ℤ :=
  A084439.P16361707424774785906.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084636.P12201687113205627878

`A084635(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A084636.P12201687113205627878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A084635 (n - 1) + a (n - 1)

end

end A084636.P12201687113205627878

noncomputable section

/-- A084636: Binomial transform of (1,0,1,0,1,0,2,0,2,0,2,0,...).

Offset 0, canonical program `A084636.P12201687113205627878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A084636 (n : ℕ) : ℤ :=
  A084636.P12201687113205627878.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A084636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084638.P12399577324000291172

`A084637(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A084638.P12399577324000291172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A084637 (n - 1) + a (n - 1)

end

end A084638.P12399577324000291172

noncomputable section

/-- A084638: Binomial transform of (1,0,1,0,1,0,1,0,2,0,2,0,2,....).

Offset 0, canonical program `A084638.P12399577324000291172`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A084638 (n : ℕ) : ℤ :=
  A084638.P12399577324000291172.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A084638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084870.P13503325003942060983

`A092880(n)+A047707(n)`
-/

namespace A084870.P13503325003942060983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092880 n + A047707 n

end

end A084870.P13503325003942060983

noncomputable section

/-- A084870: Number of 3-multiantichains of an n-set.

Offset 0, canonical program `A084870.P13503325003942060983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A084870 (n : ℕ) : ℤ :=
  A084870.P13503325003942060983.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 112 terms. -/
def A084870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085003.P369311427931601851

`∑[A000035(∑[2-A001468(n)])]`
-/

namespace A085003.P369311427931601851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A001468 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085003.P369311427931601851

noncomputable section

/-- A085003: Partial sums of A085002.

Offset 1, canonical program `A085003.P369311427931601851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085003 (n : ℕ) : ℤ :=
  A085003.P369311427931601851.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085003.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085008.P10450020112681363302

`9*A085007(n+1)-11*(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A085008.P10450020112681363302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A085007 (n + 1) - (11 * (n + 1) : ℤ)

end

end A085008.P10450020112681363302

noncomputable section

/-- A085008: a(n)=9*A085007(n)-11*n.

Offset 1, canonical program `A085008.P10450020112681363302`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085007, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A085008 (n : ℕ) : ℤ :=
  A085008.P10450020112681363302.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085007, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A085008.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A085010.P14056434388180856817

`A074854(2^n)`
-/

namespace A085010.P14056434388180856817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074854 (2 ^ n)

end

end A085010.P14056434388180856817

noncomputable section

/-- A085010: a(n)=2^(2^n)*sum(k=0,n,1/2^(2^k)).

Offset 0, canonical program `A085010.P14056434388180856817`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074854, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A085010 (n : ℕ) : ℤ :=
  A085010.P14056434388180856817.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A074854, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A085010.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A085111.P5442241482945459638

`A037223(n)+A009531(n)`
-/

namespace A085111.P5442241482945459638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037223 n + A009531 n

end

end A085111.P5442241482945459638

noncomputable section

/-- A085111: a(1) = 1; then add 1, multiply by 2, subtract 3, multiply by 4, add 5, multiply by 6, subtract 7, multiply by 8 and so on.

Offset 1, canonical program `A085111.P5442241482945459638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A085111 (n : ℕ) : ℤ :=
  A085111.P5442241482945459638.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. -/
def A085111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085270.P372733221411449555

`round(log(A005053(n)))`
-/

namespace A085270.P372733221411449555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A005053 n : ℝ))

end

end A085270.P372733221411449555

noncomputable section

/-- A085270: Integer part of the conversion from miles to kilometers.

Offset 0, canonical program `A085270.P372733221411449555`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A085270 (n : ℕ) : ℤ :=
  A085270.P372733221411449555.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A085270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085363.P10566471288067803853

`A051708(n+1)*A051708(n²%(n+1)+1)`
-/

namespace A085363.P10566471288067803853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051708 (n + 1) * A051708 (n ^ 2 % (n + 1) + 1)

end

end A085363.P10566471288067803853

noncomputable section

/-- A085363: a(0)=1, for n>0: a(n) = 4*9^(n-1) - (1/2)*Sum_{i=1..n-1} a(i)*a(n-i).

Offset 0, canonical program `A085363.P10566471288067803853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A085363 (n : ℕ) : ℤ :=
  A085363.P10566471288067803853.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. -/
def A085363.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085369.P6925270450057404638

`char[A006594(n+1)-1]`
-/

namespace A085369.P6925270450057404638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006594 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A085369.P6925270450057404638

noncomputable section

/-- A085369: Cutting sequence for 1/e.

Offset 1, canonical program `A085369.P6925270450057404638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085369 (n : ℕ) : ℤ :=
  (A085369.P6925270450057404638.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085370.P6391123702184118906

`eq[val(n+1, 3), A070635(n+1)]+1`
-/

namespace A085370.P6391123702184118906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A085370.P6391123702184118906

noncomputable section

/-- A085370: Niven (or Harshad) numbers that are not divisible by 3.

Offset 1, canonical program `A085370.P6391123702184118906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 455 terms. -/
def A085370 (n : ℕ) : ℤ :=
  (A085370.P6391123702184118906.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 455 terms. -/
def A085370.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085371.P12296401745651984009

`A065877(lt[A065877(n+1)%3, 1]+1)`
-/

namespace A085371.P12296401745651984009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065877 (n + 1)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065877 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A085371.P12296401745651984009

noncomputable section

/-- A085371: Non-Niven (or non-Harshad) numbers that are divisible by 3.

Offset 1, canonical program `A085371.P12296401745651984009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2634 terms. -/
def A085371 (n : ℕ) : ℤ :=
  A085371.P12296401745651984009.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2634 terms. -/
def A085371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085384.P2467046585933130820

`∑{d}[n+1, A007427(#)*A112132((n+1)/#)]`
-/

namespace A085384.P2467046585933130820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A112132 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A085384.P2467046585933130820

noncomputable section

/-- A085384: Ramanujan sum c_n(4).

Offset 1, canonical program `A085384.P2467046585933130820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085384 (n : ℕ) : ℤ :=
  A085384.P2467046585933130820.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085385.P13964376620445033525

`A001794(n)-A136530(n)`
-/

namespace A085385.P13964376620445033525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001794 n - A136530 n

end

end A085385.P13964376620445033525

noncomputable section

/-- A085385: Binomial transform of hexagonal pyramidal numbers A002412.

Offset 0, canonical program `A085385.P13964376620445033525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 311 terms. -/
def A085385 (n : ℕ) : ℤ :=
  A085385.P13964376620445033525.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 311 terms. -/
def A085385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085386.P10561297622637148624

`(A000085(n)+A001464(n))/2`
-/

namespace A085386.P10561297622637148624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000085 n + A001464 n : ℚ) / 2

end

end A085386.P10561297622637148624

noncomputable section

/-- A085386: E.g.f. cosh(x+x^2/2).

Offset 0, canonical program `A085386.P10561297622637148624`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001464, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A085386 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A085386.P10561297622637148624.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001464, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A085386.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A085504.P3540792795459282371

`A099012(A066247(∑[n+1])+n)`
-/

namespace A085504.P3540792795459282371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099012 (A066247 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)).toNat

end

end A085504.P3540792795459282371

noncomputable section

/-- A085504: Horadam sequence (0,1,9,3).

Offset 0, canonical program `A085504.P3540792795459282371`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A085504 (n : ℕ) : ℤ :=
  A085504.P3540792795459282371.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. -/
def A085504.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085583.P12147947931041383685

`∑[A065033(n)+∑[A008794(n)]]`
-/

namespace A085583.P12147947931041383685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A085583.P12147947931041383685

noncomputable section

/-- A085583: Number of (3412,1234)-avoiding involutions in S_n.

Offset 1, canonical program `A085583.P12147947931041383685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085583 (n : ℕ) : ℤ :=
  A085583.P12147947931041383685.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085583.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085585.P2799919323339678097

`eq[2, ∏{digits}[n², A000034(#)]]²`
-/

namespace A085585.P2799919323339678097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => A000034 x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A085585.P2799919323339678097

noncomputable section

/-- A085585: Squares with exactly one odd digit.

Offset 1, canonical program `A085585.P2799919323339678097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 661 terms. -/
def A085585 (n : ℕ) : ℤ :=
  (A085585.P2799919323339678097.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 661 terms. -/
def A085585.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085695.P2018092129056950049

`A000045(n)*A001076(n)`
-/

namespace A085695.P2018092129056950049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A001076 n

end

end A085695.P2018092129056950049

noncomputable section

/-- A085695: a(n) = Fibonacci(n)*Fibonacci(3n)/2.

Offset 0, canonical program `A085695.P2018092129056950049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A085695 (n : ℕ) : ℤ :=
  A085695.P2018092129056950049.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. -/
def A085695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085696.P96563073395948834

`A075193(n)+A001077(n+1)`
-/

namespace A085696.P96563073395948834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075193 n + A001077 (n + 1)

end

end A085696.P96563073395948834

noncomputable section

/-- A085696: a(n) = L(n) * L(n+1) * L(n+2) / 2, where L(n) = Lucas number (A000032).

Offset 0, canonical program `A085696.P96563073395948834`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A085696 (n : ℕ) : ℤ :=
  A085696.P96563073395948834.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A085696.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085761.P4906296304370779251

`round(sqrt(4*n+5)-A002024(n+1))`
-/

namespace A085761.P4906296304370779251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (4 * n + 5 : ℝ) - (A002024 (n + 1) : ℝ))

end

end A085761.P4906296304370779251

noncomputable section

/-- A085761: Number of triangular numbers between n and 2n (inclusive).

Offset 1, canonical program `A085761.P4906296304370779251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085761 (n : ℕ) : ℤ :=
  A085761.P4906296304370779251.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085854.P7554941538200685592

`∑{digits}[A000045(n), A000007(#)]`
-/

namespace A085854.P7554941538200685592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000007 x).sum

end

end A085854.P7554941538200685592

noncomputable section

/-- A085854: Number of 0's in decimal expansion of Fibonacci(n).

Offset 0, canonical program `A085854.P7554941538200685592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085854 (n : ℕ) : ℤ :=
  A085854.P7554941538200685592.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085855.P13874846491996111652

`∑{digits}[A000045(n), C(C(2, #), 2)]`
-/

namespace A085855.P13874846491996111652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Nat.choose (Nat.choose 2 x) 2).sum

end

end A085855.P13874846491996111652

noncomputable section

/-- A085855: Number of 1's in decimal expansion of Fibonacci(n).

Offset 0, canonical program `A085855.P13874846491996111652`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085855 (n : ℕ) : ℤ :=
  (A085855.P13874846491996111652.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085855.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085856.P15661587018022403811

`∑{digits}[A000045(n), A002726(A002726(2*#+1)+1)]`
-/

namespace A085856.P15661587018022403811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A002726 (A002726 (2 * x + 1) + 1).toNat).sum

end

end A085856.P15661587018022403811

noncomputable section

/-- A085856: Number of 2's in decimal expansion of Fibonacci(n).

Offset 0, canonical program `A085856.P15661587018022403811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085856 (n : ℕ) : ℤ :=
  A085856.P15661587018022403811.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085858.P17719422220940736004

`∑{digits}[A000045(n), val(#+2, 6)]`
-/

namespace A085858.P17719422220940736004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => SequenceMachineLib.valuation (x + 2) 6).sum

end

end A085858.P17719422220940736004

noncomputable section

/-- A085858: Number of 4's in decimal expansion of Fibonacci(n).

Offset 0, canonical program `A085858.P17719422220940736004`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085858 (n : ℕ) : ℤ :=
  (A085858.P17719422220940736004.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085859.P1868171469195014030

`∑{digits}[A000045(n), val(#+1, 6)]`
-/

namespace A085859.P1868171469195014030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => SequenceMachineLib.valuation (x + 1) 6).sum

end

end A085859.P1868171469195014030

noncomputable section

/-- A085859: Number of 5's in decimal expansion of Fibonacci(n).

Offset 0, canonical program `A085859.P1868171469195014030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085859 (n : ℕ) : ℤ :=
  (A085859.P1868171469195014030.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085859.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085862.P8203223765781139278

`∑{digits}[A000045(n), A055641(#+2)]`
-/

namespace A085862.P8203223765781139278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A055641 (x + 2)).sum

end

end A085862.P8203223765781139278

noncomputable section

/-- A085862: Number of 8's in decimal expansion of Fibonacci(n).

Offset 0, canonical program `A085862.P8203223765781139278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085862 (n : ℕ) : ℤ :=
  A085862.P8203223765781139278.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085863.P14326878376486245491

`∑{digits}[A000045(n), C(#, 9)]`
-/

namespace A085863.P14326878376486245491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Nat.choose x 9).sum

end

end A085863.P14326878376486245491

noncomputable section

/-- A085863: Number of 9's in decimal expansion of Fibonacci(n).

Offset 0, canonical program `A085863.P14326878376486245491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085863 (n : ℕ) : ℤ :=
  (A085863.P14326878376486245491.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. -/
def A085863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085931.P5980507782806375577

`A003056(n+1)+A000217(A003056(n+1)+n)`
-/

namespace A085931.P5980507782806375577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 1) + A000217 (A003056 (n + 1) + (n : ℤ)).toNat

end

end A085931.P5980507782806375577

noncomputable section

/-- A085931: Leading diagonal of A085930.

Offset 1, canonical program `A085931.P5980507782806375577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085931 (n : ℕ) : ℤ :=
  A085931.P5980507782806375577.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085931.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085974.P6515225893456210534

`∑{digits}[A000040(n+1), A000007(#)]`
-/

namespace A085974.P6515225893456210534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000007 x).sum

end

end A085974.P6515225893456210534

noncomputable section

/-- A085974: Number of 0's in the decimal expansion of prime(n).

Offset 1, canonical program `A085974.P6515225893456210534`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085974 (n : ℕ) : ℤ :=
  A085974.P6515225893456210534.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085983.P7312168140230554725

`∑{digits}[A000040(n+1), C(#, 9)]`
-/

namespace A085983.P7312168140230554725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Nat.choose x 9).sum

end

end A085983.P7312168140230554725

noncomputable section

/-- A085983: Number of 9's in decimal expansion of prime(n).

Offset 1, canonical program `A085983.P7312168140230554725`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085983 (n : ℕ) : ℤ :=
  (A085983.P7312168140230554725.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086116.P3280581305434518023

`A163590(or(1, n))`
-/

namespace A086116.P3280581305434518023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163590 (Nat.lor 1 n)

end

end A086116.P3280581305434518023

noncomputable section

/-- A086116: Numerator of mean deviation of a symmetrical binomial distribution on n elements.

Offset 1, canonical program `A086116.P3280581305434518023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A086116 (n : ℕ) : ℤ :=
  A086116.P3280581305434518023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A086116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086162.P7879362451490028627

`A008615(n+1)+A008612(n+4)*A008615(n+7)`
-/

namespace A086162.P7879362451490028627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (n + 1) + A008612 (n + 4) * A008615 (n + 7)

end

end A086162.P7879362451490028627

noncomputable section

/-- A086162: Number of monomial ideals in two variables x, y that are Artinian, integrally closed, of colength n and contain x^3.

Offset 0, canonical program `A086162.P7879362451490028627`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9994 terms. -/
def A086162 (n : ℕ) : ℤ :=
  A086162.P7879362451490028627.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9994 terms. -/
def A086162.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086275.P10952436384722837509

`A059841(n+1)+2*A005089(n+1)+A005091(n+1)`
-/

namespace A086275.P10952436384722837509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (n + 1) + 2 * A005089 (n + 1) + A005091 (n + 1)

end

end A086275.P10952436384722837509

noncomputable section

/-- A086275: Number of distinct Gaussian primes in the factorization of n.

Offset 1, canonical program `A086275.P10952436384722837509`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005089, A005091, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086275 (n : ℕ) : ℤ :=
  A086275.P10952436384722837509.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005089, A005091, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A086275.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A086375.P9880467582994103932

`A070824(n+3)+∑{d}[n+1, #%2]`
-/

namespace A086375.P9880467582994103932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 3) + ((∑ d ∈ Nat.divisors (f1 n), d % 2 : ℕ) : ℤ)

end

end A086375.P9880467582994103932

noncomputable section

/-- A086375: Number of factors over Q in the factorization of U_n(x) + 1 where U_n(x) is the Chebyshev polynomial of the second kind.

Offset 1, canonical program `A086375.P9880467582994103932`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A086375 (n : ℕ) : ℤ :=
  A086375.P9880467582994103932.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A086375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086401.P15232780058223989996

`A001006(n+1)%(n+1)`
-/

namespace A086401.P15232780058223989996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001006 (n + 1)) (n + 1 : ℤ)

end

end A086401.P15232780058223989996

noncomputable section

/-- A086401: a(n) = M(n) (mod n) where M(n) = A001006(n) is the n-th Motzkin number.

Offset 1, canonical program `A086401.P15232780058223989996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A086401 (n : ℕ) : ℤ :=
  A086401.P15232780058223989996.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 216 terms. -/
def A086401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086530.P13313051766598429473

`2*A000040(n)-a(n-1)` with `a(0)=1`
-/

namespace A086530.P13313051766598429473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A000040 n - a (n - 1)

end

end A086530.P13313051766598429473

noncomputable section

/-- A086530: Beginning with 1, odd numbers such that the arithmetic mean of successive pairs of terms gives primes in their natural order. {a(n) + a(n+1)}/2 = prime(n).

Offset 1, canonical program `A086530.P13313051766598429473`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086530 (n : ℕ) : ℤ :=
  A086530.P13313051766598429473.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086530.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086615.P3603228253136164052

`∑[A001006(n)]`
-/

namespace A086615.P3603228253136164052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086615.P3603228253136164052

noncomputable section

/-- A086615: Antidiagonal sums of triangle A086614.

Offset 0, canonical program `A086615.P3603228253136164052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A086615 (n : ℕ) : ℤ :=
  A086615.P3603228253136164052.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A086615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086665.P3185455482541912894

`A000203(n+1)-A001414(n+1)`
-/

namespace A086665.P3185455482541912894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A001414 (n + 1)

end

end A086665.P3185455482541912894

noncomputable section

/-- A086665: Difference between sum of divisors of n and integer log of n, i.e., A000203(n) - A001414(n).

Offset 1, canonical program `A086665.P3185455482541912894`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086665 (n : ℕ) : ℤ :=
  A086665.P3185455482541912894.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086665.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086666.P18113632580008504605

`2*A069153(n+1)`
-/

namespace A086666.P18113632580008504605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069153 (n + 1)

end

end A086666.P18113632580008504605

noncomputable section

/-- A086666: a(n) = sigma_2(n) - sigma_1(n).

Offset 1, canonical program `A086666.P18113632580008504605`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069153, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086666 (n : ℕ) : ℤ :=
  A086666.P18113632580008504605.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069153, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086666.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A086831.P7506013639067775001

`∑{d}[n+1, A007427(#)*A010684((n+1)/#-1)]`
-/

namespace A086831.P7506013639067775001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A010684 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A086831.P7506013639067775001

noncomputable section

/-- A086831: Ramanujan sum c_n(2).

Offset 1, canonical program `A086831.P7506013639067775001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086831 (n : ℕ) : ℤ :=
  A086831.P7506013639067775001.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086831.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086861.P6424631334588597709

`∏{p}[A000040(n+1), floor(#/log(#))]`
-/

namespace A086861.P6424631334588597709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ⌊(p : ℝ) / Real.log (p : ℝ)⌋

end

end A086861.P6424631334588597709

noncomputable section

/-- A086861: Floor( p/log(p) ), where p = prime(n).

Offset 1, canonical program `A086861.P6424631334588597709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086861 (n : ℕ) : ℤ :=
  A086861.P6424631334588597709.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086861.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086863.P12080904620428211243

`A085505(n+1)-n²%(n+1)`
-/

namespace A086863.P12080904620428211243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085505 (n + 1) - ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A086863.P12080904620428211243

noncomputable section

/-- A086863: a(n)=floor{square((1*n^0+1*n^1+2*n^2+4*n^3)/(1*n^0+2*n^1+1*n^2))}.

Offset 1, canonical program `A086863.P12080904620428211243`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086863 (n : ℕ) : ℤ :=
  A086863.P12080904620428211243.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A086863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A086868.P3547738365041611846

`floor(1/sin(A070752(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A086868.P3547738365041611846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / Real.sin (A070752 (n + 1) : ℝ)⌋

end

end A086868.P3547738365041611846

noncomputable section

/-- A086868: a(n) = Floor(1/sin(A070752(n))).

Offset 1, canonical program `A086868.P3547738365041611846`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070752, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086868 (n : ℕ) : ℤ :=
  A086868.P3547738365041611846.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070752, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A086868.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A087098.P11093039045898509139

`∑[A087100(n)]`
-/

namespace A087098.P11093039045898509139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087100 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A087098.P11093039045898509139

noncomputable section

/-- A087098: Partial sums of A087100.

Offset 0, canonical program `A087098.P11093039045898509139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. -/
def A087098 (n : ℕ) : ℤ :=
  A087098.P11093039045898509139.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. -/
def A087098.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087121.P180081637264790853

`A087052(A074294(n²+1))`
-/

namespace A087121.P180081637264790853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087052 (A074294 (n ^ 2 + 1)).toNat

end

end A087121.P180081637264790853

noncomputable section

/-- A087121: Take bounded lunar divisors of n as defined in A087028, add them using lunar addition. See A087082 for their conventional sum.

Offset 1, canonical program `A087121.P180081637264790853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A087121 (n : ℕ) : ℤ :=
  A087121.P180081637264790853.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A087121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087124.P3836910195827955306

`A027941(n)+A001611(n)`
-/

namespace A087124.P3836910195827955306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 n + A001611 n

end

end A087124.P3836910195827955306

noncomputable section

/-- A087124: a(n) = Fibonacci(n) + Fibonacci(2n+1).

Offset 0, canonical program `A087124.P3836910195827955306`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A087124 (n : ℕ) : ℤ :=
  A087124.P3836910195827955306.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 240 terms. -/
def A087124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087405.P2819718858922802785

`Δ[or(floor(5^(n-1)), A000034(n))]`
-/

namespace A087405.P2819718858922802785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊(5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ (A000034 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A087405.P2819718858922802785

noncomputable section

/-- A087405: First differences of A087404: a(n) = A087404(n) - A087404(n-1), a(0) = A087404(0).

Offset 0, canonical program `A087405.P2819718858922802785`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A087405 (n : ℕ) : ℤ :=
  A087405.P2819718858922802785.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A087405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087466.P14536620079445968377

`A008612(A053186(12*n+5))`
-/

namespace A087466.P14536620079445968377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A053186 (12 * n + 5)).toNat

end

end A087466.P14536620079445968377

noncomputable section

/-- A087466: a(n) = number of the row (counting from initial row 0) of the array R in A087465 that contains n.

Offset 1, canonical program `A087466.P14536620079445968377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A087466 (n : ℕ) : ℤ :=
  A087466.P14536620079445968377.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A087466.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087476.P17641979265843464007

`(2*n+a(n-1)+5)%A002024(n+1)` with `a(0)=0`
-/

namespace A087476.P17641979265843464007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod ((2 * n : ℤ) + (a (n - 1) + 5)) (A002024 (n + 1))

end

end A087476.P17641979265843464007

noncomputable section

/-- A087476: Triangle read by rows where the n-th row has n terms: T(n,i)=(i+2)^2-4 mod n.

Offset 1, canonical program `A087476.P17641979265843464007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A087476 (n : ℕ) : ℤ :=
  A087476.P17641979265843464007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A087476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087505.P2303323204147198729

`A024896(n+1)-1`
-/

namespace A087505.P2303323204147198729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024896 (n + 1) - 1

end

end A087505.P2303323204147198729

noncomputable section

/-- A087505: Numbers k such that 5*k+3 is a prime.

Offset 1, canonical program `A087505.P2303323204147198729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087505 (n : ℕ) : ℤ :=
  A087505.P2303323204147198729.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087628.P5452780026811073144

`A078008(∑[(2*n)%3])`
-/

namespace A087628.P5452780026811073144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A087628.P5452780026811073144

noncomputable section

/-- A087628: Generalized Jacobsthal sequence.

Offset 0, canonical program `A087628.P5452780026811073144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A087628 (n : ℕ) : ℤ :=
  A087628.P5452780026811073144.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A087628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087629.P7296063400555584856

`A087464(n)+A024493(n)`
-/

namespace A087629.P7296063400555584856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087464 n + A024493 n

end

end A087629.P7296063400555584856

noncomputable section

/-- A087629: Generalized Jacobsthal sequence.

Offset 0, canonical program `A087629.P7296063400555584856`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A087629 (n : ℕ) : ℤ :=
  A087629.P7296063400555584856.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A087629.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087686.P7055121400500820265

`a(A004001(n))+n` with `a(0)=1, a(1)=2`
-/

namespace A087686.P7055121400500820265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (A004001 n).toNat + n

end

end A087686.P7055121400500820265

noncomputable section

/-- A087686: Elements of A004001 that repeat consecutively.

Offset 1, canonical program `A087686.P7055121400500820265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087686 (n : ℕ) : ℤ :=
  (A087686.P7055121400500820265.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A087686.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087691.P847001691907876156

`A002145(n+1)²`
-/

namespace A087691.P847001691907876156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1) ^ 2

end

end A087691.P847001691907876156

noncomputable section

/-- A087691: Squares of primes of the form 4*k+3.

Offset 1, canonical program `A087691.P847001691907876156`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087691 (n : ℕ) : ℤ :=
  A087691.P847001691907876156.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002145, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087691.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057526.P5100206515935661971

`A277329(n+1)-1`
-/

namespace A057526.P5100206515935661971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277329 (n + 1) - 1

end

end A057526.P5100206515935661971

noncomputable section

/-- A057526: Number of applications of f to reduce n to 1, where f(k) is the integer among k/2,(k-1)/4, (k+1)/4.

Offset 1, canonical program `A057526.P5100206515935661971`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A277329, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057526 (n : ℕ) : ℤ :=
  A057526.P5100206515935661971.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A277329, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057526.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057854.P3516327272515158544

`A090946(n+3)`
-/

namespace A057854.P3516327272515158544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090946 (n + 3)

end

end A057854.P3516327272515158544

noncomputable section

/-- A057854: Non-Lucas numbers: the complement of A000032.

Offset 1, canonical program `A057854.P3516327272515158544`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090946, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057854 (n : ℕ) : ℤ :=
  A057854.P3516327272515158544.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090946, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057854.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A058080.P7483339280694489428

`lt[9, A226602(n)]`
-/

namespace A058080.P7483339280694489428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A058080.P7483339280694489428

noncomputable section

/-- A058080: Numbers whose product of divisors exceeds their square.

Offset 1, canonical program `A058080.P7483339280694489428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058080 (n : ℕ) : ℤ :=
  (A058080.P7483339280694489428.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A058080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A058840.P13313517790522568928

`val(A079450(n+1), 3)^n`
-/

namespace A058840.P13313517790522568928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A079450 (n + 1)).toNat 3 ^ n

end

end A058840.P13313517790522568928

noncomputable section

/-- A058840: From Renyi's "beta expansion of 1 in base 3/2": sequence gives y(0), y(1), ...

Offset 0, canonical program `A058840.P13313517790522568928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A058840 (n : ℕ) : ℤ :=
  (A058840.P13313517790522568928.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A058840.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059269.P6274107585826422028

`eq[1, A353470(n+1)]+1`
-/

namespace A059269.P6274107585826422028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353470 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A059269.P6274107585826422028

noncomputable section

/-- A059269: Numbers m for which the number of divisors, tau(m), is divisible by 3.

Offset 1, canonical program `A059269.P6274107585826422028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059269 (n : ℕ) : ℤ :=
  (A059269.P6274107585826422028.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059851.P8165731397206128111

`(A271860(n)+n)/2`
-/

namespace A059851.P8165731397206128111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271860 n + (n : ℤ) : ℚ) / 2

end

end A059851.P8165731397206128111

noncomputable section

/-- A059851: a(n) = n - floor(n/2) + floor(n/3) - floor(n/4) + ... (this is a finite sum).

Offset 0, canonical program `A059851.P8165731397206128111`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A271860, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059851 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A059851.P8165731397206128111.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A271860, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A059851.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A060337.P807181745929901436

`A000217(n+2)*A270222(n+1)`
-/

namespace A060337.P807181745929901436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2) * A270222 (n + 1)

end

end A060337.P807181745929901436

noncomputable section

/-- A060337: Number of labeled acyclic digraphs with n nodes containing exactly n-2 points of in-degree zero.

Offset 3, canonical program `A060337.P807181745929901436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A060337 (n : ℕ) : ℤ :=
  A060337.P807181745929901436.a (n - 3)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. -/
def A060337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060521.P8646143590663438384

`2*A238649(n+1)`
-/

namespace A060521.P8646143590663438384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A238649 (n + 1)

end

end A060521.P8646143590663438384

noncomputable section

/-- A060521: Number of 3 X n grids of black and white cells, no 3 of same color vertically or horizontally contiguous.

Offset 1, canonical program `A060521.P8646143590663438384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A060521 (n : ℕ) : ℤ :=
  A060521.P8646143590663438384.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A060521.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061017.P3381662168248992728

`A143502(n+1)-1`
-/

namespace A061017.P3381662168248992728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143502 (n + 1) - 1

end

end A061017.P3381662168248992728

noncomputable section

/-- A061017: List in which n appears d(n) times, where d(n) [A000005] is the number of divisors of n.

Offset 1, canonical program `A061017.P3381662168248992728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061017 (n : ℕ) : ℤ :=
  A061017.P3381662168248992728.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061017.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061020.P8856517168126816648

`∑{d}[n+1, A000203(#)*A298473((n+1)/#)]`
-/

namespace A061020.P8856517168126816648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A298473 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A061020.P8856517168126816648

noncomputable section

/-- A061020: Negate primes in factorizations of divisors of n, then sum.

Offset 1, canonical program `A061020.P8856517168126816648`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061020 (n : ℕ) : ℤ :=
  A061020.P8856517168126816648.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A061020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061603.P7123521768897570186

`A000142(n)/A066459(n)`
-/

namespace A061603.P7123521768897570186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A066459 n : ℚ)

end

end A061603.P7123521768897570186

noncomputable section

/-- A061603: a(n) = n! / {product of factorials of the digits of n}.

Offset 0, canonical program `A061603.P7123521768897570186`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066459, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061603 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A061603.P7123521768897570186.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066459, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061603.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A062173.P12803886350549463179

`A220105(n+1)%(n+1)`
-/

namespace A062173.P12803886350549463179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220105 (n + 1)) (n + 1 : ℤ)

end

end A062173.P12803886350549463179

noncomputable section

/-- A062173: a(n) = 2^(n-1) mod n.

Offset 1, canonical program `A062173.P12803886350549463179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062173 (n : ℕ) : ℤ :=
  A062173.P12803886350549463179.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062173.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062340.P12344509097868839965

`p?[A227793(n+1)]`
-/

namespace A062340.P12344509097868839965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062340.P12344509097868839965

noncomputable section

/-- A062340: Primes whose sum of digits is a multiple of 5.

Offset 1, canonical program `A062340.P12344509097868839965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1032 terms. -/
def A062340 (n : ℕ) : ℤ :=
  A062340.P12344509097868839965.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1032 terms. -/
def A062340.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062380.P3842940140059394528

`∑{d}[n+1, #*A333557((n+1)/#)]`
-/

namespace A062380.P3842940140059394528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A333557 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062380.P3842940140059394528

noncomputable section

/-- A062380: a(n) = Sum_{i|n,j|n} phi(i)*phi(j)/phi(gcd(i,j)), where phi is Euler totient function.

Offset 1, canonical program `A062380.P3842940140059394528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062380 (n : ℕ) : ℤ :=
  A062380.P3842940140059394528.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A062380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062774.P18360295498494493866

`∑{d}[n+1, A230980(#)]`
-/

namespace A062774.P18360295498494493866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A230980 d

end

end A062774.P18360295498494493866

noncomputable section

/-- A062774: Inverse Moebius transform of PrimePi function.

Offset 1, canonical program `A062774.P18360295498494493866`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A062774 (n : ℕ) : ℤ :=
  A062774.P18360295498494493866.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A062774.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A062800.P7485131151254025437

`∩[A141881(n+1), A141927(n+1)]`
-/

namespace A062800.P7485131151254025437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141927 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062800.P7485131151254025437

noncomputable section

/-- A062800: Primes of form 100*k + 1.

Offset 1, canonical program `A062800.P7485131151254025437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2020 terms. -/
def A062800 (n : ℕ) : ℤ :=
  (A062800.P7485131151254025437.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2020 terms. -/
def A062800.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063084.P11297547496359058065

`A005451(n+1)-A086936(n+1)`
-/

namespace A063084.P11297547496359058065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (n + 1) - A086936 (n + 1)

end

end A063084.P11297547496359058065

noncomputable section

/-- A063084: a(n) = pi(n-1)*n - pi(n)*(n-1), where pi() = A000720().

Offset 1, canonical program `A063084.P11297547496359058065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063084 (n : ℕ) : ℤ :=
  A063084.P11297547496359058065.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063084.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063129.P5998583005354371378

`A063135(n+1)-or(1, n)`
-/

namespace A063129.P5998583005354371378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063135 (n + 1) - (Nat.lor 1 n : ℤ)

end

end A063129.P5998583005354371378

noncomputable section

/-- A063129: Dimension of the space of weight 2n cusp forms for Gamma_0( 61 ).

Offset 1, canonical program `A063129.P5998583005354371378`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063129 (n : ℕ) : ℤ :=
  A063129.P5998583005354371378.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A063129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A063450.P12247619196585758918

`lt[A070824(n+1), A319410(n)]`
-/

namespace A063450.P12247619196585758918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A063450.P12247619196585758918

noncomputable section

/-- A063450: Numbers k such that d(k+1) < 2*d(k), where d() is the number of divisors function A000005.

Offset 1, canonical program `A063450.P12247619196585758918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6349 terms. -/
def A063450 (n : ℕ) : ℤ :=
  (A063450.P12247619196585758918.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6349 terms. -/
def A063450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064557.P3776744572660076995

`A230980(∑[A080339(n+1)])`
-/

namespace A064557.P3776744572660076995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A064557.P3776744572660076995

noncomputable section

/-- A064557: a(n) = # { p | A064553(k) = p prime and k <= n}.

Offset 1, canonical program `A064557.P3776744572660076995`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064557 (n : ℕ) : ℤ :=
  A064557.P3776744572660076995.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064557.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064857.P14259746257036142487

`A120109(n)/gcd(A003418(n), A120109(n))`
-/

namespace A064857.P14259746257036142487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120109 n : ℚ) / (Int.gcd (A003418 n) (A120109 n) : ℚ)

end

end A064857.P14259746257036142487

noncomputable section

/-- A064857: Numerators of partial sums of reciprocals of lcm(1..n) = A003418(n).

Offset 1, canonical program `A064857.P14259746257036142487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A064857 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A064857.P14259746257036142487.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A064857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A064919.P171974603176685664

`n*A066247(n+2)+n+2`
-/

namespace A064919.P171974603176685664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A066247 (n + 2) + (n + 2 : ℤ)

end

end A064919.P171974603176685664

noncomputable section

/-- A064919: a(n) = Min { k | A064916(k) = n }.

Offset 2, canonical program `A064919.P171974603176685664`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064919 (n : ℕ) : ℤ :=
  A064919.P171974603176685664.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065018.P12289181754646712942

`∑{d}[n+1, A072861(#)]`
-/

namespace A065018.P12289181754646712942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A072861 d

end

end A065018.P12289181754646712942

noncomputable section

/-- A065018: a(n) = Sum_{d|n} sigma(d)^2.

Offset 1, canonical program `A065018.P12289181754646712942`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065018 (n : ℕ) : ℤ :=
  A065018.P12289181754646712942.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065018.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065313.P140214373438614317

`A000720((n+1)*∑[A080545(n+1)])`
-/

namespace A065313.P140214373438614317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A065313.P140214373438614317

noncomputable section

/-- A065313: a(n) = pi(n*pi(n)).

Offset 1, canonical program `A065313.P140214373438614317`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 751 terms. -/
def A065313 (n : ℕ) : ℤ :=
  A065313.P140214373438614317.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 751 terms. -/
def A065313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065332.P6614801584370099490

`A065333(n+1)*(n+1)`
-/

namespace A065332.P6614801584370099490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (n + 1) * (n + 1 : ℤ)

end

end A065332.P6614801584370099490

noncomputable section

/-- A065332: 3-smooth numbers in their natural position, gaps filled with 0.

Offset 1, canonical program `A065332.P6614801584370099490`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065333, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065332 (n : ℕ) : ℤ :=
  A065332.P6614801584370099490.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065333, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065332.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065357.P5981080689720192330

`1-2*A131378(n)`
-/

namespace A065357.P5981080689720192330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A131378 n

end

end A065357.P5981080689720192330

noncomputable section

/-- A065357: a(n) = (-1)^pi(n) where pi(n) is the number of primes <= n.

Offset 0, canonical program `A065357.P5981080689720192330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065357 (n : ℕ) : ℤ :=
  A065357.P5981080689720192330.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065357.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065358.P6265050914822267748

`n-2*A131808(n)`
-/

namespace A065358.P6265050914822267748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A131808 n

end

end A065358.P6265050914822267748

noncomputable section

/-- A065358: The Jacob's Ladder sequence: a(n) = Sum_{k=1..n} (-1)^pi(k), where pi = A000720.

Offset 0, canonical program `A065358.P6265050914822267748`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065358 (n : ℕ) : ℤ :=
  A065358.P6265050914822267748.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A131808, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065358.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065494.P4483697362935118258

`∑[∑[A247355(abs(1-n))]]`
-/

namespace A065494.P4483697362935118258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247355 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A065494.P4483697362935118258

noncomputable section

/-- A065494: Number of (binary) bit strings in which no even length block of 0's is followed by an even length block of 1's.

Offset 0, canonical program `A065494.P4483697362935118258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. -/
def A065494 (n : ℕ) : ℤ :=
  A065494.P4483697362935118258.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. -/
def A065494.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065768.P10804919857722987854

`∩[2*n+1, A274790(n+1)]`
-/

namespace A065768.P10804919857722987854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A065768.P10804919857722987854

noncomputable section

/-- A065768: Numbers that are sums of divisors of the odd squares; Intersection of A065764 and A065766, written in ascending order and duplicates removed.

Offset 1, canonical program `A065768.P10804919857722987854`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A065768 (n : ℕ) : ℤ :=
  (A065768.P10804919857722987854.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A065768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065970.P13115613865623270676

`A065969(n+1)-2*A322078(n+1)`
-/

namespace A065970.P13115613865623270676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065969 (n + 1) - 2 * A322078 (n + 1)

end

end A065970.P13115613865623270676

noncomputable section

/-- A065970: a(n) = n^2 * Sum_{primes p dividing n} (1 - 1/p^2).

Offset 1, canonical program `A065970.P13115613865623270676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065970 (n : ℕ) : ℤ :=
  A065970.P13115613865623270676.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A065970.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066566.P279150373663098236

`eq[1, A053186(A066568(n))+1]`
-/

namespace A066566.P279150373663098236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A066568 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A066566.P279150373663098236

noncomputable section

/-- A066566: Numbers that when decremented by the sum of their digits produce a square.

Offset 1, canonical program `A066566.P279150373663098236`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 310 terms. -/
def A066566 (n : ℕ) : ℤ :=
  (A066566.P279150373663098236.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 310 terms. -/
def A066566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066602.P15017815964599118024

`A066608(n+1)%(n+1)`
-/

namespace A066602.P15017815964599118024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066608 (n + 1)) (n + 1 : ℤ)

end

end A066602.P15017815964599118024

noncomputable section

/-- A066602: a(n) = 4^n mod n.

Offset 1, canonical program `A066602.P15017815964599118024`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066602 (n : ℕ) : ℤ :=
  A066602.P15017815964599118024.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066602.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066603.P5756785611430650469

`A066609(n+1)%(n+1)`
-/

namespace A066603.P5756785611430650469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066609 (n + 1)) (n + 1 : ℤ)

end

end A066603.P5756785611430650469

noncomputable section

/-- A066603: a(n) = 5^n mod n.

Offset 1, canonical program `A066603.P5756785611430650469`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066603 (n : ℕ) : ℤ :=
  A066603.P5756785611430650469.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066603.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066604.P13718169227305272568

`A066610(n+1)%(n+1)`
-/

namespace A066604.P13718169227305272568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066610 (n + 1)) (n + 1 : ℤ)

end

end A066604.P13718169227305272568

noncomputable section

/-- A066604: a(n) = 6^n mod n.

Offset 1, canonical program `A066604.P13718169227305272568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066604 (n : ℕ) : ℤ :=
  A066604.P13718169227305272568.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066604.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066606.P6520458400013291076

`A233442(n+1)%A162395(n+1)`
-/

namespace A066606.P6520458400013291076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233442 (n + 1)) (A162395 (n + 1))

end

end A066606.P6520458400013291076

noncomputable section

/-- A066606: a(n) = 2^n mod n^2.

Offset 1, canonical program `A066606.P6520458400013291076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066606 (n : ℕ) : ℤ :=
  A066606.P6520458400013291076.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A066606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066728.P5246203842492218540

`A129296(n+2)-1`
-/

namespace A066728.P5246203842492218540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129296 (n + 2) - 1

end

end A066728.P5246203842492218540

noncomputable section

/-- A066728: a(n) is the number of integers of the form (n+k+n*k)/(n-k) for k = 1,2,...,n-1.

Offset 1, canonical program `A066728.P5246203842492218540`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A066728 (n : ℕ) : ℤ :=
  A066728.P5246203842492218540.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A066728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066910.P10239878416308779692

`A073117(n+1)+A000007(n)-A073117(A233583(n+1))`
-/

namespace A066910.P10239878416308779692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073117 (n + 1) + (A000007 n - A073117 (A233583 (n + 1)).toNat)

end

end A066910.P10239878416308779692

noncomputable section

/-- A066910: a(1) = 1; a(n+1) = (sum{k=1 to n} a(k) ) (mod n).

Offset 1, canonical program `A066910.P10239878416308779692`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A066910 (n : ℕ) : ℤ :=
  A066910.P10239878416308779692.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A066910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067187.P4381605707725789093

`A373789(n+2)+2`
-/

namespace A067187.P4381605707725789093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373789 (n + 2) + 2

end

end A067187.P4381605707725789093

noncomputable section

/-- A067187: Numbers that can be expressed as the sum of two primes in exactly one way.

Offset 1, canonical program `A067187.P4381605707725789093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067187 (n : ℕ) : ℤ :=
  A067187.P4381605707725789093.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A067187.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068426.P10437059448932842721

`A293364(n)-A293362(n)`
-/

namespace A068426.P10437059448932842721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293364 n - A293362 n

end

end A068426.P10437059448932842721

noncomputable section

/-- A068426: Expansion of log(2) in base 2.

Offset 0, canonical program `A068426.P10437059448932842721`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A068426 (n : ℕ) : ℤ :=
  A068426.P10437059448932842721.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A068426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068510.P11721145475733360069

`A059794(n+1)-A068511(n+1)`
-/

namespace A068510.P11721145475733360069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059794 (n + 1) - A068511 (n + 1)

end

end A068510.P11721145475733360069

noncomputable section

/-- A068510: a(n) = lcm(1,...,n) - (product of primes <= n).

Offset 1, canonical program `A068510.P11721145475733360069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A068510 (n : ℕ) : ℤ :=
  A068510.P11721145475733360069.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A068510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A068577.P762481586230944513

`A020725(lt[A279507(n+1), ∏{e}[n+1, #+1]])`
-/

namespace A068577.P762481586230944513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279507 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A068577.P762481586230944513

noncomputable section

/-- A068577: Numbers k such that tau(k)^2 > phi(k).

Offset 1, canonical program `A068577.P762481586230944513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A068577 (n : ℕ) : ℤ :=
  A068577.P762481586230944513.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. -/
def A068577.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069208.P5783639011279016630

`∑{d}[n+1, #*A112526((n+1)/#)]`
-/

namespace A069208.P5783639011279016630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A112526 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069208.P5783639011279016630

noncomputable section

/-- A069208: a(n) = Sum_{ d divides n } phi(n)/phi(d).

Offset 1, canonical program `A069208.P5783639011279016630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069208 (n : ℕ) : ℤ :=
  A069208.P5783639011279016630.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069924.P1533727129138465007

`A071521(n+1)-A062153(n+1)`
-/

namespace A069924.P1533727129138465007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071521 (n + 1) - A062153 (n + 1)

end

end A069924.P1533727129138465007

noncomputable section

/-- A069924: Number of k, 1<=k<=n, such that phi(k) divides k.

Offset 1, canonical program `A069924.P1533727129138465007`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069924 (n : ℕ) : ℤ :=
  A069924.P1533727129138465007.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071521, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A069924.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A069933.P8410770447695468430

`∑{d}[n+1, A086671(#)*A271102((n+1)/#)]`
-/

namespace A069933.P8410770447695468430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A086671 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069933.P8410770447695468430

noncomputable section

/-- A069933: Number of k, 1<=k<=n, such that core(k) divides n, where core(x) is the squarefree part of x, the smallest integer such that x*core(x) is a square.

Offset 1, canonical program `A069933.P8410770447695468430`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069933 (n : ℕ) : ℤ :=
  A069933.P8410770447695468430.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070348.P12949094517838521028

`A070387(3*n)`
-/

namespace A070348.P12949094517838521028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070387 (3 * n)

end

end A070348.P12949094517838521028

noncomputable section

/-- A070348: a(n) = 2^n mod 41.

Offset 0, canonical program `A070348.P12949094517838521028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A070348 (n : ℕ) : ℤ :=
  A070348.P12949094517838521028.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. -/
def A070348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070351.P12962646093972245574

`A070429(2*n)`
-/

namespace A070351.P12962646093972245574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070429 (2 * n)

end

end A070351.P12962646093972245574

noncomputable section

/-- A070351: a(n) = 2^n mod 47.

Offset 0, canonical program `A070351.P12962646093972245574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A070351 (n : ℕ) : ℤ :=
  A070351.P12962646093972245574.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A070351.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070799.P17110375673296894115

`eq[0, A091393(6*n+1)]`
-/

namespace A070799.P17110375673296894115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091393 (6 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A070799.P17110375673296894115

noncomputable section

/-- A070799: Numbers of the form 6jk-j-k.

Offset 1, canonical program `A070799.P17110375673296894115`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A070799 (n : ℕ) : ℤ :=
  (A070799.P17110375673296894115.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5040 terms. -/
def A070799.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071047.P5402524198042241896

`A267453(n+2)-2`
-/

namespace A071047.P5402524198042241896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267453 (n + 2) - 2

end

end A071047.P5402524198042241896

noncomputable section

/-- A071047: Number of 1's in n-th row of triangle in A071031, cellular automaton "rule 62".

Offset 0, canonical program `A071047.P5402524198042241896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A071047 (n : ℕ) : ℤ :=
  A071047.P5402524198042241896.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. -/
def A071047.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071247.P7398568559144745585

`eq[A078142(n+1), A078142(n+2)]+1`
-/

namespace A071247.P7398568559144745585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078142 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A071247.P7398568559144745585

noncomputable section

/-- A071247: Numbers n such that A078142(n) = A078142(n+1), where A078142(n) is the sum of the differences of the distinct prime factors p of n and the next square larger than p.

Offset 1, canonical program `A071247.P7398568559144745585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 247 terms. -/
def A071247 (n : ℕ) : ℤ :=
  (A071247.P7398568559144745585.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 247 terms. -/
def A071247.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071281.P6424107787387498205

`A009947(A266981(n)-1)`
-/

namespace A071281.P6424107787387498205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009947 (A266981 n - 1).toNat

end

end A071281.P6424107787387498205

noncomputable section

/-- A071281: Numerators of Peirce sequence of order 3.

Offset 0, canonical program `A071281.P6424107787387498205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A071281 (n : ℕ) : ℤ :=
  A071281.P6424107787387498205.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. -/
def A071281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071283.P11488286306628561676

`A002266(A004526(n)*A071284(n))`
-/

namespace A071283.P11488286306628561676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A004526 n * A071284 n).toNat

end

end A071283.P11488286306628561676

noncomputable section

/-- A071283: Numerators of Peirce sequence of order 4.

Offset 0, canonical program `A071283.P11488286306628561676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A071283 (n : ℕ) : ℤ :=
  A071283.P11488286306628561676.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A071283.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071440.P12289870813246919657

`A077253(a(n-1))` with `a(0)=1`
-/

namespace A071440.P12289870813246919657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077253 (a (n - 1)).toNat

end

end A071440.P12289870813246919657

noncomputable section

/-- A071440: Start with 1; add the digits of the previous term and the squares of the digits of the previous term.

Offset 0, canonical program `A071440.P12289870813246919657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071440 (n : ℕ) : ℤ :=
  A071440.P12289870813246919657.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071570.P16050349158961801199

`A004526(∑{d}[n+1, A080847(#)*A080847(#)])`
-/

namespace A071570.P16050349158961801199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ d ∈ Nat.divisors (f1 n), A080847 d * A080847 d).toNat

end

end A071570.P16050349158961801199

noncomputable section

/-- A071570: a(n) = 2 * Sum_{d|n} 2^mu(d).

Offset 1, canonical program `A071570.P16050349158961801199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071570 (n : ℕ) : ℤ :=
  A071570.P16050349158961801199.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A071570.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071621.P6497078535451825457

`A004139(A074764(n+2))`
-/

namespace A071621.P6497078535451825457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A074764 (n + 2)).toNat

end

end A071621.P6497078535451825457

noncomputable section

/-- A071621: Primes that can be written as "a * b + c * d", where a, b, c and d are also primes.

Offset 1, canonical program `A071621.P6497078535451825457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. -/
def A071621 (n : ℕ) : ℤ :=
  A071621.P6497078535451825457.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9996 terms. -/
def A071621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A071683.P4804736648095859902

`A001076(A326178(n+1))`
-/

namespace A071683.P4804736648095859902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 (A326178 (n + 1)).toNat

end

end A071683.P4804736648095859902

noncomputable section

/-- A071683: Nonprimes which are the average of two consecutive Fibonacci numbers.

Offset 1, canonical program `A071683.P4804736648095859902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A071683 (n : ℕ) : ℤ :=
  A071683.P4804736648095859902.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. -/
def A071683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072464.P9450388406469305649

`A292046(ceil(log2(n+2)))`
-/

namespace A072464.P9450388406469305649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292046 ⌈Real.logb 2 (n + 2 : ℝ)⌉.toNat

end

end A072464.P9450388406469305649

noncomputable section

/-- A072464: Code word lengths for non-redundant MML code for positive integers.

Offset 1, canonical program `A072464.P9450388406469305649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072464 (n : ℕ) : ℤ :=
  A072464.P9450388406469305649.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A072464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072544.P3283143156771516929

`eq[val(A348783(n), 5), A000030(n)]`
-/

namespace A072544.P3283143156771516929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A348783 n).toNat 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072544.P3283143156771516929

noncomputable section

/-- A072544: Numbers whose smallest decimal digit is also the initial digit.

Offset 1, canonical program `A072544.P3283143156771516929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2365 terms. -/
def A072544 (n : ℕ) : ℤ :=
  (A072544.P3283143156771516929.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2365 terms. -/
def A072544.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072675.P8953100869094184126

`eq[A082116(n), A101443(n)]`
-/

namespace A072675.P8953100869094184126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082116 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072675.P8953100869094184126

noncomputable section

/-- A072675: Integers m such that the last digit of Fibonacci(m) is 1.

Offset 1, canonical program `A072675.P8953100869094184126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1334 terms. -/
def A072675 (n : ℕ) : ℤ :=
  (A072675.P8953100869094184126.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1334 terms. -/
def A072675.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072683.P17274139737255269736

`eq[A101443(n)+2, A082116(n)]`
-/

namespace A072683.P17274139737255269736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101443 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082116 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072683.P17274139737255269736

noncomputable section

/-- A072683: Numbers k such that the last digit of F(k) is 3 where F(k) is the k-th Fibonacci number.

Offset 1, canonical program `A072683.P17274139737255269736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1332 terms. -/
def A072683 (n : ℕ) : ℤ :=
  (A072683.P17274139737255269736.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1332 terms. -/
def A072683.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072711.P2168519290706385150

`eq[(A101443(n)+1)², A082116(n)]`
-/

namespace A072711.P2168519290706385150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A101443 n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082116 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072711.P2168519290706385150

noncomputable section

/-- A072711: Integers m such that the last digit of Fibonacci(m) is 9.

Offset 1, canonical program `A072711.P2168519290706385150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1333 terms. -/
def A072711 (n : ℕ) : ℤ :=
  (A072711.P2168519290706385150.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1333 terms. -/
def A072711.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073059.P7440096197096325997

`1/2*(A073504(n+2)-A073504(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A073059.P7440096197096325997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A073504 (n + 2) - A073504 (n + 1) : ℚ)

end

end A073059.P7440096197096325997

noncomputable section

/-- A073059: a(n) = (1/2)*(A073504(n+1) - A073504(n)).

Offset 1, canonical program `A073059.P7440096197096325997`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073059 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A073059.P7440096197096325997.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073504, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A073059.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073301.P17524349592475400275

`record[Δ[A249576(A267186(n+1))]]`
-/

namespace A073301.P17524349592475400275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (A267186 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073301.P17524349592475400275

noncomputable section

/-- A073301: a(n) is the n-th new record value in A073300.

Offset 1, canonical program `A073301.P17524349592475400275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 781 terms. -/
def A073301 (n : ℕ) : ℤ :=
  A073301.P17524349592475400275.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 781 terms. -/
def A073301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073763.P15953634689084529443

`A234902(A072703(n+1))`
-/

namespace A073763.P15953634689084529443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234902 (A072703 (n + 1)).toNat

end

end A073763.P15953634689084529443

noncomputable section

/-- A073763: Least number of unrelated set belonging to these numbers is odd.

Offset 1, canonical program `A073763.P15953634689084529443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1334 terms. -/
def A073763 (n : ℕ) : ℤ :=
  A073763.P15953634689084529443.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1334 terms. -/
def A073763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073797.P2043127665268211522

`A020707(n)%A230980(n+2)`
-/

namespace A073797.P2043127665268211522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020707 n) (A230980 (n + 2))

end

end A073797.P2043127665268211522

noncomputable section

/-- A073797: a(n) = 2^n mod pi(n).

Offset 2, canonical program `A073797.P2043127665268211522`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A073797 (n : ℕ) : ℤ :=
  A073797.P2043127665268211522.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A073797.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073851.P11742261591792564246

`A339255(n)+a(n-1)` with `a(0)=0`
-/

namespace A073851.P11742261591792564246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A339255 n + a (n - 1)

end

end A073851.P11742261591792564246

noncomputable section

/-- A073851: Cumulative sum of initial digits of (n base 5).

Offset 0, canonical program `A073851.P11742261591792564246`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073851 (n : ℕ) : ℤ :=
  A073851.P11742261591792564246.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074132.P6295191419457740670

`(n+1)*∑[A003188(A171960(n))%2+n]`
-/

namespace A074132.P6295191419457740670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003188 (A171960 n).toNat) 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A074132.P6295191419457740670

noncomputable section

/-- A074132: Row sums of triangle A074135.

Offset 1, canonical program `A074132.P6295191419457740670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074132 (n : ℕ) : ℤ :=
  A074132.P6295191419457740670.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074134.P14482655219537014998

`A113047(A008619(n))+∑[n]`
-/

namespace A074134.P14482655219537014998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113047 (A008619 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A074134.P14482655219537014998

noncomputable section

/-- A074134: First column of triangle A074135.

Offset 1, canonical program `A074134.P14482655219537014998`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074134 (n : ℕ) : ℤ :=
  A074134.P14482655219537014998.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074239.P15542470158088435368

`∑[A106002(n+1)]`
-/

namespace A074239.P15542470158088435368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074239.P15542470158088435368

noncomputable section

/-- A074239: Related to cumulative number of non-twin primes.

Offset 0, canonical program `A074239.P15542470158088435368`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074239 (n : ℕ) : ℤ :=
  A074239.P15542470158088435368.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074795.P1379753408512257015

`∑[A353470(n+1)]`
-/

namespace A074795.P1379753408512257015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A074795.P1379753408512257015

noncomputable section

/-- A074795: Number of numbers k <= n such that tau(k) == 0 (mod 3) where tau(k) = A000005(k) is the number of divisors of k.

Offset 1, canonical program `A074795.P1379753408512257015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074795 (n : ℕ) : ℤ :=
  A074795.P1379753408512257015.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074795.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075425.P11313490393567044434

`A110157(n+1)-1`
-/

namespace A075425.P11313490393567044434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110157 (n + 1) - 1

end

end A075425.P11313490393567044434

noncomputable section

/-- A075425: Number of steps to reach 1 starting with n and iterating the map n ->rad(n)-1, where rad(n) is the squarefree kernel of n (A007947).

Offset 1, canonical program `A075425.P11313490393567044434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075425 (n : ℕ) : ℤ :=
  A075425.P11313490393567044434.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A075425.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076156.P12126611222985155867

`eq[A086436(2*(n+1)), A086436(n+2)]+1`
-/

namespace A076156.P12126611222985155867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A076156.P12126611222985155867

noncomputable section

/-- A076156: Numbers n such that Omega(n+1) = Omega(n)+1, where Omega(m) (A001222) denotes the number of prime factors of m, counting multiplicity.

Offset 1, canonical program `A076156.P12126611222985155867`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 689 terms. -/
def A076156 (n : ℕ) : ℤ :=
  (A076156.P12126611222985155867.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 689 terms. -/
def A076156.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076178.P4076835337858509169

`2*n²-A077071(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A076178.P4076835337858509169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) - A077071 n

end

end A076178.P4076835337858509169

noncomputable section

/-- A076178: a(n) = 2*n^2 - A077071(n).

Offset 0, canonical program `A076178.P4076835337858509169`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077071, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076178 (n : ℕ) : ℤ :=
  A076178.P4076835337858509169.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A077071, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076178.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076290.P10407532045046765191

`∑{d}[n+1, #*A101605(2*#)]`
-/

namespace A076290.P10407532045046765191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A101605 (2 * d)

end

end A076290.P10407532045046765191

noncomputable section

/-- A076290: Sum of the semiprime divisors of n.

Offset 1, canonical program `A076290.P10407532045046765191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A076290 (n : ℕ) : ℤ :=
  A076290.P10407532045046765191.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A076290.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076737.P4754763807282475927

`gcd(A124303(A233583(n+1)), A133140(n))`
-/

namespace A076737.P4754763807282475927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124303 (A233583 (n + 1)).toNat) (A133140 n)

end

end A076737.P4754763807282475927

noncomputable section

/-- A076737: Let u(1)=u(2)=u(3)=2, u(n)=(1+u(n-1)u(n-2))/u(n-3); then a(n) is the numerator of u(n).

Offset 1, canonical program `A076737.P4754763807282475927`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A076737 (n : ℕ) : ℤ :=
  (A076737.P4754763807282475927.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A076737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A076764.P2673609182765345381

`∩[A322840(n+1)+1, A322840(n+1)]`
-/

namespace A076764.P2673609182765345381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322840 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322840 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A076764.P2673609182765345381

noncomputable section

/-- A076764: n such that Omega(n-1) < Omega(n) < Omega(n+1), where Omega(m) = the number of prime factors of m, counting multiplicity.

Offset 1, canonical program `A076764.P2673609182765345381`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A076764 (n : ℕ) : ℤ :=
  (A076764.P2673609182765345381.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A076764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A077677.P6147157833111245039

`eq[1, A105570(n)+A000030(n)]`
-/

namespace A077677.P6147157833111245039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n + A000030 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A077677.P6147157833111245039

noncomputable section

/-- A077677: Squarefree numbers beginning with 1.

Offset 1, canonical program `A077677.P6147157833111245039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 676 terms. -/
def A077677 (n : ℕ) : ℤ :=
  (A077677.P6147157833111245039.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 676 terms. -/
def A077677.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078429.P3517718782682471896

`∑{d}[n+1, #*A210826((n+1)/#)]`
-/

namespace A078429.P3517718782682471896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A210826 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078429.P3517718782682471896

noncomputable section

/-- A078429: Number of integers k among 1..n for which gcd(k,n) is a cube.

Offset 1, canonical program `A078429.P3517718782682471896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078429 (n : ℕ) : ℤ :=
  A078429.P3517718782682471896.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078471.P966964113016564166

`A000217(n+2)-A333194(n+2)`
-/

namespace A078471.P966964113016564166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2) - A333194 (n + 2)

end

end A078471.P966964113016564166

noncomputable section

/-- A078471: Sum of all odd divisors of all positive integers <= n.

Offset 1, canonical program `A078471.P966964113016564166`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A333194, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078471 (n : ℕ) : ℤ :=
  A078471.P966964113016564166.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A333194, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078471.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079000.P1314353409810898066

`A079948(n)+a(n-1)` with `a(0)=1`
-/

namespace A079000.P1314353409810898066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A079948 n + a (n - 1)

end

end A079000.P1314353409810898066

noncomputable section

/-- A079000: a(n) is taken to be the smallest positive integer greater than a(n-1) which is consistent with the condition "n is a member of the sequence if and only if a(n) is odd".

Offset 1, canonical program `A079000.P1314353409810898066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079000 (n : ℕ) : ℤ :=
  A079000.P1314353409810898066.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079000.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079523.P16371928625451652770

`1/2*A081706(2*n+1)`
-/

namespace A079523.P16371928625451652770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A081706 (2 * n + 1) : ℚ)

end

end A079523.P16371928625451652770

noncomputable section

/-- A079523: Utterly odd numbers: numbers whose binary representation ends in an odd number of ones.

Offset 1, canonical program `A079523.P16371928625451652770`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079523 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A079523.P16371928625451652770.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079523.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080075.P5494454134783611628

`A116882(n+2)+1`
-/

namespace A080075.P5494454134783611628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116882 (n + 2) + 1

end

end A080075.P5494454134783611628

noncomputable section

/-- A080075: Proth numbers: of the form k*2^m + 1 for k odd, m >= 1 and 2^m > k.

Offset 1, canonical program `A080075.P5494454134783611628`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A116882, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080075 (n : ℕ) : ℤ :=
  A080075.P5494454134783611628.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A116882, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080075.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080257.P6699646768947114599

`lt[6, A226602(n)]`
-/

namespace A080257.P6699646768947114599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080257.P6699646768947114599

noncomputable section

/-- A080257: Numbers having at least two distinct or a total of at least three prime factors.

Offset 1, canonical program `A080257.P6699646768947114599`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080257 (n : ℕ) : ℤ :=
  (A080257.P6699646768947114599.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080702.P6276148619349041055

`A166079(n+6)+n`
-/

namespace A080702.P6276148619349041055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166079 (n + 6) + (n : ℤ)

end

end A080702.P6276148619349041055

noncomputable section

/-- A080702: a(1)=3; for n>1, a(n) = smallest number > a(n-1) such that the condition "if n is in the sequence then a(n) is even" is satisfied.

Offset 1, canonical program `A080702.P6276148619349041055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080702 (n : ℕ) : ℤ :=
  A080702.P6276148619349041055.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080702.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080703.P3176310097382570726

`A353651(n+4)-3`
-/

namespace A080703.P3176310097382570726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353651 (n + 4) - 3

end

end A080703.P3176310097382570726

noncomputable section

/-- A080703: a(1)=5; for n>1, a(n) = smallest number > a(n-1) such that the condition "if n is in the sequence then a(n) is a multiple of 4" is satisfied.

Offset 1, canonical program `A080703.P3176310097382570726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A080703 (n : ℕ) : ℤ :=
  A080703.P3176310097382570726.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. -/
def A080703.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080724.P3228021590566063094

`A080726(n+1)-1`
-/

namespace A080724.P3228021590566063094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080726 (n + 1) - 1

end

end A080724.P3228021590566063094

noncomputable section

/-- A080724: a(0) = 2; for n>0, a(n) is taken to be the smallest positive integer greater than a(n-1) which is consistent with the condition "n is a member of the sequence if and only if a(n) == 1 mod 3".

Offset 0, canonical program `A080724.P3228021590566063094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A080724 (n : ℕ) : ℤ :=
  A080724.P3228021590566063094.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A080724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081399.P317381506345155066

`∑[A252736(A111284(n+1))-A252736(n+1)]`
-/

namespace A081399.P317381506345155066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A111284 (n + 1)).toNat - A252736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081399.P317381506345155066

noncomputable section

/-- A081399: Bigomega of the n-th Catalan number: a(n) = A001222(A000108(n)).

Offset 0, canonical program `A081399.P317381506345155066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A081399 (n : ℕ) : ℤ :=
  A081399.P317381506345155066.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. -/
def A081399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081607.P12536140067758024536

`1-A081608(n)+n`
-/

namespace A081607.P12536140067758024536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A081608 n + (n : ℤ)

end

end A081607.P12536140067758024536

noncomputable section

/-- A081607: Number of numbers <= n having at least one 0 in their ternary representation.

Offset 0, canonical program `A081607.P12536140067758024536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081607 (n : ℕ) : ℤ :=
  A081607.P12536140067758024536.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081607.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081690.P12557663006376812885

`comp[A081691(n+1)]`
-/

namespace A081690.P12557663006376812885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081691 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A081690.P12557663006376812885

noncomputable section

/-- A081690: From P-positions in a certain game.

Offset 0, canonical program `A081690.P12557663006376812885`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081690 (n : ℕ) : ℤ :=
  (A081690.P12557663006376812885.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081729.P13956299838836808291

`A209229(n)+A033999(n)`
-/

namespace A081729.P13956299838836808291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n + A033999 n

end

end A081729.P13956299838836808291

noncomputable section

/-- A081729: Expansion of Sum(k>=0, x^(2^k)) + 1/(1+x). First differences of A007456 (gossip sequence) for n>1.

Offset 0, canonical program `A081729.P13956299838836808291`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A081729 (n : ℕ) : ℤ :=
  A081729.P13956299838836808291.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A081729.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082019.P8023442530786272007

`∑[4*n]+1-A157671(n+1)%2`
-/

namespace A082019.P8023442530786272007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - Int.tmod (A157671 (n + 1)) 2

end

end A082019.P8023442530786272007

noncomputable section

/-- A082019: Diagonal of square array T(n,k) with T(1,1) = 1 where antidiagonals are filled alternating upwards and downwards with the smallest number not already used such that the n-th antidiagonal sum is a multiple of n.

Offset 1, canonical program `A082019.P8023442530786272007`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082019 (n : ℕ) : ℤ :=
  A082019.P8023442530786272007.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082019.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082679.P7603607965199582567

`A221678(A028310(n))+n%2`
-/

namespace A082679.P7603607965199582567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221678 (A028310 n).toNat + ((n % 2 : ℕ) : ℤ)

end

end A082679.P7603607965199582567

noncomputable section

/-- A082679: Number of LEGO towers, one piece per floor, where every floor is perpendicular to the one below it (so we have a kind of 3-dimensional zigzag pattern).

Offset 0, canonical program `A082679.P7603607965199582567`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A082679 (n : ℕ) : ℤ :=
  A082679.P7603607965199582567.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A082679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082742.P3759816296504135577

`2*A134519(n+1)`
-/

namespace A082742.P3759816296504135577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134519 (n + 1)

end

end A082742.P3759816296504135577

noncomputable section

/-- A082742: Indices of occurrences of 2 in A004738.

Offset 1, canonical program `A082742.P3759816296504135577`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134519, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082742 (n : ℕ) : ℤ :=
  A082742.P3759816296504135577.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A134519, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082742.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082873.P13323215949670490727

`xor(A121262(n), A194273(n))`
-/

namespace A082873.P13323215949670490727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A121262 n) (A194273 n)

end

end A082873.P13323215949670490727

noncomputable section

/-- A082873: Independence number of king KG_2 on triangle board B_n.

Offset 1, canonical program `A082873.P13323215949670490727`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082873 (n : ℕ) : ℤ :=
  A082873.P13323215949670490727.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A082873.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083741.P6552315304162526779

`A245788(n)-A298011(n)`
-/

namespace A083741.P6552315304162526779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245788 n - A298011 n

end

end A083741.P6552315304162526779

noncomputable section

/-- A083741: a(n) = L(n) + a(L(n)), where L(n) = n - 2^floor(log_2(n)) (A053645).

Offset 0, canonical program `A083741.P6552315304162526779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083741 (n : ℕ) : ℤ :=
  A083741.P6552315304162526779.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084088.P9034609164511326196

`eq[(n+1)%3+1, A000035(A123726(n))]`
-/

namespace A084088.P9034609164511326196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 3 + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A123726 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A084088.P9034609164511326196

noncomputable section

/-- A084088: Numbers k such that k == 2 (mod 3) and the exponent of the highest power of 2 dividing k is even.

Offset 1, canonical program `A084088.P9034609164511326196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084088 (n : ℕ) : ℤ :=
  (A084088.P9034609164511326196.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084088.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084091.P3642473428871494014

`(A129527(n)+1)%3-1`
-/

namespace A084091.P3642473428871494014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129527 n + 1) 3 - 1

end

end A084091.P3642473428871494014

noncomputable section

/-- A084091: Expansion of Sum_{k>=0} x^2^k/(1+x^2^k+x^2^(k+1)).

Offset 0, canonical program `A084091.P3642473428871494014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084091 (n : ℕ) : ℤ :=
  A084091.P3642473428871494014.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084091.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084116.P2149557461537845173

`eq[1, A353788(n+1)]+1`
-/

namespace A084116.P2149557461537845173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353788 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A084116.P2149557461537845173

noncomputable section

/-- A084116: Numbers m such that A084115(m) = 1.

Offset 1, canonical program `A084116.P2149557461537845173`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084116 (n : ℕ) : ℤ :=
  (A084116.P2149557461537845173.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084220.P3476602202439273006

`∑{d}[n+1, A013954(#)*A334659((n+1)/#)]`
-/

namespace A084220.P3476602202439273006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A013954 d * A334659 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A084220.P3476602202439273006

noncomputable section

/-- A084220: a(n) = sigma_6(n^2)/sigma_3(n^2).

Offset 1, canonical program `A084220.P3476602202439273006`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084220 (n : ℕ) : ℤ :=
  A084220.P3476602202439273006.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084360.P16112422958158698758

`A230980(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A084360.P16112422958158698758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A230980 (n - 1) - a (n - 1)

end

end A084360.P16112422958158698758

noncomputable section

/-- A084360: Number of partitions of n into pair of parts whose difference is a prime.

Offset 1, canonical program `A084360.P16112422958158698758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084360 (n : ℕ) : ℤ :=
  A084360.P16112422958158698758.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084360.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084505.P12495345020168809625

`A084506(n)+a(n-1)` with `a(0)=0`
-/

namespace A084505.P12495345020168809625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A084506 n + a (n - 1)

end

end A084505.P12495345020168809625

noncomputable section

/-- A084505: Partial sums of A084506.

Offset 0, canonical program `A084505.P12495345020168809625`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084505 (n : ℕ) : ℤ :=
  A084505.P12495345020168809625.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A084505.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A084518.P6007664406315500494

`∑[A084519(n+1)]`
-/

namespace A084518.P6007664406315500494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A084518.P6007664406315500494

noncomputable section

/-- A084518: Partial sums of A084519. Positions of ones in the first differences of A084516.

Offset 1, canonical program `A084518.P6007664406315500494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. -/
def A084518 (n : ℕ) : ℤ :=
  A084518.P6007664406315500494.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. -/
def A084518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085259.P130799474644936207

`A029925(n)-floor(A177154(n)/5)`
-/

namespace A085259.P130799474644936207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029925 n - ⌊(A177154 n : ℚ) / 5⌋

end

end A085259.P130799474644936207

noncomputable section

/-- A085259: Integer part of the conversion from Celsius to Fahrenheit.

Offset 0, canonical program `A085259.P130799474644936207`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A177154, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A085259 (n : ℕ) : ℤ :=
  A085259.P130799474644936207.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A177154, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A085259.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A085970.P2562174614589588878

`A085972(n+1)-A000720(n+1)`
-/

namespace A085970.P2562174614589588878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085972 (n + 1) - A000720 (n + 1)

end

end A085970.P2562174614589588878

noncomputable section

/-- A085970: Number of integers ranging from 2 to n that are not prime-powers.

Offset 1, canonical program `A085970.P2562174614589588878`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085972, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A085970 (n : ℕ) : ℤ :=
  A085970.P2562174614589588878.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085972, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A085970.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A085971.P4688826160104707978

`eq[1, A306694(n+2)]+2`
-/

namespace A085971.P4688826160104707978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306694 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A085971.P4688826160104707978

noncomputable section

/-- A085971: Union of primes and numbers that are not prime powers (A000040, A024619).

Offset 1, canonical program `A085971.P4688826160104707978`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085971 (n : ℕ) : ℤ :=
  (A085971.P4688826160104707978.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085971.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085976.P515009545935069561

`A316863(A000040(n+1))`
-/

namespace A085976.P515009545935069561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A000040 (n + 1)).toNat

end

end A085976.P515009545935069561

noncomputable section

/-- A085976: Number of 2's in decimal expansion of prime(n).

Offset 1, canonical program `A085976.P515009545935069561`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A085976 (n : ℕ) : ℤ :=
  A085976.P515009545935069561.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A085976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085977.P14742223954839599986

`A316864(A000040(n+1))`
-/

namespace A085977.P14742223954839599986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A000040 (n + 1)).toNat

end

end A085977.P14742223954839599986

noncomputable section

/-- A085977: Number of 3's in decimal expansion of prime(n).

Offset 1, canonical program `A085977.P14742223954839599986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A085977 (n : ℕ) : ℤ :=
  A085977.P14742223954839599986.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A085977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085978.P3613833929199214065

`∑{digits}[A000040(n+1), A316867(#+2)]`
-/

namespace A085978.P3613833929199214065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A316867 (x + 2)).sum

end

end A085978.P3613833929199214065

noncomputable section

/-- A085978: Number of 4's in decimal expansion of prime(n).

Offset 1, canonical program `A085978.P3613833929199214065`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085978 (n : ℕ) : ℤ :=
  A085978.P3613833929199214065.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085978.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087508.P427705373924640183

`A000027(n+1)-A087509(n)-A087507(n)`
-/

namespace A087508.P427705373924640183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A087509 n - A087507 n

end

end A087508.P427705373924640183

noncomputable section

/-- A087508: Number of k such that mod(k*n,3) = 1 for 0 <= k <= n.

Offset 0, canonical program `A087508.P427705373924640183`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087509, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087508 (n : ℕ) : ℤ :=
  A087508.P427705373924640183.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087509, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A087508.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057627.P17607436213288797797

`n+1-A013928(n+2)`
-/

namespace A057627.P17607436213288797797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A013928 (n + 2)

end

end A057627.P17607436213288797797

noncomputable section

/-- A057627: Number of nonsquarefree numbers not exceeding n.

Offset 1, canonical program `A057627.P17607436213288797797`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013928, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057627 (n : ℕ) : ℤ :=
  A057627.P17607436213288797797.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013928, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A057627.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A057862.P11332314005707958811

`(2^(n+1))%A000045(n+1)`
-/

namespace A057862.P11332314005707958811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 ^ (n + 1) : ℤ) (A000045 (n + 1))

end

end A057862.P11332314005707958811

noncomputable section

/-- A057862: a(n) = 2^n mod Fibonacci(n).

Offset 1, canonical program `A057862.P11332314005707958811`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A057862 (n : ℕ) : ℤ :=
  A057862.P11332314005707958811.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. -/
def A057862.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A060108.P5431568237961309099

`(A007522(n+1)²-1)/24`
-/

namespace A060108.P5431568237961309099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007522 (n + 1) ^ 2 - 1 : ℚ) / 24

end

end A060108.P5431568237961309099

noncomputable section

/-- A060108: Sequence of sums based on primes = 7 mod 8.

Offset 1, canonical program `A060108.P5431568237961309099`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007522, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060108 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A060108.P5431568237961309099.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007522, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A060108.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A061398.P14693318756630178419

`A013928(A000040(n+2))-A013928(A000040(n+1))-1`
-/

namespace A061398.P14693318756630178419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A000040 (n + 2)).toNat - A013928 (A000040 (n + 1)).toNat - 1

end

end A061398.P14693318756630178419

noncomputable section

/-- A061398: Number of squarefree integers between prime(n) and prime(n+1).

Offset 1, canonical program `A061398.P14693318756630178419`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013928, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061398 (n : ℕ) : ℤ :=
  A061398.P14693318756630178419.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013928, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A061398.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A063958.P8283110959988242133

`A008472(n+1)-A063956(n+1)`
-/

namespace A063958.P8283110959988242133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) - A063956 (n + 1)

end

end A063958.P8283110959988242133

noncomputable section

/-- A063958: Sum of the non-unitary prime divisors of n: sum of those prime divisors for which the exponent in the prime factorization exceeds 1.

Offset 1, canonical program `A063958.P8283110959988242133`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, A063956, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A063958 (n : ℕ) : ℤ :=
  A063958.P8283110959988242133.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, A063956, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A063958.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064011.P12802472044596461129

`A008472(A038507(n+1))`
-/

namespace A064011.P12802472044596461129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A038507 (n + 1)).toNat

end

end A064011.P12802472044596461129

noncomputable section

/-- A064011: Sum of distinct primes dividing n! + 1.

Offset 1, canonical program `A064011.P12802472044596461129`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064011 (n : ℕ) : ℤ :=
  A064011.P12802472044596461129.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064011.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064142.P8838239209337402348

`A008472(A001405(n+1))`
-/

namespace A064142.P8838239209337402348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A001405 (n + 1)).toNat

end

end A064142.P8838239209337402348

noncomputable section

/-- A064142: Sum of all distinct primes dividing central binomial coefficient C(n, floor(n/2)).

Offset 1, canonical program `A064142.P8838239209337402348`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064142 (n : ℕ) : ℤ :=
  A064142.P8838239209337402348.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064142.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064143.P2336907219430728719

`A063956(A001405(n+1))`
-/

namespace A064143.P2336907219430728719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063956 (A001405 (n + 1)).toNat

end

end A064143.P2336907219430728719

noncomputable section

/-- A064143: Sum of unitary prime divisors of binomial(n, floor(n/2)).

Offset 1, canonical program `A064143.P2336907219430728719`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063956, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064143 (n : ℕ) : ℤ :=
  A064143.P2336907219430728719.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063956, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A064143.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A064988.P936164228496250104

`∏{p}[n+1, A000040(#)^val(n+1, #)]`
-/

namespace A064988.P936164228496250104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000040 p ^ SequenceMachineLib.valuation (n + 1) p

end

end A064988.P936164228496250104

noncomputable section

/-- A064988: Multiplicative with a(p^e) = prime(p)^e.

Offset 1, canonical program `A064988.P936164228496250104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064988 (n : ℕ) : ℤ :=
  A064988.P936164228496250104.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A064988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A065039.P4788194488470715228

`n+A054899(n)`
-/

namespace A065039.P4788194488470715228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A054899 n

end

end A065039.P4788194488470715228

noncomputable section

/-- A065039: If n in base 10 is d_1 d_2 ... d_k then a(n) = d_1 + d_1d_2 + d_1d_2d_3 + ... + d_1...d_k.

Offset 0, canonical program `A065039.P4788194488470715228`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054899, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065039 (n : ℕ) : ℤ :=
  A065039.P4788194488470715228.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054899, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065039.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A065043.P15027714353296076488

`A007421(n+1)-1`
-/

namespace A065043.P15027714353296076488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007421 (n + 1) - 1

end

end A065043.P15027714353296076488

noncomputable section

/-- A065043: Characteristic function of the numbers with an even number of prime factors (counted with multiplicity): a(n) = 1 if n = A028260(k) for some k then 1 else 0.

Offset 1, canonical program `A065043.P15027714353296076488`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007421, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065043 (n : ℕ) : ℤ :=
  A065043.P15027714353296076488.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007421, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A065043.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A067395.P4961952494524289833

`Δ[A067368(n+1)]`
-/

namespace A067395.P4961952494524289833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A067395.P4961952494524289833

noncomputable section

/-- A067395: First differences of A067368.

Offset 1, canonical program `A067395.P4961952494524289833`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A067395 (n : ℕ) : ℤ :=
  A067395.P4961952494524289833.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A067395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A069739.P7899335367046661581

`∏{e}[n+1, A000108(#)]`
-/

namespace A069739.P7899335367046661581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000108 (Nat.factorization (f1 n) p)

end

end A069739.P7899335367046661581

noncomputable section

/-- A069739: Size of the key space for isomorphism verification of circulant graphs of order n.

Offset 1, canonical program `A069739.P7899335367046661581`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069739 (n : ℕ) : ℤ :=
  A069739.P7899335367046661581.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A069739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A070548.P147621801857442245

`1/2*(A013928(n+2)+A002321(n+1))`
-/

namespace A070548.P147621801857442245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A013928 (n + 2) + A002321 (n + 1) : ℚ)

end

end A070548.P147621801857442245

noncomputable section

/-- A070548: a(n) = Cardinality{ k in range 1 <= k <= n such that Moebius(k) = 1 }.

Offset 1, canonical program `A070548.P147621801857442245`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002321, A013928, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070548 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A070548.P147621801857442245.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002321, A013928, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A070548.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A071993.P9565296218200180009

`3*(n+1)-2*A003159(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A071993.P9565296218200180009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - 2 * A003159 (n + 1)

end

end A071993.P9565296218200180009

noncomputable section

/-- A071993: a(n) = 3*n - 2* A003159(n).

Offset 1, canonical program `A071993.P9565296218200180009`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003159, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071993 (n : ℕ) : ℤ :=
  A071993.P9565296218200180009.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003159, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A071993.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A072358.P17985313231785458440

`A060431(n+1)-A013928(n+2)`
-/

namespace A072358.P17985313231785458440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060431 (n + 1) - A013928 (n + 2)

end

end A072358.P17985313231785458440

noncomputable section

/-- A072358: Number of cubefree numbers <= n which are not squarefree.

Offset 1, canonical program `A072358.P17985313231785458440`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013928, A060431, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072358 (n : ℕ) : ℤ :=
  A072358.P17985313231785458440.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013928, A060431, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A072358.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A073395.P12803190185888961322

`A008472(n+1)*A001414(n+1)`
-/

namespace A073395.P12803190185888961322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) * A001414 (n + 1)

end

end A073395.P12803190185888961322

noncomputable section

/-- A073395: Product of sums of prime factors of n: with and without repetition.

Offset 1, canonical program `A073395.P12803190185888961322`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A008472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073395 (n : ℕ) : ℤ :=
  A073395.P12803190185888961322.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A008472, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A073395.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074147.P16699189592433911745

`ceil(((2*n+1)/A002024(n+1))²/2)`
-/

namespace A074147.P16699189592433911745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n + 1 : ℚ) / (A002024 (n + 1) : ℚ)) ^ 2 / 2⌉

end

end A074147.P16699189592433911745

noncomputable section

/-- A074147: (2n-1) odd numbers followed by 2n even numbers.

Offset 1, canonical program `A074147.P16699189592433911745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074147 (n : ℕ) : ℤ :=
  A074147.P16699189592433911745.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074147.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074372.P4137528993984796168

`1+A008472(n+1)`
-/

namespace A074372.P4137528993984796168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A008472 (n + 1)

end

end A074372.P4137528993984796168

noncomputable section

/-- A074372: 1 + the sum of the distinct primes dividing n.

Offset 1, canonical program `A074372.P4137528993984796168`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074372 (n : ℕ) : ℤ :=
  A074372.P4137528993984796168.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A074372.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A074939.P18430168348576609001

`and(-2, A191107(n+1))`
-/

namespace A074939.P18430168348576609001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A191107 (n + 1))

end

end A074939.P18430168348576609001

noncomputable section

/-- A074939: Even numbers such that base 3 representation contains no 2.

Offset 0, canonical program `A074939.P18430168348576609001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074939 (n : ℕ) : ℤ :=
  A074939.P18430168348576609001.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A074939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A075653.P2659253384492111030

`n+1+A008472(n+1)`
-/

namespace A075653.P2659253384492111030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A008472 (n + 1)

end

end A075653.P2659253384492111030

noncomputable section

/-- A075653: a(n) = n + sopf(n), where sopf is the sum of the distinct prime factors of n (A008472).

Offset 1, canonical program `A075653.P2659253384492111030`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075653 (n : ℕ) : ℤ :=
  A075653.P2659253384492111030.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A075653.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076640.P10692691478282624648

`A053475(n+1)-1`
-/

namespace A076640.P10692691478282624648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053475 (n + 1) - 1

end

end A076640.P10692691478282624648

noncomputable section

/-- A076640: a(1)=1, a(n) = a(n-phi(n)) + 1.

Offset 1, canonical program `A076640.P10692691478282624648`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053475, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076640 (n : ℕ) : ℤ :=
  A076640.P10692691478282624648.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053475, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076640.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A076694.P8693598391704263352

`n+1-A008472(n+1)`
-/

namespace A076694.P8693598391704263352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A008472 (n + 1)

end

end A076694.P8693598391704263352

noncomputable section

/-- A076694: a(n) = n - sum of the distinct prime factors of n.

Offset 1, canonical program `A076694.P8693598391704263352`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076694 (n : ℕ) : ℤ :=
  A076694.P8693598391704263352.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A076694.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A078442.P17307833943468967023

`Δ[a(A000720(n))+n]-1` with `a(0)=1`
-/

namespace A078442.P17307833943468967023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (A000720 n).toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A078442.P17307833943468967023

noncomputable section

/-- A078442: a(p) = a(n) + 1 if p is the n-th prime, prime(n); a(n)=0 if n is not prime.

Offset 1, canonical program `A078442.P17307833943468967023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078442 (n : ℕ) : ℤ :=
  A078442.P17307833943468967023.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A078442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A078653.P10966428180401610920

`A000040(A002144(n+1))`
-/

namespace A078653.P10966428180401610920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A002144 (n + 1)).toNat

end

end A078653.P10966428180401610920

noncomputable section

/-- A078653: a(n) = prime(k) where k = n-th prime congruent to 1 mod 4.

Offset 1, canonical program `A078653.P10966428180401610920`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078653 (n : ℕ) : ℤ :=
  A078653.P10966428180401610920.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A078653.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A079636.P9723229985810336634

`ceil(2/Δ[sqrt(A001749(n+1))])`
-/

namespace A079636.P9723229985810336634
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001749 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (f1 (n + 1) - f1 n)⌉

end

end A079636.P9723229985810336634

noncomputable section

/-- A079636: Smallest number whose reciprocal fits in the square-root gap of consecutive primes.

Offset 1, canonical program `A079636.P9723229985810336634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079636 (n : ℕ) : ℤ :=
  A079636.P9723229985810336634.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A079636.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079954.P5014454053966606846

`n+1-A079947(n+1)`
-/

namespace A079954.P5014454053966606846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A079947 (n + 1)

end

end A079954.P5014454053966606846

noncomputable section

/-- A079954: Partial sums of A030301.

Offset 1, canonical program `A079954.P5014454053966606846`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079954 (n : ℕ) : ℤ :=
  A079954.P5014454053966606846.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079947, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A079954.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080109.P11078218124457791392

`A002144(n+1)²`
-/

namespace A080109.P11078218124457791392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) ^ 2

end

end A080109.P11078218124457791392

noncomputable section

/-- A080109: Square of primes of the form 4k+1 (A002144).

Offset 1, canonical program `A080109.P11078218124457791392`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080109 (n : ℕ) : ℤ :=
  A080109.P11078218124457791392.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080109.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080169.P7383122637728498919

`A002144(n+1)^3`
-/

namespace A080169.P7383122637728498919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) ^ 3

end

end A080169.P7383122637728498919

noncomputable section

/-- A080169: Numbers that are cubes of primes of the form 4k+1 (A002144).

Offset 1, canonical program `A080169.P7383122637728498919`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080169 (n : ℕ) : ℤ :=
  A080169.P7383122637728498919.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080169.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080542.P9634742044237708567

`A038572(A038572(n+2)+A004526(n+1))`
-/

namespace A080542.P9634742044237708567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A038572 (n + 2) + A004526 (n + 1)).toNat

end

end A080542.P9634742044237708567

noncomputable section

/-- A080542: In binary representation: keep the first digit and rotate right the others.

Offset 1, canonical program `A080542.P9634742044237708567`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A080542 (n : ℕ) : ℤ :=
  A080542.P9634742044237708567.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A080542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080649.P5081980939248516929

`A008472(A000203(n+2))`
-/

namespace A080649.P5081980939248516929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A000203 (n + 2)).toNat

end

end A080649.P5081980939248516929

noncomputable section

/-- A080649: Sum of prime factors of sigma(n).

Offset 2, canonical program `A080649.P5081980939248516929`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080649 (n : ℕ) : ℤ :=
  A080649.P5081980939248516929.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080649.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A080680.P11142591042951162786

`A000196(A002144(n+1))`
-/

namespace A080680.P11142591042951162786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A002144 (n + 1)).toNat

end

end A080680.P11142591042951162786

noncomputable section

/-- A080680: Integer part of the square root of the n-th prime of the form 4k+1.

Offset 1, canonical program `A080680.P11142591042951162786`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080680 (n : ℕ) : ℤ :=
  A080680.P11142591042951162786.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A080680.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A081239.P10224072463825662570

`(n+1)²-A013928(n+2)²`
-/

namespace A081239.P10224072463825662570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A013928 (n + 2) ^ 2

end

end A081239.P10224072463825662570

noncomputable section

/-- A081239: #{(i,j): mu(i)*mu(j) = 0, 1<=i,j<=n}, where mu=A008683 (Moebius function).

Offset 1, canonical program `A081239.P10224072463825662570`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013928, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A081239 (n : ℕ) : ℤ :=
  A081239.P10224072463825662570.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013928, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A081239.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A081759.P335554766721588986

`A024894(n+1)-1`
-/

namespace A081759.P335554766721588986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024894 (n + 1) - 1

end

end A081759.P335554766721588986

noncomputable section

/-- A081759: Numbers k such that 5*k+6 is prime.

Offset 1, canonical program `A081759.P335554766721588986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081759 (n : ℕ) : ℤ :=
  A081759.P335554766721588986.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A081759.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A082073.P5879360609513135698

`A002144(n+2)-A002144(n+1)`
-/

namespace A082073.P5879360609513135698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 2) - A002144 (n + 1)

end

end A082073.P5879360609513135698

noncomputable section

/-- A082073: First difference set of primes with 4k+1 form: A002144.

Offset 1, canonical program `A082073.P5879360609513135698`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082073 (n : ℕ) : ℤ :=
  A082073.P5879360609513135698.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082073.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A082074.P1610218011491718914

`(A002144(n+2)-A002144(n+1))/4`
-/

namespace A082074.P1610218011491718914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002144 (n + 2) - A002144 (n + 1) : ℚ) / 4

end

end A082074.P1610218011491718914

noncomputable section

/-- A082074: One quarter of first differences of primes of the form 4*k+1 (A002144).

Offset 1, canonical program `A082074.P1610218011491718914`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082074 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A082074.P1610218011491718914.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A082074.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A083403.P990697774491175710

`Δ[A013928(∑[n]+1)]`
-/

namespace A083403.P990697774491175710
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083403.P990697774491175710

noncomputable section

/-- A083403: Write the numbers 1, 2, ... in a triangle with n terms in the n-th row; a(n) = number of squarefree integers in n-th row.

Offset 1, canonical program `A083403.P990697774491175710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 446 terms. -/
def A083403 (n : ℕ) : ℤ :=
  A083403.P990697774491175710.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 446 terms. -/
def A083403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083899.P5886603955733939361

`∑{d}[2*(n+1), A000035(A089898(#))]`
-/

namespace A083899.P5886603955733939361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000035 (A089898 d).toNat

end

end A083899.P5886603955733939361

noncomputable section

/-- A083899: Number of divisors of n with largest digit <= 4 (base 10).

Offset 1, canonical program `A083899.P5886603955733939361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A083899 (n : ℕ) : ℤ :=
  A083899.P5886603955733939361.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A083899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A083918.P6152787378875264210

`Δ[A218447(floor(n/2))]`
-/

namespace A083918.P6152787378875264210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218447 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A083918.P6152787378875264210

noncomputable section

/-- A083918: Number of divisors of n that are congruent to 8 modulo 10.

Offset 1, canonical program `A083918.P6152787378875264210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083918 (n : ℕ) : ℤ :=
  A083918.P6152787378875264210.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A083918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085979.P217824273526323431

`∑{digits}[A000040(n+1), A005088(#+2)]`
-/

namespace A085979.P217824273526323431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A005088 (x + 2)).sum

end

end A085979.P217824273526323431

noncomputable section

/-- A085979: Number of 5's in decimal expansion of prime(n).

Offset 1, canonical program `A085979.P217824273526323431`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085979 (n : ℕ) : ℤ :=
  A085979.P217824273526323431.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085979.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A085980.P6633588710115276968

`∑{digits}[A000040(n+1), A005088(#+1)]`
-/

namespace A085980.P6633588710115276968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A005088 (x + 1)).sum

end

end A085980.P6633588710115276968

noncomputable section

/-- A085980: Number of 6's in decimal expansion of prime(n).

Offset 1, canonical program `A085980.P6633588710115276968`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085980 (n : ℕ) : ℤ :=
  A085980.P6633588710115276968.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A085980.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A059479.P17464652159649958448

`A355264(n+1)²`
-/

namespace A059479.P17464652159649958448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355264 (n + 1) ^ 2

end

end A059479.P17464652159649958448

noncomputable section

/-- A059479: Number of 3 X 3 matrices with elements from {0,...,n-1} such that the middle element of each of the eight lines of three (rows, columns and diagonals) is the square (mod n) of the difference of the end elements.

Offset 1, canonical program `A059479.P17464652159649958448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059479 (n : ℕ) : ℤ :=
  A059479.P17464652159649958448.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A059479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A067777.P5898996878864800961

`eq[A080339(2*n+1)+A080339(3*n+1), A085090(3*n+1)]`
-/

namespace A067777.P5898996878864800961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (2 * n + 1) + A080339 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085090 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A067777.P5898996878864800961

noncomputable section

/-- A067777: Numbers k such that (2*k)! * B(6*k) is an integer where B(k) are the Bernoulli numbers B(1)=-1/2 B(2)=1/6 B(4)=-1/30... B(2*m+1)=0 m>1.

Offset 1, canonical program `A067777.P5898996878864800961`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1280 terms. -/
def A067777 (n : ℕ) : ℤ :=
  (A067777.P5898996878864800961.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1280 terms. -/
def A067777.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A074314.P16594839120600450012

`filter[A000217(n+1), A294934(#)]`
-/

namespace A074314.P16594839120600450012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A074314.P16594839120600450012

noncomputable section

/-- A074314: Deficient triangular numbers.

Offset 1, canonical program `A074314.P16594839120600450012`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. -/
def A074314 (n : ℕ) : ℤ :=
  A074314.P16594839120600450012.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. -/
def A074314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A080226.P17485032280116406483

`∑{d}[n+1, A294934(#)]`
-/

namespace A080226.P17485032280116406483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A294934 d

end

end A080226.P17485032280116406483

noncomputable section

/-- A080226: Number of deficient divisors of n.

Offset 1, canonical program `A080226.P17485032280116406483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080226 (n : ℕ) : ℤ :=
  A080226.P17485032280116406483.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A080226.provenance : SequenceMachineLib.Provenance := .conjectured

