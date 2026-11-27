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
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C038
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
import Seq.B000.C050
import Seq.B000.C051
import Seq.B000.C052
import Seq.B000.C053
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
import Seq.B001.C015
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A366150.P9257446900930935343

`A366149(C(n+1, 2)+n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366150.P9257446900930935343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366149 (Nat.choose (n + 1) 2 + n)

end

end A366150.P9257446900930935343

noncomputable section

/-- A366150: a(n) = A366149(n, n).

Offset 0, canonical program `A366150.P9257446900930935343`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A366149(C(n+1, 2)+n)` (program `A366150.P9257446900930935343`, by `A366150.P9257446900930935343.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A366150 (n : ℕ) : ℤ :=
  A366150.P9257446900930935343.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A366149(C(n+1, 2)+n)` (program `A366150.P9257446900930935343`, by `A366150.P9257446900930935343.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A366150.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A370121.P16344633381371936390

`A002110(col(n))+A002110(row(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A370121.P16344633381371936390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (SequenceMachineLib.triCol n) + A002110 (SequenceMachineLib.triRow n)

end

end A370121.P16344633381371936390

noncomputable section

/-- A370121: Triangle read by rows: T(n,k) = A002110(n) + A002110(k), 0 <= k <= n; sums of two primorials, not necessarily distinct.

Offset 0, canonical program `A370121.P16344633381371936390`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002110(col(n))+A002110(row(n))` (program `A370121.P16344633381371936390`, by `A370121.P16344633381371936390.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A370121 (n : ℕ) : ℤ :=
  A370121.P16344633381371936390.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002110(col(n))+A002110(row(n))` (program `A370121.P16344633381371936390`, by `A370121.P16344633381371936390.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A370121.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A370134.P14656436913760815015

`A002110(row(n)+1)+A002110(col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A370134.P14656436913760815015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (SequenceMachineLib.triRow n + 1) + A002110 (SequenceMachineLib.triCol n + 1)

end

end A370134.P14656436913760815015

noncomputable section

/-- A370134: Triangle read by rows: T(n,k) = A002110(n) + A002110(k), 1 <= k <= n; sums of two primorials > 1, not necessarily distinct.

Offset 1, canonical program `A370134.P14656436913760815015`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002110(row(n)+1)+A002110(col(n)+1)` (program `A370134.P14656436913760815015`, by `A370134.P14656436913760815015.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A370134 (n : ℕ) : ℤ :=
  A370134.P14656436913760815015.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002110(row(n)+1)+A002110(col(n)+1)` (program `A370134.P14656436913760815015`, by `A370134.P14656436913760815015.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A370134.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A377984.P6847932780309628605

`2*A000203(n+1)-A003961(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A377984.P6847932780309628605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000203 (n + 1) - A003961 (n + 1)

end

end A377984.P6847932780309628605

noncomputable section

/-- A377984: a(n) = 2*sigma(n) - A003961(n), where sigma is the sum of divisors function and A003961 is fully multiplicative function with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A377984.P6847932780309628605`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000203(n+1)-A003961(n+1)` (program `A377984.P6847932780309628605`, by `A377984.P6847932780309628605.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A377984 (n : ℕ) : ℤ :=
  A377984.P6847932780309628605.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000203(n+1)-A003961(n+1)` (program `A377984.P6847932780309628605`, by `A377984.P6847932780309628605.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A377984.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A378231.P16466067974621006118

`2*A003961((n+1)²)-A000203(A003961((n+1)²))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378231.P16466067974621006118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003961 ((n + 1) ^ 2) - A000203 (A003961 ((n + 1) ^ 2)).toNat

end

end A378231.P16466067974621006118

noncomputable section

/-- A378231: Deficiency of prime-shifted squares: a(n) = 2*A003961(n^2) - sigma(A003961(n^2)), where A003961 is fully multiplicative function with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A378231.P16466067974621006118`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A003961((n+1)²)-A000203(A003961((n+1)²))` (program `A378231.P16466067974621006118`, by `A378231.P16466067974621006118.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A378231 (n : ℕ) : ℤ :=
  A378231.P16466067974621006118.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A003961((n+1)²)-A000203(A003961((n+1)²))` (program `A378231.P16466067974621006118`, by `A378231.P16466067974621006118.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A378231.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A378752.P11355063342536478967

`2*A000203(n+1)-A000203(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378752.P11355063342536478967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000203 (n + 1) - A000203 (A003961 (n + 1)).toNat

end

end A378752.P11355063342536478967

noncomputable section

/-- A378752: a(n) = 2*sigma(n) - sigma(A003961(n)), where A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A378752.P11355063342536478967`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000203(n+1)-A000203(A003961(n+1))` (program `A378752.P11355063342536478967`, by `A378752.P11355063342536478967.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A378752 (n : ℕ) : ℤ :=
  A378752.P11355063342536478967.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000203(n+1)-A000203(A003961(n+1))` (program `A378752.P11355063342536478967`, by `A378752.P11355063342536478967.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A378752.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A378981.P13160010712622335556

`(A003961(n+1)-A000203(n+1))%(A003961(n+1)-2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378981.P13160010712622335556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003961 (n + 1) - A000203 (n + 1)) (A003961 (n + 1) - (2 * (n + 1) : ℤ))

end

end A378981.P13160010712622335556

noncomputable section

/-- A378981: a(n) = (A003961(n)-sigma(n)) mod (A003961(n)-2*n), where A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A378981.P13160010712622335556`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(A003961(n+1)-A000203(n+1))%(A003961(n+1)-2*(n+1))` (program `A378981.P13160010712622335556`, by `A378981.P13160010712622335556.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A378981 (n : ℕ) : ℤ :=
  A378981.P13160010712622335556.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(A003961(n+1)-A000203(n+1))%(A003961(n+1)-2*(n+1))` (program `A378981.P13160010712622335556`, by `A378981.P13160010712622335556.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A378981.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A378982.P16224066309314701461

`(A003961(n+1)-(1+A000203(n+1)))%(A003961(n+1)-2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378982.P16224066309314701461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003961 (n + 1) - (1 + A000203 (n + 1))) (A003961 (n + 1) - (2 * (n + 1) : ℤ))

end

end A378982.P16224066309314701461

noncomputable section

/-- A378982: a(n) = (A003961(n)-(1+sigma(n))) mod (A003961(n)-2*n), where A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A378982.P16224066309314701461`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(A003961(n+1)-(1+A000203(n+1)))%(A003961(n+1)-2*(n+1))` (program `A378982.P16224066309314701461`, by `A378982.P16224066309314701461.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A378982 (n : ℕ) : ℤ :=
  A378982.P16224066309314701461.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(A003961(n+1)-(1+A000203(n+1)))%(A003961(n+1)-2*(n+1))` (program `A378982.P16224066309314701461`, by `A378982.P16224066309314701461.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A378982.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A379482.P7552146915512457481

`A000203(A003961((n+1)²))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379482.P7552146915512457481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A003961 ((n + 1) ^ 2)).toNat

end

end A379482.P7552146915512457481

noncomputable section

/-- A379482: a(n) = sigma(A003961(n^2)), where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and sigma is the sum of divisors function.

Offset 1, canonical program `A379482.P7552146915512457481`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(A003961((n+1)²))` (program `A379482.P7552146915512457481`, by `A379482.P7552146915512457481.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379482 (n : ℕ) : ℤ :=
  A379482.P7552146915512457481.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(A003961((n+1)²))` (program `A379482.P7552146915512457481`, by `A379482.P7552146915512457481.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379482.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A388975.P12312812905887415776

`A033885(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388975.P12312812905887415776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033885 (A003961 (n + 1)).toNat

end

end A388975.P12312812905887415776

noncomputable section

/-- A388975: a(n) = A033885(A003961(n)), where A033885(n) = 3*n-sigma(n), and A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A388975.P12312812905887415776`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A033885(A003961(n+1))` (program `A388975.P12312812905887415776`, by `A388975.P12312812905887415776.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A388975 (n : ℕ) : ℤ :=
  A388975.P12312812905887415776.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A033885(A003961(n+1))` (program `A388975.P12312812905887415776`, by `A388975.P12312812905887415776.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A388975.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A388976.P9323048198730537457

`A033885(n+1)*A003961(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388976.P9323048198730537457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033885 (n + 1) * A003961 (n + 1)

end

end A388976.P9323048198730537457

noncomputable section

/-- A388976: a(n) = A033885(n) * A003961(n), where A033885(n) = 3*n-sigma(n), and A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A388976.P9323048198730537457`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A033885(n+1)*A003961(n+1)` (program `A388976.P9323048198730537457`, by `A388976.P9323048198730537457.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A388976 (n : ℕ) : ℤ :=
  A388976.P9323048198730537457.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A033885(n+1)*A003961(n+1)` (program `A388976.P9323048198730537457`, by `A388976.P9323048198730537457.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A388976.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A388977.P2451326477071846566

`(n+1)*A033885(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388977.P2451326477071846566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A033885 (A003961 (n + 1)).toNat

end

end A388977.P2451326477071846566

noncomputable section

/-- A388977: a(n) = n * A033885(A003961(n)), where A033885(n) = 3*n-sigma(n), and A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A388977.P2451326477071846566`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A033885(A003961(n+1))` (program `A388977.P2451326477071846566`, by `A388977.P2451326477071846566.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A388977 (n : ℕ) : ℤ :=
  A388977.P2451326477071846566.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A033885(A003961(n+1))` (program `A388977.P2451326477071846566`, by `A388977.P2451326477071846566.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A388977.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A389460.P4100129062004937204

`A000203(n+1)-A075423(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389460.P4100129062004937204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A075423 (n + 1)

end

end A389460.P4100129062004937204

noncomputable section

/-- A389460: a(n) = sigma(n) - A075423(n).

Offset 1, canonical program `A389460.P4100129062004937204`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)-A075423(n+1)` (program `A389460.P4100129062004937204`, by `A389460.P4100129062004937204.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A389460 (n : ℕ) : ℤ :=
  A389460.P4100129062004937204.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)-A075423(n+1)` (program `A389460.P4100129062004937204`, by `A389460.P4100129062004937204.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A389460.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A389461.P3198355901571096713

`A000203(n+1)-A075423(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389461.P3198355901571096713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A075423 (n + 1) - (n + 1 : ℤ)

end

end A389461.P3198355901571096713

noncomputable section

/-- A389461: a(n) = sigma(n) - A075423(n) - n.

Offset 1, canonical program `A389461.P3198355901571096713`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)-A075423(n+1)-(n+1)` (program `A389461.P3198355901571096713`, by `A389461.P3198355901571096713.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A389461 (n : ℕ) : ℤ :=
  A389461.P3198355901571096713.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)-A075423(n+1)-(n+1)` (program `A389461.P3198355901571096713`, by `A389461.P3198355901571096713.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A389461.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A389906.P15212015909118646054

`min(2*(n+1), A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389906.P15212015909118646054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (2 * (n + 1) : ℤ) (A003961 (n + 1))

end

end A389906.P15212015909118646054

noncomputable section

/-- A389906: a(n) = min(2*n, A003961(n)), where A003961 is fully multiplicative with a(p) = nextprime(p)

Offset 1, canonical program `A389906.P15212015909118646054`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `min(2*(n+1), A003961(n+1))` (program `A389906.P15212015909118646054`, by `A389906.P15212015909118646054.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A389906 (n : ℕ) : ℤ :=
  A389906.P15212015909118646054.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `min(2*(n+1), A003961(n+1))` (program `A389906.P15212015909118646054`, by `A389906.P15212015909118646054.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A389906.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A365618.P14703952896734191047

`A000120(col(n))+A000120(row(n)-col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A365618.P14703952896734191047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.triCol n) + A000120 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A365618.P14703952896734191047

noncomputable section

/-- A365618: Table read by antidiagonals: T(n, k) = A000120(n) + A000120(k).

Offset 0, canonical program `A365618.P14703952896734191047`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000120(col(n))+A000120(row(n)-col(n))` (program `A365618.P14703952896734191047`, by `A365618.P14703952896734191047.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A365618 (n : ℕ) : ℤ :=
  A365618.P14703952896734191047.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000120(col(n))+A000120(row(n)-col(n))` (program `A365618.P14703952896734191047`, by `A365618.P14703952896734191047.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A365618.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A367055.P14392645356822177858

`A000120(col(n))+A000120(row(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A367055.P14392645356822177858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.triCol n) + A000120 (SequenceMachineLib.triRow n)

end

end A367055.P14392645356822177858

noncomputable section

/-- A367055: Triangle read by rows: T(n, k) = A000120(n) + A000120(k), 0 <= k <= n.

Offset 0, canonical program `A367055.P14392645356822177858`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000120(col(n))+A000120(row(n))` (program `A367055.P14392645356822177858`, by `A367055.P14392645356822177858.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A367055 (n : ℕ) : ℤ :=
  A367055.P14392645356822177858.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000120(col(n))+A000120(row(n))` (program `A367055.P14392645356822177858`, by `A367055.P14392645356822177858.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A367055.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A367504.P13124596884726000078

`a(n-1)+2*A006530(a(n-1))` with `a(0)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A367504.P13124596884726000078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 2 * A006530 (a (n - 1)).toNat

end

end A367504.P13124596884726000078

noncomputable section

/-- A367504: a(1) = 2; for n > 1, a(n) = a(n-1) + 2*gpf(a(n-1)), where gpf(k) = A006530(k) = greatest prime dividing k.

Offset 1, canonical program `A367504.P13124596884726000078`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*A006530(a(n-1))` (program `A367504.P13124596884726000078`, by `A367504.P13124596884726000078.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A367504 (n : ℕ) : ℤ :=
  A367504.P13124596884726000078.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*A006530(a(n-1))` (program `A367504.P13124596884726000078`, by `A367504.P13124596884726000078.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A367504.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A368249.P9478047494338687151

`A002378(A005117(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A368249.P9478047494338687151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A005117 (n + 1) - 1).toNat

end

end A368249.P9478047494338687151

noncomputable section

/-- A368249: a(n) = A002378(A005117(n)-1).

Offset 1, canonical program `A368249.P9478047494338687151`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002378(A005117(n+1)-1)` (program `A368249.P9478047494338687151`, by `A368249.P9478047494338687151.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A368249 (n : ℕ) : ℤ :=
  A368249.P9478047494338687151.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002378(A005117(n+1)-1)` (program `A368249.P9478047494338687151`, by `A368249.P9478047494338687151.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A368249.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A379445.P16142173748708172020

`A006530(A000040(n+2)-1)*A006530(A000040(n+2)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379445.P16142173748708172020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000040 (n + 2) - 1).toNat * A006530 (A000040 (n + 2) + 1).toNat

end

end A379445.P16142173748708172020

noncomputable section

/-- A379445: a(n) = gpf(prime(n)-1)*gpf(prime(n)+1), where gpf is A006530.

Offset 2, canonical program `A379445.P16142173748708172020`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A006530(A000040(n+2)-1)*A006530(A000040(n+2)+1)` (program `A379445.P16142173748708172020`, by `A379445.P16142173748708172020.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379445 (n : ℕ) : ℤ :=
  A379445.P16142173748708172020.a (n - 2)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A006530(A000040(n+2)-1)*A006530(A000040(n+2)+1)` (program `A379445.P16142173748708172020`, by `A379445.P16142173748708172020.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A379445.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A387156.P9057070292798782768

`A003557(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387156.P9057070292798782768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A000203 (n + 1)).toNat

end

end A387156.P9057070292798782768

noncomputable section

/-- A387156: a(n) = A003557(sigma(n)), where A003557(n) is multiplicative with a(p^e) = p^(e-1), and sigma is the sum of divisors function.

Offset 1, canonical program `A387156.P9057070292798782768`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A003557(A000203(n+1))` (program `A387156.P9057070292798782768`, by `A387156.P9057070292798782768.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A387156 (n : ℕ) : ℤ :=
  A387156.P9057070292798782768.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A003557(A000203(n+1))` (program `A387156.P9057070292798782768`, by `A387156.P9057070292798782768.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A387156.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A389076.P11407624223470191631

`A000203(A003961(n+1))-A007913(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389076.P11407624223470191631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A003961 (n + 1)).toNat - A007913 (A003961 (n + 1)).toNat

end

end A389076.P11407624223470191631

noncomputable section

/-- A389076: Sum of all other divisors of primeshifted n except its squarefree part: a(n) = sigma(A003961(n)) - A007913(A003961(n)).

Offset 1, canonical program `A389076.P11407624223470191631`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(A003961(n+1))-A007913(A003961(n+1))` (program `A389076.P11407624223470191631`, by `A389076.P11407624223470191631.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A389076 (n : ℕ) : ℤ :=
  A389076.P11407624223470191631.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(A003961(n+1))-A007913(A003961(n+1))` (program `A389076.P11407624223470191631`, by `A389076.P11407624223470191631.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A389076.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A389077.P4480091173600006627

`A001065(A003961(n+1))-A007913(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389077.P4480091173600006627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A003961 (n + 1)).toNat - A007913 (A003961 (n + 1)).toNat

end

end A389077.P4480091173600006627

noncomputable section

/-- A389077: Sum of all other proper divisors of primeshifted n except its squarefree part: a(n) = A001065(A003961(n)) - A007913(A003961(n)).

Offset 1, canonical program `A389077.P4480091173600006627`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001065(A003961(n+1))-A007913(A003961(n+1))` (program `A389077.P4480091173600006627`, by `A389077.P4480091173600006627.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A389077 (n : ℕ) : ℤ :=
  A389077.P4480091173600006627.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001065(A003961(n+1))-A007913(A003961(n+1))` (program `A389077.P4480091173600006627`, by `A389077.P4480091173600006627.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A389077.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A389078.P3318520002911063327

`A003961(n+1)-A007913(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389078.P3318520002911063327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) - A007913 (A003961 (n + 1)).toNat

end

end A389078.P3318520002911063327

noncomputable section

/-- A389078: Primeshifted n minus its squarefree part: a(n) = A003961(n) - A007913(A003961(n)).

Offset 1, canonical program `A389078.P3318520002911063327`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A003961(n+1)-A007913(A003961(n+1))` (program `A389078.P3318520002911063327`, by `A389078.P3318520002911063327.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A389078 (n : ℕ) : ℤ :=
  A389078.P3318520002911063327.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A003961(n+1)-A007913(A003961(n+1))` (program `A389078.P3318520002911063327`, by `A389078.P3318520002911063327.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A389078.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A389408.P9215505709923838788

`a(n-1)+A006530(a(n-1))-1` with `a(0)=2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389408.P9215505709923838788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + A006530 (a (n - 1)).toNat - 1

end

end A389408.P9215505709923838788

noncomputable section

/-- A389408: a(1)=2; thereafter a(n) = a(n-1) + gpf(a(n-1)) - 1, where gpf = greatest prime factor = A006530.

Offset 1, canonical program `A389408.P9215505709923838788`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+A006530(a(n-1))-1` (program `A389408.P9215505709923838788`, by `A389408.P9215505709923838788.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A389408 (n : ℕ) : ℤ :=
  A389408.P9215505709923838788.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+A006530(a(n-1))-1` (program `A389408.P9215505709923838788`, by `A389408.P9215505709923838788.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A389408.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A398314.P10672701769070794526

`(n+1)*A002110(A000720(A006530(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398314.P10672701769070794526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002110 (A000720 (A006530 (n + 1)).toNat).toNat

end

end A398314.P10672701769070794526

noncomputable section

/-- A398314: a(n) = n * A002110(pi(gpf(n))), where pi = A000720 and gpf(n) is the greatest prime factor of n.

Offset 1, canonical program `A398314.P10672701769070794526`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A002110(A000720(A006530(n+1)))` (program `A398314.P10672701769070794526`, by `A398314.P10672701769070794526.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A398314 (n : ℕ) : ℤ :=
  A398314.P10672701769070794526.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A002110(A000720(A006530(n+1)))` (program `A398314.P10672701769070794526`, by `A398314.P10672701769070794526.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A398314.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A402273.P12033226829147703741

`A007913(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A402273.P12033226829147703741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (2 * n + 1)

end

end A402273.P12033226829147703741

noncomputable section

/-- A402273: Bisection of A007913: a(n) = A007913(2*n+1).

Offset 0, canonical program `A402273.P12033226829147703741`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A007913(2*n+1)` (program `A402273.P12033226829147703741`, by `A402273.P12033226829147703741.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A402273 (n : ℕ) : ℤ :=
  A402273.P12033226829147703741.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A007913(2*n+1)` (program `A402273.P12033226829147703741`, by `A402273.P12033226829147703741.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A402273.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A363061.P1967656336257885531

`A010846(A002110(n))`
-/

namespace A363061.P1967656336257885531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (A002110 n).toNat

end

end A363061.P1967656336257885531

noncomputable section

/-- A363061: Number of k <= P(n) such that rad(k) | P(n), where rad(n) = A007947(n) and P(n) = A002110(n).

Offset 0, canonical program `A363061.P1967656336257885531`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363061 (n : ℕ) : ℤ :=
  A363061.P1967656336257885531.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363061.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A363604.P1742819399348317644

`A092348(n+1)/6`
-/

namespace A363604.P1742819399348317644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092348 (n + 1) : ℚ) / 6

end

end A363604.P1742819399348317644

noncomputable section

/-- A363604: Expansion of Sum_{k>0} x^(2*k)/(1-x^k)^4.

Offset 1, canonical program `A363604.P1742819399348317644`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363604 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363604.P1742819399348317644.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363604.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A363924.P5288974714272760968

`A010846(A005117(n+1))`
-/

namespace A363924.P5288974714272760968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (A005117 (n + 1)).toNat

end

end A363924.P5288974714272760968

noncomputable section

/-- A363924: a(n) = number of k <= m such that rad(k) | m, where m = A005117(n) and rad(n) = A007947(n).

Offset 1, canonical program `A363924.P5288974714272760968`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363924 (n : ℕ) : ℤ :=
  A363924.P5288974714272760968.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363924.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A364194.P12745892002767379182

`∑{#}[n, (#+1)^4*A000537(floor((n+1)/(#+1)))]`
-/

namespace A364194.P12745892002767379182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((k + 1) ^ 4 : ℤ) * A000537 ⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋.toNat

end

end A364194.P12745892002767379182

noncomputable section

/-- A364194: a(n) = Sum_{k=1..n} k^3*sigma(k), where sigma is A000203.

Offset 1, canonical program `A364194.P12745892002767379182`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364194 (n : ℕ) : ℤ :=
  A364194.P12745892002767379182.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364194.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A364269.P10957095014084547296

`∑{#}[n, (#+1)^5*A000537(floor((n+1)/(#+1)))]`
-/

namespace A364269.P10957095014084547296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((k + 1) ^ 5 : ℤ) * A000537 ⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋.toNat

end

end A364269.P10957095014084547296

noncomputable section

/-- A364269: a(n) = Sum_{k=1..n} k^3*sigma_2(k), where sigma_2 is A001157.

Offset 1, canonical program `A364269.P10957095014084547296`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364269 (n : ℕ) : ℤ :=
  A364269.P10957095014084547296.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364269.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A364377.P9444076824307639335

`val(A265747(n+1), 10)`
-/

namespace A364377.P9444076824307639335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A265747 (n + 1)).toNat 10

end

end A364377.P9444076824307639335

noncomputable section

/-- A364377: The number of trailing 0's in the representation of n in Jacobsthal greedy base (A265747).

Offset 1, canonical program `A364377.P9444076824307639335`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364377 (n : ℕ) : ℤ :=
  (A364377.P9444076824307639335.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364377.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A364636.P14583533737754547880

`2*A364553(n)-A093967(n)`
-/

namespace A364636.P14583533737754547880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A364553 n - A093967 n

end

end A364636.P14583533737754547880

noncomputable section

/-- A364636: a(n) = ((1 - sqrt(2))^n + (1 + sqrt(2))^n)*n/2.

Offset 0, canonical program `A364636.P14583533737754547880`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364636 (n : ℕ) : ℤ :=
  A364636.P14583533737754547880.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364636.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A364878.P8420984608544847247

`A002110(row(n)-col(n))*A002110(row(n))`
-/

namespace A364878.P8420984608544847247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) * A002110 (SequenceMachineLib.triRow n)

end

end A364878.P8420984608544847247

noncomputable section

/-- A364878: Triangle read by rows: T(n,k), 0 <= k <= n, is the smallest number that has n distinct prime factors, k of which are unique.

Offset 0, canonical program `A364878.P8420984608544847247`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364878 (n : ℕ) : ℤ :=
  A364878.P8420984608544847247.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A364878.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365178.P6418483225097712338

`∑{#}[n, C(#, n-#)*A002293(#)]`
-/

namespace A365178.P6418483225097712338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose k ((n : ℤ) - (k : ℤ)).toNat : ℤ) * A002293 k

end

end A365178.P6418483225097712338

noncomputable section

/-- A365178: G.f. satisfies A(x) = 1 + x*A(x)^4*(1 + x).

Offset 0, canonical program `A365178.P6418483225097712338`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365178 (n : ℕ) : ℤ :=
  A365178.P6418483225097712338.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365178.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365184.P5166381551999216733

`∑{#}[n, C(#, n-#)*A002294(#)]`
-/

namespace A365184.P5166381551999216733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose k ((n : ℤ) - (k : ℤ)).toNat : ℤ) * A002294 k

end

end A365184.P5166381551999216733

noncomputable section

/-- A365184: G.f. satisfies A(x) = 1 + x*A(x)^5*(1 + x).

Offset 0, canonical program `A365184.P5166381551999216733`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365184 (n : ℕ) : ℤ :=
  A365184.P5166381551999216733.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365184.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365341.P11718460894782233926

`A000142(n)*A002294(n)`
-/

namespace A365341.P11718460894782233926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A002294 n

end

end A365341.P11718460894782233926

noncomputable section

/-- A365341: a(n) = (5*n)!/(4*n+1)!.

Offset 0, canonical program `A365341.P11718460894782233926`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365341 (n : ℕ) : ℤ :=
  A365341.P11718460894782233926.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365341.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365459.P9893649784102911518

`n+1-A365458(n+1)`
-/

namespace A365459.P9893649784102911518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A365458 (n + 1)

end

end A365459.P9893649784102911518

noncomputable section

/-- A365459: a(n) = n - the largest power of 3 that is less than or equal to n.

Offset 1, canonical program `A365459.P9893649784102911518`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365459 (n : ℕ) : ℤ :=
  A365459.P9893649784102911518.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365459.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365628.P3061762940995932067

`C(A002110(n), n)`
-/

namespace A365628.P3061762940995932067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002110 n).toNat n

end

end A365628.P3061762940995932067

noncomputable section

/-- A365628: a(n) = binomial(primorial(n), n).

Offset 0, canonical program `A365628.P3061762940995932067`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365628 (n : ℕ) : ℤ :=
  (A365628.P3061762940995932067.a n : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365628.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365767.P11724764653640938392

`A038098(A000040(n+2))-A038098(A000040(n+1))`
-/

namespace A365767.P11724764653640938392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038098 (A000040 (n + 2)).toNat - A038098 (A000040 (n + 1)).toNat

end

end A365767.P11724764653640938392

noncomputable section

/-- A365767: a(n) is the number of primes between (prime(n))^3 and (prime(n+1))^3.

Offset 1, canonical program `A365767.P11724764653640938392`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365767 (n : ℕ) : ℤ :=
  A365767.P11724764653640938392.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365767.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366368.P8633765823509835394

`A003418(n)*A139550(n)`
-/

namespace A366368.P8633765823509835394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 n * A139550 n

end

end A366368.P8633765823509835394

noncomputable section

/-- A366368: a(n) = LCM of pairwise products of distinct integers from {1,2,...,n}.

Offset 0, canonical program `A366368.P8633765823509835394`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366368 (n : ℕ) : ℤ :=
  A366368.P8633765823509835394.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366368.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366369.P15037694032256763167

`A003418(n)/A139550(n)`
-/

namespace A366369.P15037694032256763167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (A139550 n : ℚ)

end

end A366369.P15037694032256763167

noncomputable section

/-- A366369: a(n) = product of primes p such that p^k <= n < 2*p^k for some k >= 1.

Offset 0, canonical program `A366369.P15037694032256763167`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366369 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A366369.P15037694032256763167.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366369.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366584.P7255468611177998519

`A006530(A000073(n+2))`
-/

namespace A366584.P7255468611177998519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000073 (n + 2)).toNat

end

end A366584.P7255468611177998519

noncomputable section

/-- A366584: a(2) = a(3) = 1; for n >3, a(n) = largest prime factor of n-th Tribonacci number.

Offset 2, canonical program `A366584.P7255468611177998519`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366584 (n : ℕ) : ℤ :=
  A366584.P7255468611177998519.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366584.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366603.P3579980380335303809

`A069061(n+1)*A075708(n+1)`
-/

namespace A366603.P3579980380335303809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069061 (n + 1) * A075708 (n + 1)

end

end A366603.P3579980380335303809

noncomputable section

/-- A366603: Sum of the divisors of 4^n-1.

Offset 1, canonical program `A366603.P3579980380335303809`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366603 (n : ℕ) : ℤ :=
  A366603.P3579980380335303809.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366603.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366653.P16437631560606292113

`A075708(3*(n+1))`
-/

namespace A366653.P16437631560606292113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075708 (3 * (n + 1))

end

end A366653.P16437631560606292113

noncomputable section

/-- A366653: Sum of the divisors of 8^n-1.

Offset 1, canonical program `A366653.P16437631560606292113`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366653 (n : ℕ) : ℤ :=
  A366653.P16437631560606292113.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366653.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366662.P10540337059653051103

`A366576(2*(n+1))`
-/

namespace A366662.P10540337059653051103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366576 (2 * (n + 1))

end

end A366662.P10540337059653051103

noncomputable section

/-- A366662: Sum of the divisors of 9^n-1.

Offset 1, canonical program `A366662.P10540337059653051103`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366662 (n : ℕ) : ℤ :=
  A366662.P10540337059653051103.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366662.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366666.P7420732063156862119

`A366578(2*n)`
-/

namespace A366666.P7420732063156862119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366578 (2 * n)

end

end A366666.P7420732063156862119

noncomputable section

/-- A366666: Sum of the divisors of 9^n+1.

Offset 0, canonical program `A366666.P7420732063156862119`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366666 (n : ℕ) : ℤ :=
  A366666.P7420732063156862119.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366666.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366672.P17060177360912263348

`A002720(n)^n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A366672.P17060177360912263348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002720 n ^ n

end

end A366672.P17060177360912263348

noncomputable section

/-- A366672: a(n) = A002720(n)^n.

Offset 0, canonical program `A366672.P17060177360912263348`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366672 (n : ℕ) : ℤ :=
  A366672.P17060177360912263348.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366672.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366720.P18291755538968107855

`A006530(A178248(n))`
-/

namespace A366720.P18291755538968107855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A178248 n).toNat

end

end A366720.P18291755538968107855

noncomputable section

/-- A366720: Largest prime factor of 12^n+1.

Offset 0, canonical program `A366720.P18291755538968107855`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366720 (n : ℕ) : ℤ :=
  A366720.P18291755538968107855.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366720.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366922.P8080897665247785144

`A051064(n+1)+1`
-/

namespace A366922.P8080897665247785144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051064 (n + 1) + 1

end

end A366922.P8080897665247785144

noncomputable section

/-- A366922: a(n) is the exponent of 3 in the prime factorization of 10^n - 1.

Offset 1, canonical program `A366922.P8080897665247785144`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366922 (n : ℕ) : ℤ :=
  A366922.P8080897665247785144.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366922.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367003.P10899407354706323176

`A006530(A003261(n+1))`
-/

namespace A367003.P10899407354706323176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A003261 (n + 1)).toNat

end

end A367003.P10899407354706323176

noncomputable section

/-- A367003: a(n) is the largest prime factor of n*2^n-1.

Offset 1, canonical program `A367003.P10899407354706323176`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367003 (n : ℕ) : ℤ :=
  A367003.P10899407354706323176.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367003.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367005.P7593407316265420145

`A006530(A002064(n))`
-/

namespace A367005.P7593407316265420145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A002064 n).toNat

end

end A367005.P7593407316265420145

noncomputable section

/-- A367005: a(n) is the largest prime factor of n*2^n+1 for n>0, and a(0)=1.

Offset 0, canonical program `A367005.P7593407316265420145`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367005 (n : ℕ) : ℤ :=
  A367005.P7593407316265420145.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367005.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367016.P13970985754106917565

`∑{#}[n, (-1)^(n-#)*C(#, n-#)*A002293(#)]`
-/

namespace A367016.P13970985754106917565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose k ((n : ℤ) - (k : ℤ)).toNat : ℚ) * (A002293 k : ℚ)

end

end A367016.P13970985754106917565

noncomputable section

/-- A367016: G.f. satisfies A(x) = 1 + x*A(x)^4*(1 - x).

Offset 0, canonical program `A367016.P13970985754106917565`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367016 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367016.P13970985754106917565.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367016.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367017.P1599948391230164342

`∑{#}[n, (-1)^(n-#)*C(#, n-#)*A002294(#)]`
-/

namespace A367017.P1599948391230164342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose k ((n : ℤ) - (k : ℤ)).toNat : ℚ) * (A002294 k : ℚ)

end

end A367017.P1599948391230164342

noncomputable section

/-- A367017: G.f. satisfies A(x) = 1 + x*A(x)^5*(1 - x).

Offset 0, canonical program `A367017.P1599948391230164342`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367017 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367017.P1599948391230164342.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367017.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367114.P12307501775675068254

`∑{#}[floor(n/4), 2^(n-4*#)*C(n, 4*#)*A002293(#)]`
-/

namespace A367114.P12307501775675068254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (2 : ℚ) ^ ((n : ℤ) - (4 * k : ℤ) : ℤ) * (Nat.choose n (4 * k) : ℚ) * (A002293 k : ℚ)

end

end A367114.P12307501775675068254

noncomputable section

/-- A367114: G.f. satisfies A(x) = 1 + 2*x*A(x) + x^4*A(x)^4.

Offset 0, canonical program `A367114.P12307501775675068254`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367114 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367114.P12307501775675068254.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367114.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367115.P6748874283581440746

`∑{#}[floor(n/4), 2^(n-3*#)*C(n, 4*#)*A002293(#)]`
-/

namespace A367115.P6748874283581440746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (2 : ℚ) ^ ((n : ℤ) - (3 * k : ℤ) : ℤ) * (Nat.choose n (4 * k) : ℚ) * (A002293 k : ℚ)

end

end A367115.P6748874283581440746

noncomputable section

/-- A367115: G.f. satisfies A(x) = 1 + 2*x*A(x) + 2*x^4*A(x)^4.

Offset 0, canonical program `A367115.P6748874283581440746`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367115 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367115.P6748874283581440746.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367115.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367870.P3261918350467240858

`A245579(n+1)-A000593(n+1)`
-/

namespace A367870.P3261918350467240858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245579 (n + 1) - A000593 (n + 1)

end

end A367870.P3261918350467240858

noncomputable section

/-- A367870: a(n) = Sum_{d|n, d odd} (n-d).

Offset 1, canonical program `A367870.P3261918350467240858`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367870 (n : ℕ) : ℤ :=
  A367870.P3261918350467240858.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367870.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367891.P16492733751129529228

`∑{#}[n, C(n, #)*(-4)^(n-#)*A078944(#)]`
-/

namespace A367891.P16492733751129529228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℚ) * (-4 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A078944 k : ℚ)

end

end A367891.P16492733751129529228

noncomputable section

/-- A367891: Expansion of e.g.f. exp(4*(exp(x) - 1 - x)).

Offset 0, canonical program `A367891.P16492733751129529228`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367891 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367891.P16492733751129529228.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367891.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369059.P13689548116174192747

`A002620(A002110(n))`
-/

namespace A369059.P13689548116174192747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A002110 n).toNat

end

end A369059.P13689548116174192747

noncomputable section

/-- A369059: a(0) = 0, and for n > 0, a(n) is the square of the product of first n-1 odd primes.

Offset 0, canonical program `A369059.P13689548116174192747`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369059 (n : ℕ) : ℤ :=
  A369059.P13689548116174192747.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369059.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369810.P6592128196772303573

`(n+1)*A284816(n+1)`
-/

namespace A369810.P6592128196772303573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A284816 (n + 1)

end

end A369810.P6592128196772303573

noncomputable section

/-- A369810: Number of ways to color n+1 identical balls using n distinct colors (each color is used) and place them in n numbered cells so that each cell contains at least one ball.

Offset 1, canonical program `A369810.P6592128196772303573`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369810 (n : ℕ) : ℤ :=
  A369810.P6592128196772303573.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369810.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369911.P8672809720645014539

`∑{d}[n+1, A061397(#)*A008472((n+1)/#)]`
-/

namespace A369911.P8672809720645014539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061397 d * A008472 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369911.P8672809720645014539

noncomputable section

/-- A369911: a(n) = Sum_{p|n, p prime} p * sopf(n/p).

Offset 1, canonical program `A369911.P8672809720645014539`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369911 (n : ℕ) : ℤ :=
  A369911.P8672809720645014539.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369911.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370058.P6107118682366647322

`A000142(n)*A002293(n+1)`
-/

namespace A370058.P6107118682366647322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A002293 (n + 1)

end

end A370058.P6107118682366647322

noncomputable section

/-- A370058: a(n) = 4*(4*n+3)!/(3*n+4)!.

Offset 0, canonical program `A370058.P6107118682366647322`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370058 (n : ℕ) : ℤ :=
  A370058.P6107118682366647322.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370058.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370358.P5165562145281802693

`A025035(n)-A370357(n)`
-/

namespace A370358.P5165562145281802693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025035 n - A370357 n

end

end A370358.P5165562145281802693

noncomputable section

/-- A370358: Number of partitions of [3n] into n sets of size 3 having at least one set {3j-2,3j-1,3j} (1<=j<=n).

Offset 0, canonical program `A370358.P5165562145281802693`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370358 (n : ℕ) : ℤ :=
  A370358.P5165562145281802693.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370358.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A371035.P16764897474429025175

`A086330(A000040(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A371035.P16764897474429025175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086330 (A000040 (n + 1)).toNat

end

end A371035.P16764897474429025175

noncomputable section

/-- A371035: a(n) = A086330(prime(n)).

Offset 1, canonical program `A371035.P16764897474429025175`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371035 (n : ℕ) : ℤ :=
  A371035.P16764897474429025175.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371035.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A371381.P5949282707073329261

`(n+1)²+A019446(n+1)²`
-/

namespace A371381.P5949282707073329261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + A019446 (n + 1) ^ 2

end

end A371381.P5949282707073329261

noncomputable section

/-- A371381: Main diagonal of A219875.

Offset 1, canonical program `A371381.P5949282707073329261`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371381 (n : ℕ) : ℤ :=
  A371381.P5949282707073329261.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371381.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A371418.P15300476312554260004

`A032742(A000203(n+1))`
-/

namespace A371418.P15300476312554260004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A000203 (n + 1)).toNat

end

end A371418.P15300476312554260004

noncomputable section

/-- A371418: The largest aliquot divisor of the sum of divisors of n; a(1) = 1.

Offset 1, canonical program `A371418.P15300476312554260004`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371418 (n : ℕ) : ℤ :=
  A371418.P15300476312554260004.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371418.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A371573.P10360208169358874223

`lcm(A020639(n+1), A032742(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A371573.P10360208169358874223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020639 (n + 1)) (A032742 (n + 1))

end

end A371573.P10360208169358874223

noncomputable section

/-- A371573: a(n) = lcm(A020639(n), A032742(n)).

Offset 1, canonical program `A371573.P10360208169358874223`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371573 (n : ℕ) : ℤ :=
  (A371573.P10360208169358874223.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371573.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372199.P3867827337780857125

`(n+1)!*A000045(n+1)*A001008(n+1)/A002805(n+1)`
-/

namespace A372199.P3867827337780857125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 1) : ℤ) * A000045 (n + 1) * A001008 (n + 1) : ℚ) / (A002805 (n + 1) : ℚ)

end

end A372199.P3867827337780857125

noncomputable section

/-- A372199: a(n) = n! * F(n) * H(n), where F(n) is the n-th Fibonacci number and H(n) the n-th harmonic number.

Offset 1, canonical program `A372199.P3867827337780857125`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372199 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A372199.P3867827337780857125.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372199.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372210.P7092640518957855852

`(n+1)!*A000129(n+1)*A001008(n+1)/A002805(n+1)`
-/

namespace A372210.P7092640518957855852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 1) : ℤ) * A000129 (n + 1) * A001008 (n + 1) : ℚ) / (A002805 (n + 1) : ℚ)

end

end A372210.P7092640518957855852

noncomputable section

/-- A372210: Product of n!, n-th Pell number and n-th harmonic number.

Offset 1, canonical program `A372210.P7092640518957855852`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372210 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A372210.P7092640518957855852.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372210.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372228.P5998843933586257429

`A006530(A066068(n+1))`
-/

namespace A372228.P5998843933586257429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A066068 (n + 1)).toNat

end

end A372228.P5998843933586257429

noncomputable section

/-- A372228: a(n) is the largest prime factor of n^n + n.

Offset 1, canonical program `A372228.P5998843933586257429`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372228 (n : ℕ) : ℤ :=
  A372228.P5998843933586257429.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372228.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372229.P6682383042965722877

`A006530(A061190(n+2))`
-/

namespace A372229.P6682383042965722877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A061190 (n + 2)).toNat

end

end A372229.P6682383042965722877

noncomputable section

/-- A372229: a(n) is the largest prime factor of n^n - n.

Offset 2, canonical program `A372229.P6682383042965722877`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372229 (n : ℕ) : ℤ :=
  A372229.P6682383042965722877.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372229.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372263.P7775255301555679963

`A020639(max(A000265(A001043(n+1)), 2))`
-/

namespace A372263.P7775255301555679963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (max (A000265 (A001043 (n + 1)).toNat) (2 : ℤ)).toNat

end

end A372263.P7775255301555679963

noncomputable section

/-- A372263: Least odd prime factor of the n-th sum of two consecutive primes, A001043(n) = prime(n) + prime(n+1), or 2 if there is no odd prime factor.

Offset 1, canonical program `A372263.P7775255301555679963`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372263 (n : ℕ) : ℤ :=
  A372263.P7775255301555679963.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372263.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372433.P16694252056645757235

`A000120(A005117(n+1))`
-/

namespace A372433.P16694252056645757235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A005117 (n + 1)).toNat

end

end A372433.P16694252056645757235

noncomputable section

/-- A372433: Binary weight (number of ones in binary expansion) of the n-th squarefree number.

Offset 1, canonical program `A372433.P16694252056645757235`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372433 (n : ℕ) : ℤ :=
  A372433.P16694252056645757235.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372433.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372441.P9103232244176697069

`A000120(n+1)-A001222(n+1)`
-/

namespace A372441.P9103232244176697069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) - A001222 (n + 1)

end

end A372441.P9103232244176697069

noncomputable section

/-- A372441: Number of binary indices (binary weight) of n minus number of prime indices (bigomega) of n.

Offset 1, canonical program `A372441.P9103232244176697069`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372441 (n : ℕ) : ℤ :=
  A372441.P9103232244176697069.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372441.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372574.P874515213423123468

`A354354(A007913(n+1))`
-/

namespace A372574.P874515213423123468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354354 (A007913 (n + 1)).toNat

end

end A372574.P874515213423123468

noncomputable section

/-- A372574: a(n) = 1 if the squarefree part of n is congruent to 1 or 5 modulo 6, otherwise 0.

Offset 1, canonical program `A372574.P874515213423123468`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372574 (n : ℕ) : ℤ :=
  A372574.P874515213423123468.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372574.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372611.P10497347808806131857

`2*a(n-1)+A028322(n)` with `a(0)=1`
-/

namespace A372611.P10497347808806131857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A028322 n

end

end A372611.P10497347808806131857

noncomputable section

/-- A372611: Expansion of (1 + 3*x) / ((1 - 2*x)*sqrt(1 - 4*x)).

Offset 0, canonical program `A372611.P10497347808806131857`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372611 (n : ℕ) : ℤ :=
  A372611.P10497347808806131857.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372611.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372730.P3092726674600062018

`A000720(A005867(n))`
-/

namespace A372730.P3092726674600062018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A005867 n).toNat

end

end A372730.P3092726674600062018

noncomputable section

/-- A372730: Number of primes <= A005867(n).

Offset 0, canonical program `A372730.P3092726674600062018`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372730 (n : ℕ) : ℤ :=
  A372730.P3092726674600062018.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372730.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372924.P2536163758219034350

`(A004164(n)-n)/3`
-/

namespace A372924.P2536163758219034350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004164 n - (n : ℤ) : ℚ) / 3

end

end A372924.P2536163758219034350

noncomputable section

/-- A372924: a(n) = (sum_digits(n^3)-n)/3.

Offset 0, canonical program `A372924.P2536163758219034350`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372924 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A372924.P2536163758219034350.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372924.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373016.P2031291891959253969

`A080883(A045944(n+1))`
-/

namespace A373016.P2031291891959253969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080883 (A045944 (n + 1)).toNat

end

end A373016.P2031291891959253969

noncomputable section

/-- A373016: a(n) is the least positive integer k such that 3*n^2 + 2*n + k is a square.

Offset 1, canonical program `A373016.P2031291891959253969`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373016 (n : ℕ) : ℤ :=
  A373016.P2031291891959253969.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373016.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373041.P17794873688395257527

`(A123323(n+5)-3*A023022(n+5))/2`
-/

namespace A373041.P17794873688395257527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123323 (n + 5) - 3 * A023022 (n + 5) : ℚ) / 2

end

end A373041.P17794873688395257527

noncomputable section

/-- A373041: 2*a(n) is the number of triangles with integer sides (x, y, n), x < y < n, and gcd(x, y, n) = 1.

Offset 5, canonical program `A373041.P17794873688395257527`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373041 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A373041.P17794873688395257527.a (n - 5))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373041.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373154.P41254786666242686

`abs(A355688(n+1))`
-/

namespace A373154.P41254786666242686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A355688 (n + 1)|

end

end A373154.P41254786666242686

noncomputable section

/-- A373154: a(n) = 1 if 6*n is squarefree, otherwise 0.

Offset 1, canonical program `A373154.P41254786666242686`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373154 (n : ℕ) : ℤ :=
  A373154.P41254786666242686.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373154.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373330.P5187937937214076457

`A000217(n²)-A373329(n)²`
-/

namespace A373330.P5187937937214076457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n ^ 2) - A373329 n ^ 2

end

end A373330.P5187937937214076457

noncomputable section

/-- A373330: a(n) is the difference between T = A000217(n^2) and the greatest square not exceeding T.

Offset 0, canonical program `A373330.P5187937937214076457`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373330 (n : ℕ) : ℤ :=
  A373330.P5187937937214076457.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373330.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373368.P10076584005763956220

`gcd(n+1, A059975(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373368.P10076584005763956220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A059975 (n + 1))

end

end A373368.P10076584005763956220

noncomputable section

/-- A373368: a(n) = gcd(n, A059975(n)), where A059975 is fully additive with a(p) = p-1.

Offset 1, canonical program `A373368.P10076584005763956220`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373368 (n : ℕ) : ℤ :=
  (A373368.P10076584005763956220.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373368.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373369.P17143598669041720275

`gcd(A001414(n+1), A059975(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373369.P17143598669041720275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001414 (n + 1)) (A059975 (n + 1))

end

end A373369.P17143598669041720275

noncomputable section

/-- A373369: a(n) = gcd(A001414(n), A059975(n)), where A001414 and A059975 are fully additive with a(p) = p and a(p) = p-1, respectively.

Offset 1, canonical program `A373369.P17143598669041720275`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373369 (n : ℕ) : ℤ :=
  (A373369.P17143598669041720275.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373369.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373438.P8083695009353122780

`A000217(A051064(n+1))`
-/

namespace A373438.P8083695009353122780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A051064 (n + 1)).toNat

end

end A373438.P8083695009353122780

noncomputable section

/-- A373438: Expansion of Sum_{k>=1} k * x^(3^(k-1)) / (1 - x^(3^(k-1))).

Offset 1, canonical program `A373438.P8083695009353122780`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373438 (n : ℕ) : ℤ :=
  A373438.P8083695009353122780.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373438.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373550.P1857788289834885928

`A000035(A005117(n+1))`
-/

namespace A373550.P1857788289834885928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A005117 (n + 1)).toNat

end

end A373550.P1857788289834885928

noncomputable section

/-- A373550: a(n) is the parity of the n-th squarefree number.

Offset 1, canonical program `A373550.P1857788289834885928`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373550 (n : ℕ) : ℤ :=
  A373550.P1857788289834885928.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373550.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374098.P6447697488558684965

`A112387(n)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374098.P6447697488558684965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112387 n ^ 2

end

end A374098.P6447697488558684965

noncomputable section

/-- A374098: a(n) = A112387(n)^2.

Offset 0, canonical program `A374098.P6447697488558684965`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374098 (n : ℕ) : ℤ :=
  A374098.P6447697488558684965.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374098.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374146.P10192998287508786538

`A004648(A001223(n+1))`
-/

namespace A374146.P10192998287508786538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (A001223 (n + 1)).toNat

end

end A374146.P10192998287508786538

noncomputable section

/-- A374146: a(n) = prime(g) mod g where prime gap g = prime(n+1) - prime(n).

Offset 1, canonical program `A374146.P10192998287508786538`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374146 (n : ℕ) : ℤ :=
  A374146.P10192998287508786538.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374146.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374150.P2027937700261000642

`A006450(2^n)`
-/

namespace A374150.P2027937700261000642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (2 ^ n)

end

end A374150.P2027937700261000642

noncomputable section

/-- A374150: a(n) is the (2^n)-th prime-indexed prime.

Offset 0, canonical program `A374150.P2027937700261000642`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374150 (n : ℕ) : ℤ :=
  A374150.P2027937700261000642.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374150.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374222.P6993703694642363716

`A079978(A374126(n+1))`
-/

namespace A374222.P6993703694642363716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A374126 (n + 1)).toNat

end

end A374222.P6993703694642363716

noncomputable section

/-- A374222: a(n) = 1 if sigma(n) and sopfr(n) are both multiples of 3, otherwise 0, where sigma is the sum of divisors, and sopfr is the sum of prime factors with repetition.

Offset 1, canonical program `A374222.P6993703694642363716`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374222 (n : ℕ) : ℤ :=
  A374222.P6993703694642363716.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374222.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375222.P8653183755171036036

`(n+1)*A374980(n)`
-/

namespace A375222.P8653183755171036036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A374980 n

end

end A375222.P8653183755171036036

noncomputable section

/-- A375222: a(n) is the number of permutations of the multiset 1,1, 2,2, ..., n,n such that exactly one pair k,k stays at its initial locations 2k-1, 2k.

Offset 1, canonical program `A375222.P8653183755171036036`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375222 (n : ℕ) : ℤ :=
  A375222.P8653183755171036036.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375222.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375223.P5530167401544985556

`∑{#}[n, C(n+1, #+1)*A374980(n+1-(#+1))]`
-/

namespace A375223.P5530167401544985556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + 1) (k + 1) : ℤ) * A374980 (n + 1 - (k + 1))

end

end A375223.P5530167401544985556

noncomputable section

/-- A375223: a(n) is the number of permutations of the multiset 1,1, 2,2, ..., n,n such that at least one pair k,k stays at its initial locations 2k-1, 2k.

Offset 1, canonical program `A375223.P5530167401544985556`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375223 (n : ℕ) : ℤ :=
  A375223.P5530167401544985556.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375223.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375240.P16828847594714467939

`A007913(n+1)*a(A000188(n+1)-1)` with `a(0)=1`
-/

namespace A375240.P16828847594714467939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007913 (n + 1) * a (A000188 (n + 1) - 1).toNat

end

end A375240.P16828847594714467939

noncomputable section

/-- A375240: For squarefree j, a(j*k^2) = j * a(k), a(1) = 1.

Offset 1, canonical program `A375240.P16828847594714467939`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375240 (n : ℕ) : ℤ :=
  A375240.P16828847594714467939.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375240.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375248.P9379692103112221284

`C(n+5, 3)/10*A014531(n+1)`
-/

namespace A375248.P9379692103112221284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 5) 3 : ℚ) / 10 * (A014531 (n + 1) : ℚ)

end

end A375248.P9379692103112221284

noncomputable section

/-- A375248: Expansion of (1 - x)/(1 - 2*x - 3*x^2)^(7/2).

Offset 0, canonical program `A375248.P9379692103112221284`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375248 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375248.P9379692103112221284.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375248.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375253.P16386272213412012190

`C(n+4, 3)/4*A005717(n+1)`
-/

namespace A375253.P16386272213412012190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 3 : ℚ) / 4 * (A005717 (n + 1) : ℚ)

end

end A375253.P16386272213412012190

noncomputable section

/-- A375253: Expansion of (1 - 2*x + 2*x^2)/(1 - 2*x - 3*x^2)^(7/2).

Offset 0, canonical program `A375253.P16386272213412012190`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375253 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375253.P16386272213412012190.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375253.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375259.P1485927689670564593

`C(n+5, 4)/5*A005717(n+1)`
-/

namespace A375259.P1485927689670564593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 5) 4 : ℚ) / 5 * (A005717 (n + 1) : ℚ)

end

end A375259.P1485927689670564593

noncomputable section

/-- A375259: Expansion of (1 - 3*x + 6*x^2 - 4*x^3)/(1 - 2*x - 3*x^2)^(9/2).

Offset 0, canonical program `A375259.P1485927689670564593`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375259 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375259.P1485927689670564593.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375259.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A376116.P15301336638265797168

`2*(n+1)-A000120(n+1)-A070939(n+1)`
-/

namespace A376116.P15301336638265797168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A000120 (n + 1) - A070939 (n + 1)

end

end A376116.P15301336638265797168

noncomputable section

/-- A376116: Number of times the root fires in a chip-firing game starting with 2n chips placed at the root on an infinite binary tree with a loop at the root.

Offset 1, canonical program `A376116.P15301336638265797168`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376116 (n : ℕ) : ℤ :=
  A376116.P15301336638265797168.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376116.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A376161.P5653477694830852408

`A007054(n)*(3*n+2)/2`
-/

namespace A376161.P5653477694830852408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007054 n * (3 * n + 2 : ℤ) : ℚ) / 2

end

end A376161.P5653477694830852408

noncomputable section

/-- A376161: Number of support Tau-tilting modules for some algebras.

Offset 0, canonical program `A376161.P5653477694830852408`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376161 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A376161.P5653477694830852408.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376161.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A376504.P12289890857249372903

`A034444(n+1)-A001221(n+1)-1`
-/

namespace A376504.P12289890857249372903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A001221 (n + 1) - 1

end

end A376504.P12289890857249372903

noncomputable section

/-- A376504: Number of divisors of n that are both composite and squarefree.

Offset 1, canonical program `A376504.P12289890857249372903`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376504 (n : ℕ) : ℤ :=
  A376504.P12289890857249372903.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376504.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A376873.P11691204924923537932

`n!*A187646(n)`
-/

namespace A376873.P11691204924923537932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A187646 n

end

end A376873.P11691204924923537932

noncomputable section

/-- A376873: a(n) = n! * |Stirling1(2*n, n)|.

Offset 0, canonical program `A376873.P11691204924923537932`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376873 (n : ℕ) : ℤ :=
  A376873.P11691204924923537932.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376873.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377065.P12584164709197230038

`(A172634(n)-1)/6+1`
-/

namespace A377065.P12584164709197230038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172634 n - 1 : ℚ) / 6 + 1

end

end A377065.P12584164709197230038

noncomputable section

/-- A377065: Number of 3 X n 0..2 matrices with row sums n and column sums 3 up to permutations of rows.

Offset 0, canonical program `A377065.P12584164709197230038`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377065 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A377065.P12584164709197230038.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377065.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377461.P17554263378634026354

`A001405(n)*A006472(floor((n+2)/2))*A006472(ceil((n+2)/2))`
-/

namespace A377461.P17554263378634026354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A006472 ⌊(n + 2 : ℚ) / 2⌋.toNat * A006472 ⌈(n + 2 : ℚ) / 2⌉.toNat

end

end A377461.P17554263378634026354

noncomputable section

/-- A377461: Number of ranked labeled trees compatible with the 2-leaf perfect phylogeny of sample size n that possesses the largest number of compatible ranked labeled trees.

Offset 2, canonical program `A377461.P17554263378634026354`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377461 (n : ℕ) : ℤ :=
  A377461.P17554263378634026354.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377461.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377876.P4332793020141651312

`A002110(n)%27`
-/

namespace A377876.P4332793020141651312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002110 n) 27

end

end A377876.P4332793020141651312

noncomputable section

/-- A377876: The n-th primorial number reduced modulo 27.

Offset 0, canonical program `A377876.P4332793020141651312`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377876 (n : ℕ) : ℤ :=
  A377876.P4332793020141651312.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377876.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378220.P1471173532227017870

`A023900(A003961(n+1))`
-/

namespace A378220.P1471173532227017870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (A003961 (n + 1)).toNat

end

end A378220.P1471173532227017870

noncomputable section

/-- A378220: Dirichlet inverse of phi(A003961(n)), where A003961 is fully multiplicative function with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A378220.P1471173532227017870`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378220 (n : ℕ) : ℤ :=
  A378220.P1471173532227017870.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378220.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378745.P4000645261650579531

`A000040(n+1)^A378744(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378745.P4000645261650579531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (A378744 (n + 1) : ℤ)

end

end A378745.P4000645261650579531

noncomputable section

/-- A378745: a(n) = prime(n)^A378744(n).

Offset 1, canonical program `A378745.P4000645261650579531`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378745 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A378745.P4000645261650579531.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378745.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378786.P5184730850239847370

`∑{#}[n, C(2*#, n-#)*A002293(#)]`
-/

namespace A378786.P5184730850239847370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (2 * k) ((n : ℤ) - (k : ℤ)).toNat : ℤ) * A002293 k

end

end A378786.P5184730850239847370

noncomputable section

/-- A378786: G.f. A(x) satisfies A(x) = 1 + x * (1+x)^2 * A(x)^4.

Offset 0, canonical program `A378786.P5184730850239847370`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378786 (n : ℕ) : ℤ :=
  A378786.P5184730850239847370.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378786.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379009.P14519861507907130925

`A378988(A000290(n+1))`
-/

namespace A379009.P14519861507907130925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378988 (A000290 (n + 1)).toNat

end

end A379009.P14519861507907130925

noncomputable section

/-- A379009: a(n) = 2*n^2 XOR 1+sigma(n^2).

Offset 1, canonical program `A379009.P14519861507907130925`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379009 (n : ℕ) : ℤ :=
  A379009.P14519861507907130925.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379009.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379224.P12381818504371844415

`A065621(A379223(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379224.P12381818504371844415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065621 (A379223 (n + 1)).toNat

end

end A379224.P12381818504371844415

noncomputable section

/-- A379224: The reversing binary representation of the sum of the divisors of the n-th odd square: a(n) = A065621(A379223(n)).

Offset 1, canonical program `A379224.P12381818504371844415`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379224 (n : ℕ) : ℤ :=
  A379224.P12381818504371844415.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379224.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379351.P3218989933823751428

`A006530(A059100(n))`
-/

namespace A379351.P3218989933823751428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A059100 n).toNat

end

end A379351.P3218989933823751428

noncomputable section

/-- A379351: a(n) is the greatest prime factor of n^2 + 2.

Offset 0, canonical program `A379351.P3218989933823751428`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379351 (n : ℕ) : ℤ :=
  A379351.P3218989933823751428.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379351.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379508.P17211813283351291404

`A362545(n)+A377726(n)`
-/

namespace A379508.P17211813283351291404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362545 n + A377726 n

end

end A379508.P17211813283351291404

noncomputable section

/-- A379508: Sum of the legs of the unique primitive Pythagorean triple (x,y,z) such that (x-y+z)/2 is A002315(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A379508.P17211813283351291404`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379508 (n : ℕ) : ℤ :=
  A379508.P17211813283351291404.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379508.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379835.P16096637972306843515

`A000120(A000032(n))`
-/

namespace A379835.P16096637972306843515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000032 n).toNat

end

end A379835.P16096637972306843515

noncomputable section

/-- A379835: Number of 1's in binary expansion of Lucas(n).

Offset 0, canonical program `A379835.P16096637972306843515`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379835 (n : ℕ) : ℤ :=
  A379835.P16096637972306843515.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379835.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380083.P7207422318684722739

`A204327(n+1)/A000129(n+1)`
-/

namespace A380083.P7207422318684722739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204327 (n + 1) : ℚ) / (A000129 (n + 1) : ℚ)

end

end A380083.P7207422318684722739

noncomputable section

/-- A380083: a(n) = Pell(n^2)/Pell(n).

Offset 1, canonical program `A380083.P7207422318684722739`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380083 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A380083.P7207422318684722739.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380083.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380122.P11414663002027706338

`A001316(A184617(n))`
-/

namespace A380122.P11414663002027706338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A184617 n).toNat

end

end A380122.P11414663002027706338

noncomputable section

/-- A380122: a(n) is the number of integers m (possibly negative) such that the nonzero digits in the nonadjacent form for m appear in the nonadjacent form for n.

Offset 0, canonical program `A380122.P11414663002027706338`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380122 (n : ℕ) : ℤ :=
  A380122.P11414663002027706338.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380122.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380192.P1180676149005535308

`A010879(A007605(n+1))`
-/

namespace A380192.P1180676149005535308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A007605 (n + 1)).toNat

end

end A380192.P1180676149005535308

noncomputable section

/-- A380192: Sum mod(10) of digits of n-th prime.

Offset 1, canonical program `A380192.P1180676149005535308`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380192 (n : ℕ) : ℤ :=
  A380192.P1180676149005535308.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380192.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380198.P8091464907111529259

`-A053622(2^(n+1))`
-/

namespace A380198.P8091464907111529259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A053622 (2 ^ (n + 1))

end

end A380198.P8091464907111529259

noncomputable section

/-- A380198: Difference between pi(2^n) and the integer nearest to 2^n / log(2^n).

Offset 1, canonical program `A380198.P8091464907111529259`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380198 (n : ℕ) : ℤ :=
  A380198.P8091464907111529259.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380198.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380281.P4698430582908783007

`A103327(C(row(n)+1, 2)+col(n))*A173424(C(row(n)+1, 2)+col(n))`
-/

namespace A380281.P4698430582908783007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103327 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) * A173424 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n)

end

end A380281.P4698430582908783007

noncomputable section

/-- A380281: Triangle T(n, k) read by rows: T(n, k) = 2^n*binomial(2*n + 1, 2*k + 1) * Pochhammer(1/2, n - k) * Pochhammer(1/2, k).

Offset 0, canonical program `A380281.P4698430582908783007`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380281 (n : ℕ) : ℤ :=
  A380281.P4698430582908783007.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380281.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380441.P1716721751457761727

`A023890(n+1)+A001221(n+1)`
-/

namespace A380441.P1716721751457761727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (n + 1) + A001221 (n + 1)

end

end A380441.P1716721751457761727

noncomputable section

/-- A380441: Sum of the nonprimes dividing n and the number of distinct primes dividing n.

Offset 1, canonical program `A380441.P1716721751457761727`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380441 (n : ℕ) : ℤ :=
  A380441.P1716721751457761727.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380441.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380977.P16503420769415899754

`(col(n)+1)*A131689(C(row(n)+1, 2)+col(n))`
-/

namespace A380977.P16503420769415899754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n + 1 : ℤ) * A131689 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n)

end

end A380977.P16503420769415899754

noncomputable section

/-- A380977: Triangle read by rows: T(n,m) (1<=m<=n) = number of surjections f:[n]->[m] with f(n) != f(j), j<n.

Offset 1, canonical program `A380977.P16503420769415899754`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380977 (n : ℕ) : ℤ :=
  A380977.P16503420769415899754.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380977.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381503.P14790323790165265310

`A033192(n+1)*A033192(n+2)`
-/

namespace A381503.P14790323790165265310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033192 (n + 1) * A033192 (n + 2)

end

end A381503.P14790323790165265310

noncomputable section

/-- A381503: Number of rectangles in a Fibonacci(n) X Fibonacci(n+1) grid.

Offset 1, canonical program `A381503.P14790323790165265310`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381503 (n : ℕ) : ℤ :=
  A381503.P14790323790165265310.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381503.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381713.P7553467801404850531

`A069094(n+1)/A059376(n+1)`
-/

namespace A381713.P7553467801404850531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069094 (n + 1) : ℚ) / (A059376 (n + 1) : ℚ)

end

end A381713.P7553467801404850531

noncomputable section

/-- A381713: a(n) = J_9(n)/J_3(n), where J_k is the k-th Jordan totient function.

Offset 1, canonical program `A381713.P7553467801404850531`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381713 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A381713.P7553467801404850531.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381713.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381983.P4732304569857720732

`n!*∑{#}[n, (2*#+1)^(n-#)*A002293(#)/(n-#)!]`
-/

namespace A381983.P4732304569857720732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), (2 * k + 1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A002293 k : ℚ) / (Nat.factorial ((n : ℤ) - (k : ℤ)).toNat : ℚ))

end

end A381983.P4732304569857720732

noncomputable section

/-- A381983: E.g.f. A(x) satisfies A(x) = exp(x) * C(x*A(x)^2), where C(x) = 1 + x*C(x)^2 is the g.f. of A000108.

Offset 0, canonical program `A381983.P4732304569857720732`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381983 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A381983.P4732304569857720732.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381983.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381985.P11200299864467116029

`n!*∑{#}[n, (#+1)^(n-#)*A002293(#)/(n-#)!]`
-/

namespace A381985.P11200299864467116029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), (k + 1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A002293 k : ℚ) / (Nat.factorial ((n : ℤ) - (k : ℤ)).toNat : ℚ))

end

end A381985.P11200299864467116029

noncomputable section

/-- A381985: E.g.f. A(x) satisfies A(x) = exp(x) * B(x*A(x)), where B(x) = 1 + x*B(x)^3 is the g.f. of A001764.

Offset 0, canonical program `A381985.P11200299864467116029`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381985 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A381985.P11200299864467116029.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381985.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381986.P7505040142137306431

`n!*∑{#}[n, (2*#+1)^(n-#)*A002294(#)/(n-#)!]`
-/

namespace A381986.P7505040142137306431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), (2 * k + 1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A002294 k : ℚ) / (Nat.factorial ((n : ℤ) - (k : ℤ)).toNat : ℚ))

end

end A381986.P7505040142137306431

noncomputable section

/-- A381986: E.g.f. A(x) satisfies A(x) = exp(x) * B(x*A(x)^2), where B(x) = 1 + x*B(x)^3 is the g.f. of A001764.

Offset 0, canonical program `A381986.P7505040142137306431`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381986 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A381986.P7505040142137306431.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381986.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381987.P5321923648170235974

`n!*∑{#}[n, A002293(#)/(n-#)!]`
-/

namespace A381987.P5321923648170235974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), (A002293 k : ℚ) / (Nat.factorial ((n : ℤ) - (k : ℤ)).toNat : ℚ))

end

end A381987.P5321923648170235974

noncomputable section

/-- A381987: E.g.f. A(x) satisfies A(x) = exp(x) * B(x), where B(x) = 1 + x*B(x)^4 is the g.f. of A002293.

Offset 0, canonical program `A381987.P5321923648170235974`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381987 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A381987.P5321923648170235974.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381987.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381988.P12463906784428139935

`n!*∑{#}[n, (#+1)^(n-#)*A002294(#)/(n-#)!]`
-/

namespace A381988.P12463906784428139935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), (k + 1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A002294 k : ℚ) / (Nat.factorial ((n : ℤ) - (k : ℤ)).toNat : ℚ))

end

end A381988.P12463906784428139935

noncomputable section

/-- A381988: E.g.f. A(x) satisfies A(x) = exp(x) * B(x*A(x)), where B(x) = 1 + x*B(x)^4 is the g.f. of A002293.

Offset 0, canonical program `A381988.P12463906784428139935`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381988 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A381988.P12463906784428139935.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381988.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381989.P1614454171933349851

`n!*∑{#}[n, (2*#+1)^(n-#)*A002295(#)/(n-#)!]`
-/

namespace A381989.P1614454171933349851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), (2 * k + 1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A002295 k : ℚ) / (Nat.factorial ((n : ℤ) - (k : ℤ)).toNat : ℚ))

end

end A381989.P1614454171933349851

noncomputable section

/-- A381989: E.g.f. A(x) satisfies A(x) = exp(x) * B(x*A(x)^2), where B(x) = 1 + x*B(x)^4 is the g.f. of A002293.

Offset 0, canonical program `A381989.P1614454171933349851`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381989 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A381989.P1614454171933349851.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381989.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381997.P2560007713439689544

`n!*∑{#}[n, (2*#)^(n-#)*A002293(#)/(n-#)!]`
-/

namespace A381997.P2560007713439689544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), (2 * k : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A002293 k : ℚ) / (Nat.factorial ((n : ℤ) - (k : ℤ)).toNat : ℚ))

end

end A381997.P2560007713439689544

noncomputable section

/-- A381997: E.g.f. A(x) satisfies A(x) = 1 + x*exp(2*x)*A(x)^4.

Offset 0, canonical program `A381997.P2560007713439689544`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381997 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A381997.P2560007713439689544.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381997.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382000.P2814616290049928114

`n!*∑{#}[n, (2*#)^(n-#)*A002294(#)/(n-#)!]`
-/

namespace A382000.P2814616290049928114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), (2 * k : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A002294 k : ℚ) / (Nat.factorial ((n : ℤ) - (k : ℤ)).toNat : ℚ))

end

end A382000.P2814616290049928114

noncomputable section

/-- A382000: E.g.f. A(x) satisfies A(x) = 1 + x*exp(2*x)*A(x)^5.

Offset 0, canonical program `A382000.P2814616290049928114`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382000 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382000.P2814616290049928114.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382000.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382001.P237483193008801159

`n!*∑{#}[n, (2*#)^(n-#)*A002295(#)/(n-#)!]`
-/

namespace A382001.P237483193008801159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ k ∈ Finset.range (f1 n + 1), (2 * k : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A002295 k : ℚ) / (Nat.factorial ((n : ℤ) - (k : ℤ)).toNat : ℚ))

end

end A382001.P237483193008801159

noncomputable section

/-- A382001: E.g.f. A(x) satisfies A(x) = 1 + x*exp(2*x)*A(x)^6.

Offset 0, canonical program `A382001.P237483193008801159`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382001 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382001.P237483193008801159.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382001.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382213.P14392032180708244766

`A007947(A001008(n+1))`
-/

namespace A382213.P14392032180708244766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A001008 (n + 1)).toNat

end

end A382213.P14392032180708244766

noncomputable section

/-- A382213: Largest squarefree number dividing the numerator of harmonic number H(n).

Offset 1, canonical program `A382213.P14392032180708244766`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382213 (n : ℕ) : ℤ :=
  A382213.P14392032180708244766.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382213.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382329.P9326233385756962870

`A002805(n+1)*A007913(A001008(n+1))`
-/

namespace A382329.P9326233385756962870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (n + 1) * A007913 (A001008 (n + 1)).toNat

end

end A382329.P9326233385756962870

noncomputable section

/-- A382329: Least positive integer that gives a square of an integer when multiplied by the n-th harmonic number.

Offset 1, canonical program `A382329.P9326233385756962870`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382329 (n : ℕ) : ℤ :=
  A382329.P9326233385756962870.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382329.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382461.P15882059474773188978

`A051885(2^n)`
-/

namespace A382461.P15882059474773188978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (2 ^ n)

end

end A382461.P15882059474773188978

noncomputable section

/-- A382461: a(n) is the smallest number whose sum of digits is 2^n.

Offset 0, canonical program `A382461.P15882059474773188978`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382461 (n : ℕ) : ℤ :=
  A382461.P15882059474773188978.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382461.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382468.P9812451989353669786

`2*A006530(n+2)-A008472(n+2)`
-/

namespace A382468.P9812451989353669786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006530 (n + 2) - A008472 (n + 2)

end

end A382468.P9812451989353669786

noncomputable section

/-- A382468: a(n) = (largest prime factor of n) minus (its remaining distinct prime factors).

Offset 2, canonical program `A382468.P9812451989353669786`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382468 (n : ℕ) : ℤ :=
  A382468.P9812451989353669786.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382468.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382608.P10117561399595849934

`4*A033192(n)`
-/

namespace A382608.P10117561399595849934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A033192 n

end

end A382608.P10117561399595849934

noncomputable section

/-- A382608: Long leg of the unique primitive Pythagorean triple whose inradius is A000045(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A382608.P10117561399595849934`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382608 (n : ℕ) : ℤ :=
  A382608.P10117561399595849934.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382608.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382910.P8650629878727328270

`a(n-1)*A007598(n)` with `a(0)=1`
-/

namespace A382910.P8650629878727328270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A007598 n

end

end A382910.P8650629878727328270

noncomputable section

/-- A382910: a(n) = A003266(n)^2.

Offset 0, canonical program `A382910.P8650629878727328270`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382910 (n : ℕ) : ℤ :=
  A382910.P8650629878727328270.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382910.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A383037.P13364932948584734470

`A210469(n+1)-A000720(2*(n+1))+1`
-/

namespace A383037.P13364932948584734470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210469 (n + 1) - A000720 (2 * (n + 1)) + 1

end

end A383037.P13364932948584734470

noncomputable section

/-- A383037: a(n) is the excess of composites over primes in the first n odd positive integers.

Offset 1, canonical program `A383037.P13364932948584734470`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383037 (n : ℕ) : ℤ :=
  A383037.P13364932948584734470.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383037.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A383783.P9434858666287389407

`A344597(2^n)`
-/

namespace A383783.P9434858666287389407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344597 (2 ^ n)

end

end A383783.P9434858666287389407

noncomputable section

/-- A383783: a(n) = Sum_{k=1..2^n} mu(k) * (floor(2^n/k)^4 - floor((2^n-1)/k)^4).

Offset 0, canonical program `A383783.P9434858666287389407`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383783 (n : ℕ) : ℤ :=
  A383783.P9434858666287389407.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383783.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A383958.P9624006830103847093

`2*A001246(n)-1`
-/

namespace A383958.P9624006830103847093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001246 n - 1

end

end A383958.P9624006830103847093

noncomputable section

/-- A383958: Sum of the legs of the unique primitive Pythagorean triple (a,b,c) such that (a-b+c)/2 = A000108(n) and its long leg and hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A383958.P9624006830103847093`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383958 (n : ℕ) : ℤ :=
  A383958.P9624006830103847093.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A383958.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384936.P17740286076774317705

`∑{#}[n-1, floor(log(A002110(n))/log(A000040(#+1)))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384936.P17740286076774317705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ⌊Real.log (A002110 n : ℝ) / Real.log (A000040 (k + 1) : ℝ)⌋

end

end A384936.P17740286076774317705

noncomputable section

/-- A384936: a(n) = Sum_{k=1..n} floor( log(A002110(n)) / log(prime(k)) ).

Offset 0, canonical program `A384936.P17740286076774317705`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, floor(log(A002110(n))/log(A000040(#+1)))]` (program `A384936.P17740286076774317705`, by `A384936.P17740286076774317705.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A384936 (n : ℕ) : ℤ :=
  A384936.P17740286076774317705.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, floor(log(A002110(n))/log(A000040(#+1)))]` (program `A384936.P17740286076774317705`, by `A384936.P17740286076774317705.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A384936.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A385044.P5009034709205246685

`A034444(n+1)/A382488(n+1)`
-/

namespace A385044.P5009034709205246685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034444 (n + 1) : ℚ) / (A382488 (n + 1) : ℚ)

end

end A385044.P5009034709205246685

noncomputable section

/-- A385044: The number of unitary divisors of n that are 5-rough numbers (A007310).

Offset 1, canonical program `A385044.P5009034709205246685`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385044 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A385044.P5009034709205246685.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385044.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385608.P4247405361952693431

`2*floor(n/3)+floor(n/6)-A000120(floor(n/3))`
-/

namespace A385608.P4247405361952693431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n : ℚ) / 3⌋ + ⌊(n : ℚ) / 6⌋ - A000120 ⌊(n : ℚ) / 3⌋.toNat

end

end A385608.P4247405361952693431

noncomputable section

/-- A385608: a(n) = 2-adic valuation of A003266(n).

Offset 0, canonical program `A385608.P4247405361952693431`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385608 (n : ℕ) : ℤ :=
  A385608.P4247405361952693431.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385608.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385609.P15216289614139377740

`2*(n+1)+floor((n+1)/2)-A000120(n+1)`
-/

namespace A385609.P15216289614139377740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + ⌊(n + 1 : ℚ) / 2⌋ - A000120 (n + 1)

end

end A385609.P15216289614139377740

noncomputable section

/-- A385609: Partial sums of A090740.

Offset 1, canonical program `A385609.P15216289614139377740`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385609 (n : ℕ) : ℤ :=
  A385609.P15216289614139377740.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385609.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386220.P3238769250650299334

`A000265(n+1)+A171977(n+1)`
-/

namespace A386220.P3238769250650299334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) + A171977 (n + 1)

end

end A386220.P3238769250650299334

noncomputable section

/-- A386220: a(n) = d + 2*2^e where n = d*2^e with d = A000265(n) odd.

Offset 1, canonical program `A386220.P3238769250650299334`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386220 (n : ℕ) : ℤ :=
  A386220.P3238769250650299334.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386220.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386670.P12615676269490321592

`A128418(n)-A059304(n)`
-/

namespace A386670.P12615676269490321592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128418 n - A059304 n

end

end A386670.P12615676269490321592

noncomputable section

/-- A386670: Number of ternary strings of length 2*n that have more 0's than the combined number of 1's and 2's.

Offset 0, canonical program `A386670.P12615676269490321592`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386670 (n : ℕ) : ℤ :=
  A386670.P12615676269490321592.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A386670.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387122.P8961407856667893284

`A006530(A129069(n+1))`
-/

namespace A387122.P8961407856667893284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A129069 (n + 1)).toNat

end

end A387122.P8961407856667893284

noncomputable section

/-- A387122: Greatest prime divisor of 2*prime(n) + 3.

Offset 1, canonical program `A387122.P8961407856667893284`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387122 (n : ℕ) : ℤ :=
  A387122.P8961407856667893284.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387122.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387126.P116658267455135209

`A048803(row(n))*A008279(C(row(n)+1, 2)+col(n))`
-/

namespace A387126.P116658267455135209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048803 (SequenceMachineLib.triRow n) * A008279 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n)

end

end A387126.P116658267455135209

noncomputable section

/-- A387126: Triangle read by rows: T(n, k) = (n! / (n - k)!) * Product_{k=1..n} radical(k), where radical(n) is the product of distinct prime factors of n, cf. A007947.

Offset 0, canonical program `A387126.P116658267455135209`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387126 (n : ℕ) : ℤ :=
  A387126.P116658267455135209.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387126.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387138.P13007574597306557988

`A048803(row(n))*A007318(C(row(n)+1, 2)+col(n))`
-/

namespace A387138.P13007574597306557988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048803 (SequenceMachineLib.triRow n) * A007318 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n)

end

end A387138.P13007574597306557988

noncomputable section

/-- A387138: Triangle read by rows: T(n, k) = binomial(n, k) * Product_{k=1..n} radical(k), where radical(n) is the product of distinct prime factors of n, cf. A007947.

Offset 0, canonical program `A387138.P13007574597306557988`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387138 (n : ℕ) : ℤ :=
  A387138.P13007574597306557988.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387138.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387279.P14968820305295738344

`∑{d}[n+1, A006530(#)]`
-/

namespace A387279.P14968820305295738344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006530 d

end

end A387279.P14968820305295738344

noncomputable section

/-- A387279: Inverse Möbius transform of A006530.

Offset 1, canonical program `A387279.P14968820305295738344`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387279 (n : ℕ) : ℤ :=
  A387279.P14968820305295738344.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387279.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A387914.P10909706251408159452

`A000245(n+3)-A000124(n+3)`
-/

namespace A387914.P10909706251408159452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 3) - A000124 (n + 3)

end

end A387914.P10909706251408159452

noncomputable section

/-- A387914: a(n) = 3*binomial(2*n+4,n+3)/(n+4) - (n+2)*(n+3)/2 - 1.

Offset 1, canonical program `A387914.P10909706251408159452`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387914 (n : ℕ) : ℤ :=
  A387914.P10909706251408159452.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A387914.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A388283.P448465908817760903

`A033885(n+1)/A009194(n+1)`
-/

namespace A388283.P448465908817760903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033885 (n + 1) : ℚ) / (A009194 (n + 1) : ℚ)

end

end A388283.P448465908817760903

noncomputable section

/-- A388283: Numerator of (3*n - sigma(n)) / n.

Offset 1, canonical program `A388283.P448465908817760903`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A388283 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A388283.P448465908817760903.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A388283.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A388539.P17116264068590608702

`A007953(A007598(n))`
-/

namespace A388539.P17116264068590608702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007598 n).toNat

end

end A388539.P17116264068590608702

noncomputable section

/-- A388539: Sum of decimal digits of Fibonacci(n)^2.

Offset 0, canonical program `A388539.P17116264068590608702`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A388539 (n : ℕ) : ℤ :=
  A388539.P17116264068590608702.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A388539.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389087.P4224912963092168065

`A000203(n+1)/A389080(n+1)`
-/

namespace A389087.P4224912963092168065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A389080 (n + 1) : ℚ)

end

end A389087.P4224912963092168065

noncomputable section

/-- A389087: Numerator of ratio sigma(n) / A048250(n), where sigma is the sum of divisors and A048250 is the sum of squarefree divisors.

Offset 1, canonical program `A389087.P4224912963092168065`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389087 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389087.P4224912963092168065.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389087.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389089.P18168146656438305083

`A048250(n+1)/A389080(n+1)`
-/

namespace A389089.P18168146656438305083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) : ℚ) / (A389080 (n + 1) : ℚ)

end

end A389089.P18168146656438305083

noncomputable section

/-- A389089: Denominator of ratio sigma(n) / A048250(n), where sigma is the sum of divisors and A048250 is the sum of squarefree divisors.

Offset 1, canonical program `A389089.P18168146656438305083`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389089 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389089.P18168146656438305083.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389089.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390276.P6787046283391767139

`A187646(n)*A000108(n)`
-/

namespace A390276.P6787046283391767139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187646 n * A000108 n

end

end A390276.P6787046283391767139

noncomputable section

/-- A390276: a(n) = (-1)^n*Stirling1(2*n, n)*CatalanNumber(n).

Offset 0, canonical program `A390276.P6787046283391767139`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390276 (n : ℕ) : ℤ :=
  A390276.P6787046283391767139.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390276.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A390483.P1083108438533826406`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390483 (n : ℕ) : ℤ :=
  A390483.P1083108438533826406.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390483.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390582.P9712316944901875088

`A033879(n+1)/A009194(n+1)`
-/

namespace A390582.P9712316944901875088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033879 (n + 1) : ℚ) / (A009194 (n + 1) : ℚ)

end

end A390582.P9712316944901875088

noncomputable section

/-- A390582: a(n) = (2*n - sigma(n))/gcd(n, sigma(n)).

Offset 1, canonical program `A390582.P9712316944901875088`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390582 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390582.P9712316944901875088.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390582.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390727.P12780344943874454581

`n!*A390277(n)`
-/

namespace A390727.P12780344943874454581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A390277 n

end

end A390727.P12780344943874454581

noncomputable section

/-- A390727: a(n) = Stirling2(2*n, n)*(2*n)!/(n+1)!.

Offset 0, canonical program `A390727.P12780344943874454581`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390727 (n : ℕ) : ℤ :=
  A390727.P12780344943874454581.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390727.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390921.P4802921319269334055

`a(n-1)+A098658(n)` with `a(0)=1`
-/

namespace A390921.P4802921319269334055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A098658 n

end

end A390921.P4802921319269334055

noncomputable section

/-- A390921: Expansion of 1/((1-x) * sqrt(1-12*x)).

Offset 0, canonical program `A390921.P4802921319269334055`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390921 (n : ℕ) : ℤ :=
  A390921.P4802921319269334055.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390921.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390923.P6565390993815220059

`3*a(n-1)+A059304(n)` with `a(0)=1`
-/

namespace A390923.P6565390993815220059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + A059304 n

end

end A390923.P6565390993815220059

noncomputable section

/-- A390923: Expansion of 1/((1-3*x) * sqrt(1-8*x)).

Offset 0, canonical program `A390923.P6565390993815220059`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390923 (n : ℕ) : ℤ :=
  A390923.P6565390993815220059.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390923.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390924.P5803395581487017869

`2*a(n-1)+A098658(n)` with `a(0)=1`
-/

namespace A390924.P5803395581487017869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A098658 n

end

end A390924.P5803395581487017869

noncomputable section

/-- A390924: Expansion of 1/((1-2*x) * sqrt(1-12*x)).

Offset 0, canonical program `A390924.P5803395581487017869`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390924 (n : ℕ) : ℤ :=
  A390924.P5803395581487017869.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390924.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391263.P17886300817763852613

`2*A004146(n+1)-2`
-/

namespace A391263.P17886300817763852613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004146 (n + 1) - 2

end

end A391263.P17886300817763852613

noncomputable section

/-- A391263: The number of two-component spanning forests of the wheel graph W_{n+1} in which vertices v_1 and v_3 lie in different components.

Offset 2, canonical program `A391263.P17886300817763852613`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391263 (n : ℕ) : ℤ :=
  A391263.P17886300817763852613.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391263.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392240.P12035626656294445076

`A006530(A016921(n+1))`
-/

namespace A392240.P12035626656294445076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A016921 (n + 1)).toNat

end

end A392240.P12035626656294445076

noncomputable section

/-- A392240: Largest prime factor of 6*n+1.

Offset 1, canonical program `A392240.P12035626656294445076`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392240 (n : ℕ) : ℤ :=
  A392240.P12035626656294445076.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392240.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393203.P10331077631998674736

`(A001248(n+4)-A006094(n+2))/2`
-/

namespace A393203.P10331077631998674736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001248 (n + 4) - A006094 (n + 2) : ℚ) / 2

end

end A393203.P10331077631998674736

noncomputable section

/-- A393203: a(n) = (1/2)*(prime(n + 2)^2 - prime(n + 1)*prime(n)).

Offset 2, canonical program `A393203.P10331077631998674736`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393203 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A393203.P10331077631998674736.a (n - 2))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393203.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393295.P4032472479384952545

`A393238(n)+A349927(n)`
-/

namespace A393295.P4032472479384952545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393238 n + A349927 n

end

end A393295.P4032472479384952545

noncomputable section

/-- A393295: Number of transitive relations on an n-set with at most three ordered pairs.

Offset 0, canonical program `A393295.P4032472479384952545`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393295 (n : ℕ) : ℤ :=
  A393295.P4032472479384952545.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393295.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A393917.P7977796838059119531

`A000720(A006094(n+1))-A000720(A001043(n+1))`
-/

namespace A393917.P7977796838059119531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A006094 (n + 1)).toNat - A000720 (A001043 (n + 1)).toNat

end

end A393917.P7977796838059119531

noncomputable section

/-- A393917: Number of primes strictly between (prime(n) + prime(n+1)) and (prime(n) * prime(n+1)).

Offset 1, canonical program `A393917.P7977796838059119531`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393917 (n : ℕ) : ℤ :=
  A393917.P7977796838059119531.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A393917.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A395133.P17198686885299587289

`1+n+1-2^(n+2)+A122367(n+1)+A006318(n+1)`
-/

namespace A395133.P17198686885299587289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + (n + 1) : ℤ) - (2 ^ (n + 2) : ℤ) + A122367 (n + 1) + A006318 (n + 1)

end

end A395133.P17198686885299587289

noncomputable section

/-- A395133: Number of monotone and order decreasing transformations on an n-chain.

Offset 1, canonical program `A395133.P17198686885299587289`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395133 (n : ℕ) : ℤ :=
  A395133.P17198686885299587289.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395133.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396093.P6069863032043368090

`∑{#}[n-1, A166482(n-#-1)*A166482(#)]`
-/

namespace A396093.P6069863032043368090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A166482 ((n : ℤ) - (k : ℤ) - 1).toNat * A166482 k

end

end A396093.P6069863032043368090

noncomputable section

/-- A396093: G.f. A(x) = B(B(B(x))), the third iteration of B(x) = x/(1-x)^2.

Offset 0, canonical program `A396093.P6069863032043368090`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396093 (n : ℕ) : ℤ :=
  A396093.P6069863032043368090.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396093.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396250.P17131354137523979771

`(3^2^A000120(n)+1)/2*3^(n+1-2^A000120(n))-2^n`
-/

namespace A396250.P17131354137523979771
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 : ℝ) ^ ((2 : ℚ) ^ (A000120 n : ℤ) : ℝ) + 1) / 2 * (3 : ℝ) ^ ((n + 1 : ℚ) - (2 : ℚ) ^ (A000120 n : ℤ) : ℝ) - (2 ^ n : ℝ)

end

end A396250.P17131354137523979771

noncomputable section

/-- A396250: a(n) is the number of ternary sequences of length n with characteristic value 0, as is defined in comments.

Offset 1, canonical program `A396250.P17131354137523979771`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396250 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A396250.P17131354137523979771.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396250.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396253.P3729736002703382672

`A000196(n+1)*A048656(n+1)`
-/

namespace A396253.P3729736002703382672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 1) * A048656 (n + 1)

end

end A396253.P3729736002703382672

noncomputable section

/-- A396253: Sum of Sum_{k=1..n} S(k) over all completely multiplicative sign sequences S of length n.

Offset 1, canonical program `A396253.P3729736002703382672`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396253 (n : ℕ) : ℤ :=
  A396253.P3729736002703382672.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396253.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396348.P16602830164095250324

`A000040(col(n)+1)^A249344(C(col(n)+1+row(n)-col(n)+1-1, 2)+col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396348.P16602830164095250324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (SequenceMachineLib.triCol n + 1) : ℚ) ^ (A249344 (Nat.choose ((SequenceMachineLib.triCol n + 1 : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) - 1).toNat 2 + (SequenceMachineLib.triCol n + 1)) : ℤ)

end

end A396348.P16602830164095250324

noncomputable section

/-- A396348: Array read by ascending antidiagonals: A(n,k) = prime(n)^A249344(n,k).

Offset 1, canonical program `A396348.P16602830164095250324`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396348 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A396348.P16602830164095250324.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396348.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397106.P13058087477262254909

`n+1+A275314(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397106.P13058087477262254909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A275314 (n + 1)

end

end A397106.P13058087477262254909

noncomputable section

/-- A397106: a(n) = n + A275314(n), for n >= 1.

Offset 1, canonical program `A397106.P13058087477262254909`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397106 (n : ℕ) : ℤ :=
  A397106.P13058087477262254909.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397106.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397419.P13214611387662659643

`∑{#}[n, C(n, #)*A005043(#)²]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397419.P13214611387662659643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A005043 k ^ 2

end

end A397419.P13214611387662659643

noncomputable section

/-- A397419: a(n) = Sum_{j=0..n} binomial(n, j) * A005043(j)^2.

Offset 0, canonical program `A397419.P13214611387662659643`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397419 (n : ℕ) : ℤ :=
  A397419.P13214611387662659643.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397419.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A397716.P910235112666114565

`A397715(n)-2*A002109(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A397716.P910235112666114565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397715 n - 2 * A002109 n

end

end A397716.P910235112666114565

noncomputable section

/-- A397716: a(n) = A397715(n) - 2*A002109(n).

Offset 0, canonical program `A397716.P910235112666114565`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397716 (n : ℕ) : ℤ :=
  A397716.P910235112666114565.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A397716.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398186.P9841724747001061415

`1/(n+1)*∑{#}[n, A000897(#)*A000897(n-#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398186.P9841724747001061415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * ((∑ k ∈ Finset.range (f1 n + 1), A000897 k * A000897 (n - k) : ℤ) : ℚ)

end

end A398186.P9841724747001061415

noncomputable section

/-- A398186: a(n) = (1/n) * Sum_{k=0..n-1} A000897(k) * A000897(n-1-k), where A000897(k) = (4*k)!/((2*k)!*k!^2).

Offset 1, canonical program `A398186.P9841724747001061415`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398186 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398186.P9841724747001061415.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398186.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398650.P16240165279224502368

`A002110(n+1)-A005867(n+1)-A005867(n)-(n+1)+1`
-/

namespace A398650.P16240165279224502368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) - A005867 (n + 1) - A005867 n - (n + 1 : ℤ) + 1

end

end A398650.P16240165279224502368

noncomputable section

/-- A398650: Number of composite numbers less than the n-th primorial that have a common factor greater than 1 with the (n-1)-th primorial.

Offset 1, canonical program `A398650.P16240165279224502368`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398650 (n : ℕ) : ℤ :=
  A398650.P16240165279224502368.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398650.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398767.P8975492673232870665

`(n+2)^3-A090025(n+1)-1`
-/

namespace A398767.P8975492673232870665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 3 : ℤ) - A090025 (n + 1) - 1

end

end A398767.P8975492673232870665

noncomputable section

/-- A398767: a(n) is the number of grid points in an n X n X n cube that cannot be connected by a straight line to a given corner without passing through another grid point.

Offset 1, canonical program `A398767.P8975492673232870665`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398767 (n : ℕ) : ℤ :=
  A398767.P8975492673232870665.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398767.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399173.P18150784658567783580

`∑{#}[n, (#+1)*A004148(#)*A004148(n-#)]`
-/

namespace A399173.P18150784658567783580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (k + 1 : ℤ) * A004148 k * A004148 (n - k)

end

end A399173.P18150784658567783580

noncomputable section

/-- A399173: First column of the derivative-compositional Riordan array psi_1(f) = (f^[1](x)*(f^[1])'(x)/x, f^[1](x)) = (f(x)*f'(x)/x, f(x)), where f(x) = x*s(x) and s(x) is the g.f. of A004148 (RNA secondary structures).

Offset 0, canonical program `A399173.P18150784658567783580`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399173 (n : ℕ) : ℤ :=
  A399173.P18150784658567783580.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399173.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A399204.P11534051387213006384

`a(n-1)*A080079(n)` with `a(0)=1`
-/

namespace A399204.P11534051387213006384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A080079 n

end

end A399204.P11534051387213006384

noncomputable section

/-- A399204: Number of permutations that give the minimum number of comparisons for sorting n elements by binary insertion.

Offset 0, canonical program `A399204.P11534051387213006384`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399204 (n : ℕ) : ℤ :=
  A399204.P11534051387213006384.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A399204.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400202.P11404524350164515713

`∑{d}[n+1, A060715(#)]`
-/

namespace A400202.P11404524350164515713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060715 d

end

end A400202.P11404524350164515713

noncomputable section

/-- A400202: Number of integers k, 1 <= k < n, such that (n+k)/gcd(n,k) is prime.

Offset 1, canonical program `A400202.P11404524350164515713`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400202 (n : ℕ) : ℤ :=
  A400202.P11404524350164515713.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400202.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400721.P13587266622380998546

`A006530(A001047(n+1))`
-/

namespace A400721.P13587266622380998546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001047 (n + 1)).toNat

end

end A400721.P13587266622380998546

noncomputable section

/-- A400721: Greatest prime factor of 3^n - 2^n.

Offset 1, canonical program `A400721.P13587266622380998546`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400721 (n : ℕ) : ℤ :=
  A400721.P13587266622380998546.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400721.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400727.P14444583782514175406

`A006530(A005061(n+2))`
-/

namespace A400727.P14444583782514175406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A005061 (n + 2)).toNat

end

end A400727.P14444583782514175406

noncomputable section

/-- A400727: Greatest prime factor of 4^n - 3^n.

Offset 2, canonical program `A400727.P14444583782514175406`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400727 (n : ℕ) : ℤ :=
  A400727.P14444583782514175406.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400727.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401198.P6175115026263044691

`3*2^n*A191371(n)-A191371(n+1)`
-/

namespace A401198.P6175115026263044691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * 2 ^ n : ℤ) * A191371 n - A191371 (n + 1)

end

end A401198.P6175115026263044691

noncomputable section

/-- A401198: Number of ways to add one improperly colored vertex to a properly colored graph of n-1 vertices.

Offset 1, canonical program `A401198.P6175115026263044691`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401198 (n : ℕ) : ℤ :=
  A401198.P6175115026263044691.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401198.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401407.P9579087663748494119

`A008836(n+1)*A101455(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A401407.P9579087663748494119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A101455 (n + 1)

end

end A401407.P9579087663748494119

noncomputable section

/-- A401407: a(n) = lambda(n)*chi_{-4}(n) = A008836(n)*A101455(n).

Offset 1, canonical program `A401407.P9579087663748494119`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401407 (n : ℕ) : ℤ :=
  A401407.P9579087663748494119.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401407.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401546.P12281128147999140787

`A018900(n+2)-A018900(n+1)`
-/

namespace A401546.P12281128147999140787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 2) - A018900 (n + 1)

end

end A401546.P12281128147999140787

noncomputable section

/-- A401546: First differences of A018900.

Offset 1, canonical program `A401546.P12281128147999140787`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401546 (n : ℕ) : ℤ :=
  A401546.P12281128147999140787.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401546.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401791.P10376803313853072742

`A063524(n+1)+A010051(n+1)+A107078(n+1)`
-/

namespace A401791.P10376803313853072742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 1) + A010051 (n + 1) + A107078 (n + 1)

end

end A401791.P10376803313853072742

noncomputable section

/-- A401791: a(n) = 1 if n is 1, a prime or n is not squarefree, otherwise 0.

Offset 1, canonical program `A401791.P10376803313853072742`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401791 (n : ℕ) : ℤ :=
  A401791.P10376803313853072742.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401791.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401826.P9138598437203215255

`A401824(n+1)-A008472(n+1)`
-/

namespace A401826.P9138598437203215255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401824 (n + 1) - A008472 (n + 1)

end

end A401826.P9138598437203215255

noncomputable section

/-- A401826: a(n) = Sum_{d|n, d>1} d * pi(d-1) for n>=1, where pi = A000720.

Offset 1, canonical program `A401826.P9138598437203215255`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401826 (n : ℕ) : ℤ :=
  A401826.P9138598437203215255.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401826.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401863.P5101828983696587754

`A062774(n+1)-A001221(n+1)`
-/

namespace A401863.P5101828983696587754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062774 (n + 1) - A001221 (n + 1)

end

end A401863.P5101828983696587754

noncomputable section

/-- A401863: a(n) = Sum_{d|n, d>1} pi(d-1), where pi = A000720.

Offset 1, canonical program `A401863.P5101828983696587754`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401863 (n : ℕ) : ℤ :=
  A401863.P5101828983696587754.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401863.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401967.P9455221643257520614

`n!²/2^(n-A000120(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A401967.P9455221643257520614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n ^ 2 : ℚ) / (2 : ℚ) ^ ((n : ℤ) - A000120 n : ℤ)

end

end A401967.P9455221643257520614

noncomputable section

/-- A401967: a(n) = n!^2 / 2^(n - A000120(n)).

Offset 0, canonical program `A401967.P9455221643257520614`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401967 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A401967.P9455221643257520614.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401967.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A402184.P4793468992118412800

`A000203(n+1)-A048250(n+1)+A034444(n+1)`
-/

namespace A402184.P4793468992118412800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A048250 (n + 1) + A034444 (n + 1)

end

end A402184.P4793468992118412800

noncomputable section

/-- A402184: a(n) = Sum_{d|n} d^(1 - mu(d)^2).

Offset 1, canonical program `A402184.P4793468992118412800`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A402184 (n : ℕ) : ℤ :=
  A402184.P4793468992118412800.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A402184.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A363919.P4187681008665275197

`A363923(n+1)/A205959(n+1)`
-/

namespace A363919.P4187681008665275197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363923 (n + 1) : ℚ) / (A205959 (n + 1) : ℚ)

end

end A363919.P4187681008665275197

noncomputable section

/-- A363919: a(n) = n^excess(n), where excess(n) = A046660(n).

Offset 1, canonical program `A363919.P4187681008665275197`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363919 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363919.P4187681008665275197.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363919.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365722.P13092510247685121103

`A053735(n)-A007949(1+n)`
-/

namespace A365722.P13092510247685121103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n - A007949 (1 + n)

end

end A365722.P13092510247685121103

noncomputable section

/-- A365722: The number of prime factors (with multiplicity) in A356867(1+n), where A356867 is Sycamore's Doudna variant D(3).

Offset 0, canonical program `A365722.P13092510247685121103`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365722 (n : ℕ) : ℤ :=
  A365722.P13092510247685121103.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365722.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367888.P14331360058282585036

`∑{#}[n, C(n, #)*(-2)^(n-#)*A027710(#)]`
-/

namespace A367888.P14331360058282585036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℚ) * (-2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A027710 k : ℚ)

end

end A367888.P14331360058282585036

noncomputable section

/-- A367888: Expansion of e.g.f. exp(3*(exp(x) - 1) - 2*x).

Offset 0, canonical program `A367888.P14331360058282585036`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367888 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367888.P14331360058282585036.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367888.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367889.P16077087876121511633

`∑{#}[n, C(n, #)*2^(n-#)*A027710(#)]`
-/

namespace A367889.P16077087876121511633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A027710 k : ℚ)

end

end A367889.P16077087876121511633

noncomputable section

/-- A367889: Expansion of e.g.f. exp(3*(exp(x) - 1) + 2*x).

Offset 0, canonical program `A367889.P16077087876121511633`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367889 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367889.P16077087876121511633.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367889.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367890.P13758826429019141353

`∑{#}[n, C(n, #)*(-3)^(n-#)*A027710(#)]`
-/

namespace A367890.P13758826429019141353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℚ) * (-3 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A027710 k : ℚ)

end

end A367890.P13758826429019141353

noncomputable section

/-- A367890: Expansion of e.g.f. exp(3*(exp(x) - 1 - x)).

Offset 0, canonical program `A367890.P13758826429019141353`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367890 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367890.P13758826429019141353.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367890.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A368643.P1232698465905316366

`A214526(n*(n+1)/2+1)`
-/

namespace A368643.P1232698465905316366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (SequenceMachineLib.roundAway ((n * (n + 1) : ℚ) / 2 + 1)).toNat

end

end A368643.P1232698465905316366

noncomputable section

/-- A368643: Manhattan distance from the origin of triangular number point T(n) = n*(n+1)/2 in a square spiral with point 0 at the origin.

Offset 0, canonical program `A368643.P1232698465905316366`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368643 (n : ℕ) : ℤ :=
  A368643.P1232698465905316366.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A368643.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370347.P4034947934020754218

`C(row(n), col(n))*A370357(row(n)-col(n))`
-/

namespace A370347.P4034947934020754218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) * A370357 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A370347.P4034947934020754218

noncomputable section

/-- A370347: Number T(n,k) of partitions of [3n] into n sets of size 3 having exactly k sets {3j-2,3j-1,3j} (1<=j<=n); triangle T(n,k), n>=0, 0<=k<=n, read by rows.

Offset 0, canonical program `A370347.P4034947934020754218`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370347 (n : ℕ) : ℤ :=
  A370347.P4034947934020754218.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370347.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373936.P11787379451298363639

`A373937(n+2)-A373937(n+1)`
-/

namespace A373936.P11787379451298363639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373937 (n + 2) - A373937 (n + 1)

end

end A373936.P11787379451298363639

noncomputable section

/-- A373936: Number of compositions of 7*n-4 into parts 6 and 7.

Offset 1, canonical program `A373936.P11787379451298363639`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373936 (n : ℕ) : ℤ :=
  A373936.P11787379451298363639.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373936.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373963.P9718531231219531280

`A373964(n+2)-A373964(n+1)`
-/

namespace A373963.P9718531231219531280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373964 (n + 2) - A373964 (n + 1)

end

end A373963.P9718531231219531280

noncomputable section

/-- A373963: Number of compositions of 6*n-3 into parts 5 and 6.

Offset 1, canonical program `A373963.P9718531231219531280`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373963 (n : ℕ) : ℤ :=
  A373963.P9718531231219531280.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373963.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375529.P16671524515771527477

`A000040(n+1)*A375530(n)+1`
-/

namespace A375529.P16671524515771527477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A375530 n + 1

end

end A375529.P16671524515771527477

noncomputable section

/-- A375529: Lexicographically earliest sequence of positive integers a(1), a(2), a(3), ... such that for any n > 0, Sum_{k = 1..n} prime(k)/a(k) < 1.

Offset 1, canonical program `A375529.P16671524515771527477`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375529 (n : ℕ) : ℤ :=
  A375529.P16671524515771527477.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A375529.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379509.P8727841292093369161

`A377725(n)+A385977(n)`
-/

namespace A379509.P8727841292093369161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377725 n + A385977 n

end

end A379509.P8727841292093369161

noncomputable section

/-- A379509: Sum of the legs of the unique primitive Pythagorean triple whose inradius is A002315(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

Offset 0, canonical program `A379509.P8727841292093369161`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379509 (n : ℕ) : ℤ :=
  A379509.P8727841292093369161.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379509.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380048.P12805935202259720765

`A000045(n)*A001003(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A380048.P12805935202259720765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A001003 n

end

end A380048.P12805935202259720765

noncomputable section

/-- A380048: a(n) = A000045(n) * A001003(n).

Offset 0, canonical program `A380048.P12805935202259720765`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380048 (n : ℕ) : ℤ :=
  A380048.P12805935202259720765.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380048.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380714.P5454495817431361702

`A002378(n)%A002283(A055642(n+1))`
-/

namespace A380714.P5454495817431361702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002378 n) (A002283 (A055642 (n + 1)).toNat)

end

end A380714.P5454495817431361702

noncomputable section

/-- A380714: a(n) = n*(n-1) mod (10^m-1) where m is the number of decimal digits in n.

Offset 1, canonical program `A380714.P5454495817431361702`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380714 (n : ℕ) : ℤ :=
  A380714.P5454495817431361702.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380714.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385469.P10167520793086109988

`∑{#}[n, A007559(#)*A111594(C(n+1, 2)+#)]`
-/

namespace A385469.P10167520793086109988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A007559 k * A111594 (Nat.choose (n + 1) 2 + k)

end

end A385469.P10167520793086109988

noncomputable section

/-- A385469: Expansion of e.g.f. 1/(1 - 3 * arctanh(x))^(1/3).

Offset 0, canonical program `A385469.P10167520793086109988`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385469 (n : ℕ) : ℤ :=
  A385469.P10167520793086109988.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385469.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385473.P6740271229782449686

`∑{#}[n, A007559(#)*3^(n-#)*A111594(C(n+1, 2)+#)]`
-/

namespace A385473.P6740271229782449686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A007559 k : ℚ) * (3 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (A111594 (Nat.choose (n + 1) 2 + k) : ℚ)

end

end A385473.P6740271229782449686

noncomputable section

/-- A385473: Expansion of e.g.f. 1/(1 - arctanh(3*x))^(1/3).

Offset 0, canonical program `A385473.P6740271229782449686`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385473 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A385473.P6740271229782449686.a n)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385473.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385553.P5498376679823547533

`A062383(n)*A064235(n+1)`
-/

namespace A385553.P5498376679823547533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n * A064235 (n + 1)

end

end A385553.P5498376679823547533

noncomputable section

/-- A385553: Period of {binomial(N,n) mod 6: N in Z}.

Offset 0, canonical program `A385553.P5498376679823547533`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385553 (n : ℕ) : ℤ :=
  A385553.P5498376679823547533.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385553.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A391991.P1337276639088855244

`A055642(A007318(n))`
-/

namespace A391991.P1337276639088855244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A007318 n).toNat

end

end A391991.P1337276639088855244

noncomputable section

/-- A391991: Triangle read by rows: T(n,k) = number of digits in decimal representation of binomial(n,k), 0<=k<=n.

Offset 0, canonical program `A391991.P1337276639088855244`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391991 (n : ℕ) : ℤ :=
  A391991.P1337276639088855244.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391991.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394112.P7582498751835381020

`A000108(n)+A007852(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A394112.P7582498751835381020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + A007852 (n + 1)

end

end A394112.P7582498751835381020

noncomputable section

/-- A394112: a(n) = A000108(n-1)+A007852(n).

Offset 1, canonical program `A394112.P7582498751835381020`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394112 (n : ℕ) : ℤ :=
  A394112.P7582498751835381020.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394112.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A363060.P4728981238833991095

`eq[5, A008952(n)]`
-/

namespace A363060.P4728981238833991095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A363060.P4728981238833991095

noncomputable section

/-- A363060: Numbers k such that 5 is the first digit of 2^k.

Offset 1, canonical program `A363060.P4728981238833991095`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3958 terms. -/
def A363060 (n : ℕ) : ℤ :=
  (A363060.P4728981238833991095.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3958 terms. -/
def A363060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363402.P1607210361541194741

`A003557(A028310(n))*A020522(n)`
-/

namespace A363402.P1607210361541194741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A028310 n).toNat * A020522 n

end

end A363402.P1607210361541194741

noncomputable section

/-- A363402: a(n) = n * (4^n - 2^n) / Clausen(n, 0).

Offset 0, canonical program `A363402.P1607210361541194741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A363402 (n : ℕ) : ℤ :=
  A363402.P1607210361541194741.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A363402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363459.P15388970718301156450

`A024918(n+2)-1`
-/

namespace A363459.P15388970718301156450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024918 (n + 2) - 1

end

end A363459.P15388970718301156450

noncomputable section

/-- A363459: Sum of the first n prime powers A246655.

Offset 1, canonical program `A363459.P15388970718301156450`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363459 (n : ℕ) : ℤ :=
  A363459.P15388970718301156450.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024918, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363459.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363514.P8280304186650269992

`A078181(3*(n+1)-1)`
-/

namespace A363514.P8280304186650269992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078181 (3 * (n + 1) - 1)

end

end A363514.P8280304186650269992

noncomputable section

/-- A363514: Sum of divisors of 3*n-1 of form 3*k+1.

Offset 1, canonical program `A363514.P8280304186650269992`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078181, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363514 (n : ℕ) : ℤ :=
  A363514.P8280304186650269992.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078181, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363514.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363690.P7555013278972641171

`eq[2, A246600(n+1)]+1`
-/

namespace A363690.P7555013278972641171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246600 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A363690.P7555013278972641171

noncomputable section

/-- A363690: Numbers k such that A246600(k) = 2.

Offset 1, canonical program `A363690.P7555013278972641171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6268 terms. -/
def A363690 (n : ℕ) : ℤ :=
  (A363690.P7555013278972641171.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6268 terms. -/
def A363690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363732.P13587029953174371264

`A000110(A004736(1+n))*A130595(n)`
-/

namespace A363732.P13587029953174371264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A004736 (1 + n)).toNat * A130595 n

end

end A363732.P13587029953174371264

noncomputable section

/-- A363732: Triangle read by rows. The triangle algorithm applied to (-1)^n/n!.

Offset 0, canonical program `A363732.P13587029953174371264`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3917 terms. -/
def A363732 (n : ℕ) : ℤ :=
  A363732.P13587029953174371264.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3917 terms. -/
def A363732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363751.P1478447399456865864

`eq[1, A105700(A004648(n+1))]+1`
-/

namespace A363751.P1478447399456865864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A004648 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A363751.P1478447399456865864

noncomputable section

/-- A363751: Numbers k such that prime(k) mod k is prime.

Offset 1, canonical program `A363751.P1478447399456865864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2734 terms. -/
def A363751 (n : ℕ) : ℤ :=
  (A363751.P1478447399456865864.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2734 terms. -/
def A363751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363806.P10301958111429027824

`A279061(2*(n+1))-A279061((n+1)/2^val(n+1, 2))`
-/

namespace A363806.P10301958111429027824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (2 * (n + 1)) - A279061 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A363806.P10301958111429027824

noncomputable section

/-- A363806: Number of divisors of n of the form 7*k + 4.

Offset 1, canonical program `A363806.P10301958111429027824`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A363806 (n : ℕ) : ℤ :=
  A363806.P10301958111429027824.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A363806.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363820.P3566701227845072726

`A014181(n+2)-10`
-/

namespace A363820.P3566701227845072726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014181 (n + 2) - 10

end

end A363820.P3566701227845072726

noncomputable section

/-- A363820: Moving the rightmost digit of a number to place it furthest to the left adds 9 to the number.

Offset 1, canonical program `A363820.P3566701227845072726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 890 terms. -/
def A363820 (n : ℕ) : ℤ :=
  A363820.P3566701227845072726.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 890 terms. -/
def A363820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363850.P5431407368653199520

`A279061(7*(n+1)-3)`
-/

namespace A363850.P5431407368653199520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (7 * (n + 1) - 3)

end

end A363850.P5431407368653199520

noncomputable section

/-- A363850: Number of divisors of 7*n-3 of form 7*k+1.

Offset 1, canonical program `A363850.P5431407368653199520`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363850 (n : ℕ) : ℤ :=
  A363850.P5431407368653199520.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363850.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363851.P18079601526359170687

`A279061(7*(n+1)-4)`
-/

namespace A363851.P18079601526359170687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (7 * (n + 1) - 4)

end

end A363851.P18079601526359170687

noncomputable section

/-- A363851: Number of divisors of 7*n-4 of form 7*k+1.

Offset 1, canonical program `A363851.P18079601526359170687`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363851 (n : ℕ) : ℤ :=
  A363851.P18079601526359170687.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363851.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363852.P10747940263163511164

`A279061(7*(n+1)-5)`
-/

namespace A363852.P10747940263163511164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (7 * (n + 1) - 5)

end

end A363852.P10747940263163511164

noncomputable section

/-- A363852: Number of divisors of 7*n-5 of form 7*k+1.

Offset 1, canonical program `A363852.P10747940263163511164`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363852 (n : ℕ) : ℤ :=
  A363852.P10747940263163511164.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363852.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363853.P8524164086728163721

`A279061(7*(n+1)-6)`
-/

namespace A363853.P8524164086728163721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (7 * (n + 1) - 6)

end

end A363853.P8524164086728163721

noncomputable section

/-- A363853: Number of divisors of 7*n-6 of form 7*k+1.

Offset 1, canonical program `A363853.P8524164086728163721`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363853 (n : ℕ) : ℤ :=
  A363853.P8524164086728163721.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279061, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363853.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363855.P11323486377278081280

`A363805(7*(n+1)-3)`
-/

namespace A363855.P11323486377278081280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363805 (7 * (n + 1) - 3)

end

end A363855.P11323486377278081280

noncomputable section

/-- A363855: Number of divisors of 7*n-3 of form 7*k+6.

Offset 1, canonical program `A363855.P11323486377278081280`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363805, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363855 (n : ℕ) : ℤ :=
  A363855.P11323486377278081280.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363805, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363855.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363859.P12984899488609813938

`A363805(7*(n+1)-1)`
-/

namespace A363859.P12984899488609813938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363805 (7 * (n + 1) - 1)

end

end A363859.P12984899488609813938

noncomputable section

/-- A363859: Number of divisors of 7*n-1 of the form 7*k+2.

Offset 1, canonical program `A363859.P12984899488609813938`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363805, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363859 (n : ℕ) : ℤ :=
  A363859.P12984899488609813938.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363805, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363859.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363877.P10617050833663862106

`A363805(7*(n+1)-2)`
-/

namespace A363877.P10617050833663862106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363805 (7 * (n + 1) - 2)

end

end A363877.P10617050833663862106

noncomputable section

/-- A363877: Number of divisors of 7*n-2 of form 7*k+3.

Offset 1, canonical program `A363877.P10617050833663862106`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363805, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363877 (n : ℕ) : ℤ :=
  A363877.P10617050833663862106.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363805, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363877.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363880.P7390810091035147557

`A363805(7*n+1)`
-/

namespace A363880.P7390810091035147557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363805 (7 * n + 1)

end

end A363880.P7390810091035147557

noncomputable section

/-- A363880: Number of divisors of 7*n-6 of form 7*k+3.

Offset 1, canonical program `A363880.P7390810091035147557`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363805, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363880 (n : ℕ) : ℤ :=
  A363880.P7390810091035147557.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363805, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363880.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363887.P10568387131501644855

`A363805(7*(n+1)-5)`
-/

namespace A363887.P10568387131501644855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363805 (7 * (n + 1) - 5)

end

end A363887.P10568387131501644855

noncomputable section

/-- A363887: Number of divisors of 7*n-5 of form 7*k+3.

Offset 1, canonical program `A363887.P10568387131501644855`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363805, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363887 (n : ℕ) : ℤ :=
  A363887.P10568387131501644855.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363805, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363887.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363889.P3675962826148467053

`A078181(3*n+1)`
-/

namespace A363889.P3675962826148467053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078181 (3 * n + 1)

end

end A363889.P3675962826148467053

noncomputable section

/-- A363889: Sum of divisors of 3*n-2 of form 3*k+1.

Offset 1, canonical program `A363889.P3675962826148467053`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078181, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363889 (n : ℕ) : ℤ :=
  A363889.P3675962826148467053.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078181, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363889.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363925.P14665766915685615402

`(4*A001876(n+1)+A284097(n+1))/5`
-/

namespace A363925.P14665766915685615402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A001876 (n + 1) + A284097 (n + 1) : ℚ) / 5

end

end A363925.P14665766915685615402

noncomputable section

/-- A363925: Expansion of Sum_{k>0} x^k / (1 - x^(5*k))^2.

Offset 1, canonical program `A363925.P14665766915685615402`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001876, A284097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363925 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363925.P14665766915685615402.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001876, A284097, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363925.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363926.P69574837358207021

`(3*A001877(n+1)+A284280(n+1))/5`
-/

namespace A363926.P69574837358207021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A001877 (n + 1) + A284280 (n + 1) : ℚ) / 5

end

end A363926.P69574837358207021

noncomputable section

/-- A363926: Expansion of Sum_{k>0} x^(2*k) / (1 - x^(5*k))^2.

Offset 1, canonical program `A363926.P69574837358207021`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001877, A284280, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363926 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363926.P69574837358207021.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001877, A284280, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363926.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364012.P10594367509355664606

`A326399(2*(n+1))-A078708(n+1)`
-/

namespace A364012.P10594367509355664606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326399 (2 * (n + 1)) - A078708 (n + 1)

end

end A364012.P10594367509355664606

noncomputable section

/-- A364012: Expansion of Sum_{k>0} k * x^k / (1 + x^(3*k)).

Offset 1, canonical program `A364012.P10594367509355664606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A364012 (n : ℕ) : ℤ :=
  A364012.P10594367509355664606.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A364012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364032.P15572008137104778974

`A188170(n+1)+A188170(n+1)-A001842(n+1)`
-/

namespace A364032.P15572008137104778974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188170 (n + 1) + (A188170 (n + 1) - A001842 (n + 1))

end

end A364032.P15572008137104778974

noncomputable section

/-- A364032: Expansion of Sum_{k>0} x^(3*k) / (1 + x^(4*k)).

Offset 1, canonical program `A364032.P15572008137104778974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364032 (n : ℕ) : ℤ :=
  A364032.P15572008137104778974.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364034.P3967422730475427941

`∑{d}[n+1, A131575(#)]`
-/

namespace A364034.P3967422730475427941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A131575 d

end

end A364034.P3967422730475427941

noncomputable section

/-- A364034: Expansion of Sum_{k>0} x^k / (1 - 2*x^(2*k)).

Offset 1, canonical program `A364034.P3967422730475427941`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A364034 (n : ℕ) : ℤ :=
  A364034.P3967422730475427941.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A364034.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364046.P2212517165929365656

`A001877(n+1-lcm(2, n+1)/2)-∑{d}[n+1, C(#%10, 9)]`
-/

namespace A364046.P2212517165929365656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (SequenceMachineLib.roundAway ((n + 1 : ℚ) - (Nat.lcm 2 (n + 1) : ℚ) / 2)).toNat - ((∑ d ∈ Nat.divisors (f1 n), Nat.choose (d % 10) 9 : ℕ) : ℤ)

end

end A364046.P2212517165929365656

noncomputable section

/-- A364046: Expansion of Sum_{k>0} x^(4*k) / (1 + x^(5*k)).

Offset 1, canonical program `A364046.P2212517165929365656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364046 (n : ℕ) : ℤ :=
  A364046.P2212517165929365656.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364046.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364092.P276984293227753966

`A284097(5*(n+1)-1)`
-/

namespace A364092.P276984293227753966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284097 (5 * (n + 1) - 1)

end

end A364092.P276984293227753966

noncomputable section

/-- A364092: Sum of divisors of 5*n-1 of form 5*k+1.

Offset 1, canonical program `A364092.P276984293227753966`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364092 (n : ℕ) : ℤ :=
  A364092.P276984293227753966.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364092.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364093.P6985918061966599924

`A284097(5*(n+1)-2)`
-/

namespace A364093.P6985918061966599924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284097 (5 * (n + 1) - 2)

end

end A364093.P6985918061966599924

noncomputable section

/-- A364093: Sum of divisors of 5*n-2 of form 5*k+1.

Offset 1, canonical program `A364093.P6985918061966599924`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364093 (n : ℕ) : ℤ :=
  A364093.P6985918061966599924.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364093.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364094.P1687889937016555816

`A284097(5*(n+1)-3)`
-/

namespace A364094.P1687889937016555816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284097 (5 * (n + 1) - 3)

end

end A364094.P1687889937016555816

noncomputable section

/-- A364094: Sum of divisors of 5*n-3 of form 5*k+1.

Offset 1, canonical program `A364094.P1687889937016555816`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364094 (n : ℕ) : ℤ :=
  A364094.P1687889937016555816.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364094.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364095.P7707059766730752190

`A284097(5*n+1)`
-/

namespace A364095.P7707059766730752190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284097 (5 * n + 1)

end

end A364095.P7707059766730752190

noncomputable section

/-- A364095: Sum of divisors of 5*n-4 of form 5*k+1.

Offset 1, canonical program `A364095.P7707059766730752190`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364095 (n : ℕ) : ℤ :=
  A364095.P7707059766730752190.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284097, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364095.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364204.P12516854949562588598

`∑{d}[n+1, A117212(#)*A326399((n+1)/#)]`
-/

namespace A364204.P12516854949562588598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117212 d * A326399 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364204.P12516854949562588598

noncomputable section

/-- A364204: Expansion of Sum_{k>=0} x^(3*k+1) / (1 + x^(3*k+1)).

Offset 1, canonical program `A364204.P12516854949562588598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364204 (n : ℕ) : ℤ :=
  A364204.P12516854949562588598.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364204.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364332.P12118188046320296518

`A333870(A006093(n+1))`
-/

namespace A364332.P12118188046320296518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333870 (A006093 (n + 1)).toNat

end

end A364332.P12118188046320296518

noncomputable section

/-- A364332: a(n) = f(prime(n)), where f(2) = 0 and for an odd prime p, f(p) = max{f(q)+1: q ranges over all prime factors of p-1}.

Offset 1, canonical program `A364332.P12118188046320296518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A364332 (n : ℕ) : ℤ :=
  A364332.P12118188046320296518.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. -/
def A364332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364578.P3899546025403999026

`A051885(n)+10^n`
-/

namespace A364578.P3899546025403999026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 n + (10 ^ n : ℤ)

end

end A364578.P3899546025403999026

noncomputable section

/-- A364578: a(n) is the smallest n-digit number whose sum of digits is n.

Offset 1, canonical program `A364578.P3899546025403999026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A364578 (n : ℕ) : ℤ :=
  A364578.P3899546025403999026.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A364578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364659.P17667284478992452943

`∩[A053224(n+1)-1, A053224(n+1)]`
-/

namespace A364659.P17667284478992452943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053224 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364659.P17667284478992452943

noncomputable section

/-- A364659: Numbers k such that sigma(k) < sigma(k+1) < sigma(k+2).

Offset 1, canonical program `A364659.P17667284478992452943`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 950 terms. -/
def A364659 (n : ℕ) : ℤ :=
  (A364659.P17667284478992452943.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 950 terms. -/
def A364659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364699.P5284075010875007829

`∩[A111333(n+1), A360927(n)]`
-/

namespace A364699.P5284075010875007829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360927 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364699.P5284075010875007829

noncomputable section

/-- A364699: Numbers k such that 1 + 2^k + 3^k is divisible by 2*k-1.

Offset 1, canonical program `A364699.P5284075010875007829`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2511 terms. -/
def A364699 (n : ℕ) : ℤ :=
  (A364699.P5284075010875007829.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2511 terms. -/
def A364699.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364900.P1803714140155533009

`A007913(gcd(n+1, ∑[n]))`
-/

namespace A364900.P1803714140155533009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A364900.P1803714140155533009

noncomputable section

/-- A364900: The n-volume of the unit regular n-simplex is sqrt(a(n))/A364901(n), with a(n) being squarefree.

Offset 0, canonical program `A364900.P1803714140155533009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364900 (n : ℕ) : ℤ :=
  A364900.P1803714140155533009.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364900.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365313.P10204782068029342441

`filter[A091998(n+1), A069513(#)]`
-/

namespace A365313.P10204782068029342441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A365313.P10204782068029342441

noncomputable section

/-- A365313: Prime powers (A246655) q such that 3 is a nonzero square in the finite field F_q.

Offset 1, canonical program `A365313.P10204782068029342441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3085 terms. -/
def A365313 (n : ℕ) : ℤ :=
  A365313.P10204782068029342441.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3085 terms. -/
def A365313.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365428.P6742084900381256507

`A049347(n)*A156277(n+1)`
-/

namespace A365428.P6742084900381256507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A156277 (n + 1)

end

end A365428.P6742084900381256507

noncomputable section

/-- A365428: Dirichlet inverse of A102283.

Offset 1, canonical program `A365428.P6742084900381256507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365428 (n : ℕ) : ℤ :=
  A365428.P6742084900381256507.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365708.P3747423489352114083

`C(A057237(n+1), A007913(n+1))+1`
-/

namespace A365708.P3747423489352114083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A057237 (n + 1)).toNat (A007913 (n + 1)).toNat + 1

end

end A365708.P3747423489352114083

noncomputable section

/-- A365708: a(n) for n >= 2 is the smallest term of A008578 m dividing n such that n/m is not a square, a(1) = 2.

Offset 1, canonical program `A365708.P3747423489352114083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365708 (n : ℕ) : ℤ :=
  (A365708.P3747423489352114083.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A365708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365858.P1614978794298170297

`∑{d}[2*n+1, A060280(#)]`
-/

namespace A365858.P1614978794298170297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060280 d

end

end A365858.P1614978794298170297

noncomputable section

/-- A365858: Number of cyclic compositions of 2*n-1 into odd parts.

Offset 1, canonical program `A365858.P1614978794298170297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 246 terms. -/
def A365858 (n : ℕ) : ℤ :=
  A365858.P1614978794298170297.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 246 terms. -/
def A365858.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365867.P14883380932903169649

`∩[A365866(n+1)-1, A365866(n+1)]`
-/

namespace A365867.P14883380932903169649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365866 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A365867.P14883380932903169649

noncomputable section

/-- A365867: Numbers k such that k and k+1 are both divisible by the cube of their least prime factor.

Offset 1, canonical program `A365867.P14883380932903169649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 757 terms. -/
def A365867 (n : ℕ) : ℤ :=
  (A365867.P14883380932903169649.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 757 terms. -/
def A365867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365869.P13905876651845941795

`lt[1, gcd(2, A067029(n+2))]+2`
-/

namespace A365869.P13905876651845941795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A067029 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A365869.P13905876651845941795

noncomputable section

/-- A365869: Numbers whose exponent of least prime factor in their prime factorization is even.

Offset 1, canonical program `A365869.P13905876651845941795`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2297 terms. -/
def A365869 (n : ℕ) : ℤ :=
  (A365869.P13905876651845941795.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2297 terms. -/
def A365869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365883.P7688717515464903741

`eq[A020639(n+1), A067029(n+1)]+1`
-/

namespace A365883.P7688717515464903741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A365883.P7688717515464903741

noncomputable section

/-- A365883: Numbers k whose least prime divisor is equal to its exponent in the prime factorization of k.

Offset 1, canonical program `A365883.P7688717515464903741`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1374 terms. -/
def A365883 (n : ℕ) : ℤ :=
  (A365883.P7688717515464903741.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1374 terms. -/
def A365883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366322.P1104271352441691657

`lt[0, A344908(1+n)]+1`
-/

namespace A366322.P1104271352441691657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344908 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A366322.P1104271352441691657

noncomputable section

/-- A366322: Heinz numbers of integer partitions containing at least one odd part. Numbers divisible by at least one prime of odd index.

Offset 1, canonical program `A366322.P1104271352441691657`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366322 (n : ℕ) : ℤ :=
  (A366322.P1104271352441691657.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366526.P7303414302420691645

`filter[A047522(n+1), A069513(#)]`
-/

namespace A366526.P7303414302420691645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A366526.P7303414302420691645

noncomputable section

/-- A366526: Prime powers (A246655) q such that 2 is a nonzero square in the finite field F_q.

Offset 1, canonical program `A366526.P7303414302420691645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2148 terms. -/
def A366526 (n : ℕ) : ℤ :=
  A366526.P7303414302420691645.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2148 terms. -/
def A366526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366765.P9334563109787905598

`∏{p}[n+1, #]*A064549((n+1)/∏{p}[n+1, gcd(n+1, #²)])`
-/

namespace A366765.P9334563109787905598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A064549 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.gcd (n + 1) (p ^ 2) : ℕ) : ℚ))).toNat

end

end A366765.P9334563109787905598

noncomputable section

/-- A366765: The largest divisor of n that have no exponent 2 in their prime factorization.

Offset 1, canonical program `A366765.P9334563109787905598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366765 (n : ℕ) : ℤ :=
  A366765.P9334563109787905598.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366765.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366989.P4225912740677048204

`A366988(n+1)+A001221(n+1)`
-/

namespace A366989.P4225912740677048204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366988 (n + 1) + A001221 (n + 1)

end

end A366989.P4225912740677048204

noncomputable section

/-- A366989: The number of prime powers p^q dividing n, where p is prime and q is either 1 or prime (A334393 without the first term 1).

Offset 1, canonical program `A366989.P4225912740677048204`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366988, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366989 (n : ℕ) : ℤ :=
  A366989.P4225912740677048204.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366988, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366989.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366991.P8092086084138922211

`∏{e}[n+1, A036234(#)+1]`
-/

namespace A366991.P8092086084138922211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A036234 (Nat.factorization (f1 n) p) + 1)

end

end A366991.P8092086084138922211

noncomputable section

/-- A366991: The number of divisors of n that are not terms of A322448.

Offset 1, canonical program `A366991.P8092086084138922211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366991 (n : ℕ) : ℤ :=
  A366991.P8092086084138922211.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367270.P16788633298638665148

`A007318(n)*A071919(n)`
-/

namespace A367270.P16788633298638665148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A071919 n

end

end A367270.P16788633298638665148

noncomputable section

/-- A367270: Triangle read by rows. T(n, k) = binomial(n, k)*binomial(n - 1, n - k - 1).

Offset 0, canonical program `A367270.P16788633298638665148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367270 (n : ℕ) : ℤ :=
  A367270.P16788633298638665148.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367294.P2160804425599817022

`eq[4, A008952(n)]`
-/

namespace A367294.P2160804425599817022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A367294.P2160804425599817022

noncomputable section

/-- A367294: Numbers k such that 4 is the first digit of 2^k.

Offset 1, canonical program `A367294.P2160804425599817022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3243 terms. -/
def A367294 (n : ℕ) : ℤ :=
  (A367294.P2160804425599817022.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3243 terms. -/
def A367294.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367295.P13713340400755399222

`eq[6, A008952(n)]`
-/

namespace A367295.P13713340400755399222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A367295.P13713340400755399222

noncomputable section

/-- A367295: Numbers k such that 6 is the first digit of 2^k.

Offset 1, canonical program `A367295.P13713340400755399222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2328 terms. -/
def A367295 (n : ℕ) : ℤ :=
  (A367295.P13713340400755399222.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2328 terms. -/
def A367295.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367296.P16984635311921054484

`eq[8, A008952(n)]`
-/

namespace A367296.P16984635311921054484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008952 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A367296.P16984635311921054484

noncomputable section

/-- A367296: Numbers k such that 8 is the first digit of 2^k.

Offset 1, canonical program `A367296.P16984635311921054484`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2558 terms. -/
def A367296 (n : ℕ) : ℤ :=
  (A367296.P16984635311921054484.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2558 terms. -/
def A367296.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367360.P3912048120050815529

`10*A008959(n)+A002993(n+1)`
-/

namespace A367360.P3912048120050815529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A008959 n + A002993 (n + 1)

end

end A367360.P3912048120050815529

noncomputable section

/-- A367360: Comma transform of squares.

Offset 0, canonical program `A367360.P3912048120050815529`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002993, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367360 (n : ℕ) : ℤ :=
  A367360.P3912048120050815529.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002993, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367360.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367361.P13432602641584135222

`10*A000689(n)+A008952(n+1)`
-/

namespace A367361.P13432602641584135222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A000689 n + A008952 (n + 1)

end

end A367361.P13432602641584135222

noncomputable section

/-- A367361: Comma transform of powers of 2.

Offset 0, canonical program `A367361.P13432602641584135222`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008952, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367361 (n : ℕ) : ℤ :=
  A367361.P13432602641584135222.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008952, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367361.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367396.P3258263714388146902

`2^n-A367400(n)`
-/

namespace A367396.P3258263714388146902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A367400 n

end

end A367396.P3258263714388146902

noncomputable section

/-- A367396: Number of subsets of {1..n} whose cardinality is the sum of two distinct elements.

Offset 0, canonical program `A367396.P3258263714388146902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A367396 (n : ℕ) : ℤ :=
  A367396.P3258263714388146902.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. -/
def A367396.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367556.P8034528816821162778

`10*A003893(n)+A008963(n+1)`
-/

namespace A367556.P8034528816821162778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A003893 n + A008963 (n + 1)

end

end A367556.P8034528816821162778

noncomputable section

/-- A367556: Comma transform of the Fibonacci numbers.

Offset 0, canonical program `A367556.P8034528816821162778`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367556 (n : ℕ) : ℤ :=
  A367556.P8034528816821162778.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008963, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367556.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367615.P17739915292752621124

`comp[A367341(1+n)-1]+1`
-/

namespace A367615.P17739915292752621124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367341 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A367615.P17739915292752621124

noncomputable section

/-- A367615: Numbers that have a comma-successor.

Offset 1, canonical program `A367615.P17739915292752621124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367615 (n : ℕ) : ℤ :=
  (A367615.P17739915292752621124.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367782.P17228893178319578665

`lt[n, A000035(n)*A053214(n)]`
-/

namespace A367782.P17228893178319578665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A053214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A367782.P17228893178319578665

noncomputable section

/-- A367782: Numbers k such that binomial(2*k,k) mod k is odd.

Offset 1, canonical program `A367782.P17228893178319578665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1609 terms. -/
def A367782 (n : ℕ) : ℤ :=
  (A367782.P17228893178319578665.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1609 terms. -/
def A367782.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368248.P13460108604890349551

`abs(A307428(n+1))`
-/

namespace A368248.P13460108604890349551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A307428 (n + 1)|

end

end A368248.P13460108604890349551

noncomputable section

/-- A368248: The number of unitary divisors of the cubefull part of n (A360540).

Offset 1, canonical program `A368248.P13460108604890349551`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307428, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368248 (n : ℕ) : ℤ :=
  A368248.P13460108604890349551.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307428, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368248.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368325.P1087594595659124565

`∪[2^n, A002110(n)]`
-/

namespace A368325.P1087594595659124565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A368325.P1087594595659124565

noncomputable section

/-- A368325: Union of primorials and powers of 2.

Offset 1, canonical program `A368325.P1087594595659124565`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 379 terms. -/
def A368325 (n : ℕ) : ℤ :=
  (A368325.P1087594595659124565.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 379 terms. -/
def A368325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368360.P11867245166114374890

`A367362(2*n+1)-10`
-/

namespace A368360.P11867245166114374890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367362 (2 * n + 1) - 10

end

end A368360.P11867245166114374890

noncomputable section

/-- A368360: Comma transform of the even numbers.

Offset 0, canonical program `A368360.P11867245166114374890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A368360 (n : ℕ) : ℤ :=
  A368360.P11867245166114374890.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A368360.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368402.P12196050188781490392

`∩[A268375(n+1)-1, A268375(n+1)]`
-/

namespace A368402.P12196050188781490392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268375 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368402.P12196050188781490392

noncomputable section

/-- A368402: Numbers k such that k and k+1 are both in A268375.

Offset 1, canonical program `A368402.P12196050188781490392`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1227 terms. -/
def A368402 (n : ℕ) : ℤ :=
  (A368402.P12196050188781490392.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1227 terms. -/
def A368402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368625.P10862241457077750444

`1-A336040(n+1)`
-/

namespace A368625.P10862241457077750444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A336040 (n + 1)

end

end A368625.P10862241457077750444

noncomputable section

/-- A368625: Characteristic function of non-refactorable numbers (A159973).

Offset 1, canonical program `A368625.P10862241457077750444`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368625 (n : ℕ) : ℤ :=
  A368625.P10862241457077750444.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336040, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368625.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369185.P3362833814146370033

`∩[A369139(n+1)-1, A369139(n+1)]`
-/

namespace A369185.P3362833814146370033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369139 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A369185.P3362833814146370033

noncomputable section

/-- A369185: Numbers k such that Omega(k) = 1 + Omega(k+1) = 2 + Omega(k+2).

Offset 1, canonical program `A369185.P3362833814146370033`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1395 terms. -/
def A369185 (n : ℕ) : ℤ :=
  (A369185.P3362833814146370033.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1395 terms. -/
def A369185.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369189.P6915167320098397767

`A185027(∏{p}[1+n, #])`
-/

namespace A369189.P6915167320098397767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185027 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A369189.P6915167320098397767

noncomputable section

/-- A369189: Sum of the squarefree triangular divisors of n.

Offset 1, canonical program `A369189.P6915167320098397767`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369189 (n : ℕ) : ℤ :=
  A369189.P6915167320098397767.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369744.P12931148306204078682

`∑{d}[n+1, A062799(#)*A137851((n+1)/#)]`
-/

namespace A369744.P12931148306204078682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062799 d * A137851 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369744.P12931148306204078682

noncomputable section

/-- A369744: a(n) = Sum_{p|n, p prime} p * omega(n/p).

Offset 1, canonical program `A369744.P12931148306204078682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369744 (n : ℕ) : ℤ :=
  A369744.P12931148306204078682.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369745.P3771573079941059180

`∑{d}[n+1, A062774(#)*A137851((n+1)/#)]`
-/

namespace A369745.P3771573079941059180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062774 d * A137851 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369745.P3771573079941059180

noncomputable section

/-- A369745: a(n) = Sum_{p|n, p prime} p * pi(n/p).

Offset 1, canonical program `A369745.P3771573079941059180`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369745 (n : ℕ) : ℤ :=
  A369745.P3771573079941059180.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369747.P13998751493365301120

`∑{d}[n+1, A062774(#)*A143519((n+1)/#)]`
-/

namespace A369747.P13998751493365301120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062774 d * A143519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369747.P13998751493365301120

noncomputable section

/-- A369747: a(n) = Sum_{p|n, p prime} pi(n/p).

Offset 1, canonical program `A369747.P13998751493365301120`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369747 (n : ℕ) : ℤ :=
  A369747.P13998751493365301120.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369749.P2966338414670891840

`∑{d}[n+1, A000040(#)*A061397((n+1)/#)]`
-/

namespace A369749.P2966338414670891840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000040 d * A061397 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369749.P2966338414670891840

noncomputable section

/-- A369749: a(n) = Sum_{p|n, p prime} p * prime(n/p).

Offset 1, canonical program `A369749.P2966338414670891840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369749 (n : ℕ) : ℤ :=
  A369749.P2966338414670891840.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369865.P17682209453494408525

`∑{d}[n+1, A048250(#)*A143519((n+1)/#)]`
-/

namespace A369865.P17682209453494408525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048250 d * A143519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369865.P17682209453494408525

noncomputable section

/-- A369865: a(n) = n * Sum_{p|n, p prime} mu(n/p)^2 / p.

Offset 1, canonical program `A369865.P17682209453494408525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369865 (n : ℕ) : ℤ :=
  A369865.P17682209453494408525.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369867.P8493917405294498414

`∑{p}[n+1, A033286((n+1)/#)]`
-/

namespace A369867.P8493917405294498414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A033286 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat

end

end A369867.P8493917405294498414

noncomputable section

/-- A369867: a(n) = n * Sum_{p|n, p prime} prime(n/p) / p.

Offset 1, canonical program `A369867.P8493917405294498414`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369867 (n : ℕ) : ℤ :=
  A369867.P8493917405294498414.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369867.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369869.P1984379103473463166

`∑{d}[n+1, A010051(#)*A128913((n+1)/#)]`
-/

namespace A369869.P1984379103473463166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 d * A128913 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369869.P1984379103473463166

noncomputable section

/-- A369869: a(n) = n * Sum_{p|n, p prime} pi(n/p) / p.

Offset 1, canonical program `A369869.P1984379103473463166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369869 (n : ℕ) : ℤ :=
  A369869.P1984379103473463166.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369907.P5930433476128637546

`∑{d}[n+1, A010051(#)*A328260((n+1)/#)]`
-/

namespace A369907.P5930433476128637546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 d * A328260 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369907.P5930433476128637546

noncomputable section

/-- A369907: a(n) = n * Sum_{p|n, p prime} omega(n/p) / p.

Offset 1, canonical program `A369907.P5930433476128637546`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369907 (n : ℕ) : ℤ :=
  A369907.P5930433476128637546.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369907.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369909.P1517418894271741417

`∑{d}[n+1, A010051(#)*A066959((n+1)/#)]`
-/

namespace A369909.P1517418894271741417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 d * A066959 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369909.P1517418894271741417

noncomputable section

/-- A369909: a(n) = n * Sum_{p|n, p prime} Omega(n/p) / p.

Offset 1, canonical program `A369909.P1517418894271741417`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369909 (n : ℕ) : ℤ :=
  A369909.P1517418894271741417.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369909.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369914.P9923414443239536090

`∑{d}[n+1, A143519(#)*A344578((n+1)/#)]`
-/

namespace A369914.P9923414443239536090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A143519 d * A344578 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369914.P9923414443239536090

noncomputable section

/-- A369914: a(n) = n * Sum_{p|n, p prime} sopf(n/p) / p.

Offset 1, canonical program `A369914.P9923414443239536090`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369914 (n : ℕ) : ℤ :=
  A369914.P9923414443239536090.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369914.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370090.P6565301121123752772

`eq[1, A117929(n+1)]+1`
-/

namespace A370090.P6565301121123752772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A370090.P6565301121123752772

noncomputable section

/-- A370090: Numbers that can be expressed in exactly one way as the unordered sum of two distinct primes.

Offset 1, canonical program `A370090.P6565301121123752772`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1233 terms. -/
def A370090 (n : ℕ) : ℤ :=
  (A370090.P6565301121123752772.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1233 terms. -/
def A370090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370181.P1112331727695384531

`lcm(A060904(n+1), A133186(n))`
-/

namespace A370181.P1112331727695384531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060904 (n + 1)) (A133186 n)

end

end A370181.P1112331727695384531

noncomputable section

/-- A370181: Size of the group Z_5*/(Z_5*)^n, where Z_5 is the ring of 5-adic integers.

Offset 1, canonical program `A370181.P1112331727695384531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370181 (n : ℕ) : ℤ :=
  (A370181.P1112331727695384531.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370256.P2314834966370304951

`∑{d}[1+n, A307420(#)]`
-/

namespace A370256.P2314834966370304951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307420 d

end

end A370256.P2314834966370304951

noncomputable section

/-- A370256: The number of ways in which n can be expressed as b^2 * c^3, with b and c >= 1.

Offset 1, canonical program `A370256.P2314834966370304951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370256 (n : ℕ) : ℤ :=
  A370256.P2314834966370304951.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370291.P34793369321355740

`A000217(A072643(n))`
-/

namespace A370291.P34793369321355740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A072643 n).toNat

end

end A370291.P34793369321355740

noncomputable section

/-- A370291: Triangular number T(n) = A000217(n) occurs C(n) = A000108(n) times.

Offset 0, canonical program `A370291.P34793369321355740`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072643, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370291 (n : ℕ) : ℤ :=
  A370291.P34793369321355740.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072643, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370291.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370479.P11927598021809457386

`A110190(n)+A080247(A133263(n)-1)`
-/

namespace A370479.P11927598021809457386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110190 n + A080247 (A133263 n - 1).toNat

end

end A370479.P11927598021809457386

noncomputable section

/-- A370479: G.f. satisfies A(x) = ( 1 + x * (A(x)^(1/2) / (1-x))^2 )^2.

Offset 0, canonical program `A370479.P11927598021809457386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A370479 (n : ℕ) : ℤ :=
  A370479.P11927598021809457386.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A370479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370487.P3496478294062338609

`abs(2-A029651(n))`
-/

namespace A370487.P3496478294062338609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A029651 n|

end

end A370487.P3496478294062338609

noncomputable section

/-- A370487: Number of partitions of [3n] into 3 sets of size n having at least one set of consecutive numbers whose maximum (if n>0) is a multiple of n.

Offset 0, canonical program `A370487.P3496478294062338609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A370487 (n : ℕ) : ℤ :=
  A370487.P3496478294062338609.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A370487.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370495.P17576673129975267883

`A002378(A030229(n+1)-1)`
-/

namespace A370495.P17576673129975267883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A030229 (n + 1) - 1).toNat

end

end A370495.P17576673129975267883

noncomputable section

/-- A370495: Oblong numbers of the form (k-1)*k where k is the product of an even number of distinct primes.

Offset 1, canonical program `A370495.P17576673129975267883`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370495 (n : ℕ) : ℤ :=
  A370495.P17576673129975267883.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370495.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370565.P7797015782535462372

`(n+1)*A370180(n+1)`
-/

namespace A370565.P7797015782535462372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A370180 (n + 1)

end

end A370565.P7797015782535462372

noncomputable section

/-- A370565: Size of the group Q_3*/(Q_3*)^n, where Q_3 is the field of 3-adic numbers.

Offset 1, canonical program `A370565.P7797015782535462372`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A370180, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370565 (n : ℕ) : ℤ :=
  A370565.P7797015782535462372.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A370180, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370565.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370567.P14808296113634143775

`(n+1)*A370182(n+1)`
-/

namespace A370567.P14808296113634143775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A370182 (n + 1)

end

end A370567.P14808296113634143775

noncomputable section

/-- A370567: Size of the group Q_7*/(Q_7*)^n, where Q_7 is the field of 7-adic numbers.

Offset 1, canonical program `A370567.P14808296113634143775`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A370182, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370567 (n : ℕ) : ℤ :=
  A370567.P14808296113634143775.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A370182, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370567.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370600.P2403494429229605259

`(A007675(n+1)-1)/4`
-/

namespace A370600.P2403494429229605259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007675 (n + 1) - 1 : ℚ) / 4

end

end A370600.P2403494429229605259

noncomputable section

/-- A370600: Numbers m such that 4m + k is squarefree for k = 1..3.

Offset 1, canonical program `A370600.P2403494429229605259`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370600 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A370600.P2403494429229605259.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007675, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370600.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370791.P32120878239990069

`A153151(A303768(n))`
-/

namespace A370791.P32120878239990069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153151 (A303768 n).toNat

end

end A370791.P32120878239990069

noncomputable section

/-- A370791: Inverse permutation of A370790.

Offset 0, canonical program `A370791.P32120878239990069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9994 terms. -/
def A370791 (n : ℕ) : ℤ :=
  A370791.P32120878239990069.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9994 terms. -/
def A370791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370797.P14741787817802709745

`∑{#}[n, C(n, #)*A049140(#+1)]`
-/

namespace A370797.P14741787817802709745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A049140 (k + 1)

end

end A370797.P14741787817802709745

noncomputable section

/-- A370797: Expansion of (1/x) * Series_Reversion( x/(x+1/(1-x-x^3)) ).

Offset 0, canonical program `A370797.P14741787817802709745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A370797 (n : ℕ) : ℤ :=
  A370797.P14741787817802709745.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. -/
def A370797.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370819.P7119138988108707849

`A097805(A070939(n)+∑[n])`
-/

namespace A370819.P7119138988108707849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A070939 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A370819.P7119138988108707849

noncomputable section

/-- A370819: Number of subsets of {1..n-1} whose cardinality is one less than the length of the binary expansion of n; a(0) = 0.

Offset 0, canonical program `A370819.P7119138988108707849`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A370819 (n : ℕ) : ℤ :=
  A370819.P7119138988108707849.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A370819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370983.P5980616073308389739

`A007318(n)*A097805(A245300(n))*A165680(n+1)`
-/

namespace A370983.P5980616073308389739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A097805 (A245300 n).toNat * A165680 (n + 1)

end

end A370983.P5980616073308389739

noncomputable section

/-- A370983: Triangle read by rows: T(n, k) = (n + k - 1)! / (k!*(n - k)!) if k > 0 and T(n, 0) = 0^n.

Offset 0, canonical program `A370983.P5980616073308389739`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1538 terms. -/
def A370983 (n : ℕ) : ℤ :=
  A370983.P5980616073308389739.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1538 terms. -/
def A370983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371014.P12085375655819341200

`∑{d}[1+n, A229062(#)]`
-/

namespace A371014.P12085375655819341200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A229062 d

end

end A371014.P12085375655819341200

noncomputable section

/-- A371014: The number of divisors of n that are the sum of 2 squares.

Offset 1, canonical program `A371014.P12085375655819341200`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371014 (n : ℕ) : ℤ :=
  A371014.P12085375655819341200.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371036.P3088427061520026793

`A134759(n)-A141351(n)`
-/

namespace A371036.P3088427061520026793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134759 n - A141351 n

end

end A371036.P3088427061520026793

noncomputable section

/-- A371036: a(n) is the number of ways to place n indistinguishable balls into n distinguishable boxes with at least one box remaining empty and not all balls placed in a single box.

Offset 1, canonical program `A371036.P3088427061520026793`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A371036 (n : ℕ) : ℤ :=
  A371036.P3088427061520026793.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A371036.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371256.P3370008578592475256

`A006068(A060585(n))`
-/

namespace A371256.P3370008578592475256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A060585 n).toNat

end

end A371256.P3370008578592475256

noncomputable section

/-- A371256: The run lengths transform of the ternary expansion of n corresponds to the run lengths transform of the binary expansion of a(n).

Offset 0, canonical program `A371256.P3370008578592475256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A371256 (n : ℕ) : ℤ :=
  A371256.P3370008578592475256.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. -/
def A371256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371491.P18626456264356765

`∑{d}[n+1, A013956(#)*A334659((n+1)/#)]`
-/

namespace A371491.P18626456264356765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A013956 d * A334659 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A371491.P18626456264356765

noncomputable section

/-- A371491: a(n) = Sum_{1 <= x_1, x_2, x_3, x_4, x_5 <= n} ( n/gcd(x_1, x_2, x_3, x_4, x_5, n) )^3.

Offset 1, canonical program `A371491.P18626456264356765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371491 (n : ℕ) : ℤ :=
  A371491.P18626456264356765.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371491.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371517.P14177925640413317660

`A000007(n)+Δ[A349331(n)]`
-/

namespace A371517.P14177925640413317660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A371517.P14177925640413317660

noncomputable section

/-- A371517: G.f. A(x) satisfies A(x) = (1 + x*A(x) / (1-x))^4.

Offset 0, canonical program `A371517.P14177925640413317660`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A371517 (n : ℕ) : ℤ :=
  A371517.P14177925640413317660.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A371517.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371533.P15110129469889322330

`eq[A001227(n+1), A073093(n+1)]+1`
-/

namespace A371533.P15110129469889322330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A371533.P15110129469889322330

noncomputable section

/-- A371533: Numbers k such that A001227(2*k) = A001222(2*k).

Offset 1, canonical program `A371533.P15110129469889322330`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2397 terms. -/
def A371533 (n : ℕ) : ℤ :=
  (A371533.P15110129469889322330.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2397 terms. -/
def A371533.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371627.P7388867108596461691

`A003231(n+1)%A186516(n+1)`
-/

namespace A371627.P7388867108596461691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003231 (n + 1)) (A186516 (n + 1))

end

end A371627.P7388867108596461691

noncomputable section

/-- A371627: The x-coordinate of the point where x + y = n, x is an integer and x/y is as close as possible to 1/phi.

Offset 1, canonical program `A371627.P7388867108596461691`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371627 (n : ℕ) : ℤ :=
  A371627.P7388867108596461691.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371627.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371672.P13422375698045397827

`A362692(1+n)-1`
-/

namespace A371672.P13422375698045397827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362692 (1 + n) - 1

end

end A371672.P13422375698045397827

noncomputable section

/-- A371672: a(n) = floor(log_phi(n)) with phi = A001622.

Offset 1, canonical program `A371672.P13422375698045397827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371672 (n : ℕ) : ℤ :=
  A371672.P13422375698045397827.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371878.P2953255731011200636

`∑{d}[1+n, #*A059378(#)]`
-/

namespace A371878.P2953255731011200636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A059378 d

end

end A371878.P2953255731011200636

noncomputable section

/-- A371878: a(n) = Sum_{1 <= x_1, x_2, x_3, x_4, x_5 <= n} n/gcd(x_1, x_2, x_3, x_4, x_5, n).

Offset 1, canonical program `A371878.P2953255731011200636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371878 (n : ℕ) : ℤ :=
  A371878.P2953255731011200636.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372035.P5799421148249204592

`A040000(n)*A371888(n)`
-/

namespace A372035.P5799421148249204592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n * A371888 n

end

end A372035.P5799421148249204592

noncomputable section

/-- A372035: G.f. A(x) satisfies A(x) = ( 1 + 4*x*A(x)/(1 - x) )^(1/2).

Offset 0, canonical program `A372035.P5799421148249204592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. -/
def A372035 (n : ℕ) : ℤ :=
  A372035.P5799421148249204592.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 296 terms. -/
def A372035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372257.P4449125955602869513

`xor(n%4, A038189(A008619(n)))`
-/

namespace A372257.P4449125955602869513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n % 4 : ℕ) : ℤ) (A038189 (A008619 n).toNat)

end

end A372257.P4449125955602869513

noncomputable section

/-- A372257: An infinite sequence over {0,1,2,3} without palindromes of length more than 1.

Offset 0, canonical program `A372257.P4449125955602869513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372257 (n : ℕ) : ℤ :=
  A372257.P4449125955602869513.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372325.P10269464100503119888

`eq[1, A116549(n)%2]`
-/

namespace A372325.P10269464100503119888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116549 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A372325.P10269464100503119888

noncomputable section

/-- A372325: Numbers whose binary expansion has an even number of 1's among positions listed in this sequence.

Offset 1, canonical program `A372325.P10269464100503119888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A372325 (n : ℕ) : ℤ :=
  (A372325.P10269464100503119888.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A372325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372420.P2955460865026778528

`2*a(n-1)+A028270(n)` with `a(0)=1`
-/

namespace A372420.P2955460865026778528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A028270 n

end

end A372420.P2955460865026778528

noncomputable section

/-- A372420: Expansion of (1 + x) / ((1 - 2*x)*sqrt(1 - 4*x)).

Offset 0, canonical program `A372420.P2955460865026778528`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028270, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372420 (n : ℕ) : ℤ :=
  A372420.P2955460865026778528.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A028270, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372420.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372506.P4737757675278959911

`(A348618(n)+A091527(n))/2`
-/

namespace A372506.P4737757675278959911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348618 n + A091527 n : ℚ) / 2

end

end A372506.P4737757675278959911

noncomputable section

/-- A372506: Coefficient of x^n in the expansion of 1 / ( (1-x) * (1-2*x) )^n.

Offset 0, canonical program `A372506.P4737757675278959911`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A372506 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A372506.P4737757675278959911.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A372506.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372620.P16433813337280511159

`∑{p}[1+n, A128913(#)]`
-/

namespace A372620.P16433813337280511159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A128913 p

end

end A372620.P16433813337280511159

noncomputable section

/-- A372620: Expansion of Sum_{k>=1} k * prime(k) * x^prime(k) / (1 - x^prime(k)).

Offset 1, canonical program `A372620.P16433813337280511159`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372620 (n : ℕ) : ℤ :=
  A372620.P16433813337280511159.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372637.P315727157468014530

`∑[∑{d}[n+1, #*A355688((n+1)/#)]]`
-/

namespace A372637.P315727157468014530
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (d : ℤ) * A355688 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372637.P315727157468014530

noncomputable section

/-- A372637: a(n) = (1/2) * Sum_{k=1..n} phi(6*k).

Offset 1, canonical program `A372637.P315727157468014530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372637 (n : ℕ) : ℤ :=
  A372637.P315727157468014530.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372836.P10211508365847595487

`A048050(n+1)/gcd(A039653(n+1), n+1)`
-/

namespace A372836.P10211508365847595487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048050 (n + 1) : ℚ) / (Int.gcd (A039653 (n + 1)) (n + 1 : ℤ) : ℚ)

end

end A372836.P10211508365847595487

noncomputable section

/-- A372836: a(n) is the numerator of Sum_{d|n, 1 < d < n} 1/d.

Offset 1, canonical program `A372836.P10211508365847595487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372836 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A372836.P10211508365847595487.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372836.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372866.P5052813688178563770

`∑[∑{d}[n+1, A055155(#)*A271102((n+1)/#)]]`
-/

namespace A372866.P5052813688178563770
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A055155 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372866.P5052813688178563770

noncomputable section

/-- A372866: a(n) is the sum, over all positive integers x, y such that x*y <= n, of phi(gcd(x,y)).

Offset 1, canonical program `A372866.P5052813688178563770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372866 (n : ℕ) : ℤ :=
  A372866.P5052813688178563770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372866.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372952.P16411335326793930670

`∑{d}[1+n, #*A059376(#)]`
-/

namespace A372952.P16411335326793930670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A059376 d

end

end A372952.P16411335326793930670

noncomputable section

/-- A372952: a(n) = Sum_{1 <= x_1, x_2, x_3 <= n} n/gcd(x_1, x_2, x_3, n).

Offset 1, canonical program `A372952.P16411335326793930670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372952 (n : ℕ) : ℤ :=
  A372952.P16411335326793930670.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372961.P3529924573522494815

`∑{d}[1+n, #*A059377(#)]`
-/

namespace A372961.P3529924573522494815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A059377 d

end

end A372961.P3529924573522494815

noncomputable section

/-- A372961: a(n) = Sum_{1 <= x_1, x_2, x_3, x_4 <= n} n/gcd(x_1, x_2, x_3, x_4, n).

Offset 1, canonical program `A372961.P3529924573522494815`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372961 (n : ℕ) : ℤ :=
  A372961.P3529924573522494815.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372961.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372963.P12207039363107687182

`∑{d}[n+1, A013954(#)*A334657((n+1)/#)]`
-/

namespace A372963.P12207039363107687182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A013954 d * A334657 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372963.P12207039363107687182

noncomputable section

/-- A372963: a(n) = Sum_{1 <= x_1, x_2, x_3, x_4 <= n} ( n/gcd(x_1, x_2, x_3, x_4, n) )^2.

Offset 1, canonical program `A372963.P12207039363107687182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372963 (n : ℕ) : ℤ :=
  A372963.P12207039363107687182.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372963.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372964.P15124062222904903698

`∑{d}[n+1, A013955(#)*A334659((n+1)/#)]`
-/

namespace A372964.P15124062222904903698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A013955 d * A334659 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372964.P15124062222904903698

noncomputable section

/-- A372964: a(n) = Sum_{1 <= x_1, x_2, x_3, x_4 <= n} ( n/gcd(x_1, x_2, x_3, x_4, n) )^3.

Offset 1, canonical program `A372964.P15124062222904903698`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372964 (n : ℕ) : ℤ :=
  A372964.P15124062222904903698.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372964.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372966.P8129046423810305656

`∑{d}[n+1, A013956(#)*A334660((n+1)/#)]`
-/

namespace A372966.P8129046423810305656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A013956 d * A334660 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372966.P8129046423810305656

noncomputable section

/-- A372966: a(n) = sigma_8(n^2)/sigma_4(n^2).

Offset 1, canonical program `A372966.P8129046423810305656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372966 (n : ℕ) : ℤ :=
  A372966.P8129046423810305656.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372966.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373007.P1458280276416540724

`∑{d}[n+1, A013955(#)*A334657((n+1)/#)]`
-/

namespace A373007.P1458280276416540724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A013955 d * A334657 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373007.P1458280276416540724

noncomputable section

/-- A373007: a(n) = Sum_{1 <= x_1, x_2, x_3, x_4, x_5 <= n} ( n/gcd(x_1, x_2, x_3, x_4, x_5, n) )^2.

Offset 1, canonical program `A373007.P1458280276416540724`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373007 (n : ℕ) : ℤ :=
  A373007.P1458280276416540724.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373007.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373103.P1036733656248794888

`∑{d}[n+1, A013957(#)*A334660((n+1)/#)]`
-/

namespace A373103.P1036733656248794888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A013957 d * A334660 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373103.P1036733656248794888

noncomputable section

/-- A373103: a(n) = Sum_{1 <= x_1, x_2, x_3, x_4, x_5 <= n} ( n/gcd(x_1, x_2, x_3, x_4, x_5, n) )^4.

Offset 1, canonical program `A373103.P1036733656248794888`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373103 (n : ℕ) : ℤ :=
  A373103.P1036733656248794888.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373327.P9323461838594572864

`record[A064784(n+1)]`
-/

namespace A373327.P9323461838594572864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A373327.P9323461838594572864

noncomputable section

/-- A373327: Records of A064784.

Offset 1, canonical program `A373327.P9323461838594572864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A373327 (n : ℕ) : ℤ :=
  A373327.P9323461838594572864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A373327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373335.P16851351623866250956

`A001876(n+1)-A001877(n+1)`
-/

namespace A373335.P16851351623866250956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (n + 1) - A001877 (n + 1)

end

end A373335.P16851351623866250956

noncomputable section

/-- A373335: Expansion of Sum_{k>=1} x^k / (1 + x^k + x^(2*k) + x^(3*k) + x^(4*k)).

Offset 1, canonical program `A373335.P16851351623866250956`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001876, A001877, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373335 (n : ℕ) : ℤ :=
  A373335.P16851351623866250956.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001876, A001877, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373335.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373360.P3869209732951132874

`A373347(n+2)-A373347(n+1)`
-/

namespace A373360.P3869209732951132874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373347 (n + 2) - A373347 (n + 1)

end

end A373360.P3869209732951132874

noncomputable section

/-- A373360: First differences of A373347.

Offset 1, canonical program `A373360.P3869209732951132874`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373347, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373360 (n : ℕ) : ℤ :=
  A373360.P3869209732951132874.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A373347, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373360.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373385.P14610005791458805217

`eq[3, gcd(3, A059975(n+1))]+1`
-/

namespace A373385.P14610005791458805217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A059975 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A373385.P14610005791458805217

noncomputable section

/-- A373385: Numbers k for which A059975(k) is a multiple of 3, where A059975 is fully additive with a(p) = p-1.

Offset 1, canonical program `A373385.P14610005791458805217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5406 terms. -/
def A373385 (n : ℕ) : ℤ :=
  (A373385.P14610005791458805217.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5406 terms. -/
def A373385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373417.P9673982607469384349

`A007318(n)*A216778(A002262(n))`
-/

namespace A373417.P9673982607469384349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A216778 (A002262 n).toNat

end

end A373417.P9673982607469384349

noncomputable section

/-- A373417: Triangle T(n,k) for the number of permutations in symmetric group S_n with (n-k) fixed points and an even number of non-fixed point cycles. Equivalent to the number of cycles of n items with cycle type defined by non-unity partitions of k<=n that contain an even number of parts.

Offset 0, canonical program `A373417.P9673982607469384349`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2624 terms. -/
def A373417 (n : ℕ) : ℤ :=
  A373417.P9673982607469384349.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2624 terms. -/
def A373417.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373587.P2837699332929910487

`eq[0, A373585(n+1)]+1`
-/

namespace A373587.P2837699332929910487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373585 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A373587.P2837699332929910487

noncomputable section

/-- A373587: Numbers k for which A373149(k) is odd, where A373149 is fully additive with a(2) = 1 and a(p) = prevprime(p) for odd primes p.

Offset 1, canonical program `A373587.P2837699332929910487`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373587 (n : ℕ) : ℤ :=
  (A373587.P2837699332929910487.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373587.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374103.P10994597095959919858

`∩[A374102(n+1)-2, A374102(n+1)]`
-/

namespace A374103.P10994597095959919858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374102 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374103.P10994597095959919858

noncomputable section

/-- A374103: Numbers k such that k and k+2 are both prime binary self (or Colombian) numbers (A374102).

Offset 1, canonical program `A374103.P10994597095959919858`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 435 terms. -/
def A374103 (n : ℕ) : ℤ :=
  (A374103.P10994597095959919858.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 435 terms. -/
def A374103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374124.P11400155404206202133

`A113177(n+1)%360`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374124.P11400155404206202133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113177 (n + 1)) 360

end

end A374124.P11400155404206202133

noncomputable section

/-- A374124: a(n) = A113177(n) mod 360, where A113177 is fully additive with a(p) = Fibonacci(p).

Offset 1, canonical program `A374124.P11400155404206202133`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113177, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374124 (n : ℕ) : ℤ :=
  A374124.P11400155404206202133.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113177, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374124.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374180.P6463857009267516425

`eq[A040351(n), A090678(n)]`
-/

namespace A374180.P6463857009267516425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040351 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090678 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374180.P6463857009267516425

noncomputable section

/-- A374180: Numbers k such that K(3 / k) != K((-1)^floor(k/2)*k / 3), where K(a/b) is the Kronecker symbol. Row 1 of A374188.

Offset 1, canonical program `A374180.P6463857009267516425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1662 terms. -/
def A374180 (n : ℕ) : ℤ :=
  (A374180.P6463857009267516425.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1662 terms. -/
def A374180.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374181.P5817940139700194880

`eq[A089129(n), A121241(n)]`
-/

namespace A374181.P5817940139700194880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089129 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121241 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374181.P5817940139700194880

noncomputable section

/-- A374181: Numbers k such that K(7 / k) != K((-1)^floor(k/2)*k / 7), where K(a/b) is the Kronecker symbol. Row 2 of A374188.

Offset 1, canonical program `A374181.P5817940139700194880`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2137 terms. -/
def A374181 (n : ℕ) : ℤ :=
  (A374181.P5817940139700194880.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2137 terms. -/
def A374181.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374196.P16243282468324965726

`ceil(A020639(n+1)/A325469(n+1))`
-/

namespace A374196.P16243282468324965726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020639 (n + 1) : ℚ) / (A325469 (n + 1) : ℚ)⌉

end

end A374196.P16243282468324965726

noncomputable section

/-- A374196: a(n) is the minimum value of A017666 that it obtains among divisors of n larger than 1. By convention a(1) = 1.

Offset 1, canonical program `A374196.P16243282468324965726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374196 (n : ℕ) : ℤ :=
  A374196.P16243282468324965726.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374196.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374197.P11155714317217487934

`1-a(A080225(1+n))` with `a(0)=1`
-/

namespace A374197.P11155714317217487934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - a (A080225 (1 + n)).toNat

end

end A374197.P11155714317217487934

noncomputable section

/-- A374197: a(n) is 1 if the minimum value of A017666 that it obtains among divisors of n larger than 1 is 1, otherwise 0. By convention a(1) = 1.

Offset 1, canonical program `A374197.P11155714317217487934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374197 (n : ℕ) : ℤ :=
  A374197.P11155714317217487934.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374207.P10474320584513689055

`val(A113177(n+2), 3)`
-/

namespace A374207.P10474320584513689055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A113177 (n + 2)).toNat 3

end

end A374207.P10474320584513689055

noncomputable section

/-- A374207: The 3-adic valuation of A113177(n), where A113177 is fully additive with a(p) = Fibonacci(p).

Offset 2, canonical program `A374207.P10474320584513689055`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113177, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374207 (n : ℕ) : ℤ :=
  (A374207.P10474320584513689055.a (n - 2) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113177, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374207.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374208.P8868820187613092688

`val(A113177(n+2), 5)`
-/

namespace A374208.P8868820187613092688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A113177 (n + 2)).toNat 5

end

end A374208.P8868820187613092688

noncomputable section

/-- A374208: The 5-adic valuation of A113177(n), where A113177 is fully additive with a(p) = Fibonacci(p).

Offset 2, canonical program `A374208.P8868820187613092688`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113177, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374208 (n : ℕ) : ℤ :=
  (A374208.P8868820187613092688.a (n - 2) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113177, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374208.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374474.P17400038479212264576

`val(A071189(n+1), A053669(n+1))`
-/

namespace A374474.P17400038479212264576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A071189 (n + 1)).toNat (A053669 (n + 1)).toNat

end

end A374474.P17400038479212264576

noncomputable section

/-- A374474: a(n) = 1 if the least prime dividing the sum of divisors of n is equal to the least prime not dividing n, otherwise a(n) = 0.

Offset 1, canonical program `A374474.P17400038479212264576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374474 (n : ℕ) : ℤ :=
  (A374474.P17400038479212264576.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374535.P6338832552149736650

`∑[A185152(A028310(n))]-1`
-/

namespace A374535.P6338832552149736650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185152 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A374535.P6338832552149736650

noncomputable section

/-- A374535: Expansion of (x/(8 * (1-x))) * d/dx(theta_3(x)^4).

Offset 0, canonical program `A374535.P6338832552149736650`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374535 (n : ℕ) : ℤ :=
  A374535.P6338832552149736650.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374535.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374593.P3771474066089944612

`eq[1, A001222(A066503(n+1)+1)]+1`
-/

namespace A374593.P3771474066089944612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A066503 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A374593.P3771474066089944612

noncomputable section

/-- A374593: Numbers k such that k - rad(k) + 1 is prime, where rad(k) is the radical A007947(k).

Offset 1, canonical program `A374593.P3771474066089944612`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1333 terms. -/
def A374593 (n : ℕ) : ℤ :=
  (A374593.P3771474066089944612.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1333 terms. -/
def A374593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375325.P5538698801086580882

`∑{d}[1+n, A353816(#)]`
-/

namespace A375325.P5538698801086580882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353816 d

end

end A375325.P5538698801086580882

noncomputable section

/-- A375325: a(n) is the number of divisors of n which are Loeschian numbers (A003136).

Offset 1, canonical program `A375325.P5538698801086580882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375325 (n : ℕ) : ℤ :=
  A375325.P5538698801086580882.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375930.P15385512110871666

`lt[1, runs[A013928(n+1)]]`
-/

namespace A375930.P15385512110871666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375930.P15385512110871666

noncomputable section

/-- A375930: Numbers k such that A005117(k+1) - A005117(k) > 1. In other words, the k-th squarefree number is more than 1 less than the next.

Offset 1, canonical program `A375930.P15385512110871666`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375930 (n : ℕ) : ℤ :=
  (A375930.P15385512110871666.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375972.P18053615468605080457

`C(n+2, A078881(n+1))`
-/

namespace A375972.P18053615468605080457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) (A078881 (n + 1)).toNat

end

end A375972.P18053615468605080457

noncomputable section

/-- A375972: a(n) = binomial(n,k(n)), where k(2) = 1, k(n) = k(n-1) + (a(n-1) mod 2).

Offset 2, canonical program `A375972.P18053615468605080457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. -/
def A375972 (n : ℕ) : ℤ :=
  (A375972.P18053615468605080457.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. -/
def A375972.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376309.P9204094703779637658

`runs[runs[A025528(n+2)]]`
-/

namespace A376309.P9204094703779637658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A376309.P9204094703779637658

noncomputable section

/-- A376309: Run-lengths of the sequence of first differences of prime-powers.

Offset 1, canonical program `A376309.P9204094703779637658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9255 terms. -/
def A376309 (n : ℕ) : ℤ :=
  (A376309.P9204094703779637658.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9255 terms. -/
def A376309.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376358.P14573369327161220260

`eq[1, A062108(a(A053186(n)))]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A376358.P14573369327161220260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n f2 =>
  A062108 (f2 (A053186 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376358.P14573369327161220260

noncomputable section

/-- A376358: Positions of numbers in A007961 that end in 1.

Offset 1, canonical program `A376358.P14573369327161220260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2490 terms. -/
def A376358 (n : ℕ) : ℤ :=
  (A376358.P14573369327161220260.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2490 terms. -/
def A376358.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376359.P14643456842463236531

`eq[1, A062108(a(A053186(n)))]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=25`
-/

namespace A376359.P14643456842463236531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 25] fun n f2 =>
  A062108 (f2 (A053186 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376359.P14643456842463236531

noncomputable section

/-- A376359: Positions of numbers in A007961 that end in 2.

Offset 1, canonical program `A376359.P14643456842463236531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2314 terms. -/
def A376359 (n : ℕ) : ℤ :=
  (A376359.P14643456842463236531.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2314 terms. -/
def A376359.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376455.P6851533435320138921

`comp[A214046(2*n+3)+n]-n+1`
-/

namespace A376455.P6851533435320138921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214046 (2 * n + 3) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) + 1

end

end A376455.P6851533435320138921

noncomputable section

/-- A376455: a(n) = least k such that n^(2k+1)/(2k+1)! < 1.

Offset 0, canonical program `A376455.P6851533435320138921`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 498 terms. -/
def A376455 (n : ℕ) : ℤ :=
  A376455.P6851533435320138921.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 498 terms. -/
def A376455.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376562.P6945854027167087770

`Δ[A375706(1+n)]`
-/

namespace A376562.P6945854027167087770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375706 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376562.P6945854027167087770

noncomputable section

/-- A376562: Second differences of consecutive non-perfect-powers (A007916). First differences of A375706.

Offset 1, canonical program `A376562.P6945854027167087770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376562 (n : ℕ) : ℤ :=
  A376562.P6945854027167087770.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376582.P13017376800023091404

`A067176(lt[1, T(n-1,k)+T(n-1,k-1)])` with `a(0)=1`
-/

namespace A376582.P13017376800023091404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  SequenceMachineLib.triUp f2 n + SequenceMachineLib.triUpLeft f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A376582.P13017376800023091404

noncomputable section

/-- A376582: Triangle of generalized Stirling numbers.

Offset 0, canonical program `A376582.P13017376800023091404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A376582 (n : ℕ) : ℤ :=
  A376582.P13017376800023091404.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. -/
def A376582.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376590.P9822547069905432695

`Δ[Δ[A005117(1+n)]]`
-/

namespace A376590.P9822547069905432695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (1 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376590.P9822547069905432695

noncomputable section

/-- A376590: Second differences of consecutive squarefree numbers (A005117). First differences of A076259.

Offset 1, canonical program `A376590.P9822547069905432695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376590 (n : ℕ) : ℤ :=
  A376590.P9822547069905432695.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376596.P9391843395844042781

`Δ[runs[A025528(n+1)]]`
-/

namespace A376596.P9391843395844042781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A376596.P9391843395844042781

noncomputable section

/-- A376596: Second differences of consecutive prime-powers inclusive (A000961). First differences of A057820.

Offset 1, canonical program `A376596.P9391843395844042781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9699 terms. -/
def A376596 (n : ℕ) : ℤ :=
  A376596.P9391843395844042781.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9699 terms. -/
def A376596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376599.P13897947476831513859

`Δ[A375735(1+n)]`
-/

namespace A376599.P13897947476831513859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375735 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376599.P13897947476831513859

noncomputable section

/-- A376599: Second differences of consecutive non-prime-powers inclusive (A024619). First differences of A375735.

Offset 1, canonical program `A376599.P13897947476831513859`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A376599 (n : ℕ) : ℤ :=
  A376599.P13897947476831513859.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A376599.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377415.P2443321957255259376

`n-A377414(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A377415.P2443321957255259376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A377414 n

end

end A377415.P2443321957255259376

noncomputable section

/-- A377415: a(n) = n - A377414(n).

Offset 0, canonical program `A377415.P2443321957255259376`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A377414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377415 (n : ℕ) : ℤ :=
  A377415.P2443321957255259376.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A377414, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377415.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378071.P4414927123568891139

`(2*n+3)*A001790(n)`
-/

namespace A378071.P4414927123568891139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) * A001790 n

end

end A378071.P4414927123568891139

noncomputable section

/-- A378071: a(n) = denominator((4^(2*n+1)*n!^2)/((2*n+3)*(2*n)!)).

Offset 0, canonical program `A378071.P4414927123568891139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A378071 (n : ℕ) : ℤ :=
  A378071.P4414927123568891139.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A378071.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378384.P16639726357393477

`dr(A112661(n))`
-/

namespace A378384.P16639726357393477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A112661 n)

end

end A378384.P16639726357393477

noncomputable section

/-- A378384: Digital root of the sum of the previous 3 terms; a(0) = a(1) = a(2) = 1.

Offset 0, canonical program `A378384.P16639726357393477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378384 (n : ℕ) : ℤ :=
  (A378384.P16639726357393477.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378850.P4049413613002117278

`Δ[Δ[Δ[A071879(n)]]]`
-/

namespace A378850.P4049413613002117278
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071879 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378850.P4049413613002117278

noncomputable section

/-- A378850: a(n) is the total number of paths starting at (0, 0), ending at (n, 0), consisting of steps (1, 1), (1, 0), (1, -2), and staying on or above y = -2.

Offset 0, canonical program `A378850.P4049413613002117278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. -/
def A378850 (n : ℕ) : ℤ :=
  A378850.P4049413613002117278.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. -/
def A378850.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378915.P16503752880164424600

`eq[1, A074754(1+n)]+1`
-/

namespace A378915.P16503752880164424600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074754 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A378915.P16503752880164424600

noncomputable section

/-- A378915: Positive integers k such that k is not divisible by sigma(m) for any m >= 2, where sigma is the sum-of-divisors function (A000203).

Offset 1, canonical program `A378915.P16503752880164424600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5467 terms. -/
def A378915 (n : ℕ) : ℤ :=
  (A378915.P16503752880164424600.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5467 terms. -/
def A378915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378941.P15885144643371712513

`A001006(n)-A290265(n)/2`
-/

namespace A378941.P15885144643371712513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001006 n : ℚ) - (A290265 n : ℚ) / 2

end

end A378941.P15885144643371712513

noncomputable section

/-- A378941: Number of Motzkin paths of length n up to reversal.

Offset 0, canonical program `A378941.P15885144643371712513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A378941 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A378941.P15885144643371712513.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A378941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379034.P12083049047450536619

`A151483(n)*A151483(n+1)/4^n`
-/

namespace A379034.P12083049047450536619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151483 n * A151483 (n + 1) : ℚ) / (4 ^ n : ℚ)

end

end A379034.P12083049047450536619

noncomputable section

/-- A379034: Number of intervals in the lattice of Motzkin paths of length n.

Offset 0, canonical program `A379034.P12083049047450536619`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151483, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379034 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A379034.P12083049047450536619.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151483, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379034.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379225.P6942672571907196509

`A113177(n+1)%5`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379225.P6942672571907196509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113177 (n + 1)) 5

end

end A379225.P6942672571907196509

noncomputable section

/-- A379225: a(n) = A113177(n) mod 5, where A113177 is fully additive with a(p) = Fibonacci(p).

Offset 1, canonical program `A379225.P6942672571907196509`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113177, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379225 (n : ℕ) : ℤ :=
  A379225.P6942672571907196509.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113177, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379225.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379865.P15903723943039881257

`floor((A100484(n+1)-1)/log2(10))+1`
-/

namespace A379865.P15903723943039881257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A100484 (n + 1) - 1 : ℝ) / Real.logb 2 (10 : ℝ)⌋ + 1

end

end A379865.P15903723943039881257

noncomputable section

/-- A379865: Number of base 10 digits of 2^(p-1)*(2^p-1) where p = prime(n).

Offset 1, canonical program `A379865.P15903723943039881257`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379865 (n : ℕ) : ℤ :=
  A379865.P15903723943039881257.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379955.P13595600248913619531

`char[A395627(n+2)-1]`
-/

namespace A379955.P13595600248913619531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395627 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A379955.P13595600248913619531

noncomputable section

/-- A379955: a(n) = 1 if n = floor(prime(i)/2) * prime(i)^e, for some e, i > 0, otherwise 0, where prime(i) = A000040(i).

Offset 1, canonical program `A379955.P13595600248913619531`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379955 (n : ℕ) : ℤ :=
  (A379955.P13595600248913619531.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379955.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380114.P12767870142209006554

`2^row(n)*A097805(C(row(n)+1, 2)+col(n))`
-/

namespace A380114.P12767870142209006554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.triRow n : ℤ) * A097805 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n)

end

end A380114.P12767870142209006554

noncomputable section

/-- A380114: Triangle read by rows: The convolution triangle of 2^n, where the convolution triangle of a sequence is defined in A357368.

Offset 0, canonical program `A380114.P12767870142209006554`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097805, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380114 (n : ℕ) : ℤ :=
  A380114.P12767870142209006554.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097805, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380114.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380332.P1368745868140555884

`A117490(floor(1/(n+1))+n²)`
-/

namespace A380332.P1368745868140555884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117490 (⌊1 / (n + 1 : ℚ)⌋ + (n ^ 2 : ℤ)).toNat

end

end A380332.P1368745868140555884

noncomputable section

/-- A380332: a(n) = number of primes between n^2 and n^4.

Offset 0, canonical program `A380332.P1368745868140555884`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A380332 (n : ℕ) : ℤ :=
  A380332.P1368745868140555884.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A380332.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380395.P16192869774453608510

`abs(A307427(n+1))`
-/

namespace A380395.P16192869774453608510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A307427 (n + 1)|

end

end A380395.P16192869774453608510

noncomputable section

/-- A380395: The number of unitary divisors of n that are cubes.

Offset 1, canonical program `A380395.P16192869774453608510`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307427, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380395 (n : ℕ) : ℤ :=
  A380395.P16192869774453608510.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A307427, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380395.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380421.P2214143849344174104

`A000326(A006254(n+1))%A000040(n+2)`
-/

namespace A380421.P2214143849344174104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000326 (A006254 (n + 1)).toNat) (A000040 (n + 2))

end

end A380421.P2214143849344174104

noncomputable section

/-- A380421: a(n) is the inverse of 2^3 modulo prime(n).

Offset 2, canonical program `A380421.P2214143849344174104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2261 terms. -/
def A380421 (n : ℕ) : ℤ :=
  A380421.P2214143849344174104.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2261 terms. -/
def A380421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380440.P5442109127590069685

`A380439(n+1)+A227291(n+1)`
-/

namespace A380440.P5442109127590069685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380439 (n + 1) + A227291 (n + 1)

end

end A380440.P5442109127590069685

noncomputable section

/-- A380440: a(n) = 1 if n has no squarefree divisor d such that d^2 > n, otherwise 0.

Offset 1, canonical program `A380440.P5442109127590069685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380440 (n : ℕ) : ℤ :=
  A380440.P5442109127590069685.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380440.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380509.P17107691641625589008

`lt[A006530(4*n+1), n]`
-/

namespace A380509.P17107691641625589008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (4 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A380509.P17107691641625589008

noncomputable section

/-- A380509: Numbers of the form i+j+4ij for i,j >= 1 together with numbers of the form -i-j+4ij for i,j >= 2.

Offset 1, canonical program `A380509.P17107691641625589008`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380509 (n : ℕ) : ℤ :=
  (A380509.P17107691641625589008.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380509.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380572.P12751547405263348882

`∪[A005098(n+1), A190105(n+1)]`
-/

namespace A380572.P12751547405263348882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A380572.P12751547405263348882

noncomputable section

/-- A380572: Complement of A380509.

Offset 1, canonical program `A380572.P12751547405263348882`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380572 (n : ℕ) : ℤ :=
  (A380572.P12751547405263348882.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380572.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380591.P13031959473465638529

`A001002(n+1)-(A052706(n+1)+A001002(n))`
-/

namespace A380591.P13031959473465638529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001002 (n + 1) - (A052706 (n + 1) + A001002 n)

end

end A380591.P13031959473465638529

noncomputable section

/-- A380591: a(n) is the number of dissections of a convex (n+2)-sided polygon by nonintersecting diagonals into triangles and quadrilaterals such that at least one of the dividing diagonals passes through a chosen vertex.

Offset 1, canonical program `A380591.P13031959473465638529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A380591 (n : ℕ) : ℤ :=
  A380591.P13031959473465638529.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A380591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380725.P7158320234330131983

`eq[A055642(n)², A007953(n)]`
-/

namespace A380725.P7158320234330131983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A380725.P7158320234330131983

noncomputable section

/-- A380725: Positive integers k whose sum of digits equals the square of their number of digits.

Offset 1, canonical program `A380725.P7158320234330131983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 614 terms. -/
def A380725 (n : ℕ) : ℤ :=
  (A380725.P7158320234330131983.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 614 terms. -/
def A380725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381439.P49907768296979245

`lt[a(A003557(n+1)-1)%2, 1]+1` with `a(0)=10, a(1)=1, a(2)=-9`
-/

namespace A381439.P49907768296979245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10, 1, -9] fun n f1 =>
  Int.tmod (f1 (A003557 (n + 1) - 1).toNat) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A381439.P49907768296979245

noncomputable section

/-- A381439: Numbers whose exponent of 2 in their canonical prime factorization is not larger than all the other exponents.

Offset 1, canonical program `A381439.P49907768296979245`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7769 terms. -/
def A381439 (n : ℕ) : ℤ :=
  (A381439.P49907768296979245.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7769 terms. -/
def A381439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381639.P9267577597329382447

`A064549(n+1)/A285109(n+1)`
-/

namespace A381639.P9267577597329382447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064549 (n + 1) : ℚ) / (A285109 (n + 1) : ℚ)

end

end A381639.P9267577597329382447

noncomputable section

/-- A381639: Denominators of Sum_{i=1..omega(n)-1} p_{i}/p_{i+1}, where omega(n) = A001221(n) and p_1 < p_2 < ... p_omega(n) are the distinct prime factors of n; a(1) = 1.

Offset 1, canonical program `A381639.P9267577597329382447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381639 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A381639.P9267577597329382447.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382394.P7268599547010804721

`∑{#}[n, A128899(C(n+1, 2)+#)^3]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A382394.P7268599547010804721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A128899 (Nat.choose (n + 1) 2 + k) ^ 3

end

end A382394.P7268599547010804721

noncomputable section

/-- A382394: a(n) = Sum_{k=0..n} A128899(n,k)^3.

Offset 0, canonical program `A382394.P7268599547010804721`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A128899, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382394 (n : ℕ) : ℤ :=
  A382394.P7268599547010804721.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A128899, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382394.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382408.P1731250343100428956

`C(A144338(n+1)-1, A144338(n+1)-A001222(A144338(n+1)))`
-/

namespace A382408.P1731250343100428956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A144338 (n + 1) - 1).toNat (A144338 (n + 1) - A001222 (A144338 (n + 1)).toNat).toNat

end

end A382408.P1731250343100428956

noncomputable section

/-- A382408: a(n) is the number of terms in A071174 whose radical is A144338(n).

Offset 1, canonical program `A382408.P1731250343100428956`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A144338, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382408 (n : ℕ) : ℤ :=
  (A382408.P1731250343100428956.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A144338, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382408.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382433.P16632700824039063846

`∑{#}[n, A120730(C(n+1, 2)+#)^6]`
-/

namespace A382433.P16632700824039063846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A120730 (Nat.choose (n + 1) 2 + k) ^ 6

end

end A382433.P16632700824039063846

noncomputable section

/-- A382433: a(n) = S(6,n), where S(r,n) = Sum_{k=0..floor(n/2)} ( binomial(n,k) - binomial(n,k-1) )^r.

Offset 0, canonical program `A382433.P16632700824039063846`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120730, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382433 (n : ℕ) : ℤ :=
  A382433.P16632700824039063846.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120730, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382433.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382486.P5818814026939538429

`∏{p}[A072504(1+n), #]`
-/

namespace A382486.P5818814026939538429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072504 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A382486.P5818814026939538429

noncomputable section

/-- A382486: Product of distinct prime divisors of n that are <= sqrt(n).

Offset 1, canonical program `A382486.P5818814026939538429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382486 (n : ℕ) : ℤ :=
  (A382486.P5818814026939538429.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382486.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382983.P16864973918105220280

`A004525(A282849(n+1))`
-/

namespace A382983.P16864973918105220280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A282849 (n + 1)).toNat

end

end A382983.P16864973918105220280

noncomputable section

/-- A382983: a(n) is the number of solutions to n = x*y in positive integers x <= y where x + y is prime.

Offset 1, canonical program `A382983.P16864973918105220280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382983 (n : ℕ) : ℤ :=
  A382983.P16864973918105220280.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383264.P2673732446101905857

`lt[1, A067029(A067029(n+2))]+2`
-/

namespace A383264.P2673732446101905857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A067029 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A383264.P2673732446101905857

noncomputable section

/-- A383264: Numbers whose vSPD is not squarefree, where vSPD(n) is the valuation of the smallest prime divisor for n >= 2.

Offset 1, canonical program `A383264.P2673732446101905857`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 391 terms. -/
def A383264 (n : ℕ) : ℤ :=
  (A383264.P2673732446101905857.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 391 terms. -/
def A383264.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383277.P6033499868136924238

`char[(n+1)*A034444(n+1)-1]`
-/

namespace A383277.P6033499868136924238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A034444 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A383277.P6033499868136924238

noncomputable section

/-- A383277: The number of divisors d of n for which A034444(d)*d is equal to n.

Offset 1, canonical program `A383277.P6033499868136924238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383277 (n : ℕ) : ℤ :=
  (A383277.P6033499868136924238.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383277.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383422.P18234050156390555465

`1-A287772(n+1)`
-/

namespace A383422.P18234050156390555465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A287772 (n + 1)

end

end A383422.P18234050156390555465

noncomputable section

/-- A383422: The infinite Lucas word; the limiting word generated by s(0) = 0, s(1) = 011, and s(n) = s(n-1)s(n-2).

Offset 0, canonical program `A383422.P18234050156390555465`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A287772, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383422 (n : ℕ) : ℤ :=
  A383422.P18234050156390555465.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A287772, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383422.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383452.P2364515549699222094

`A002057(n)/(n+1)*C(n+1, 4)`
-/

namespace A383452.P2364515549699222094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002057 n : ℚ) / (n + 1 : ℚ) * (Nat.choose (n + 1) 4 : ℚ)

end

end A383452.P2364515549699222094

noncomputable section

/-- A383452: Column 3 in A104978.

Offset 0, canonical program `A383452.P2364515549699222094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A383452 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A383452.P2364515549699222094.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. -/
def A383452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383679.P7209271779233031308

`∩[comp[A122072(n+1)], A000040(n+1)]`
-/

namespace A383679.P7209271779233031308
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122072 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A383679.P7209271779233031308

noncomputable section

/-- A383679: The lesser of two consecutive primes whose gap equals the difference between their digital sums.

Offset 1, canonical program `A383679.P7209271779233031308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A383679 (n : ℕ) : ℤ :=
  (A383679.P7209271779233031308.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. -/
def A383679.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383794.P14355268900012724645

`A256689(n+1)/A038500(n+1)`
-/

namespace A383794.P14355268900012724645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256689 (n + 1) : ℚ) / (A038500 (n + 1) : ℚ)

end

end A383794.P14355268900012724645

noncomputable section

/-- A383794: Denominators of Dirichlet g.f.: Sum_{n>=1} a(n)/n^s = zeta(s-1)^(1/3).

Offset 1, canonical program `A383794.P14355268900012724645`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383794 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A383794.P14355268900012724645.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383794.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383863.P10403754587481525438

`∏{e}[n+1, A034444(#)+1]`
-/

namespace A383863.P10403754587481525438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A034444 (Nat.factorization (f1 n) p) + 1)

end

end A383863.P10403754587481525438

noncomputable section

/-- A383863: The number of divisors d of n having the property that for every prime p dividing n the p-adic valuation of d is either 0 or a unitary divisor of the p-adic valuation of n.

Offset 1, canonical program `A383863.P10403754587481525438`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383863 (n : ℕ) : ℤ :=
  A383863.P10403754587481525438.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383959.P1818647861430019517

`∑{e}[1+n, A034444(#)]`
-/

namespace A383959.P1818647861430019517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A034444 (Nat.factorization (f1 n) p)

end

end A383959.P1818647861430019517

noncomputable section

/-- A383959: The number of prime powers p^e having the property that e is a unitary divisor of the p-adic valuation of n.

Offset 1, canonical program `A383959.P1818647861430019517`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383959 (n : ℕ) : ℤ :=
  A383959.P1818647861430019517.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384421.P9062140683127792757

`val(A383762(n+1), 2)`
-/

namespace A384421.P9062140683127792757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A383762 (n + 1)).toNat 2

end

end A384421.P9062140683127792757

noncomputable section

/-- A384421: The number of exponentially squarefree prime powers (not including 1) that unitarily divide n.

Offset 1, canonical program `A384421.P9062140683127792757`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384421 (n : ℕ) : ℤ :=
  (A384421.P9062140683127792757.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384543.P9543490051747422027

`A338623(A076877(n+1)+A004762(2*(n+1)))`
-/

namespace A384543.P9543490051747422027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338623 (A076877 (n + 1) + A004762 (2 * (n + 1))).toNat

end

end A384543.P9543490051747422027

noncomputable section

/-- A384543: Number of distinct values from the bitwise operation i XOR j for all integers i and j in the range [1, n].

Offset 1, canonical program `A384543.P9543490051747422027`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2047 terms. -/
def A384543 (n : ℕ) : ℤ :=
  A384543.P9543490051747422027.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2047 terms. -/
def A384543.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384955.P6172935050039872195

`A269221(n)/A066459(n)`
-/

namespace A384955.P6172935050039872195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269221 n : ℚ) / (A066459 n : ℚ)

end

end A384955.P6172935050039872195

noncomputable section

/-- A384955: a(n) is the multinomial coefficient of the digits of n.

Offset 0, canonical program `A384955.P6172935050039872195`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066459, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384955 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A384955.P6172935050039872195.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066459, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384955.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385042.P17384387353780385376

`∏{e}[n+1, A297382(#)]`
-/

namespace A385042.P17384387353780385376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A297382 (Nat.factorization (f1 n) p)

end

end A385042.P17384387353780385376

noncomputable section

/-- A385042: The number of unitary divisors of n whose exponents in their prime factorizations are all powers of 2 (A138302).

Offset 1, canonical program `A385042.P17384387353780385376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385042 (n : ℕ) : ℤ :=
  A385042.P17384387353780385376.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385042.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385109.P7543034599898884872

`n%(2*A067745(n+1))`
-/

namespace A385109.P7543034599898884872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (2 * A067745 (n + 1))

end

end A385109.P7543034599898884872

noncomputable section

/-- A385109: If n is 5 (mod 8) then apply n = (n-1)/4 until the result is not equivalent 5 (mod 8); otherwise a(n) = n.

Offset 0, canonical program `A385109.P7543034599898884872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385109 (n : ℕ) : ℤ :=
  A385109.P7543034599898884872.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385139.P2784818841424289045

`∑{d}[n+1, #*A355823((n+1)/#)]`
-/

namespace A385139.P2784818841424289045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A355823 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A385139.P2784818841424289045

noncomputable section

/-- A385139: The sum of divisors d of n such that n/d has exponents in its prime factorization that are all powers of 2 (A138302).

Offset 1, canonical program `A385139.P2784818841424289045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385139 (n : ℕ) : ℤ :=
  A385139.P2784818841424289045.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385248.P5758115926147511911

`A060384(A000079(n))`
-/

namespace A385248.P5758115926147511911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A000079 n).toNat

end

end A385248.P5758115926147511911

noncomputable section

/-- A385248: Number of digits in the decimal expansion of Fibonacci(2^n).

Offset 0, canonical program `A385248.P5758115926147511911`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060384, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385248 (n : ℕ) : ℤ :=
  A385248.P5758115926147511911.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060384, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385248.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385379.P14406378956787540873

`∑{e}[n+1, A029835(#)]`
-/

namespace A385379.P14406378956787540873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A029835 (Nat.factorization (f1 n) p)

end

end A385379.P14406378956787540873

noncomputable section

/-- A385379: The maximum possible number of distinct composite prime powers (A246547) in the factorization of n into prime powers.

Offset 1, canonical program `A385379.P14406378956787540873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385379 (n : ℕ) : ℤ :=
  A385379.P14406378956787540873.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385435.P6568648028109772917

`A227428(A063289(n+3))`
-/

namespace A385435.P6568648028109772917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227428 (A063289 (n + 3)).toNat

end

end A385435.P6568648028109772917

noncomputable section

/-- A385435: Row sums of A385434.

Offset 0, canonical program `A385435.P6568648028109772917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 998 terms. -/
def A385435 (n : ℕ) : ℤ :=
  A385435.P6568648028109772917.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 998 terms. -/
def A385435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385623.P18064648453989504874

`(row(n)-col(n))*10^A055642(col(n))+col(n)`
-/

namespace A385623.P18064648453989504874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℚ) * (10 : ℚ) ^ (A055642 (SequenceMachineLib.triCol n) : ℤ) + (SequenceMachineLib.triCol n : ℚ)

end

end A385623.P18064648453989504874

noncomputable section

/-- A385623: Array read by ascending antidiagonals: A(n,k) is the number obtained by concatenation of n with k in that order, with k >= 0.

Offset 0, canonical program `A385623.P18064648453989504874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385623 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A385623.P18064648453989504874.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385623.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385656.P8934032101623162455

`lt[(n+1)²%A004159(n+1), 1]+1`
-/

namespace A385656.P8934032101623162455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1) ^ 2 : ℤ) (A004159 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A385656.P8934032101623162455

noncomputable section

/-- A385656: Numbers k such that the sum of the decimal digits of k^2 divides k^2.

Offset 1, canonical program `A385656.P8934032101623162455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1769 terms. -/
def A385656 (n : ℕ) : ℤ :=
  (A385656.P8934032101623162455.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1769 terms. -/
def A385656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385660.P17485724804406826863

`lt[(n+1)%A001223(n+1), 1]+1`
-/

namespace A385660.P17485724804406826863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A001223 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A385660.P17485724804406826863

noncomputable section

/-- A385660: Numbers k such that prime(k+1)-prime(k) divides k.

Offset 1, canonical program `A385660.P17485724804406826863`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A385660 (n : ℕ) : ℤ :=
  (A385660.P17485724804406826863.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A385660.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385821.P3088482818284566734

`lt[0, A101264(A002620(n))]`
-/

namespace A385821.P3088482818284566734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A002620 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A385821.P3088482818284566734

noncomputable section

/-- A385821: Numbers k such that ceiling((k^2 + 1)/2) is prime.

Offset 1, canonical program `A385821.P3088482818284566734`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A385821 (n : ℕ) : ℤ :=
  (A385821.P3088482818284566734.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A385821.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385880.P4558699430923021518

`A385879(1+n)+3`
-/

namespace A385880.P4558699430923021518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385879 (1 + n) + 3

end

end A385880.P4558699430923021518

noncomputable section

/-- A385880: Values of u in triples (u, v, w) such that the polynomial x^3 + u*x^2 + v*x + w has 3 distinct negative integer zeros; the triples are ordered by the inequality u < v.

Offset 1, canonical program `A385880.P4558699430923021518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385880 (n : ℕ) : ℤ :=
  A385880.P4558699430923021518.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385880.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386637.P2989882539811058385

`record[lcm(7, Δ[A024525(n)])]`
-/

namespace A386637.P2989882539811058385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024525 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 7 (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A386637.P2989882539811058385

noncomputable section

/-- A386637: Numbers k such that sigma(k) = psi(k) + tau(k) + omega(k).

Offset 1, canonical program `A386637.P2989882539811058385`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A386637 (n : ℕ) : ℤ :=
  (A386637.P2989882539811058385.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. -/
def A386637.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386789.P12804886181245952323

`∑[char[∑[n]]]*A086810(n)`
-/

namespace A386789.P12804886181245952323
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A086810 n

end

end A386789.P12804886181245952323

noncomputable section

/-- A386789: Triangle read by rows: T(n, k) = binomial(n - 1, k - 1)*binomial(n + k, k).

Offset 0, canonical program `A386789.P12804886181245952323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9138 terms. -/
def A386789 (n : ℕ) : ℤ :=
  A386789.P12804886181245952323.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9138 terms. -/
def A386789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387027.P11190749158434269992

`A002944(A028310(n))*A028310(n+1)`
-/

namespace A387027.P11190749158434269992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002944 (A028310 n).toNat * A028310 (n + 1)

end

end A387027.P11190749158434269992

noncomputable section

/-- A387027: a(n) = lcm({1, 2, ..., n}) * (n + 1) / n for n > 0, a(0) = 1.

Offset 0, canonical program `A387027.P11190749158434269992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A387027 (n : ℕ) : ℤ :=
  A387027.P11190749158434269992.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. -/
def A387027.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387151.P11429206579913118351

`∏[A003557(abs(1-n)+1)]*n`
-/

namespace A387151.P11429206579913118351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * (n : ℤ)

end

end A387151.P11429206579913118351

noncomputable section

/-- A387151: a(n) = n*n! / Product_{k=1..n} radical(k), where radical(n) is the product of distinct prime factors of n, cf. A007947.

Offset 0, canonical program `A387151.P11429206579913118351`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A387151 (n : ℕ) : ℤ :=
  A387151.P11429206579913118351.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 343 terms. -/
def A387151.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387237.P1085921087124048914

`C(n+4, 2)/6*A026377(n+2)`
-/

namespace A387237.P1085921087124048914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 2 : ℚ) / 6 * (A026377 (n + 2) : ℚ)

end

end A387237.P1085921087124048914

noncomputable section

/-- A387237: Expansion of 1/((1-x) * (1-5*x))^(5/2).

Offset 0, canonical program `A387237.P1085921087124048914`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026377, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A387237 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387237.P1085921087124048914.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026377, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A387237.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A387335.P18233147024188934057

`∪[A024619(n+1), A000123(n)]`
-/

namespace A387335.P18233147024188934057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387335.P18233147024188934057

noncomputable section

/-- A387335: 1, 2, 4, along with numbers divisible by at least two distinct primes.

Offset 1, canonical program `A387335.P18233147024188934057`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387335 (n : ℕ) : ℤ :=
  (A387335.P18233147024188934057.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387365.P13850223624109421705

`(n/2+1)*A082693(n)`
-/

namespace A387365.P13850223624109421705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 1) * (A082693 n : ℚ)

end

end A387365.P13850223624109421705

noncomputable section

/-- A387365: a(n) = (n+1) * 2^abs(n - 1 - c*(c-1)) / 2, where c = ceiling(sqrt(n)).

Offset 1, canonical program `A387365.P13850223624109421705`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A387365 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A387365.P13850223624109421705.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A387365.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387941.P5791690732419233185

`lt[A006530(abs(1-n)+1)²/2, n]`
-/

namespace A387941.P5791690732419233185
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (|1 - (n : ℤ)| + 1).toNat ^ 2 : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A387941.P5791690732419233185

noncomputable section

/-- A387941: Positive numbers k such that gpf(k)^2 < 2*k where gpf = A006530.

Offset 1, canonical program `A387941.P5791690732419233185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387941 (n : ℕ) : ℤ :=
  (A387941.P5791690732419233185.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388012.P15688760804591210700

`lt[A277573(n+1), A000203(n+1)]+1`
-/

namespace A388012.P15688760804591210700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A388012.P15688760804591210700

noncomputable section

/-- A388012: Numbers k such that sigma(k)/k >= 5/3.

Offset 1, canonical program `A388012.P15688760804591210700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4196 terms. -/
def A388012 (n : ℕ) : ℤ :=
  (A388012.P15688760804591210700.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4196 terms. -/
def A388012.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389197.P3690758276685081400

`filter[A336101(n+1), A229062(#)]`
-/

namespace A389197.P3690758276685081400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A389197.P3690758276685081400

noncomputable section

/-- A389197: Numbers whose sum of unitary divisors (usigma, A034448) is congruent to 2 modulo 4.

Offset 1, canonical program `A389197.P3690758276685081400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A389197 (n : ℕ) : ℤ :=
  A389197.P3690758276685081400.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. -/
def A389197.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389368.P2923439386149538919

`A332018(A007310(n+1))`
-/

namespace A389368.P2923439386149538919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332018 (A007310 (n + 1)).toNat

end

end A389368.P2923439386149538919

noncomputable section

/-- A389368: a(n) = R(A007310(n)), where R(k) = (5*k+1)/(2^r*3^s), with r and s as large as possible, that is R(k) = A065330(A016861(k)).

Offset 1, canonical program `A389368.P2923439386149538919`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A389368 (n : ℕ) : ℤ :=
  A389368.P2923439386149538919.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. -/
def A389368.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389882.P1417654939235969709

`(10^A055642(n)-1)/9*A007953(n)`
-/

namespace A389882.P1417654939235969709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 : ℚ) ^ (A055642 n : ℤ) - 1) / 9 * (A007953 n : ℚ)

end

end A389882.P1417654939235969709

noncomputable section

/-- A389882: Row sums of A389420 and A389875.

Offset 0, canonical program `A389882.P1417654939235969709`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389882 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389882.P1417654939235969709.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389882.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389888.P10709983666780608653

`record[A007913(n+1)*A007913(n+5)]`
-/

namespace A389888.P10709983666780608653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * A007913 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A389888.P10709983666780608653

noncomputable section

/-- A389888: Discriminants of real quadratic fields in which every additively indecomposable element is a unit.

Offset 1, canonical program `A389888.P10709983666780608653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389888 (n : ℕ) : ℤ :=
  A389888.P10709983666780608653.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389888.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389924.P15901862346322248970

`eq[A000120(n), A065120(2*n+1)]`
-/

namespace A389924.P15901862346322248970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389924.P15901862346322248970

noncomputable section

/-- A389924: Standard composition numbers of integer compositions with first part = length.

Offset 1, canonical program `A389924.P15901862346322248970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A389924 (n : ℕ) : ℤ :=
  (A389924.P15901862346322248970.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. -/
def A389924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390115.P3320547695728798569

`A246574(1+n)+A002057(n)`
-/

namespace A390115.P3320547695728798569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246574 (1 + n) + A002057 n

end

end A390115.P3320547695728798569

noncomputable section

/-- A390115: a(n) is the total number of vertices of degree 2 in Catalan word grid graphs with n parts.

Offset 2, canonical program `A390115.P3320547695728798569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A390115 (n : ℕ) : ℤ :=
  A390115.P3320547695728798569.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A390115.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390458.P808166892872410916

`A060018(A137228(n+2))`
-/

namespace A390458.P808166892872410916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060018 (A137228 (n + 2)).toNat

end

end A390458.P808166892872410916

noncomputable section

/-- A390458: Minimum site perimeter of a polyiamond with n cells.

Offset 1, canonical program `A390458.P808166892872410916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6599 terms. -/
def A390458 (n : ℕ) : ℤ :=
  A390458.P808166892872410916.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6599 terms. -/
def A390458.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390490.P12259971174261316425

`A307428(n+1)*A368885(n+1)`
-/

namespace A390490.P12259971174261316425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307428 (n + 1) * A368885 (n + 1)

end

end A390490.P12259971174261316425

noncomputable section

/-- A390490: Dirichlet g.f.: (zeta(2*s))^2 / (zeta(s) * zeta(4*s)).

Offset 1, canonical program `A390490.P12259971174261316425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390490 (n : ℕ) : ℤ :=
  A390490.P12259971174261316425.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390490.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390689.P2219131931332406576

`∑{d}[n+1, A229062(#)*#]`
-/

namespace A390689.P2219131931332406576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A229062 d * (d : ℤ)

end

end A390689.P2219131931332406576

noncomputable section

/-- A390689: The sum of the divisors of n that are sums of 2 squares (A001481).

Offset 1, canonical program `A390689.P2219131931332406576`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A229062, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390689 (n : ℕ) : ℤ :=
  A390689.P2219131931332406576.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A229062, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390689.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390690.P1657421129599559048

`∑{d}[n+1, A353816(#)*#]`
-/

namespace A390690.P1657421129599559048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353816 d * (d : ℤ)

end

end A390690.P1657421129599559048

noncomputable section

/-- A390690: The sum of the divisors of n that are Loeschian numbers (A003136).

Offset 1, canonical program `A390690.P1657421129599559048`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353816, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390690 (n : ℕ) : ℤ :=
  A390690.P1657421129599559048.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353816, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390690.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390718.P13136824727992401142

`eq[1, A000120(A001414(n+1))]+1`
-/

namespace A390718.P13136824727992401142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A001414 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A390718.P13136824727992401142

noncomputable section

/-- A390718: Numbers k whose sum of prime factors (with multiplicity) is a power of 2.

Offset 1, canonical program `A390718.P13136824727992401142`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A390718 (n : ℕ) : ℤ :=
  (A390718.P13136824727992401142.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. -/
def A390718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390768.P10875789156720310825

`A000523(A139391(n+1))-A000523(n+1)`
-/

namespace A390768.P10875789156720310825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A139391 (n + 1)).toNat - A000523 (n + 1)

end

end A390768.P10875789156720310825

noncomputable section

/-- A390768: Binary length of A139391(n) - binary length of n.

Offset 1, canonical program `A390768.P10875789156720310825`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. -/
def A390768 (n : ℕ) : ℤ :=
  A390768.P10875789156720310825.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6666 terms. -/
def A390768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391014.P14223201722542292743

`record[gcd(n+1, A085974(n+1))]`
-/

namespace A391014.P14223201722542292743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A085974 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391014.P14223201722542292743

noncomputable section

/-- A391014: Indices of zeroless primes.

Offset 1, canonical program `A391014.P14223201722542292743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7122 terms. -/
def A391014 (n : ℕ) : ℤ :=
  (A391014.P14223201722542292743.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7122 terms. -/
def A391014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391134.P1699678046192407440

`A030238(n+1)-A132364(n+1)`
-/

namespace A391134.P1699678046192407440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030238 (n + 1) - A132364 (n + 1)

end

end A391134.P1699678046192407440

noncomputable section

/-- A391134: Expansion of g^2/(1 - x^2*g), where g = 1+x*g^2 is the g.f. of A000108.

Offset 0, canonical program `A391134.P1699678046192407440`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A391134 (n : ℕ) : ℤ :=
  A391134.P1699678046192407440.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. -/
def A391134.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391174.P4589531631404199369

`A391171(n+1)-A390719(n+1)`
-/

namespace A391174.P4589531631404199369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391171 (n + 1) - A390719 (n + 1)

end

end A391174.P4589531631404199369

noncomputable section

/-- A391174: Expansion of g^3/(1 - x*g)^2, where g = 1+x*g^3 is the g.f. of A001764.

Offset 0, canonical program `A391174.P4589531631404199369`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. -/
def A391174 (n : ℕ) : ℤ :=
  A391174.P4589531631404199369.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. -/
def A391174.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391177.P16967244753498412045

`∑{#}[n, A391171(#)*A391171(n-#)]`
-/

namespace A391177.P16967244753498412045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A391171 k * A391171 (n - k)

end

end A391177.P16967244753498412045

noncomputable section

/-- A391177: Expansion of (g/(1 - x*g))^4, where g = 1+x*g^3 is the g.f. of A001764.

Offset 0, canonical program `A391177.P16967244753498412045`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. -/
def A391177 (n : ℕ) : ℤ :=
  A391177.P16967244753498412045.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. -/
def A391177.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391301.P13646111907161465819

`(A007226(A000007(n)+n)+a(n-1))/2` with `a(0)=1`
-/

namespace A391301.P13646111907161465819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((A007226 (A000007 n + (n : ℤ)).toNat : ℚ) + a (n - 1)) / 2

end

end A391301.P13646111907161465819

noncomputable section

/-- A391301: Expansion of g^2/(1 + x^2*g^4), where g = 1+x*g^3 is the g.f. of A001764.

Offset 0, canonical program `A391301.P13646111907161465819`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A391301 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A391301.P13646111907161465819.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A391301.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391380.P8855859782900790221

`record[A047749(n)+A047749(n+1)*n%2]`
-/

namespace A391380.P8855859782900790221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047749 n + A047749 (n + 1) * ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391380.P8855859782900790221

noncomputable section

/-- A391380: Expansion of g*(1 + x*g), where g = 1+x*g^3 is the g.f. of A001764.

Offset 0, canonical program `A391380.P8855859782900790221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A391380 (n : ℕ) : ℤ :=
  A391380.P8855859782900790221.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A391380.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391459.P12819383372019779551

`A399989(1+n)+A399989(n)-A000108(n)`
-/

namespace A391459.P12819383372019779551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399989 (1 + n) + A399989 n - A000108 n

end

end A391459.P12819383372019779551

noncomputable section

/-- A391459: Expansion of g/(2 - g^2), where g = 1+x*g^2 is the g.f. of A000108.

Offset 0, canonical program `A391459.P12819383372019779551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A391459 (n : ℕ) : ℤ :=
  A391459.P12819383372019779551.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 147 terms. -/
def A391459.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391752.P694586830429822444

`A052038(A000045(n+1))`
-/

namespace A391752.P694586830429822444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052038 (A000045 (n + 1)).toNat

end

end A391752.P694586830429822444

noncomputable section

/-- A391752: First nonzero digit in the decimal expansion of 1/Fibonacci(n).

Offset 1, canonical program `A391752.P694586830429822444`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052038, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391752 (n : ℕ) : ℤ :=
  A391752.P694586830429822444.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052038, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391752.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392057.P2000714559570629253

`A000120(a(n-1))+A000120(n)` with `a(0)=0`
-/

namespace A392057.P2000714559570629253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000120 (a (n - 1)).toNat + A000120 n

end

end A392057.P2000714559570629253

noncomputable section

/-- A392057: a(0)=0, a(n) = wt(a(n-1)) + wt(n), where wt(x) is the binary weight of x, A000120.

Offset 0, canonical program `A392057.P2000714559570629253`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392057 (n : ℕ) : ℤ :=
  A392057.P2000714559570629253.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392057.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392199.P2867183201593538504

`eq[1, A341523(1+n)]+1`
-/

namespace A392199.P2867183201593538504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341523 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A392199.P2867183201593538504

noncomputable section

/-- A392199: Positive integers k such that gcd(k, sigma(k)) is prime.

Offset 1, canonical program `A392199.P2867183201593538504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392199 (n : ℕ) : ℤ :=
  (A392199.P2867183201593538504.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392199.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392263.P10060575615498331970

`record[lcm(13, A001248(n+1))]`
-/

namespace A392263.P10060575615498331970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 13 (A001248 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A392263.P10060575615498331970

noncomputable section

/-- A392263: Numbers k such that sigma(k) = psi(k) + tau(k) + omega(k)^3.

Offset 1, canonical program `A392263.P10060575615498331970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A392263 (n : ℕ) : ℤ :=
  (A392263.P10060575615498331970.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. -/
def A392263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392359.P1615153533033939282

`(1+n)/A087267(n+1)`
-/

namespace A392359.P1615153533033939282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + n : ℚ) / (A087267 (n + 1) : ℚ)

end

end A392359.P1615153533033939282

noncomputable section

/-- A392359: Denominators of the reduced fractions of the ratios of the number of primes less than n over n.

Offset 1, canonical program `A392359.P1615153533033939282`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392359 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392359.P1615153533033939282.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392359.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392367.P2313171548853791513

`eq[11, 3+a(A006530(n+1)-2)]+1` with `a(0)=5`
-/

namespace A392367.P2313171548853791513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f2 =>
  3 + f2 (A006530 (n + 1) - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A392367.P2313171548853791513

noncomputable section

/-- A392367: Numbers whose greatest prime factor is a Fermat prime.

Offset 1, canonical program `A392367.P2313171548853791513`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 960 terms. -/
def A392367 (n : ℕ) : ℤ :=
  (A392367.P2313171548853791513.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 960 terms. -/
def A392367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392451.P8918691439076179572

`∏{e}[n+1, A000120(#)+1]`
-/

namespace A392451.P8918691439076179572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A000120 (Nat.factorization (f1 n) p) + 1)

end

end A392451.P8918691439076179572

noncomputable section

/-- A392451: The number of infinitary divisors of n that are numbers whose prime factorization exponents are all powers of 2 (A138302).

Offset 1, canonical program `A392451.P8918691439076179572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392451 (n : ℕ) : ℤ :=
  A392451.P8918691439076179572.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393609.P11922313531072709366

`A000040(A035513(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A393609.P11922313531072709366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A035513 (n + 1)).toNat

end

end A393609.P11922313531072709366

noncomputable section

/-- A393609: Square array A read by descending antidiagonals: A(n,k) = prime(A035513(n, k)).

Offset 1, canonical program `A393609.P11922313531072709366`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035513, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A393609 (n : ℕ) : ℤ :=
  A393609.P11922313531072709366.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035513, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A393609.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A393803.P3807868099825041291

`eq[A000120(n), A160384(n)]`
-/

namespace A393803.P3807868099825041291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160384 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A393803.P3807868099825041291

noncomputable section

/-- A393803: Numbers whose number of nonzero digits is identical in base 2 and 3.

Offset 1, canonical program `A393803.P3807868099825041291`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1842 terms. -/
def A393803 (n : ℕ) : ℤ :=
  (A393803.P3807868099825041291.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1842 terms. -/
def A393803.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393981.P9621053353220262288

`lt[A003557(n+1), A053669(n+1)]+1`
-/

namespace A393981.P9621053353220262288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A393981.P9621053353220262288

noncomputable section

/-- A393981: Numbers k such that A003557(k) < A053669(k).

Offset 1, canonical program `A393981.P9621053353220262288`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7428 terms. -/
def A393981 (n : ℕ) : ℤ :=
  (A393981.P9621053353220262288.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7428 terms. -/
def A393981.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394217.P17364854151603139210

`n+1-A060973(a(n-1))` with `a(0)=1`
-/

namespace A394217.P17364854151603139210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) - A060973 (a (n - 1)).toNat

end

end A394217.P17364854151603139210

noncomputable section

/-- A394217: Earliest monotonic sequence satisfying a(1)=1 and a(a(n)+a(n-1))=n for n>=1 (with a(k)=0 for k<=0).

Offset 1, canonical program `A394217.P17364854151603139210`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394217 (n : ℕ) : ℤ :=
  A394217.P17364854151603139210.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394789.P12924523429814917951

`∑[A353670(1+n)]`
-/

namespace A394789.P12924523429814917951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353670 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A394789.P12924523429814917951

noncomputable section

/-- A394789: Number of positive integers <= n with exactly two odd divisors.

Offset 1, canonical program `A394789.P12924523429814917951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394789 (n : ℕ) : ℤ :=
  A394789.P12924523429814917951.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A394789.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A394869.P11237424373232616846

`floor(sqrt(A259361(n²))/2*n)+n`
-/

namespace A394869.P11237424373232616846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A259361 (n ^ 2) : ℝ) / 2 * (n : ℝ)⌋ + (n : ℤ)

end

end A394869.P11237424373232616846

noncomputable section

/-- A394869: a(n) = floor(n*(sqrt(n - 1) + 2)/2).

Offset 0, canonical program `A394869.P11237424373232616846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A394869 (n : ℕ) : ℤ :=
  A394869.P11237424373232616846.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A394869.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395270.P17244589602935654934

`filter[A005117(n+1), A323170(#)]`
-/

namespace A395270.P17244589602935654934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A395270.P17244589602935654934

noncomputable section

/-- A395270: Numbers that are radicals of abundant numbers.

Offset 1, canonical program `A395270.P17244589602935654934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395270 (n : ℕ) : ℤ :=
  A395270.P17244589602935654934.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395270.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395520.P8890934817172298303

`A036349(n+2)-A036349(n+1)`
-/

namespace A395520.P8890934817172298303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036349 (n + 2) - A036349 (n + 1)

end

end A395520.P8890934817172298303

noncomputable section

/-- A395520: First differences of A036349.

Offset 1, canonical program `A395520.P8890934817172298303`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036349, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395520 (n : ℕ) : ℤ :=
  A395520.P8890934817172298303.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A036349, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395520.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395676.P1926156595101369630

`lt[(1+n)%A053827(n+1), 1]+1`
-/

namespace A395676.P1926156595101369630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 + n : ℤ) (A053827 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A395676.P1926156595101369630

noncomputable section

/-- A395676: Numbers which are divisible by the sum of their base-6 digits.

Offset 1, canonical program `A395676.P1926156595101369630`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1711 terms. -/
def A395676 (n : ℕ) : ℤ :=
  (A395676.P1926156595101369630.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1711 terms. -/
def A395676.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395768.P1059238046107922784

`∑{d}[n+1, #*A374367((n+1)/#)]`
-/

namespace A395768.P1059238046107922784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A374367 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A395768.P1059238046107922784

noncomputable section

/-- A395768: The twisted Euler phi-function for the Dirichlet character kronecker(-4,.) mod 4.

Offset 1, canonical program `A395768.P1059238046107922784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395768 (n : ℕ) : ℤ :=
  A395768.P1059238046107922784.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396547.P18267465078634067206

`record[A006530(A114522(n+1)+1)]`
-/

namespace A396547.P18267465078634067206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A114522 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A396547.P18267465078634067206

noncomputable section

/-- A396547: Primes p such that the sum of the distinct prime factors of p-1 is prime.

Offset 1, canonical program `A396547.P18267465078634067206`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 782 terms. -/
def A396547 (n : ℕ) : ℤ :=
  A396547.P18267465078634067206.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 782 terms. -/
def A396547.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396573.P16360608001159207821

`lt[A003961(n+1), A138591(n+1)]+1`
-/

namespace A396573.P16360608001159207821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138591 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A396573.P16360608001159207821

noncomputable section

/-- A396573: Primes p such that the gap to the next prime is strictly less than floor(log_2(p)).

Offset 1, canonical program `A396573.P16360608001159207821`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 902 terms. -/
def A396573 (n : ℕ) : ℤ :=
  (A396573.P16360608001159207821.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 902 terms. -/
def A396573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396648.P12511411540174210681

`A133053(n+1)-A172361(n+1)`
-/

namespace A396648.P12511411540174210681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133053 (n + 1) - A172361 (n + 1)

end

end A396648.P12511411540174210681

noncomputable section

/-- A396648: Row sums of A396585.

Offset 0, canonical program `A396648.P12511411540174210681`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A396648 (n : ℕ) : ℤ :=
  A396648.P12511411540174210681.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. -/
def A396648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396722.P14914588847797964893

`A081294(n)-A115140(n)`
-/

namespace A396722.P14914588847797964893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n - A115140 n

end

end A396722.P14914588847797964893

noncomputable section

/-- A396722: a(n) = (4^n/2) * p(n, 5/2), where p(n,x) is the Lagrange interpolating polynomial through (1,0) and (k,1) for k=2..n+1.

Offset 0, canonical program `A396722.P14914588847797964893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A396722 (n : ℕ) : ℤ :=
  A396722.P14914588847797964893.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. -/
def A396722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396939.P3152846793651132362

`comp[A173024(n+1)]`
-/

namespace A396939.P3152846793651132362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A396939.P3152846793651132362

noncomputable section

/-- A396939: Numbers having isolated ones or isolated double ones in their binary representations.

Offset 1, canonical program `A396939.P3152846793651132362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396939 (n : ℕ) : ℤ :=
  (A396939.P3152846793651132362.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396939.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397112.P5391708724886906443

`A000040(A397111(1+n))`
-/

namespace A397112.P5391708724886906443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A397111 (1 + n)).toNat

end

end A397112.P5391708724886906443

noncomputable section

/-- A397112: Primes indexed by A397111.

Offset 1, canonical program `A397112.P5391708724886906443`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A397112 (n : ℕ) : ℤ :=
  A397112.P5391708724886906443.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. -/
def A397112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397286.P5998066170028131211

`A397284(C(row(n)+1, 2)+col(n))/2^col(n)`
-/

namespace A397286.P5998066170028131211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A397284 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) : ℚ) / (2 ^ SequenceMachineLib.triCol n : ℚ)

end

end A397286.P5998066170028131211

noncomputable section

/-- A397286: Triangle read by rows: T(n, k) = 2^(n - k) * P_{n, k}(1/2) where P_{n, k}(x) = x * (n - k + x)^(n - k - 1) * binomial(n, k).

Offset 0, canonical program `A397286.P5998066170028131211`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A397284, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397286 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A397286.P5998066170028131211.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A397284, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397286.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A397383.P15673520071357837229

`A243116(n)-A394186(n)`
-/

namespace A397383.P15673520071357837229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243116 n - A394186 n

end

end A397383.P15673520071357837229

noncomputable section

/-- A397383: a(n) = Sum_{k=0..n} binomial(n+k,2*k) * binomial(n+2*k,k-1).

Offset 0, canonical program `A397383.P15673520071357837229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A397383 (n : ℕ) : ℤ :=
  A397383.P15673520071357837229.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A397383.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397422.P5494168866610696871

`A046899(n)*A355007(n)`
-/

namespace A397422.P5494168866610696871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 n * A355007 n

end

end A397422.P5494168866610696871

noncomputable section

/-- A397422: Triangle read by rows: T(n, k) = binomial(n+k, n) * |Stirling1(n, k)| * n^k.

Offset 0, canonical program `A397422.P5494168866610696871`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1022 terms. -/
def A397422 (n : ℕ) : ℤ :=
  A397422.P5494168866610696871.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1022 terms. -/
def A397422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397469.P12444766347461370515

`A065091(A054406(n+1)-1)`
-/

namespace A397469.P12444766347461370515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A054406 (n + 1) - 1).toNat

end

end A397469.P12444766347461370515

noncomputable section

/-- A397469: a(n) = prime(floor(n*r)), where r = (3 + sqrt(3))/2.

Offset 1, canonical program `A397469.P12444766347461370515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4227 terms. -/
def A397469 (n : ℕ) : ℤ :=
  A397469.P12444766347461370515.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4227 terms. -/
def A397469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397648.P3478274364362355387

`∑{#}[n, (-1)^(n-#)*C(n, #)*A000002(#+1)]`
-/

namespace A397648.P3478274364362355387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A000002 (k + 1) : ℚ)

end

end A397648.P3478274364362355387

noncomputable section

/-- A397648: Inverse binomial transform of Kolakoski sequence A000002.

Offset 0, canonical program `A397648.P3478274364362355387`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. -/
def A397648 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A397648.P3478274364362355387.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. -/
def A397648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397787.P9925276150095344826

`∑{d}[n+1, A007427(#)*A080513((n+1)/#-1)]`
-/

namespace A397787.P9925276150095344826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A080513 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A397787.P9925276150095344826

noncomputable section

/-- A397787: Number of even primitive Dirichlet characters modulo n.

Offset 1, canonical program `A397787.P9925276150095344826`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397787 (n : ℕ) : ℤ :=
  A397787.P9925276150095344826.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397788.P10557389323205216915

`∑{d}[n+1, A004526(#-1)*A007427((n+1)/#)]`
-/

namespace A397788.P10557389323205216915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A004526 (d - 1) * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A397788.P10557389323205216915

noncomputable section

/-- A397788: Number of odd primitive Dirichlet characters modulo n.

Offset 1, canonical program `A397788.P10557389323205216915`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397788 (n : ℕ) : ℤ :=
  A397788.P10557389323205216915.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397788.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397908.P8810744272400262758

`n+a(n-A001223(n))` with `a(0)=1`
-/

namespace A397908.P8810744272400262758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n + a ((n : ℤ) - A001223 n).toNat

end

end A397908.P8810744272400262758

noncomputable section

/-- A397908: a(1) = 1; a(n) = a(n-d(n)) + n - 1 for n > 1, where d(n) = prime(n) - prime(n-1).

Offset 1, canonical program `A397908.P8810744272400262758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397908 (n : ℕ) : ℤ :=
  (A397908.P8810744272400262758.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397908.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398373.P12839850949891993134

`A398477(A010054(n)+n-1)`
-/

namespace A398373.P12839850949891993134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398477 (A010054 n + ((n : ℤ) - 1)).toNat

end

end A398373.P12839850949891993134

noncomputable section

/-- A398373: Triangle read by rows: T(n, k) = binomial(n + k - 1, k) * n^(n - k).

Offset 0, canonical program `A398373.P12839850949891993134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A398373 (n : ℕ) : ℤ :=
  A398373.P12839850949891993134.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. -/
def A398373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398471.P17801441405953118035

`∑[∑[A157893(1+n)]]`
-/

namespace A398471.P17801441405953118035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157893 (1 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398471.P17801441405953118035

noncomputable section

/-- A398471: Minimum total search cost of an optimal binary search tree over n keys in sorted order, where key i has access frequency i.

Offset 1, canonical program `A398471.P17801441405953118035`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1507 terms. -/
def A398471 (n : ℕ) : ℤ :=
  A398471.P17801441405953118035.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1507 terms. -/
def A398471.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398781.P5177835371061370946

`∑[runs[and(1, A053827(n))]]`
-/

namespace A398781.P5177835371061370946
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A053827 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A398781.P5177835371061370946

noncomputable section

/-- A398781: If k appears, 6*k does not.

Offset 1, canonical program `A398781.P5177835371061370946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8571 terms. -/
def A398781 (n : ℕ) : ℤ :=
  (A398781.P5177835371061370946.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8571 terms. -/
def A398781.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398954.P11143497039519897158

`filter[A005117(n+1), A162289(#)]`
-/

namespace A398954.P11143497039519897158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A398954.P11143497039519897158

noncomputable section

/-- A398954: 7-rough squarefree numbers: squarefree numbers whose prime factors are all greater than 5.

Offset 1, canonical program `A398954.P11143497039519897158`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398954 (n : ℕ) : ℤ :=
  A398954.P11143497039519897158.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A398954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399262.P9814319546926637261

`A183301(n+1)+A057944(n)`
-/

namespace A399262.P9814319546926637261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183301 (n + 1) + A057944 n

end

end A399262.P9814319546926637261

noncomputable section

/-- A399262: Triangle read by rows: row n gives the n consecutive integers centered at n^2, excluding n^2 if n is even.

Offset 1, canonical program `A399262.P9814319546926637261`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399262 (n : ℕ) : ℤ :=
  A399262.P9814319546926637261.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399306.P3054891255912208153

`comp[A399305(n+1)-1]+1`
-/

namespace A399306.P3054891255912208153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399305 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A399306.P3054891255912208153

noncomputable section

/-- A399306: Integers whose minimal Lucas representation (A130310) does not end in a 0 which if removed results in a valid minimal Lucas representation of another integer.

Offset 1, canonical program `A399306.P3054891255912208153`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6180 terms. -/
def A399306 (n : ℕ) : ℤ :=
  (A399306.P3054891255912208153.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6180 terms. -/
def A399306.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399787.P2495405610167651069

`A055642(n-n*(1-val(∏{p}[n^3, #], 11)))`
-/

namespace A399787.P2495405610167651069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 ((n : ℤ) - (n : ℤ) * (1 - (SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), p) 11 : ℤ))).toNat

end

end A399787.P2495405610167651069

noncomputable section

/-- A399787: Length of the longest palindromic substring of n written in base 10.

Offset 0, canonical program `A399787.P2495405610167651069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A399787 (n : ℕ) : ℤ :=
  A399787.P2495405610167651069.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A399787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399924.P13669418604275787557

`eq[1, gcd(2, A007429(n+1))]+1`
-/

namespace A399924.P13669418604275787557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A007429 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A399924.P13669418604275787557

noncomputable section

/-- A399924: Numbers k such that A007429(k) is odd.

Offset 1, canonical program `A399924.P13669418604275787557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399924 (n : ℕ) : ℤ :=
  (A399924.P13669418604275787557.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399925.P15039413478081315609

`eq[1, (2/gcd(2, A007429(n+1)))%2]+1`
-/

namespace A399925.P15039413478081315609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (2 / (Int.gcd 2 (A007429 (n + 1)) : ℚ))) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A399925.P15039413478081315609

noncomputable section

/-- A399925: Numbers k such that A007429(k) is even.

Offset 1, canonical program `A399925.P15039413478081315609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399925 (n : ℕ) : ℤ :=
  (A399925.P15039413478081315609.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399925.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399943.P13376487114959424415

`∑{#}[n-2, A350212(C(n+1, 2)+#+2)]`
-/

namespace A399943.P13376487114959424415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A350212 (Nat.choose (n + 1) 2 + (k + 2))

end

end A399943.P13376487114959424415

noncomputable section

/-- A399943: Number of endofunctions on [n] having at least two isolated fixed points.

Offset 0, canonical program `A399943.P13376487114959424415`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350212, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399943 (n : ℕ) : ℤ :=
  A399943.P13376487114959424415.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350212, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399943.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A400324.P3198541763604547307

`A004737(A005369(n+1)+n+2)`
-/

namespace A400324.P3198541763604547307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (A005369 (n + 1) + (n + 2 : ℤ)).toNat

end

end A400324.P3198541763604547307

noncomputable section

/-- A400324: Irregular triangle read by rows, where row n gives the lengths of consecutive same species move blocks in the solution of the Frogs and Toads interchange puzzle with n frogs and n toads.

Offset 1, canonical program `A400324.P3198541763604547307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A400324 (n : ℕ) : ℤ :=
  A400324.P3198541763604547307.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A400324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400698.P14154291513535149740

`A124897(n)+a(n-1)` with `a(0)=1`
-/

namespace A400698.P14154291513535149740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A124897 n + a (n - 1)

end

end A400698.P14154291513535149740

noncomputable section

/-- A400698: a(n) = Sum_{k=0..n} mu(k^2 + 1).

Offset 0, canonical program `A400698.P14154291513535149740`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400698 (n : ℕ) : ℤ :=
  A400698.P14154291513535149740.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400698.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400770.P6014380429317486619

`∑[A400769(n)]`
-/

namespace A400770.P6014380429317486619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400770.P6014380429317486619

noncomputable section

/-- A400770: a(n) = Sum_{k=0..n} mu(k^2 + k + 1).

Offset 0, canonical program `A400770.P6014380429317486619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400770 (n : ℕ) : ℤ :=
  A400770.P6014380429317486619.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400770.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400791.P15948439945522063166

`∑{d}[1+n, #*A140106(#)]`
-/

namespace A400791.P15948439945522063166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A140106 d

end

end A400791.P15948439945522063166

noncomputable section

/-- A400791: a(n) = Sum_{d|n, d >= 4} d * floor((d - 2)/2).

Offset 1, canonical program `A400791.P15948439945522063166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400791 (n : ℕ) : ℤ :=
  A400791.P15948439945522063166.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401432.P8014818857472625557

`A053616(n²)`
-/

namespace A401432.P8014818857472625557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 (n ^ 2)

end

end A401432.P8014818857472625557

noncomputable section

/-- A401432: Distance between n^2 and the nearest triangular number, either above or below n^2.

Offset 0, canonical program `A401432.P8014818857472625557`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053616, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401432 (n : ℕ) : ℤ :=
  A401432.P8014818857472625557.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053616, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401432.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A401595.P5597691312598404850

`A053616(n^3)`
-/

namespace A401595.P5597691312598404850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 (n ^ 3)

end

end A401595.P5597691312598404850

noncomputable section

/-- A401595: Distance between n^3 and the nearest triangular number, either above or below n^3.

Offset 0, canonical program `A401595.P5597691312598404850`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053616, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401595 (n : ℕ) : ℤ :=
  A401595.P5597691312598404850.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053616, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401595.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A402294.P7736374336321780923

`A402292(n)-n-1`
-/

namespace A402294.P7736374336321780923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A402292 n - (n : ℤ) - 1

end

end A402294.P7736374336321780923

noncomputable section

/-- A402294: a(n) = number of internal crevices between the circles in an optimal arrangement of circles achieving A402292(n).

Offset 0, canonical program `A402294.P7736374336321780923`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A402292, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A402294 (n : ℕ) : ℤ :=
  A402294.P7736374336321780923.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A402292, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A402294.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366762.P2111167679417581175

`filter[A390437(n+1), A307421(#)]`
-/

namespace A366762.P2111167679417581175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307421 (f1 j).toNat = 1) n)

end

end A366762.P2111167679417581175

noncomputable section

/-- A366762: Numbers whose canonical prime factorization contains only exponents which are congruent to 1 modulo 3.

Offset 1, canonical program `A366762.P2111167679417581175`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6447 terms. -/
def A366762 (n : ℕ) : ℤ :=
  A366762.P2111167679417581175.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6447 terms. -/
def A366762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369529.P1505549937624039629

`gcd(A007953(n+1), A007954(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369529.P1505549937624039629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007953 (n + 1)) (A007954 (n + 1))

end

end A369529.P1505549937624039629

noncomputable section

/-- A369529: a(n) = gcd(A007953(n), A007954(n)).

Offset 1, canonical program `A369529.P1505549937624039629`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369529 (n : ℕ) : ℤ :=
  (A369529.P1505549937624039629.a (n - 1) : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369529.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A371281.P7086320584445002095

`A010879(A007954(n))`
-/

namespace A371281.P7086320584445002095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A007954 n).toNat

end

end A371281.P7086320584445002095

noncomputable section

/-- A371281: Last digit of the product of decimal digits of n.

Offset 0, canonical program `A371281.P7086320584445002095`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371281 (n : ℕ) : ℤ :=
  A371281.P7086320584445002095.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371281.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A371622.P18148360112742593564

`p?[A371656(n+1)]`
-/

namespace A371622.P18148360112742593564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A371622.P18148360112742593564

noncomputable section

/-- A371622: Primes p such that p - 2 and p + 2 have the same number of prime factors, counted with multiplicity.

Offset 1, canonical program `A371622.P18148360112742593564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 955 terms. -/
def A371622 (n : ℕ) : ℤ :=
  A371622.P18148360112742593564.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 955 terms. -/
def A371622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375183.P6442371015820757928

`xor(n, A377414(floor(n/2)))`
-/

namespace A375183.P6442371015820757928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A377414 ⌊(n : ℚ) / 2⌋.toNat)

end

end A375183.P6442371015820757928

noncomputable section

/-- A375183: In the binary expansion of n, complement bits at even positions and to the right of a 1 (the most significant bit corresponding to position 1).

Offset 0, canonical program `A375183.P6442371015820757928`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A375183 (n : ℕ) : ℤ :=
  A375183.P6442371015820757928.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A375183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376257.P1037975452622743819

`(n+1-A007954(n+1))*(-1)^A007954(n+1)`
-/

namespace A376257.P1037975452622743819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A007954 (n + 1) : ℚ) * (-1 : ℚ) ^ (A007954 (n + 1) : ℤ)

end

end A376257.P1037975452622743819

noncomputable section

/-- A376257: a(n) = (n - c(n))*(-1)^c(n), where c(n) is the product of the digits of n (A007954).

Offset 1, canonical program `A376257.P1037975452622743819`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376257 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A376257.P1037975452622743819.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376257.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377994.P2582031446348663756

`eq[A062157(n), A065357(n)]`
-/

namespace A377994.P2582031446348663756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065357 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377994.P2582031446348663756

noncomputable section

/-- A377994: Numbers k such that k + PrimePi(k) is odd.

Offset 1, canonical program `A377994.P2582031446348663756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A377994 (n : ℕ) : ℤ :=
  (A377994.P2582031446348663756.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A377994.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386335.P18013375525764117

`∩[A038604(n+1), A038611(n+1)]`
-/

namespace A386335.P18013375525764117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386335.P18013375525764117

noncomputable section

/-- A386335: Primes without {2, 3} as digits.

Offset 1, canonical program `A386335.P18013375525764117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386335 (n : ℕ) : ℤ :=
  (A386335.P18013375525764117.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386335.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387421.P16169722484517540576

`∪[A005101(n+1), A052485(n+1)]`
-/

namespace A387421.P16169722484517540576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387421.P16169722484517540576

noncomputable section

/-- A387421: Numbers k such that sigma(k) >= 2*A057521(k), where A057521(n) gives the powerful part of n, and sigma is the sum of divisors function.

Offset 1, canonical program `A387421.P16169722484517540576`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387421 (n : ℕ) : ℤ :=
  (A387421.P16169722484517540576.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387657.P13096566846916761917

`A123275(n+1-col(n)-col(n))`
-/

namespace A387657.P13096566846916761917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123275 ((n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat

end

end A387657.P13096566846916761917

noncomputable section

/-- A387657: Array read by ascending antidiagonals: A(n, k) = denominator(k^n/n), with k >= 0.

Offset 1, canonical program `A387657.P13096566846916761917`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387657 (n : ℕ) : ℤ :=
  A387657.P13096566846916761917.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390323.P3785006267349611144

`A023896(n+1)-A034387(n+1)+A008472(n+1)-1`
-/

namespace A390323.P3785006267349611144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023896 (n + 1) - A034387 (n + 1) + A008472 (n + 1) - 1

end

end A390323.P3785006267349611144

noncomputable section

/-- A390323: Sum of composite numbers coprime to n in the range 1 < k < n.

Offset 1, canonical program `A390323.P3785006267349611144`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023896, A034387, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390323 (n : ℕ) : ℤ :=
  A390323.P3785006267349611144.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023896, A034387, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A390323.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391222.P8087994009273593311

`4*a(n-1)+A115143(n)` with `a(0)=1`
-/

namespace A391222.P8087994009273593311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * a (n - 1) + A115143 n

end

end A391222.P8087994009273593311

noncomputable section

/-- A391222: Expansion of 1/(g * (2-g))^2, where g = 1+x*g^2 is the g.f. of A000108.

Offset 0, canonical program `A391222.P8087994009273593311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A391222 (n : ℕ) : ℤ :=
  A391222.P8087994009273593311.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. -/
def A391222.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391403.P4218804131166072041

`A011973(n)*A034868(n)`
-/

namespace A391403.P4218804131166072041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011973 n * A034868 n

end

end A391403.P4218804131166072041

noncomputable section

/-- A391403: Triangle read by rows: T(n,k) is k-th entry of the gamma-vector of the n-dimensional cyclohedron, 0 <= k <= floor(n/2).

Offset 0, canonical program `A391403.P4218804131166072041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391403 (n : ℕ) : ℤ :=
  A391403.P4218804131166072041.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391716.P15694509267882792702

`1+a(A392781(n+1)-1)` with `a(0)=1`
-/

namespace A391716.P15694509267882792702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  1 + a (A392781 (n + 1) - 1).toNat

end

end A391716.P15694509267882792702

noncomputable section

/-- A391716: Let f be an additive function with f(2^e) = (e + e mod 2)/2, f(p^e) = e*(p-1)/2, p an odd prime. a(n) is the number of iterations of f(n) required to reach 0.

Offset 1, canonical program `A391716.P15694509267882792702`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391716 (n : ℕ) : ℤ :=
  (A391716.P15694509267882792702.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391716.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391840.P6091312888853669410

`A053836(A000040(n+1))`
-/

namespace A391840.P6091312888853669410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053836 (A000040 (n + 1)).toNat

end

end A391840.P6091312888853669410

noncomputable section

/-- A391840: Base 16 sum of digits of prime(n).

Offset 1, canonical program `A391840.P6091312888853669410`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053836, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391840 (n : ℕ) : ℤ :=
  A391840.P6091312888853669410.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053836, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391840.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A393350.P6082447358434037089

`Δ[A000720(A005101(1+n))]`
-/

namespace A393350.P6082447358434037089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A005101 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A393350.P6082447358434037089

noncomputable section

/-- A393350: a(n) is the number of primes between A005101(n) and A005101(n + 1).

Offset 1, canonical program `A393350.P6082447358434037089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A393350 (n : ℕ) : ℤ :=
  A393350.P6082447358434037089.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A393350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393442.P16997922933176489028

`A393443(abs(A133566(n+1)-A028310(n)))`
-/

namespace A393442.P16997922933176489028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393443 |A133566 (n + 1) - A028310 n|.toNat

end

end A393442.P16997922933176489028

noncomputable section

/-- A393442: Array read by downward antidiagonals: T(n,k) (n>=0, k>=0) is the maximum number of regions the plane can be divided into by drawing n circles and k lines.

Offset 0, canonical program `A393442.P16997922933176489028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393442 (n : ℕ) : ℤ :=
  A393442.P16997922933176489028.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393451.P15312386155833679685

`lt[and(3, (-1)^(n+1)), A112555(2*n)]`
-/

namespace A393451.P15312386155833679685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 ((-1) ^ (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112555 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A393451.P15312386155833679685

noncomputable section

/-- A393451: Consider the square spiral with its cells numbered starting at 0, as in A308884 and A274641. Two players, Black and Red, take turns. When it is Black's turn, he places a king at the smallest unoccupied cell not attacked by an existing Red king, and when it is Red's turn, she places a king at the smallest unoccupied cell not attacked by an existing Black king. Sequence lists squares occupied by a Red king.

Offset 0, canonical program `A393451.P15312386155833679685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2379 terms. -/
def A393451 (n : ℕ) : ℤ :=
  (A393451.P15312386155833679685.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2379 terms. -/
def A393451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395088.P1994760081379151259

`2-A026465(n+2)`
-/

namespace A395088.P1994760081379151259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A026465 (n + 2)

end

end A395088.P1994760081379151259

noncomputable section

/-- A395088: Fixed point of the morphism 0->011, 1->0.

Offset 0, canonical program `A395088.P1994760081379151259`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026465, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395088 (n : ℕ) : ℤ :=
  A395088.P1994760081379151259.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A026465, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A395088.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A395961.P9208801736051543594

`A053836(n)%2`
-/

namespace A395961.P9208801736051543594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053836 n) 2

end

end A395961.P9208801736051543594

noncomputable section

/-- A395961: Fourth iterate of the Thue-Morse transform applied to A000035.

Offset 0, canonical program `A395961.P9208801736051543594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395961 (n : ℕ) : ℤ :=
  A395961.P9208801736051543594.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395961.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395997.P11981143081767539596

`6*A070799(n+1)+1`
-/

namespace A395997.P11981143081767539596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A070799 (n + 1) + 1

end

end A395997.P11981143081767539596

noncomputable section

/-- A395997: Numbers k > 3 such that the greedy Egyptian fraction representation of 3/k has more terms than the shortest representation of 3/k as a sum of unit fractions.

Offset 1, canonical program `A395997.P11981143081767539596`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395997 (n : ℕ) : ℤ :=
  A395997.P11981143081767539596.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395997.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396279.P7454295923968668205

`eq[A000079(A013632(n)), A053644(n)]`
-/

namespace A396279.P7454295923968668205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A013632 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A396279.P7454295923968668205

noncomputable section

/-- A396279: Integers k such that p - k = floor(log_2(k)), where p is the smallest prime strictly greater than k.

Offset 1, canonical program `A396279.P7454295923968668205`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A396279 (n : ℕ) : ℤ :=
  (A396279.P7454295923968668205.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. -/
def A396279.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396762.P9936943661177591468

`A396882(n+1)+A071239(n)`
-/

namespace A396762.P9936943661177591468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396882 (n + 1) + A071239 n

end

end A396762.P9936943661177591468

noncomputable section

/-- A396762: a(n) is the number of distinct triples of triangles chosen from n^2 unit triangles of a triangular grid up to rotation and reflection without having centers of all three triangles in a same symmetrical axis.

Offset 1, canonical program `A396762.P9936943661177591468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396762 (n : ℕ) : ℤ :=
  A396762.P9936943661177591468.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397890.P17401045601756210256

`∑[A061017(n+1)]-A061017(n+1)`
-/

namespace A397890.P17401045601756210256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A061017 (n + 1)

end

end A397890.P17401045601756210256

noncomputable section

/-- A397890: Minimum binary length of a standard-order composition with n distinct runs; bit length of A351015(n).

Offset 0, canonical program `A397890.P17401045601756210256`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397890 (n : ℕ) : ℤ :=
  A397890.P17401045601756210256.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397890.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400366.P2437949027083987104

`∑[char[A080075(1+n)]]`
-/

namespace A400366.P2437949027083987104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080075 (1 + n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A400366.P2437949027083987104

noncomputable section

/-- A400366: Number of Proth numbers <= n.

Offset 0, canonical program `A400366.P2437949027083987104`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400366 (n : ℕ) : ℤ :=
  (A400366.P2437949027083987104.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400366.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400893.P8227133802892121621

`2*A400890(n+1)+1`
-/

namespace A400893.P8227133802892121621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A400890 (n + 1) + 1

end

end A400893.P8227133802892121621

noncomputable section

/-- A400893: Bipartition of the positive odd numbers depending on the parity of the 2-adic valuation A007814(3*k + 2). Here the part with odd valuation based on A400890.

Offset 1, canonical program `A400893.P8227133802892121621`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A400890, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400893 (n : ℕ) : ℤ :=
  A400893.P8227133802892121621.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A400890, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400893.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A400896.P12266202464247024985

`A400897(n+1)-A213671(n+1)`
-/

namespace A400896.P12266202464247024985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400897 (n + 1) - A213671 (n + 1)

end

end A400896.P12266202464247024985

noncomputable section

/-- A400896: a(n) = numerator(1 - (n^2 - n + 2)/2^n).

Offset 1, canonical program `A400896.P12266202464247024985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A400896 (n : ℕ) : ℤ :=
  A400896.P12266202464247024985.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A400896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363171.P14789941878043738483

`eq[1, A294936(A064549(1+n))]+1`
-/

namespace A363171.P14789941878043738483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294936 (A064549 (1 + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A363171.P14789941878043738483

noncomputable section

/-- A363171: Numbers k such that A064549(k) is an abundant number (A005101).

Offset 1, canonical program `A363171.P14789941878043738483`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A363171 (n : ℕ) : ℤ :=
  (A363171.P14789941878043738483.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A363171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363901.P93164944309145225

`(2*A001817(n+1)+A078181(n+1))/3`
-/

namespace A363901.P93164944309145225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A001817 (n + 1) + A078181 (n + 1) : ℚ) / 3

end

end A363901.P93164944309145225

noncomputable section

/-- A363901: Expansion of Sum_{k>0} x^k / (1 - x^(3*k))^2.

Offset 1, canonical program `A363901.P93164944309145225`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001817, A078181, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363901 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363901.P93164944309145225.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001817, A078181, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A363901.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364215.P4304225117039316976

`A000120(A003159(n+1))`
-/

namespace A364215.P4304225117039316976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003159 (n + 1)).toNat

end

end A364215.P4304225117039316976

noncomputable section

/-- A364215: The number of 1's in the canonical representation of n as a sum of distinct Jacobsthal numbers (A280049).

Offset 1, canonical program `A364215.P4304225117039316976`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003159, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364215 (n : ℕ) : ℤ :=
  A364215.P4304225117039316976.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003159, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A364215.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364232.P3353364334386472060

`∑{d}[n+1, A001817(#)*A325596((n+1)/#)]`
-/

namespace A364232.P3353364334386472060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001817 d * A325596 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364232.P3353364334386472060

noncomputable section

/-- A364232: Expansion of Sum_{k>=0} x^(3*k+1) / (1 + x^(3*k+1))^2.

Offset 1, canonical program `A364232.P3353364334386472060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364232 (n : ℕ) : ℤ :=
  A364232.P3353364334386472060.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364232.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364235.P979171957751888080

`∑{d}[n+1, A001822(#)*A325596((n+1)/#)]`
-/

namespace A364235.P979171957751888080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001822 d * A325596 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364235.P979171957751888080

noncomputable section

/-- A364235: Expansion of Sum_{k>=0} x^(3*k+2) / (1 + x^(3*k+2))^2.

Offset 1, canonical program `A364235.P979171957751888080`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364235 (n : ℕ) : ℤ :=
  A364235.P979171957751888080.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364235.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366076.P7794237320208997332

`A001222(A360540(n+1))`
-/

namespace A366076.P7794237320208997332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A360540 (n + 1)).toNat

end

end A366076.P7794237320208997332

noncomputable section

/-- A366076: The number of prime factors of the largest divisor of n that is a cubefull number (A036966), counted with multiplicity.

Offset 1, canonical program `A366076.P7794237320208997332`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360540, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366076 (n : ℕ) : ℤ :=
  A366076.P7794237320208997332.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360540, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366076.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366146.P17064204824048131682

`A000203(A360540(n+1))`
-/

namespace A366146.P17064204824048131682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A360540 (n + 1)).toNat

end

end A366146.P17064204824048131682

noncomputable section

/-- A366146: The sum of divisors of the largest divisor of n that is a cubefull number (A036966).

Offset 1, canonical program `A366146.P17064204824048131682`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360540, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366146 (n : ℕ) : ℤ :=
  A366146.P17064204824048131682.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360540, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366146.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368247.P6979336993255888350

`A073184(A360540(n+1))`
-/

namespace A368247.P6979336993255888350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073184 (A360540 (n + 1)).toNat

end

end A368247.P6979336993255888350

noncomputable section

/-- A368247: The number of cubefree divisors of the cubefull part of n (A360540).

Offset 1, canonical program `A368247.P6979336993255888350`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073184, A360540, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368247 (n : ℕ) : ℤ :=
  A368247.P6979336993255888350.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A073184, A360540, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A368247.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369966.P13411901398628512597

`2*A067019(n+1)`
-/

namespace A369966.P13411901398628512597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067019 (n + 1)

end

end A369966.P13411901398628512597

noncomputable section

/-- A369966: Numbers of the form 4m+2 that have an even number of prime factors with multiplicity.

Offset 1, canonical program `A369966.P13411901398628512597`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067019, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369966 (n : ℕ) : ℤ :=
  A369966.P13411901398628512597.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067019, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369966.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372429.P2891483980674476118

`A029931(A000040(n+1))`
-/

namespace A372429.P2891483980674476118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A000040 (n + 1)).toNat

end

end A372429.P2891483980674476118

noncomputable section

/-- A372429: Sum of binary indices of prime(n). Sum of positions of ones in the reversed binary expansion of prime(n).

Offset 1, canonical program `A372429.P2891483980674476118`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029931, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372429 (n : ℕ) : ℤ :=
  A372429.P2891483980674476118.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029931, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372429.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373338.P13828395552644185944

`A078442(n+1)%2`
-/

namespace A373338.P13828395552644185944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078442 (n + 1)) 2

end

end A373338.P13828395552644185944

noncomputable section

/-- A373338: Characteristic function of A333242: a(n) = 1 if n is a term of A333242.

Offset 1, canonical program `A373338.P13828395552644185944`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078442, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373338 (n : ℕ) : ℤ :=
  A373338.P13828395552644185944.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078442, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373338.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374363.P4006744609650702107

`n-A374362(n)`
-/

namespace A374363.P4006744609650702107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A374362 n

end

end A374363.P4006744609650702107

noncomputable section

/-- A374363: a(n) is the greatest term t <= n of A005836 such that n - t also belongs to A005836.

Offset 0, canonical program `A374363.P4006744609650702107`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374362, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374363 (n : ℕ) : ℤ :=
  A374363.P4006744609650702107.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374362, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374363.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380444.P14151293279187532113

`A023890(n+1)+A005063(n+1)`
-/

namespace A380444.P14151293279187532113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (n + 1) + A005063 (n + 1)

end

end A380444.P14151293279187532113

noncomputable section

/-- A380444: Sum of the nonprimes dividing n and the squares of the primes dividing n.

Offset 1, canonical program `A380444.P14151293279187532113`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005063, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380444 (n : ℕ) : ℤ :=
  A380444.P14151293279187532113.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005063, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380444.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A381738.P3994728213039818688

`lt[A377879(n+1), 0]+1`
-/

namespace A381738.P3994728213039818688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377879 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A381738.P3994728213039818688

noncomputable section

/-- A381738: Numbers k such that k^2 is abundant.

Offset 1, canonical program `A381738.P3994728213039818688`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6800 terms. -/
def A381738 (n : ℕ) : ℤ :=
  (A381738.P3994728213039818688.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6800 terms. -/
def A381738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392171.P17248236630189717362

`A001615(A356193(n+1))`
-/

namespace A392171.P17248236630189717362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A356193 (n + 1)).toNat

end

end A392171.P17248236630189717362

noncomputable section

/-- A392171: The Dedekind psi function value of the smallest cubefull number that is a multiple of n.

Offset 1, canonical program `A392171.P17248236630189717362`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356193, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392171 (n : ℕ) : ℤ :=
  A392171.P17248236630189717362.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356193, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392171.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A393253.P9461804458729927362

`A059905(n)+A059906(n)`
-/

namespace A393253.P9461804458729927362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 n + A059906 n

end

end A393253.P9461804458729927362

noncomputable section

/-- A393253: Manhattan distance from 0 to n in perfect shuffle array of base-2 expansions.

Offset 0, canonical program `A393253.P9461804458729927362`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059905, A059906, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A393253 (n : ℕ) : ℤ :=
  A393253.P9461804458729927362.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059905, A059906, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A393253.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374625.P6516257093902246467

`A020988(A070939(n))-A000695(n)`
-/

namespace A374625.P6516257093902246467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020988 (A070939 n).toNat - A000695 n

end

end A374625.P6516257093902246467

noncomputable section

/-- A374625: In the binary expansion of n, expand bits 1 -> 01 and 0 -> 10.

Offset 0, canonical program `A374625.P6516257093902246467`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374625 (n : ℕ) : ℤ :=
  A374625.P6516257093902246467.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374625.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387944.P5952151805390949890

`n-∑[A106743(n+1)²]`
-/

namespace A387944.P5952151805390949890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106743 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A387944.P5952151805390949890

noncomputable section

/-- A387944: Number of squarefree composites <= n.

Offset 1, canonical program `A387944.P5952151805390949890`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387944 (n : ℕ) : ℤ :=
  A387944.P5952151805390949890.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392366.P7451516623562640753

`A056911(n+1)²`
-/

namespace A392366.P7451516623562640753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (n + 1) ^ 2

end

end A392366.P7451516623562640753

noncomputable section

/-- A392366: The odd squarefree numbers squared.

Offset 1, canonical program `A392366.P7451516623562640753`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056911, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392366 (n : ℕ) : ℤ :=
  A392366.P7451516623562640753.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056911, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392366.provenance : SequenceMachineLib.Provenance := .conditional

