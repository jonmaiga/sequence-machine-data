import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C044
import Seq.B000.C048
import Seq.B000.C049
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
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A378992.P17019904258361970119

`A011371(n)-A048881(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378992.P17019904258361970119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n - A048881 n

end

end A378992.P17019904258361970119

noncomputable section

/-- A378992: a(n) = A011371(n) - A048881(n); The exponent of the highest power of 2 dividing the n-th factorial minus the exponent of the highest power of 2 dividing n-th Catalan number.

Offset 0, canonical program `A378992.P17019904258361970119`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A011371(n)-A048881(n)` (program `A378992.P17019904258361970119`, by `A378992.P17019904258361970119.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A378992 (n : ℕ) : ℤ :=
  A378992.P17019904258361970119.a n

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A011371(n)-A048881(n)` (program `A378992.P17019904258361970119`, by `A378992.P17019904258361970119.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A378992.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A375337.P16252604061458685989

`C(A000040(n+1), A000010(A000040(n+1)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A375337.P16252604061458685989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 1)).toNat (A000010 (A000040 (n + 1) + 1).toNat).toNat

end

end A375337.P16252604061458685989

noncomputable section

/-- A375337: a(n) = binomial(prime(n), phi(prime(n) + 1)).

Offset 1, canonical program `A375337.P16252604061458685989`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(A000040(n+1), A000010(A000040(n+1)+1))` (program `A375337.P16252604061458685989`, by `A375337.P16252604061458685989.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A375337 (n : ℕ) : ℤ :=
  (A375337.P16252604061458685989.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(A000040(n+1), A000010(A000040(n+1)+1))` (program `A375337.P16252604061458685989`, by `A375337.P16252604061458685989.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A375337.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A377674.P170343768578475093

`A000010((n+1)^(n+1)+n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A377674.P170343768578475093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n + 1) ^ (n + 1) + (n + 1))

end

end A377674.P170343768578475093

noncomputable section

/-- A377674: a(n) = phi(n^n + n) where phi is the Euler totient function.

Offset 1, canonical program `A377674.P170343768578475093`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010((n+1)^(n+1)+n+1)` (program `A377674.P170343768578475093`, by `A377674.P170343768578475093.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A377674 (n : ℕ) : ℤ :=
  A377674.P170343768578475093.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010((n+1)^(n+1)+n+1)` (program `A377674.P170343768578475093`, by `A377674.P170343768578475093.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A377674.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A377678.P8224559732058865124

`A000010((n+2)^(n+2)-(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A377678.P8224559732058865124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n + 2) ^ (n + 2) - (n + 2))

end

end A377678.P8224559732058865124

noncomputable section

/-- A377678: a(n) = phi(n^n - n) where phi is the Euler totient function.

Offset 2, canonical program `A377678.P8224559732058865124`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010((n+2)^(n+2)-(n+2))` (program `A377678.P8224559732058865124`, by `A377678.P8224559732058865124.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A377678 (n : ℕ) : ℤ :=
  A377678.P8224559732058865124.a (n - 2)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010((n+2)^(n+2)-(n+2))` (program `A377678.P8224559732058865124`, by `A377678.P8224559732058865124.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A377678.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A377985.P6249672595049724567

`2*(n+1)-A000010(A003961(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A377985.P6249672595049724567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A000010 (A003961 (n + 1)).toNat

end

end A377985.P6249672595049724567

noncomputable section

/-- A377985: a(n) = 2*n - phi(A003961(n)), where phi is Euler totient function and A003961 is fully multiplicative function with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A377985.P6249672595049724567`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)-A000010(A003961(n+1))` (program `A377985.P6249672595049724567`, by `A377985.P6249672595049724567.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A377985 (n : ℕ) : ℤ :=
  A377985.P6249672595049724567.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)-A000010(A003961(n+1))` (program `A377985.P6249672595049724567`, by `A377985.P6249672595049724567.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A377985.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A378986.P11070086807176810028

`2*A000010(2*(n+1))-2*(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378986.P11070086807176810028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (2 * (n + 1)) - (2 * (n + 1) : ℤ)

end

end A378986.P11070086807176810028

noncomputable section

/-- A378986: a(n) = 2*phi(2*n) - 2*n, where phi is the Euler totient function.

Offset 1, canonical program `A378986.P11070086807176810028`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000010(2*(n+1))-2*(n+1)` (program `A378986.P11070086807176810028`, by `A378986.P11070086807176810028.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A378986 (n : ℕ) : ℤ :=
  A378986.P11070086807176810028.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000010(2*(n+1))-2*(n+1)` (program `A378986.P11070086807176810028`, by `A378986.P11070086807176810028.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A378986.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A382997.P10898860162257266095

`-∑{d}[n+1, A000010((n+1)/#)*(-(n+1))^#]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A382997.P10898860162257266095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (-(n + 1 : ℤ)) ^ d)

end

end A382997.P10898860162257266095

noncomputable section

/-- A382997: a(n) = -Sum_{d|n} phi(n/d) * (-n)^d.

Offset 1, canonical program `A382997.P10898860162257266095`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-∑{d}[n+1, A000010((n+1)/#)*(-(n+1))^#]` (program `A382997.P10898860162257266095`, by `A382997.P10898860162257266095.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A382997 (n : ℕ) : ℤ :=
  A382997.P10898860162257266095.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-∑{d}[n+1, A000010((n+1)/#)*(-(n+1))^#]` (program `A382997.P10898860162257266095`, by `A382997.P10898860162257266095.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A382997.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A386624.P18218166514994204100

`∑{d}[n+1, A000203(#)*A000010(#)*A008683((n+1)/#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A386624.P18218166514994204100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A000010 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A386624.P18218166514994204100

noncomputable section

/-- A386624: a(n) = Sum_{d|n} sigma(d) * phi(d) * mu(n/d).

Offset 1, canonical program `A386624.P18218166514994204100`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, A000203(#)*A000010(#)*A008683((n+1)/#)]` (program `A386624.P18218166514994204100`, by `A386624.P18218166514994204100.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A386624 (n : ℕ) : ℤ :=
  A386624.P18218166514994204100.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, A000203(#)*A000010(#)*A008683((n+1)/#)]` (program `A386624.P18218166514994204100`, by `A386624.P18218166514994204100.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A386624.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A388978.P5887686069161317170

`A326128(n+1)*A389077(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388978.P5887686069161317170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326128 (n + 1) * A389077 (n + 1)

end

end A388978.P5887686069161317170

noncomputable section

/-- A388978: a(n) = A326128(n) * A389077(n).

Offset 1, canonical program `A388978.P5887686069161317170`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A326128(n+1)*A389077(n+1)` (program `A388978.P5887686069161317170`, by `A388978.P5887686069161317170.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A388978 (n : ℕ) : ℤ :=
  A388978.P5887686069161317170.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A326128(n+1)*A389077(n+1)` (program `A388978.P5887686069161317170`, by `A388978.P5887686069161317170.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A388978.provenance : SequenceMachineLib.Provenance := .verified

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

/-! ## A376132.P3293630522299707843

`A000295(A376116(n+2)-A376116(n+1)+1)`
-/

namespace A376132.P3293630522299707843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000295 (A376116 (n + 2) - A376116 (n + 1) + 1).toNat

end

end A376132.P3293630522299707843

noncomputable section

/-- A376132: First differences of A376131.

Offset 1, canonical program `A376132.P3293630522299707843`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376132 (n : ℕ) : ℤ :=
  A376132.P3293630522299707843.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376132.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A376419.P863403549623483894

`A000040(1+n+1)*A024451(n)-A024451(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A376419.P863403549623483894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (1 + (n + 1)) * A024451 n - A024451 (n + 1)

end

end A376419.P863403549623483894

noncomputable section

/-- A376419: a(n) = prime(1+n)*A024451(n-1) - A024451(n), where A024451(n) is the numerator of Sum_{i = 1..n} 1/prime(i).

Offset 1, canonical program `A376419.P863403549623483894`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376419 (n : ℕ) : ℤ :=
  A376419.P863403549623483894.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376419.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A376482.P11893054064687087602

`A000010(2^(2*(n+1))+2^(n+1)+1)/(6*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A376482.P11893054064687087602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (2 ^ (2 * (n + 1)) + 2 ^ (n + 1) + 1) : ℚ) / (6 * (n + 1) : ℚ)

end

end A376482.P11893054064687087602

noncomputable section

/-- A376482: a(n) = phi( 2^(2*n) + 2^n + 1 ) / (6*n), where phi() is Euler's totient function (A000010).

Offset 1, canonical program `A376482.P11893054064687087602`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376482 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A376482.P11893054064687087602.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376482.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378086.P6542279341321239931

`A057627(A000040(n+1))`
-/

namespace A378086.P6542279341321239931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057627 (A000040 (n + 1)).toNat

end

end A378086.P6542279341321239931

noncomputable section

/-- A378086: Number of nonsquarefree numbers < prime(n).

Offset 1, canonical program `A378086.P6542279341321239931`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378086 (n : ℕ) : ℤ :=
  A378086.P6542279341321239931.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378086.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378221.P4388743736498616945

`A046692(A003961(n+1))`
-/

namespace A378221.P4388743736498616945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046692 (A003961 (n + 1)).toNat

end

end A378221.P4388743736498616945

noncomputable section

/-- A378221: Dirichlet inverse of sigma(A003961(n)), where A003961 is fully multiplicative function with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A378221.P4388743736498616945`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378221 (n : ℕ) : ℤ :=
  A378221.P4388743736498616945.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378221.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378514.P5051623705849836862

`ceil((2^(n+1)-1-A000010(2^(n+1)-1))/2)`
-/

namespace A378514.P5051623705849836862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 ^ (n + 1) : ℤ) - 1 - A000010 (2 ^ (n + 1) - 1) : ℚ) / 2⌉

end

end A378514.P5051623705849836862

noncomputable section

/-- A378514: Number of partitions of 2^n-1 into two summands >= 0 having a common divisor > 1.

Offset 1, canonical program `A378514.P5051623705849836862`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378514 (n : ℕ) : ℤ :=
  A378514.P5051623705849836862.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378514.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378521.P3747435219911459199

`∑{d}[n+1, A008683((n+1)/#)*A048673(#)]`
-/

namespace A378521.P3747435219911459199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A048673 d

end

end A378521.P3747435219911459199

noncomputable section

/-- A378521: Möbius transform of A048673.

Offset 1, canonical program `A378521.P3747435219911459199`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378521 (n : ℕ) : ℤ :=
  A378521.P3747435219911459199.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378521.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378606.P1824987261939307766

`∑{d}[n+1, A008683(#)*A349387((n+1)/#)]`
-/

namespace A378606.P1824987261939307766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A349387 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378606.P1824987261939307766

noncomputable section

/-- A378606: Dirichlet convolution of A046692 and A003961, where A046692 is the Dirichlet inverse of sigma, and A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A378606.P1824987261939307766`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378606 (n : ℕ) : ℤ :=
  A378606.P1824987261939307766.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378606.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378619.P2385869951809444344

`n+1-A070321(n+1)`
-/

namespace A378619.P2385869951809444344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A070321 (n + 1)

end

end A378619.P2385869951809444344

noncomputable section

/-- A378619: Distance between n and the greatest squarefree number <= n.

Offset 1, canonical program `A378619.P2385869951809444344`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378619 (n : ℕ) : ℤ :=
  A378619.P2385869951809444344.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378619.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378747.P2612506612617413863

`A048673(n+1)-A001065(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378747.P2612506612617413863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1) - A001065 (n + 1)

end

end A378747.P2612506612617413863

noncomputable section

/-- A378747: a(n) = A048673(n) - A001065(n).

Offset 1, canonical program `A378747.P2612506612617413863`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378747 (n : ℕ) : ℤ :=
  A378747.P2612506612617413863.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378747.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378751.P13164053895739909960

`A000203(n+1)-A048673(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378751.P13164053895739909960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A048673 (n + 1)

end

end A378751.P13164053895739909960

noncomputable section

/-- A378751: a(n) = A000203(n) - A048673(n).

Offset 1, canonical program `A378751.P13164053895739909960`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378751 (n : ℕ) : ℤ :=
  A378751.P13164053895739909960.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378751.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378756.P12684276613703756942

`∑{d}[n+1, A046692(#)*A005187((n+1)/#)]`
-/

namespace A378756.P12684276613703756942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A005187 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378756.P12684276613703756942

noncomputable section

/-- A378756: Dirichlet convolution of A046692 and A005187, where A046692 is the Dirichlet inverse of sigma.

Offset 1, canonical program `A378756.P12684276613703756942`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378756 (n : ℕ) : ℤ :=
  A378756.P12684276613703756942.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378756.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378765.P1529449060136688071

`A011371(n)%10`
-/

namespace A378765.P1529449060136688071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011371 n) 10

end

end A378765.P1529449060136688071

noncomputable section

/-- A378765: (Exponent of the highest power of 2 that divides n!), reduced modulo 10.

Offset 0, canonical program `A378765.P1529449060136688071`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378765 (n : ℕ) : ℤ :=
  A378765.P1529449060136688071.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378765.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378995.P10105459353425668716

`A062731(n+1)/A378994(n+1)`
-/

namespace A378995.P10105459353425668716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062731 (n + 1) : ℚ) / (A378994 (n + 1) : ℚ)

end

end A378995.P10105459353425668716

noncomputable section

/-- A378995: Numerator of sigma(2*n)/(2*n).

Offset 1, canonical program `A378995.P10105459353425668716`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378995 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A378995.P10105459353425668716.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378995.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379481.P9717699503514180419

`A016754(A048673(n+1)-1)`
-/

namespace A379481.P9717699503514180419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (A048673 (n + 1) - 1).toNat

end

end A379481.P9717699503514180419

noncomputable section

/-- A379481: Square of prime-shifted n, or equally, n squared, then prime-shifted one step towards larger primes.

Offset 1, canonical program `A379481.P9717699503514180419`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379481 (n : ℕ) : ℤ :=
  A379481.P9717699503514180419.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379481.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380161.P11294645984776540590

`A000010(A055231(n+1))`
-/

namespace A380161.P11294645984776540590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A055231 (n + 1)).toNat

end

end A380161.P11294645984776540590

noncomputable section

/-- A380161: a(n) is the value of the Euler totient function when applied to the powerfree part of n.

Offset 1, canonical program `A380161.P11294645984776540590`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380161 (n : ℕ) : ℤ :=
  A380161.P11294645984776540590.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380161.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380162.P3923099972505538438

`A000010(A008833(n+1))`
-/

namespace A380162.P3923099972505538438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A008833 (n + 1)).toNat

end

end A380162.P3923099972505538438

noncomputable section

/-- A380162: a(n) is the value of the Euler totient function when applied to the largest square dividing n.

Offset 1, canonical program `A380162.P3923099972505538438`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380162 (n : ℕ) : ℤ :=
  A380162.P3923099972505538438.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380162.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380163.P2401699286330584637

`A000010(A007913(n+1))`
-/

namespace A380163.P2401699286330584637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A007913 (n + 1)).toNat

end

end A380163.P2401699286330584637

noncomputable section

/-- A380163: a(n) is the value of the Euler totient function when applied to the squarefree part of n.

Offset 1, canonical program `A380163.P2401699286330584637`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380163 (n : ℕ) : ℤ :=
  A380163.P2401699286330584637.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380163.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380500.P102637748916631371

`A000010(A000010(A000040(row(n)-col(n)+1)^col(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A380500.P102637748916631371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (A000040 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat ^ SequenceMachineLib.triCol n).toNat).toNat

end

end A380500.P102637748916631371

noncomputable section

/-- A380500: Table T(n,k) = phi(phi(prime(n)^k)), n >= 1, k >= 0, read by upwards antidiagonals, where phi = A000010.

Offset 1, canonical program `A380500.P102637748916631371`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(A000010(A000040(row(n)-col(n)+1)^col(n)))` (program `A380500.P102637748916631371`, by `A380500.P102637748916631371.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A380500 (n : ℕ) : ℤ :=
  A380500.P102637748916631371.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(A000010(A000040(row(n)-col(n)+1)^col(n)))` (program `A380500.P102637748916631371`, by `A380500.P102637748916631371.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A380500.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A381841.P11592063328882471830

`A136495(n+1)+A136496(n+1)`
-/

namespace A381841.P11592063328882471830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136495 (n + 1) + A136496 (n + 1)

end

end A381841.P11592063328882471830

noncomputable section

/-- A381841: Position of the n-th occurrence of the digit 3 in A105083(n-1) for n>=1.

Offset 1, canonical program `A381841.P11592063328882471830`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381841 (n : ℕ) : ℤ :=
  A381841.P11592063328882471830.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381841.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382123.P171162339606438149

`A000203(n+1)*A062731(n+1)/3`
-/

namespace A382123.P171162339606438149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) * A062731 (n + 1) : ℚ) / 3

end

end A382123.P171162339606438149

noncomputable section

/-- A382123: a(n) = sigma(n)*sigma(2*n)/3 for n >= 1.

Offset 1, canonical program `A382123.P171162339606438149`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382123 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382123.P171162339606438149.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382123.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384716.P11863616275653796637

`A000010(A061537(n+1))`
-/

namespace A384716.P11863616275653796637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A061537 (n + 1)).toNat

end

end A384716.P11863616275653796637

noncomputable section

/-- A384716: The totient of the product of unitary divisors of n.

Offset 1, canonical program `A384716.P11863616275653796637`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384716 (n : ℕ) : ℤ :=
  A384716.P11863616275653796637.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384716.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384763.P13786111190154472342

`A000010(n+1)^(A034444(n+1)/2)`
-/

namespace A384763.P13786111190154472342
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℝ) ^ ((A034444 (n + 1) : ℚ) / 2 : ℝ)

end

end A384763.P13786111190154472342

noncomputable section

/-- A384763: Product of the Euler totients of the unitary divisors of n.

Offset 1, canonical program `A384763.P13786111190154472342`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384763 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A384763.P13786111190154472342.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384763.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385134.P5150424696469773070

`(n+1)*∑{d}[n+1, A307430(#)/#]`
-/

namespace A385134.P5150424696469773070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∑ d ∈ Nat.divisors (f1 n), (A307430 d : ℚ) / (d : ℚ))

end

end A385134.P5150424696469773070

noncomputable section

/-- A385134: The sum of divisors d of n such that n/d is a biquadratefree number (A046100).

Offset 1, canonical program `A385134.P5150424696469773070`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385134 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A385134.P5150424696469773070.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385134.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A390726.P4831482524478559460

`n!*A390276(n)`
-/

namespace A390726.P4831482524478559460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A390276 n

end

end A390726.P4831482524478559460

noncomputable section

/-- A390726: a(n) = (-1)^n*Stirling1(2*n, n)*(2*n)!/(n+1)!.

Offset 0, canonical program `A390726.P4831482524478559460`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390726 (n : ℕ) : ℤ :=
  A390726.P4831482524478559460.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390726.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A394383.P17827104241650237715

`A006530(n+1)^A052126(n+1)`
-/

namespace A394383.P17827104241650237715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 1) : ℚ) ^ (A052126 (n + 1) : ℤ)

end

end A394383.P17827104241650237715

noncomputable section

/-- A394383: a(n) = f^(n/f), where f is the largest prime factor of n.

Offset 1, canonical program `A394383.P17827104241650237715`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394383 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A394383.P17827104241650237715.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394383.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A376762.P14200299004774236761

`A210497(n+1)-A020900(n+2)+n+1`
-/

namespace A376762.P14200299004774236761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210497 (n + 1) - A020900 (n + 2) + (n + 1 : ℤ)

end

end A376762.P14200299004774236761

noncomputable section

/-- A376762: Number of composite numbers c in the range prime(n) < c <= 2*prime(n+1).

Offset 1, canonical program `A376762.P14200299004774236761`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376762 (n : ℕ) : ℤ :=
  A376762.P14200299004774236761.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376762.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377642.P10920870877473794249

`A000079(n)*A053601(n)`
-/

namespace A377642.P10920870877473794249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A053601 n

end

end A377642.P10920870877473794249

noncomputable section

/-- A377642: a(n) = (1/(n-1)!) * Product_{i=1..n-1} (2^n-2^i).

Offset 1, canonical program `A377642.P10920870877473794249`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377642 (n : ℕ) : ℤ :=
  A377642.P10920870877473794249.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377642.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A380160.P4546654920462723161

`A000010(A057521(n+1))`
-/

namespace A380160.P4546654920462723161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A057521 (n + 1)).toNat

end

end A380160.P4546654920462723161

noncomputable section

/-- A380160: a(n) is the value of the Euler totient function when applied to the powerful part of n.

Offset 1, canonical program `A380160.P4546654920462723161`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380160 (n : ℕ) : ℤ :=
  A380160.P4546654920462723161.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380160.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A381744.P631473053197290475

`∑{#}[2*n, (-1)^#*A006013(#)*A006013(2*n-#)]`
-/

namespace A381744.P631473053197290475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1) ^ k * A006013 k * A006013 (2 * n - k)

end

end A381744.P631473053197290475

noncomputable section

/-- A381744: Expansion of exp( Sum_{k>=1} binomial(6*k-1,2*k) * x^k/k ).

Offset 0, canonical program `A381744.P631473053197290475`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381744 (n : ℕ) : ℤ :=
  A381744.P631473053197290475.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A381744.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384050.P7808103291810137926

`A000010(A055231(n+1))*A057521(n+1)`
-/

namespace A384050.P7808103291810137926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A055231 (n + 1)).toNat * A057521 (n + 1)

end

end A384050.P7808103291810137926

noncomputable section

/-- A384050: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is a powerful number.

Offset 1, canonical program `A384050.P7808103291810137926`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384050 (n : ℕ) : ℤ :=
  A384050.P7808103291810137926.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384050.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A391992.P2082228329695318765

`A391991(C(2*n+1, 2)+n)`
-/

namespace A391992.P2082228329695318765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391991 (Nat.choose (2 * n + 1) 2 + n)

end

end A391992.P2082228329695318765

noncomputable section

/-- A391992: Number of digits in the decimal expansion of binomial(2*n,n).

Offset 0, canonical program `A391992.P2082228329695318765`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391992 (n : ℕ) : ℤ :=
  A391992.P2082228329695318765.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A391992.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A394178.P8912689448193025780

`(A079904(C(row(n)+1, 2)+col(n))-1)*A054521(C(row(n)+1, 2)+col(n)+1)`
-/

namespace A394178.P8912689448193025780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A079904 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) - 1) * A054521 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + (SequenceMachineLib.triCol n + 1))

end

end A394178.P8912689448193025780

noncomputable section

/-- A394178: Triangle read by rows: T(n, k) is the Frobenius number for n and k if n and k coprime, and 0 otherwise, for 1 <= k <= n.

Offset 1, canonical program `A394178.P8912689448193025780`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394178 (n : ℕ) : ℤ :=
  A394178.P8912689448193025780.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394178.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A402144.P11291618821994640204

`A000670(n+1)-A000110(n+1)`
-/

namespace A402144.P11291618821994640204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (n + 1) - A000110 (n + 1)

end

end A402144.P11291618821994640204

noncomputable section

/-- A402144: Number of finite sequences of length n that cover an initial interval of positive integers but do not have 1-based restricted growth.

Offset 1, canonical program `A402144.P11291618821994640204`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A402144 (n : ℕ) : ℤ :=
  A402144.P11291618821994640204.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A402144.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A402333.P16742404134170930567

`A000670(n+3)-(n+3)*A000670(n+2)-C(n+3, 2)*A000670(n+1)`
-/

namespace A402333.P16742404134170930567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (n + 3) - (n + 3 : ℤ) * A000670 (n + 2) - (Nat.choose (n + 3) 2 : ℤ) * A000670 (n + 1)

end

end A402333.P16742404134170930567

noncomputable section

/-- A402333: a(n) = 1 + Sum_{k=1..n} binomial(n+3,k) * a(n-k).

Offset 0, canonical program `A402333.P16742404134170930567`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A402333 (n : ℕ) : ℤ :=
  A402333.P16742404134170930567.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A402333.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A375349.P12087631011185153804

`A000035(A004709(n+1))`
-/

namespace A375349.P12087631011185153804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A004709 (n + 1)).toNat

end

end A375349.P12087631011185153804

noncomputable section

/-- A375349: a(n) is the parity of the n-th cubefree number.

Offset 1, canonical program `A375349.P12087631011185153804`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375349 (n : ℕ) : ℤ :=
  A375349.P12087631011185153804.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375349.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375510.P9338399749928913470

`A185725(1+n)-A068344(n)`
-/

namespace A375510.P9338399749928913470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185725 (1 + n) - A068344 n

end

end A375510.P9338399749928913470

noncomputable section

/-- A375510: Fringe indices of Zernike polynomials.

Offset 0, canonical program `A375510.P9338399749928913470`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375510 (n : ℕ) : ℤ :=
  A375510.P9338399749928913470.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375510.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375708.P8231475400569183047

`A024619(n+1)-A361102(n+1)`
-/

namespace A375708.P8231475400569183047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1) - A361102 (n + 1)

end

end A375708.P8231475400569183047

noncomputable section

/-- A375708: First differences of non-prime-powers (exclusive, so 1 is not a prime-power).

Offset 1, canonical program `A375708.P8231475400569183047`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375708 (n : ℕ) : ℤ :=
  A375708.P8231475400569183047.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375708.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376216.P15355088566132048219

`lt[2, A336643(n+1)]+1`
-/

namespace A376216.P15355088566132048219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A376216.P15355088566132048219

noncomputable section

/-- A376216: Numbers whose sum of powerful divisors (including 1) is even.

Offset 1, canonical program `A376216.P15355088566132048219`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7718 terms. -/
def A376216 (n : ℕ) : ℤ :=
  (A376216.P15355088566132048219.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7718 terms. -/
def A376216.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376252.P12745263628390165312

`A061601(n)%(1+n)`
-/

namespace A376252.P12745263628390165312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061601 n) (1 + n : ℤ)

end

end A376252.P12745263628390165312

noncomputable section

/-- A376252: Concatenated (n+1)||n modulo n.

Offset 1, canonical program `A376252.P12745263628390165312`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376252 (n : ℕ) : ℤ :=
  A376252.P12745263628390165312.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376365.P17778813821740377865

`A001221(A004709(n+1))`
-/

namespace A376365.P17778813821740377865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A004709 (n + 1)).toNat

end

end A376365.P17778813821740377865

noncomputable section

/-- A376365: The number of distinct prime factors of the cubefree numbers.

Offset 1, canonical program `A376365.P17778813821740377865`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376365 (n : ℕ) : ℤ :=
  A376365.P17778813821740377865.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376365.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376652.P17294730468892707957

`A065890(A049579(1+n))`
-/

namespace A376652.P17294730468892707957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (A049579 (1 + n)).toNat

end

end A376652.P17294730468892707957

noncomputable section

/-- A376652: Points of downward concavity in the sequence of composite numbers (A002808).

Offset 1, canonical program `A376652.P17294730468892707957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8729 terms. -/
def A376652 (n : ℕ) : ℤ :=
  A376652.P17294730468892707957.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8729 terms. -/
def A376652.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377121.P11187764455851854479

`record[(n+1)/A090387(A000010(n+1))]`
-/

namespace A377121.P11187764455851854479
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A090387 (A000010 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A377121.P11187764455851854479

noncomputable section

/-- A377121: Numbers whose totient is refactorable.

Offset 1, canonical program `A377121.P11187764455851854479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377121 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A377121.P11187764455851854479.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377404.P15784403255783113757

`n-A265263(n)`
-/

namespace A377404.P15784403255783113757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A265263 n

end

end A377404.P15784403255783113757

noncomputable section

/-- A377404: In the binary expansion of n, replace the first, third, fifth, etc. 1's by 0's.

Offset 0, canonical program `A377404.P15784403255783113757`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265263, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377404 (n : ℕ) : ℤ :=
  A377404.P15784403255783113757.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265263, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377404.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A377723.P18058257145428900685

`comp[A091377(1+n)-1]+1`
-/

namespace A377723.P18058257145428900685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091377 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A377723.P18058257145428900685

noncomputable section

/-- A377723: Numbers whose number of prime factors (counted with repetition) is greater than or equal to its smallest prime factor.

Offset 1, canonical program `A377723.P18058257145428900685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377723 (n : ℕ) : ℤ :=
  (A377723.P18058257145428900685.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377783.P9497838708436341752

`A120327(A000040(n+1))`
-/

namespace A377783.P9497838708436341752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (A000040 (n + 1)).toNat

end

end A377783.P9497838708436341752

noncomputable section

/-- A377783: Least nonsquarefree number > prime(n).

Offset 1, canonical program `A377783.P9497838708436341752`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120327, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377783 (n : ℕ) : ℤ :=
  A377783.P9497838708436341752.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120327, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377783.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378033.P4800488342197277209

`A162966(∑[A087049(n+1)])`
-/

namespace A378033.P4800488342197277209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A378033.P4800488342197277209

noncomputable section

/-- A378033: Greatest nonsquarefree number <= n, or 1 if there is none (the case n <= 3).

Offset 1, canonical program `A378033.P4800488342197277209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378033 (n : ℕ) : ℤ :=
  A378033.P4800488342197277209.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378033.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378145.P8194558040489325684

`abs(Δ[(xor(1, n)-n)*A106566(n)])`
-/

namespace A378145.P8194558040489325684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 1 n : ℤ) - (n : ℤ)) * A106566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A378145.P8194558040489325684

noncomputable section

/-- A378145: Riordan triangle (1 + x * C(x), x * C(x)), where C(x) is g.f. of A000108.

Offset 0, canonical program `A378145.P8194558040489325684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378145 (n : ℕ) : ℤ :=
  A378145.P8194558040489325684.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378145.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378211.P10174579376731078055

`2*A046692(n+1)-A055615(n+1)`
-/

namespace A378211.P10174579376731078055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046692 (n + 1) - A055615 (n + 1)

end

end A378211.P10174579376731078055

noncomputable section

/-- A378211: Dirichlet inverse of A191161, hypersigma variant 2.

Offset 1, canonical program `A378211.P10174579376731078055`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378211 (n : ℕ) : ℤ :=
  A378211.P10174579376731078055.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378369.P11844139312418909594

`A120327(1+n)-(1+n)`
-/

namespace A378369.P11844139312418909594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120327 (1 + n) - (1 + n : ℤ)

end

end A378369.P11844139312418909594

noncomputable section

/-- A378369: Distance between n and the least nonsquarefree number >= n.

Offset 1, canonical program `A378369.P11844139312418909594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A378369 (n : ℕ) : ℤ :=
  A378369.P11844139312418909594.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A378369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378508.P3418776197754287018

`lt[0, char[A000010(A000010(n+1))]]`
-/

namespace A378508.P3418776197754287018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A378508.P3418776197754287018

noncomputable section

/-- A378508: Values taken by phi(phi(m)) (A010554).

Offset 1, canonical program `A378508.P3418776197754287018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1260 terms. -/
def A378508 (n : ℕ) : ℤ :=
  (A378508.P3418776197754287018.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1260 terms. -/
def A378508.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378901.P7411796872779903862

`col(C(2, A072047(n+1)))`
-/

namespace A378901.P7411796872779903862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (Nat.choose 2 (A072047 (n + 1)).toNat)

end

end A378901.P7411796872779903862

noncomputable section

/-- A378901: a(n) = 0 if s(n) is nonprime, a(n) = 1 if s(n) is prime, where s = A005117.

Offset 1, canonical program `A378901.P7411796872779903862`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378901 (n : ℕ) : ℤ :=
  (A378901.P7411796872779903862.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378901.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378983.P7472048348520994614

`lt[A378982(n+1), 1]+1`
-/

namespace A378983.P7472048348520994614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378982 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A378983.P7472048348520994614

noncomputable section

/-- A378983: Numbers k such that (A003961(k)-2*k) divides (A003961(k)-(1+sigma(k))), where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and sigma is the sum of divisors function.

Offset 1, canonical program `A378983.P7472048348520994614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 549 terms. -/
def A378983 (n : ℕ) : ℤ :=
  (A378983.P7472048348520994614.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 549 terms. -/
def A378983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379005.P1029067556037355337

`A071520(2^val(n+1, 2)*3^val(n+1, 3)*5^val(n+1, 5))`
-/

namespace A379005.P1029067556037355337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071520 (2 ^ SequenceMachineLib.valuation (n + 1) 2 * 3 ^ SequenceMachineLib.valuation (n + 1) 3 * 5 ^ SequenceMachineLib.valuation (n + 1) 5)

end

end A379005.P1029067556037355337

noncomputable section

/-- A379005: Lexicographically earliest infinite sequence such that a(i) = a(j) => v_2(i) = v_2(j), v_3(i) = v_3(j) and v_5(i) = v_5(j), for all i, j, where v_2 (A007814), v_3 (A007949) and v_5 (A112765) give the 2-, 3- and 5-adic valuations of n respectively.

Offset 1, canonical program `A379005.P1029067556037355337`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379005 (n : ℕ) : ℤ :=
  A379005.P1029067556037355337.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379109.P7269606756069471216

`∑{d}[n+1, A046692(#)*A336923((n+1)/#)]`
-/

namespace A379109.P7269606756069471216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A336923 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A379109.P7269606756069471216

noncomputable section

/-- A379109: Dirichlet convolution of A046692 (inverse of sigma) with A336923, where A336923(n) = 1 if sigma(2n) - sigma(n) is a power of 2, otherwise 0.

Offset 1, canonical program `A379109.P7269606756069471216`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336923, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379109 (n : ℕ) : ℤ :=
  A379109.P7269606756069471216.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336923, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379109.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379227.P12758761543414997552

`C(n-A379225(1+n), n)`
-/

namespace A379227.P12758761543414997552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n : ℤ) - A379225 (1 + n)).toNat n

end

end A379227.P12758761543414997552

noncomputable section

/-- A379227: a(n) = 1 if A113177(n) is a multiple of 5, otherwise 0, where A113177 is fully additive with a(p) = Fibonacci(p).

Offset 1, canonical program `A379227.P12758761543414997552`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379227 (n : ℕ) : ℤ :=
  (A379227.P12758761543414997552.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379227.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379238.P6108513974028893075

`∑{p}[A286385(n+1), C(#, A286385(n+1))]`
-/

namespace A379238.P6108513974028893075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286385 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.choose p (A286385 (n + 1)).toNat

end

end A379238.P6108513974028893075

noncomputable section

/-- A379238: a(n) = 1 if A003961(n)-sigma(n) is prime, otherwise 0, where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and sigma is the sum of divisors function.

Offset 1, canonical program `A379238.P6108513974028893075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A379238 (n : ℕ) : ℤ :=
  (A379238.P6108513974028893075.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A379238.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379476.P3287168906195092096

`A000007(C(2, A326057(n+1)))`
-/

namespace A379476.P3287168906195092096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Nat.choose 2 (A326057 (n + 1)).toNat)

end

end A379476.P3287168906195092096

noncomputable section

/-- A379476: a(n) = 1 if A326057(n) > 1, otherwise 0, where A326057(n) = gcd(A003961(n)-2n, A003961(n)-sigma(n)).

Offset 1, canonical program `A379476.P3287168906195092096`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379476 (n : ℕ) : ℤ :=
  A379476.P3287168906195092096.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379584.P4296113022240431250

`gcd(A034386(n), A045948(n+1))*A045948(n+1)`
-/

namespace A379584.P4296113022240431250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A034386 n) (A045948 (n + 1)) : ℤ) * A045948 (n + 1)

end

end A379584.P4296113022240431250

noncomputable section

/-- A379584: Denominators of the partial sums of the reciprocals of the powerful part function (A057521).

Offset 1, canonical program `A379584.P4296113022240431250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A379584 (n : ℕ) : ℤ :=
  A379584.P4296113022240431250.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. -/
def A379584.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379590.P15793062078525320125

`∑{d}[1+n, A332219(#)]`
-/

namespace A379590.P15793062078525320125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A332219 d

end

end A379590.P15793062078525320125

noncomputable section

/-- A379590: a(n) is the number of prime divisors d of n such that 2^d - 1 is prime.

Offset 1, canonical program `A379590.P15793062078525320125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A379590 (n : ℕ) : ℤ :=
  A379590.P15793062078525320125.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A379590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379822.P7224189513868805994

`A094527(n)+A122366(n)-A062344(n)`
-/

namespace A379822.P7224189513868805994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 n + (A122366 n - A062344 n)

end

end A379822.P7224189513868805994

noncomputable section

/-- A379822: Triangle read by rows: T(n, k) is the number of walks of length n on the Z X Z grid with unit steps in all four directions (NSWE) starting at (0, 0), and ending on the vertical line x = 0 if k = 0, or on the line x = k or x = -(n + 1 - k) if k > 0.

Offset 0, canonical program `A379822.P7224189513868805994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379822 (n : ℕ) : ℤ :=
  A379822.P7224189513868805994.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380113.P2900189167819423770

`A110608(n)/A132749(n)`
-/

namespace A380113.P2900189167819423770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110608 n : ℚ) / (A132749 n : ℚ)

end

end A380113.P2900189167819423770

noncomputable section

/-- A380113: Triangle read by rows: The inverse matrix of the central factorials A370707, row n normalized by (-1)^(n - k)*A370707(n, n).

Offset 0, canonical program `A380113.P2900189167819423770`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7786 terms. -/
def A380113 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A380113.P2900189167819423770.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7786 terms. -/
def A380113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380548.P7650037946524293487

`A125585(C(n+1+n+1-1, 2)+n+1)`
-/

namespace A380548.P7650037946524293487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125585 (Nat.choose ((n + 1 + (n + 1) : ℤ) - 1).toNat 2 + (n + 1))

end

end A380548.P7650037946524293487

noncomputable section

/-- A380548: Main diagonal of A125585.

Offset 1, canonical program `A380548.P7650037946524293487`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A125585, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380548 (n : ℕ) : ℤ :=
  A380548.P7650037946524293487.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A125585, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380548.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380857.P17828759353417711251

`A126706(n+1)²`
-/

namespace A380857.P17828759353417711251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1) ^ 2

end

end A380857.P17828759353417711251

noncomputable section

/-- A380857: Squares of numbers that are neither squarefree nor prime powers.

Offset 1, canonical program `A380857.P17828759353417711251`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380857 (n : ℕ) : ℤ :=
  A380857.P17828759353417711251.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126706, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380857.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380864.P17847612334023733778

`A098617(2*n)`
-/

namespace A380864.P17847612334023733778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098617 (2 * n)

end

end A380864.P17847612334023733778

noncomputable section

/-- A380864: a(n) = [x^n] sqrt(1 - 4*x)/(1 - 8*x). Row sums of A380865.

Offset 0, canonical program `A380864.P17847612334023733778`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A380864 (n : ℕ) : ℤ :=
  A380864.P17847612334023733778.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. -/
def A380864.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A381101.P9179852611574822393

`A010060(record[xor(n, 2*or(n, 2*n))])`
-/

namespace A381101.P9179852611574822393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * Nat.lor n (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A381101.P9179852611574822393

noncomputable section

/-- A381101: Allouche-Johnson binary sequence based on the Narayana's cows sequence A000930.

Offset 0, canonical program `A381101.P9179852611574822393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A381101 (n : ℕ) : ℤ :=
  A381101.P9179852611574822393.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. -/
def A381101.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381664.P17133759747871015799

`A210521(A209293(n+1))`
-/

namespace A381664.P17133759747871015799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210521 (A209293 (n + 1)).toNat

end

end A381664.P17133759747871015799

noncomputable section

/-- A381664: a(n) = A380200(A379342(n)).

Offset 1, canonical program `A381664.P17133759747871015799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. -/
def A381664 (n : ℕ) : ℤ :=
  A381664.P17133759747871015799.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. -/
def A381664.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381883.P1597276662483742425

`A258758(n)/A100100(n)`
-/

namespace A381883.P1597276662483742425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258758 n : ℚ) / (A100100 n : ℚ)

end

end A381883.P1597276662483742425

noncomputable section

/-- A381883: Triangle read by rows: T(n, k) = binomial(2*n - 1, k).

Offset 0, canonical program `A381883.P1597276662483742425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6607 terms. -/
def A381883 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A381883.P1597276662483742425.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6607 terms. -/
def A381883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382416.P17563004800430157031

`comp[A248910(1+n)]`
-/

namespace A382416.P17563004800430157031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248910 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382416.P17563004800430157031

noncomputable section

/-- A382416: Numbers with at least one zero in their base-6 representation.

Offset 1, canonical program `A382416.P17563004800430157031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382416 (n : ℕ) : ℤ :=
  (A382416.P17563004800430157031.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382875.P1622387389709022091

`comp[A161790(n+1)]`
-/

namespace A382875.P1622387389709022091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382875.P1622387389709022091

noncomputable section

/-- A382875: Numbers which are a multiple of 2^k - 1 for some k > 1.

Offset 1, canonical program `A382875.P1622387389709022091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8239 terms. -/
def A382875 (n : ℕ) : ℤ :=
  (A382875.P1622387389709022091.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8239 terms. -/
def A382875.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382888.P10950597595188319361

`A007947(A004709(n+1))`
-/

namespace A382888.P10950597595188319361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A004709 (n + 1)).toNat

end

end A382888.P10950597595188319361

noncomputable section

/-- A382888: The squarefree kernel of the n-th cubefree number.

Offset 1, canonical program `A382888.P10950597595188319361`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382888 (n : ℕ) : ℤ :=
  A382888.P10950597595188319361.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382888.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382988.P367253485696064616

`A298300(2+n)-A189912(n)`
-/

namespace A382988.P367253485696064616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298300 (2 + n) - A189912 n

end

end A382988.P367253485696064616

noncomputable section

/-- A382988: a(n) is the total sum of semiperimeters over all (>=,>=)-polyominoes of length n.

Offset 0, canonical program `A382988.P367253485696064616`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A382988 (n : ℕ) : ℤ :=
  A382988.P367253485696064616.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A382988.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383035.P5927521060712911379

`∑{d}[n+1, A036987(#-1)*A065178((n+1)/#)]`
-/

namespace A383035.P5927521060712911379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A065178 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A383035.P5927521060712911379

noncomputable section

/-- A383035: Inverse Weigh transform of 3^(n-1).

Offset 1, canonical program `A383035.P5927521060712911379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A383035 (n : ℕ) : ℤ :=
  A383035.P5927521060712911379.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 214 terms. -/
def A383035.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383278.P5471397010406266060

`∑[A383277(1+n)]`
-/

namespace A383278.P5471397010406266060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383277 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A383278.P5471397010406266060

noncomputable section

/-- A383278: The number of integers k such that A034444(k) * k <= n.

Offset 1, canonical program `A383278.P5471397010406266060`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383278 (n : ℕ) : ℤ :=
  A383278.P5471397010406266060.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383278.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383427.P6818174342750227545

`eq[A003849(n), A383422(n)]`
-/

namespace A383427.P6818174342750227545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383422 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A383427.P6818174342750227545

noncomputable section

/-- A383427: Indices k such that A003849(k) = A383422(k).

Offset 1, canonical program `A383427.P6818174342750227545`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5240 terms. -/
def A383427 (n : ℕ) : ℤ :=
  (A383427.P6818174342750227545.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5240 terms. -/
def A383427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383593.P18009256936053025423

`A004760(A266341(n)+2)`
-/

namespace A383593.P18009256936053025423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (A266341 n + 2).toNat

end

end A383593.P18009256936053025423

noncomputable section

/-- A383593: In the binary expansion of n, change the most significant 0 bit to 1, if there is any 0 bit.

Offset 0, canonical program `A383593.P18009256936053025423`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383593 (n : ℕ) : ℤ :=
  A383593.P18009256936053025423.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383593.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383657.P292230698443735700

`∏{e}[1+n, A001803(#)]`
-/

namespace A383657.P292230698443735700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001803 (Nat.factorization (f1 n) p)

end

end A383657.P292230698443735700

noncomputable section

/-- A383657: Numerator of Dirichlet g.f.: Sum_{n>=1} a(n)/n^s = zeta(s)^(3/2).

Offset 1, canonical program `A383657.P292230698443735700`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383657 (n : ℕ) : ℤ :=
  A383657.P292230698443735700.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383657.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383680.P17283393562093612107

`A003961(A383679(1+n))`
-/

namespace A383680.P17283393562093612107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A383679 (1 + n)).toNat

end

end A383680.P17283393562093612107

noncomputable section

/-- A383680: The greater of two consecutive primes whose gap equals the difference between their digital sums.

Offset 1, canonical program `A383680.P17283393562093612107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A383680 (n : ℕ) : ℤ :=
  A383680.P17283393562093612107.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. -/
def A383680.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384420.P4805659035727716000

`∑{e}[1+n, A070321(#)]`
-/

namespace A384420.P4805659035727716000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A070321 (Nat.factorization (f1 n) p)

end

end A384420.P4805659035727716000

noncomputable section

/-- A384420: The number of exponentially squarefree prime powers (not including 1) that divide n.

Offset 1, canonical program `A384420.P4805659035727716000`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384420 (n : ℕ) : ℤ :=
  A384420.P4805659035727716000.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384420.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384422.P10369257761977667717

`∑{e}[1+n, A000010(#)]`
-/

namespace A384422.P10369257761977667717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000010 (Nat.factorization (f1 n) p)

end

end A384422.P10369257761977667717

noncomputable section

/-- A384422: The number of prime powers (not including 1) p^e that divide n such that e is coprime to the p-adic valuation of n.

Offset 1, canonical program `A384422.P10369257761977667717`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384422 (n : ℕ) : ℤ :=
  A384422.P10369257761977667717.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384555.P15004222589011881551

`A053165((n+1)/A062378(A053165(n+1)))`
-/

namespace A384555.P15004222589011881551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A062378 (A053165 (n + 1)).toNat : ℚ))).toNat

end

end A384555.P15004222589011881551

noncomputable section

/-- A384555: The largest infinitary divisor of n that is cubefree.

Offset 1, canonical program `A384555.P15004222589011881551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384555 (n : ℕ) : ℤ :=
  A384555.P15004222589011881551.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384555.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384956.P1572791689955752356

`xor(A000120(n), A023416(n))`
-/

namespace A384956.P1572791689955752356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000120 n) (A023416 n)

end

end A384956.P1572791689955752356

noncomputable section

/-- A384956: Binary XOR of number of 1-bits in the binary representation of n and number of 0-bits in the binary representation of n, a(0) = 1.

Offset 0, canonical program `A384956.P1572791689955752356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384956 (n : ℕ) : ℤ :=
  A384956.P1572791689955752356.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385007.P2853750131647033924

`A053165((n+1)/A062379(A003557(n+1)))`
-/

namespace A385007.P2853750131647033924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A062379 (A003557 (n + 1)).toNat : ℚ))).toNat

end

end A385007.P2853750131647033924

noncomputable section

/-- A385007: The largest unitary divisor of n that is a biquadratefree number (A046100).

Offset 1, canonical program `A385007.P2853750131647033924`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385007 (n : ℕ) : ℤ :=
  A385007.P2853750131647033924.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385007.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385113.P9615886296806253472

`A106469(A309307(n+1))-A008966(n+1)`
-/

namespace A385113.P9615886296806253472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106469 (A309307 (n + 1)).toNat - A008966 (n + 1)

end

end A385113.P9615886296806253472

noncomputable section

/-- A385113: a(1) = 0, a(n) = 1 + 2*[omega(n) > 1] + [bigomega(n) > omega(n)], Iverson brackets, where omega = A001221 and bigomega = A001222.

Offset 1, canonical program `A385113.P9615886296806253472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385113 (n : ℕ) : ℤ :=
  A385113.P9615886296806253472.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385434.P13029139020623038212

`A022166(n)%3`
-/

namespace A385434.P13029139020623038212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022166 n) 3

end

end A385434.P13029139020623038212

noncomputable section

/-- A385434: Triangle of Gaussian binomial coefficients (or q-binomial coefficients) [n,k] for q = 2, reduced mod 3.

Offset 0, canonical program `A385434.P13029139020623038212`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022166, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385434 (n : ℕ) : ℤ :=
  A385434.P13029139020623038212.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022166, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385434.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A385507.P16899514206149430634

`val(1+A075677(1+n), 2)`
-/

namespace A385507.P16899514206149430634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (1 + A075677 (1 + n)).toNat 2

end

end A385507.P16899514206149430634

noncomputable section

/-- A385507: a(n) = v(1 + F(2*n - 1)), where F(x) = (3*x + 1)/2^v(3*x + 1), x is any odd natural number, and v(y) is the 2-adic valuation of y.

Offset 1, canonical program `A385507.P16899514206149430634`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385507 (n : ℕ) : ℤ :=
  (A385507.P16899514206149430634.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385507.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385614.P10327297328477070149

`A066846(lt[1, T(n-1,k)+T(n-1,k-1)])` with `a(0)=1`
-/

namespace A385614.P10327297328477070149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  SequenceMachineLib.triUp f2 n + SequenceMachineLib.triUpLeft f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066846 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A385614.P10327297328477070149

noncomputable section

/-- A385614: Numbers of the form x^x + y^y, 1 < x < y.

Offset 1, canonical program `A385614.P10327297328477070149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1485 terms. -/
def A385614 (n : ℕ) : ℤ :=
  A385614.P10327297328477070149.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1485 terms. -/
def A385614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385641.P16422059336115816604

`A211278(n)+A247287(n)`
-/

namespace A385641.P16422059336115816604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211278 n + A247287 n

end

end A385641.P16422059336115816604

noncomputable section

/-- A385641: Partial sums of A097893.

Offset 0, canonical program `A385641.P16422059336115816604`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211278, A247287, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385641 (n : ℕ) : ℤ :=
  A385641.P16422059336115816604.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A211278, A247287, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A385641.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A386319.P6966133288420860649

`A112367(n)+A086460(n)`
-/

namespace A386319.P6966133288420860649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 n + A086460 n

end

end A386319.P6966133288420860649

noncomputable section

/-- A386319: Triangle read by rows where row n is the start, corner and end vertex numbers of a triangular spiral with n sides on a triangular grid, starting from 1 and working inwards (0 <= k <= n).

Offset 0, canonical program `A386319.P6966133288420860649`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386319 (n : ℕ) : ℤ :=
  A386319.P6966133288420860649.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386424.P7966427077726190677

`eq[A003557(n+1), A387156(n+1)]+1`
-/

namespace A386424.P7966427077726190677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387156 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A386424.P7966427077726190677

noncomputable section

/-- A386424: Numbers k such that sigma(k) has the same powerful part as k has, where sigma is the sum of divisors function.

Offset 1, canonical program `A386424.P7966427077726190677`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 766 terms. -/
def A386424 (n : ℕ) : ℤ :=
  (A386424.P7966427077726190677.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 766 terms. -/
def A386424.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A387188.P9473372310714757708

`A000217(A160384(n))+A081603(n)+1`
-/

namespace A387188.P9473372310714757708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A160384 n).toNat + A081603 n + 1

end

end A387188.P9473372310714757708

noncomputable section

/-- A387188: a(n) = s*(s+1)/2 + t + 1 where s = A160384(n) and t = A081603(n) are the number of nonzero and number of 2 digits of n in ternary.

Offset 0, canonical program `A387188.P9473372310714757708`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160384, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A387188 (n : ℕ) : ℤ :=
  A387188.P9473372310714757708.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160384, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A387188.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A387319.P17010346775481233010

`A343311(n+1)-char[1]`
-/

namespace A387319.P17010346775481233010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A387319.P17010346775481233010

noncomputable section

/-- A387319: Numbers k for which modulo 3 and modulo another multiple of 3 are coincident among the fractions (2*k mod m)/m for 1 <= m <= k.

Offset 1, canonical program `A387319.P17010346775481233010`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387319 (n : ℕ) : ℤ :=
  A387319.P17010346775481233010.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387591.P13546734542307300609

`A065091(lt[A092949(n+1)-1, A033287(n)])`
-/

namespace A387591.P13546734542307300609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092949 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033287 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A387591.P13546734542307300609

noncomputable section

/-- A387591: Primes prime(k) such that (k+1)*prime(k) < k*prime(k+1).

Offset 1, canonical program `A387591.P13546734542307300609`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4463 terms. -/
def A387591 (n : ℕ) : ℤ :=
  A387591.P13546734542307300609.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4463 terms. -/
def A387591.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A388274.P18350149075822119324

`A071190(n+1)^A071178(A000203(n+1))`
-/

namespace A388274.P18350149075822119324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071190 (n + 1) : ℚ) ^ (A071178 (A000203 (n + 1)).toNat : ℤ)

end

end A388274.P18350149075822119324

noncomputable section

/-- A388274: a(n) = A053585(sigma(n)).

Offset 1, canonical program `A388274.P18350149075822119324`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071178, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388274 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A388274.P18350149075822119324.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071178, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388274.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A389648.P8603140873259450671

`A000194(A340172(1+n)*A340172(n))`
-/

namespace A389648.P8603140873259450671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A340172 (1 + n) * A340172 n).toNat

end

end A389648.P8603140873259450671

noncomputable section

/-- A389648: Y coordinate of point n while traversing the half plane by integer points in rectangular layers starting from n=1 at the origin.

Offset 1, canonical program `A389648.P8603140873259450671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389648 (n : ℕ) : ℤ :=
  A389648.P8603140873259450671.a (n - 1)

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

/-! ## A390099.P13697926632670634146

`A111333(A066940(2+n))`
-/

namespace A390099.P13697926632670634146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (A066940 (2 + n)).toNat

end

end A390099.P13697926632670634146

noncomputable section

/-- A390099: Record denominators of (p2+1)/(p1+1), where p1 < p2 are consecutive primes.

Offset 1, canonical program `A390099.P13697926632670634146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5699 terms. -/
def A390099 (n : ℕ) : ℤ :=
  A390099.P13697926632670634146.a (n - 1)

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

/-! ## A390289.P3249589091214432495

`∩[A004709(n+1), A024619(n+1)]`
-/

namespace A390289.P3249589091214432495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390289.P3249589091214432495

noncomputable section

/-- A390289: Cubefree numbers that are not prime powers.

Offset 1, canonical program `A390289.P3249589091214432495`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8106 terms. -/
def A390289 (n : ℕ) : ℤ :=
  (A390289.P3249589091214432495.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8106 terms. -/
def A390289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390327.P754055862768863841

`eq[1, (A023816(n)-1)%2]`
-/

namespace A390327.P754055862768863841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023816 n - 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A390327.P754055862768863841

noncomputable section

/-- A390327: Numbers k such that the number of prime divisors of binomial(2k, k), including multiplicities, is even.

Offset 0, canonical program `A390327.P754055862768863841`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 307 terms. -/
def A390327 (n : ℕ) : ℤ :=
  (A390327.P754055862768863841.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 307 terms. -/
def A390327.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390328.P16267295990974774674

`lt[0, A000035(A023816(n))]`
-/

namespace A390328.P16267295990974774674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A023816 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A390328.P16267295990974774674

noncomputable section

/-- A390328: Numbers k such that the number of prime divisors of binomial(2k, k), including multiplicities, is odd.

Offset 1, canonical program `A390328.P16267295990974774674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A390328 (n : ℕ) : ℤ :=
  (A390328.P16267295990974774674.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. -/
def A390328.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390371.P12993135629336140696

`A356191((n+1)/A336643(n+1)²)`
-/

namespace A390371.P12993135629336140696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356191 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A336643 (n + 1) ^ 2 : ℚ))).toNat

end

end A390371.P12993135629336140696

noncomputable section

/-- A390371: a(n) is the largest bi-unitary divisor of n that is an exponentially odd number (A268335).

Offset 1, canonical program `A390371.P12993135629336140696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390371 (n : ℕ) : ℤ :=
  A390371.P12993135629336140696.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390725.P3655368959115818733

`A271703(C(row(n)+1, 2)+col(n))*A000108(col(n))`
-/

namespace A390725.P3655368959115818733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271703 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n) * A000108 (SequenceMachineLib.triCol n)

end

end A390725.P3655368959115818733

noncomputable section

/-- A390725: Triangle read by rows: T(n, k) = Lah(n, k)*CatalanNumber(k), and Lah = A271703.

Offset 0, canonical program `A390725.P3655368959115818733`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A271703, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390725 (n : ℕ) : ℤ :=
  A390725.P3655368959115818733.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A271703, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390725.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A391307.P10918952597431580784

`A391301(n)+Δ[A391306(n)]`
-/

namespace A391307.P10918952597431580784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391301 n + (f1 (n + 1) - f1 n)

end

end A391307.P10918952597431580784

noncomputable section

/-- A391307: Expansion of g^3/(1 + x^2*g^4), where g = 1+x*g^3 is the g.f. of A001764.

Offset 0, canonical program `A391307.P10918952597431580784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A391307 (n : ℕ) : ℤ :=
  A391307.P10918952597431580784.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. -/
def A391307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391330.P7532613952401124421

`filter[or(1, 3*n+1), A064911(#)]`
-/

namespace A391330.P7532613952401124421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j) = 1) n)

end

end A391330.P7532613952401124421

noncomputable section

/-- A391330: Odd semiprimes that are not multiples of 3; Semiprimes congruent to 1 or 5 mod 6.

Offset 1, canonical program `A391330.P7532613952401124421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9698 terms. -/
def A391330 (n : ℕ) : ℤ :=
  (A391330.P7532613952401124421.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9698 terms. -/
def A391330.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391352.P13854263430842104362

`∩[3*n, A024675(n+1)]/3`
-/

namespace A391352.P13854263430842104362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024675 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 3

end

end A391352.P13854263430842104362

noncomputable section

/-- A391352: Numbers k such that 3*k - (greatest prime < 3*k) = (least prime > 3*k) - 3*k.

Offset 1, canonical program `A391352.P13854263430842104362`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5980 terms. -/
def A391352 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A391352.P13854263430842104362.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5980 terms. -/
def A391352.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A391493.P9944037114687150373

`∑{#}[n, A391459(#)*A391459(n-#)]`
-/

namespace A391493.P9944037114687150373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A391459 k * A391459 (n - k)

end

end A391493.P9944037114687150373

noncomputable section

/-- A391493: Expansion of (g/(2 - g^2))^2, where g = 1+x*g^2 is the g.f. of A000108.

Offset 0, canonical program `A391493.P9944037114687150373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A391493 (n : ℕ) : ℤ :=
  A391493.P9944037114687150373.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. -/
def A391493.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A392012.P18378647166654082061

`A057723(A004709(n+1))`
-/

namespace A392012.P18378647166654082061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (A004709 (n + 1)).toNat

end

end A392012.P18378647166654082061

noncomputable section

/-- A392012: The sum of the exponential divisors of the cubefree numbers.

Offset 1, canonical program `A392012.P18378647166654082061`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392012 (n : ℕ) : ℤ :=
  A392012.P18378647166654082061.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392012.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392108.P2740874712348160147

`∑{p}[A249739(1+n), #]`
-/

namespace A392108.P2740874712348160147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249739 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A392108.P2740874712348160147

noncomputable section

/-- A392108: a(n) = smallest prime with exponent > 1 in the prime factorization of n, or 0 if no such prime exists.

Offset 1, canonical program `A392108.P2740874712348160147`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392108 (n : ℕ) : ℤ :=
  (A392108.P2740874712348160147.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392109.P8261629027282362395

`∑{p}[A249740(1+n), #]`
-/

namespace A392109.P8261629027282362395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249740 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A392109.P8261629027282362395

noncomputable section

/-- A392109: a(n) = largest prime with exponent > 1 in the prime factorization of n, or 0 if no such prime exists.

Offset 1, canonical program `A392109.P8261629027282362395`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392109 (n : ℕ) : ℤ :=
  (A392109.P8261629027282362395.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392109.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392116.P8072191242943284098

`Δ[floor(Δ[A007504(n)]/5)]`
-/

namespace A392116.P8072191242943284098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f2 (n + 1) - f2 n : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A392116.P8072191242943284098

noncomputable section

/-- A392116: a(n) = f(n+1) - f(n), where f(n) = floor(prime(n)/5).

Offset 1, canonical program `A392116.P8072191242943284098`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392116 (n : ℕ) : ℤ :=
  A392116.P8072191242943284098.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392116.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A392670.P5115104254938582185

`A002487(∑[A079559(n)])`
-/

namespace A392670.P5115104254938582185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A392670.P5115104254938582185

noncomputable section

/-- A392670: Triangle read by rows where row n is the numerators of the node values in a preorder traversal of the Calkin-Wilf tree with n levels, columns 0 <= k < 2^n-1.

Offset 1, canonical program `A392670.P5115104254938582185`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392670 (n : ℕ) : ℤ :=
  A392670.P5115104254938582185.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392670.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393204.P4868010084340078736

`∑{#}[n, A002884(#)*A022166(C(n+1, 2)+#)]`
-/

namespace A393204.P4868010084340078736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A002884 k * A022166 (Nat.choose (n + 1) 2 + k)

end

end A393204.P4868010084340078736

noncomputable section

/-- A393204: Number of n X n matrices over GF(2) such that the row space is equal to the column space.

Offset 0, canonical program `A393204.P4868010084340078736`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022166, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A393204 (n : ℕ) : ℤ :=
  A393204.P4868010084340078736.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022166, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A393204.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A393608.P11638185413194131276

`A104887(n+1)%(col(n)+2)`
-/

namespace A393608.P11638185413194131276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104887 (n + 1)) (SequenceMachineLib.triCol n + 2 : ℤ)

end

end A393608.P11638185413194131276

noncomputable section

/-- A393608: Rectangular array R read by descending antidiagonals: R(n,k) = prime(k) mod n, for n>=2.

Offset 2, canonical program `A393608.P11638185413194131276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393608 (n : ℕ) : ℤ :=
  A393608.P11638185413194131276.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393608.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A395542.P7948443198613962418

`eq[A000120(n), A276134(n)]`
-/

namespace A395542.P7948443198613962418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276134 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A395542.P7948443198613962418

noncomputable section

/-- A395542: Numbers whose number of nonzero digits is identical in base 2 and 5.

Offset 1, canonical program `A395542.P7948443198613962418`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1343 terms. -/
def A395542 (n : ℕ) : ℤ :=
  (A395542.P7948443198613962418.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1343 terms. -/
def A395542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395958.P7360254057538076965

`A010060(xor(n, a(floor(n/4))))` with `a(0)=0`
-/

namespace A395958.P7360254057538076965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A010060 (Int.xor (n : ℤ) (a ⌊(n : ℚ) / 4⌋.toNat)).toNat

end

end A395958.P7360254057538076965

noncomputable section

/-- A395958: Third iterate of the Thue-Morse transform applied to A000035.

Offset 0, canonical program `A395958.P7360254057538076965`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395958 (n : ℕ) : ℤ :=
  A395958.P7360254057538076965.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395958.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396200.P3632451015739113007

`2^(row(n)+1)-A204621(C(row(n)+1, 2)+col(n))`
-/

namespace A396200.P3632451015739113007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (SequenceMachineLib.triRow n + 1) : ℤ) - A204621 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n)

end

end A396200.P3632451015739113007

noncomputable section

/-- A396200: Triangle read by rows: T(n, k) = Sum_{i=0..n} binomial(2*i, i) * binomial(n - 2*i, k - i).

Offset 0, canonical program `A396200.P3632451015739113007`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A204621, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396200 (n : ℕ) : ℤ :=
  A396200.P3632451015739113007.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A204621, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396200.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A397012.P13393912576675427376

`lt[0, A257920(n)]`
-/

namespace A397012.P13393912576675427376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257920 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A397012.P13393912576675427376

noncomputable section

/-- A397012: Numbers that are a sum of three triangular numbers whose indices are in arithmetic progression; i.e., numbers of the form 3*T(k) + d^2, where T(k) = k*(k+1)/2 and k, d are integers.

Offset 1, canonical program `A397012.P13393912576675427376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3480 terms. -/
def A397012 (n : ℕ) : ℤ :=
  (A397012.P13393912576675427376.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3480 terms. -/
def A397012.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A397416.P2588075705200324543

`∩[A085989(n+1)-1, A085989(n+1)]`
-/

namespace A397416.P2588075705200324543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085989 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397416.P2588075705200324543

noncomputable section

/-- A397416: Numbers k such that both k and k+1 can be written as the sum of two nonzero and nonunit squares.

Offset 1, canonical program `A397416.P2588075705200324543`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2106 terms. -/
def A397416 (n : ℕ) : ℤ :=
  (A397416.P2588075705200324543.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2106 terms. -/
def A397416.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397495.P13865953239487814437

`A074149(A005097(1+n))`
-/

namespace A397495.P13865953239487814437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074149 (A005097 (1 + n)).toNat

end

end A397495.P13865953239487814437

noncomputable section

/-- A397495: Number of quadruples (a,b,c,d) of nonzero quadratic residues modulo prime(n) such that a + b == c + d (mod prime(n)).

Offset 2, canonical program `A397495.P13865953239487814437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2261 terms. -/
def A397495 (n : ℕ) : ℤ :=
  A397495.P13865953239487814437.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2261 terms. -/
def A397495.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A398143.P14857148885188103765

`A194029(A004957(n+1))`
-/

namespace A398143.P14857148885188103765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194029 (A004957 (n + 1)).toNat

end

end A398143.P14857148885188103765

noncomputable section

/-- A398143: Survivor in the Josephus problem with golden-ratio steps: n people stand in a circle, counting starts at person 1, and the i-th person eliminated is the A282162(i)-th person counted (steps 3,2,3,3,2,3,2,3,3,2,..., the Fibonacci word with 0 -> 3, 1 -> 2).

Offset 1, canonical program `A398143.P14857148885188103765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6764 terms. -/
def A398143 (n : ℕ) : ℤ :=
  A398143.P14857148885188103765.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6764 terms. -/
def A398143.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398167.P12086417962490416591

`record[A007947(A340152(n+1))]`
-/

namespace A398167.P12086417962490416591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A340152 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A398167.P12086417962490416591

noncomputable section

/-- A398167: Squarefree numbers k such that k+1 is cubefree.

Offset 1, canonical program `A398167.P12086417962490416591`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7076 terms. -/
def A398167 (n : ℕ) : ℤ :=
  A398167.P12086417962490416591.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7076 terms. -/
def A398167.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A398375.P3494051443164142491

`lt[1, A351563(A028310(n))]`
-/

namespace A398375.P3494051443164142491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351563 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A398375.P3494051443164142491

noncomputable section

/-- A398375: Numbers divisible by the square of their second smallest distinct prime factor.

Offset 1, canonical program `A398375.P3494051443164142491`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 981 terms. -/
def A398375 (n : ℕ) : ℤ :=
  (A398375.P3494051443164142491.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 981 terms. -/
def A398375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398955.P9769639639659913676

`∩[A340152(n+1)-1, A340152(n+1)]`
-/

namespace A398955.P9769639639659913676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340152 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398955.P9769639639659913676

noncomputable section

/-- A398955: Numbers k such that k, k+1, and k+2 are all cubefree.

Offset 1, canonical program `A398955.P9769639639659913676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7902 terms. -/
def A398955 (n : ℕ) : ℤ :=
  (A398955.P9769639639659913676.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7902 terms. -/
def A398955.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399863.P6356928561491451948

`A220053(1+n)+A004247(n)`
-/

namespace A399863.P6356928561491451948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220053 (1 + n) + A004247 n

end

end A399863.P6356928561491451948

noncomputable section

/-- A399863: Triangle read by rows: T(n,k) = binomial(n+1,2) - binomial(n-k+1,2) + binomial(n-k,2) - [n-k+1 > k]*binomial(n-2*k+1,2), k = 1..n, with Iverson brackets.

Offset 1, canonical program `A399863.P6356928561491451948`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7260 terms. -/
def A399863 (n : ℕ) : ℤ :=
  A399863.P6356928561491451948.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7260 terms. -/
def A399863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399964.P15113534240946366544

`A022166(C(row(n)+2, 2)+col(n)+1)*(2^(col(n)+1)-1)`
-/

namespace A399964.P15113534240946366544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 (Nat.choose (SequenceMachineLib.triRow n + 2) 2 + (SequenceMachineLib.triCol n + 1)) * ((2 ^ (SequenceMachineLib.triCol n + 1) : ℤ) - 1)

end

end A399964.P15113534240946366544

noncomputable section

/-- A399964: Triangle read by rows: T(n,k) is the number of pairs of subspaces (U,W) of F_2^n such that U has dimension k and W has codimension 1 in U, 1 <= k <= n.

Offset 1, canonical program `A399964.P15113534240946366544`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022166, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399964 (n : ℕ) : ℤ :=
  A399964.P15113534240946366544.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022166, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399964.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A400139.P17584258265863310281

`A366763(A011262(1+n))`
-/

namespace A400139.P17584258265863310281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366763 (A011262 (1 + n)).toNat

end

end A400139.P17584258265863310281

noncomputable section

/-- A400139: The number of divisors d of n such that gcid(d, n/d) is a powerful number (A001694), where gcid is the greatest common infinitary divisor.

Offset 1, canonical program `A400139.P17584258265863310281`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A400139 (n : ℕ) : ℤ :=
  A400139.P17584258265863310281.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A400139.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400427.P4217021055050402070

`A119288(A028234(A000977(n+1)))`
-/

namespace A400427.P4217021055050402070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119288 (A028234 (A000977 (n + 1)).toNat).toNat

end

end A400427.P4217021055050402070

noncomputable section

/-- A400427: 3rd least distinct prime factor of numbers with 3 or more distinct prime factors.

Offset 1, canonical program `A400427.P4217021055050402070`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4622 terms. -/
def A400427 (n : ℕ) : ℤ :=
  A400427.P4217021055050402070.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4622 terms. -/
def A400427.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A401379.P13567719274114165428

`A058062(n+1)-A336388(n+1)`
-/

namespace A401379.P13567719274114165428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058062 (n + 1) - A336388 (n + 1)

end

end A401379.P13567719274114165428

noncomputable section

/-- A401379: Number of distinct prime factors in the largest divisor of sigma(n) coprime with n, where sigma is the sum of divisors function.

Offset 1, canonical program `A401379.P13567719274114165428`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401379 (n : ℕ) : ℤ :=
  A401379.P13567719274114165428.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401379.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401714.P6768754910253124235

`Δ[fp[A393981(n+1)]]`
-/

namespace A401714.P6768754910253124235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393981 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A401714.P6768754910253124235

noncomputable section

/-- A401714: a(n) = 1 if A003557(n) < A053669(n), otherwise 0, where A003557(n) is n divided by its squarefree kernel, and A053669(n) is the smallest prime not dividing n.

Offset 1, canonical program `A401714.P6768754910253124235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401714 (n : ℕ) : ℤ :=
  A401714.P6768754910253124235.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375184.P6361993029201309949

`A375183(A165199(n))`
-/

namespace A375184.P6361993029201309949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375183 (A165199 n).toNat

end

end A375184.P6361993029201309949

noncomputable section

/-- A375184: In the binary expansion of n, complement bits at even positions and to the right of a 0 (the most significant bit corresponding to position 1).

Offset 0, canonical program `A375184.P6361993029201309949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A375184 (n : ℕ) : ℤ :=
  A375184.P6361993029201309949.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. -/
def A375184.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A375360.P7444135275151362843

`A051903(A356191(n+1))`
-/

namespace A375360.P7444135275151362843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A356191 (n + 1)).toNat

end

end A375360.P7444135275151362843

noncomputable section

/-- A375360: The maximum exponent in the prime factorization of the smallest exponentially odd number that is divisible by n.

Offset 1, canonical program `A375360.P7444135275151362843`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375360 (n : ℕ) : ℤ :=
  A375360.P7444135275151362843.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375360.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375429.P12447372994373852055

`A130233(A051903(n+1))`
-/

namespace A375429.P12447372994373852055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130233 (A051903 (n + 1)).toNat

end

end A375429.P12447372994373852055

noncomputable section

/-- A375429: The indices of the terms of A375428 in the Fibonacci sequence.

Offset 1, canonical program `A375429.P12447372994373852055`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A130233, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375429 (n : ℕ) : ℤ :=
  A375429.P12447372994373852055.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A130233, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375429.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A375768.P10640290788176258715

`filter[A051903(n+1), A010056(#)]`
-/

namespace A375768.P10640290788176258715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010056 (f1 j).toNat = 1) n)

end

end A375768.P10640290788176258715

noncomputable section

/-- A375768: The maximum exponent in the prime factorization of the numbers whose maximum exponent in their prime factorization is a Fibonacci number.

Offset 1, canonical program `A375768.P10640290788176258715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375768 (n : ℕ) : ℤ :=
  A375768.P10640290788176258715.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375768.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376047.P2394331274829499598

`comp[A092433(1+n)-1]+1`
-/

namespace A376047.P2394331274829499598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092433 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A376047.P2394331274829499598

noncomputable section

/-- A376047: Complement of A092433.

Offset 1, canonical program `A376047.P2394331274829499598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376047 (n : ℕ) : ℤ :=
  (A376047.P2394331274829499598.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376047.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A378367.P15446087870678905426

`A361102(A356068(n+1))`
-/

namespace A378367.P15446087870678905426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (A356068 (n + 1)).toNat

end

end A378367.P15446087870678905426

noncomputable section

/-- A378367: Greatest non prime power <= n, allowing 1.

Offset 1, canonical program `A378367.P15446087870678905426`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356068, A361102, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378367 (n : ℕ) : ℤ :=
  A378367.P15446087870678905426.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356068, A361102, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378367.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378939.P6683224254479120729

`(A006318(n)+A110110(n))/2`
-/

namespace A378939.P6683224254479120729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006318 n + A110110 n : ℚ) / 2

end

end A378939.P6683224254479120729

noncomputable section

/-- A378939: Number of Schroeder paths of semilength n up to reversal.

Offset 0, canonical program `A378939.P6683224254479120729`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110110, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378939 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A378939.P6683224254479120729.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110110, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378939.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379099.P6794364004104742208

`A000108(n)*A006134(n)`
-/

namespace A379099.P6794364004104742208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A006134 n

end

end A379099.P6794364004104742208

noncomputable section

/-- A379099: a(n) = Sum_{k=0..n} binomial(2*k, k)*binomial(2*n, n)/(n + 1). Row sums of A379100.

Offset 0, canonical program `A379099.P6794364004104742208`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379099 (n : ℕ) : ℤ :=
  A379099.P6794364004104742208.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379099.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380118.P5292018243931778813

`A072107(n+1)-A034387(n+1)`
-/

namespace A380118.P5292018243931778813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072107 (n + 1) - A034387 (n + 1)

end

end A380118.P5292018243931778813

noncomputable section

/-- A380118: a(n) = Sum_{k=1..n} (A014963(k) - A061397(k)).

Offset 1, canonical program `A380118.P5292018243931778813`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034387, A072107, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380118 (n : ℕ) : ℤ :=
  A380118.P5292018243931778813.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034387, A072107, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A380118.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380316.P9249479629990440529

`∩[A007304(n+2)+A007304(n+1), A007304(n+1)]`
-/

namespace A380316.P9249479629990440529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 2) + A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380316.P9249479629990440529

noncomputable section

/-- A380316: Sphenic numbers that are the sum of two successive sphenics.

Offset 1, canonical program `A380316.P9249479629990440529`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 625 terms. -/
def A380316 (n : ℕ) : ℤ :=
  (A380316.P9249479629990440529.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 625 terms. -/
def A380316.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380692.P12294992463920302040

`lt[A051903(n+1), A074828(n+1)]+1`
-/

namespace A380692.P12294992463920302040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A380692.P12294992463920302040

noncomputable section

/-- A380692: Numbers k such that the least prime dividing k is larger than the maximum exponent in the prime factorization of k; a(1) = 1 by convention.

Offset 1, canonical program `A380692.P12294992463920302040`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380692 (n : ℕ) : ℤ :=
  (A380692.P12294992463920302040.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380692.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380694.P14058961095964849328

`lt[A051903(1+n), A055396(n+1)]+1`
-/

namespace A380694.P14058961095964849328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A380694.P14058961095964849328

noncomputable section

/-- A380694: Numbers k such that the prime index of the least prime dividing k is larger than the maximum exponent in the prime factorization of k.

Offset 1, canonical program `A380694.P14058961095964849328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4314 terms. -/
def A380694 (n : ℕ) : ℤ :=
  (A380694.P14058961095964849328.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4314 terms. -/
def A380694.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A381953.P6627624726441314445

`eq[2, gcd(n+1, A051903(n+1))]+1`
-/

namespace A381953.P6627624726441314445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A051903 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A381953.P6627624726441314445

noncomputable section

/-- A381953: Numbers k such that A381952(k) = 2.

Offset 1, canonical program `A381953.P6627624726441314445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8101 terms. -/
def A381953 (n : ℕ) : ℤ :=
  (A381953.P6627624726441314445.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8101 terms. -/
def A381953.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A381956.P11112575120300928344

`lt[val(n+1-A051903(n+1), 2), 1]+1`
-/

namespace A381956.P11112575120300928344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1 : ℤ) - A051903 (n + 1)).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A381956.P11112575120300928344

noncomputable section

/-- A381956: Numbers k such that k and the maximum exponent in the prime factorization of k have opposite parities.

Offset 1, canonical program `A381956.P11112575120300928344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381956 (n : ℕ) : ℤ :=
  (A381956.P11112575120300928344.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A381956.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382113.P6513657586340795000

`A022290(A006068(A003714(n)))`
-/

namespace A382113.P6513657586340795000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A006068 (A003714 n).toNat).toNat

end

end A382113.P6513657586340795000

noncomputable section

/-- A382113: Gray code transformation of the Zeckendorf representation of n.

Offset 0, canonical program `A382113.P6513657586340795000`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, A022290, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382113 (n : ℕ) : ℤ :=
  A382113.P6513657586340795000.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, A022290, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382113.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382219.P8248486132169953123

`A028310(A051903(n+1)*A051904(n+1))`
-/

namespace A382219.P8248486132169953123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A051903 (n + 1) * A051904 (n + 1)).toNat

end

end A382219.P8248486132169953123

noncomputable section

/-- A382219: Product of the largest and smallest exponents in the prime factorization of n.

Offset 1, canonical program `A382219.P8248486132169953123`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382219 (n : ℕ) : ℤ :=
  A382219.P8248486132169953123.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382219.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382418.P11791072874298517319

`eq[0, A309788(n)]`
-/

namespace A382418.P11791072874298517319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309788 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A382418.P11791072874298517319

noncomputable section

/-- A382418: Numbers with at least one zero in their base-9 representation.

Offset 1, canonical program `A382418.P11791072874298517319`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3440 terms. -/
def A382418 (n : ℕ) : ℤ :=
  (A382418.P11791072874298517319.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3440 terms. -/
def A382418.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 1, canonical program `A383156.P4501511777961019996`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383156 (n : ℕ) : ℤ :=
  A383156.P4501511777961019996.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A383156.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384655.P3126536140411291701

`∑{#}[n, A051903(gcd(n+1, #))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384655.P3126536140411291701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A051903 (Nat.gcd (n + 1) k)

end

end A384655.P3126536140411291701

noncomputable section

/-- A384655: a(n) = Sum_{k=1..n} A051903(gcd(n,k)).

Offset 1, canonical program `A384655.P3126536140411291701`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384655 (n : ℕ) : ℤ :=
  A384655.P3126536140411291701.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384655.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385129.P11656046538311212658

`∑{d}[n+1, A051903(#)%2]`
-/

namespace A385129.P11656046538311212658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A051903 d) 2

end

end A385129.P11656046538311212658

noncomputable section

/-- A385129: The number of divisors of n whose maximum exponent in their prime factorization is odd.

Offset 1, canonical program `A385129.P11656046538311212658`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385129 (n : ℕ) : ℤ :=
  A385129.P11656046538311212658.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385129.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385131.P8764482673539843631

`∑{d}[n+1, #*A051903(#)%2]`
-/

namespace A385131.P8764482673539843631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * Int.tmod (A051903 d) 2

end

end A385131.P8764482673539843631

noncomputable section

/-- A385131: The sum of divisors of n whose maximum exponent in their prime factorization is odd.

Offset 1, canonical program `A385131.P8764482673539843631`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385131 (n : ℕ) : ℤ :=
  A385131.P8764482673539843631.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385131.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385133.P14831130415972611969

`∑{#}[n, A051903(gcd(n+1, #+1))%2]`
-/

namespace A385133.P14831130415972611969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Int.tmod (A051903 (Nat.gcd (n + 1) (k + 1))) 2

end

end A385133.P14831130415972611969

noncomputable section

/-- A385133: The number of integers k from 1 to n such that gcd(n, k) has an odd maximum exponent in its prime factorization.

Offset 1, canonical program `A385133.P14831130415972611969`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385133 (n : ℕ) : ℤ :=
  A385133.P14831130415972611969.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385133.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385640.P9288820387589926577

`filter[A385656(n+1), A188641(#)]`
-/

namespace A385640.P9288820387589926577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A385640.P9288820387589926577

noncomputable section

/-- A385640: Numbers k such that the sum of the digits of k divides k and the sum of the digits of k^2 divides k^2.

Offset 1, canonical program `A385640.P9288820387589926577`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 756 terms. -/
def A385640 (n : ℕ) : ℤ :=
  A385640.P9288820387589926577.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 756 terms. -/
def A385640.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A386268.P575525130596012563

`A392359(A040976(2+n))`
-/

namespace A386268.P575525130596012563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392359 (A040976 (2 + n)).toNat

end

end A386268.P575525130596012563

noncomputable section

/-- A386268: a(n) = numerator((prime(n) - 2)/(n - 1)).

Offset 2, canonical program `A386268.P575525130596012563`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1228 terms. -/
def A386268 (n : ℕ) : ℤ :=
  A386268.P575525130596012563.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1228 terms. -/
def A386268.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386472.P7970644289596201649

`A048760(A051903(n+1))`
-/

namespace A386472.P7970644289596201649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048760 (A051903 (n + 1)).toNat

end

end A386472.P7970644289596201649

noncomputable section

/-- A386472: The maximum exponent in the prime factorization of the largest divisor of n whose exponents in its prime factorization are squares.

Offset 1, canonical program `A386472.P7970644289596201649`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386472 (n : ℕ) : ℤ :=
  A386472.P7970644289596201649.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386472.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A386807.P16969838357959124918

`comp[eq[5, A051903(n+1)]]+1`
-/

namespace A386807.P16969838357959124918
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A386807.P16969838357959124918

noncomputable section

/-- A386807: Numbers without an exponent 5 in their prime factorization.

Offset 1, canonical program `A386807.P16969838357959124918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386807 (n : ℕ) : ℤ :=
  (A386807.P16969838357959124918.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386807.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387032.P16232094280728574663

`∩[A039112(n+1), A052383(n+1)]`
-/

namespace A387032.P16232094280728574663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387032.P16232094280728574663

noncomputable section

/-- A387032: Numbers k with digits different from 0 and 1.

Offset 1, canonical program `A387032.P16232094280728574663`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6560 terms. -/
def A387032 (n : ℕ) : ℤ :=
  (A387032.P16232094280728574663.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6560 terms. -/
def A387032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387348.P10737065631606712067

`A096270(n)-A327174(n)`
-/

namespace A387348.P10737065631606712067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 n - A327174 n

end

end A387348.P10737065631606712067

noncomputable section

/-- A387348: a(n) = W(n,2) - S(n,2) where W is the Wythoff array (A035513) and S is the Stolarsky array (A035506).

Offset 1, canonical program `A387348.P10737065631606712067`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387348 (n : ℕ) : ℤ :=
  A387348.P10737065631606712067.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387348.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388011.P14636846454432472198

`comp[A388012(1+n)-1]+1`
-/

namespace A388011.P14636846454432472198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388012 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A388011.P14636846454432472198

noncomputable section

/-- A388011: Numbers k such that sigma(k)/k < 5/3.

Offset 1, canonical program `A388011.P14636846454432472198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A388011 (n : ℕ) : ℤ :=
  (A388011.P14636846454432472198.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A388011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389231.P350913019586816934

`∑{digits}[A000108(n), A136522(#)]`
-/

namespace A389231.P350913019586816934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A136522 x).sum

end

end A389231.P350913019586816934

noncomputable section

/-- A389231: Number of decimal digits in the n-th Catalan number.

Offset 0, canonical program `A389231.P350913019586816934`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A389231 (n : ℕ) : ℤ :=
  A389231.P350913019586816934.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. -/
def A389231.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A389907.P8045381911149998948

`min(n+1, A054429(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389907.P8045381911149998948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (n + 1 : ℤ) (A054429 (n + 1))

end

end A389907.P8045381911149998948

noncomputable section

/-- A389907: a(n) = min(n, A054429(n)), where A054429 list each block of 2^n numbers (from 2^n to 2^(n+1) - 1) in reverse order.

Offset 1, canonical program `A389907.P8045381911149998948`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054429, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389907 (n : ℕ) : ℤ :=
  A389907.P8045381911149998948.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054429, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389907.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390595.P2162690412655160614

`eq[0, A390768(n+1)]+1`
-/

namespace A390595.P2162690412655160614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390768 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A390595.P2162690412655160614

noncomputable section

/-- A390595: Numbers k such that the binary length of k is the same as the binary length of 3*k+1 reduced by the largest possible power of two.

Offset 1, canonical program `A390595.P2162690412655160614`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2719 terms. -/
def A390595 (n : ℕ) : ℤ :=
  (A390595.P2162690412655160614.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2719 terms. -/
def A390595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390790.P12942896360737542177

`lt[A210882(2*(n+1)), A000027(2*n+3)]+1`
-/

namespace A390790.P12942896360737542177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210882 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A390790.P12942896360737542177

noncomputable section

/-- A390790: Numbers k such that 2*k - (greatest prime < 2*k) > (least prime > 2*k) - 2*k.

Offset 1, canonical program `A390790.P12942896360737542177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2124 terms. -/
def A390790 (n : ℕ) : ℤ :=
  (A390790.P12942896360737542177.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2124 terms. -/
def A390790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391370.P12779739431505468361

`∪[A038894(n+1)², A038893(n+1)]`
-/

namespace A391370.P12779739431505468361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038894 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391370.P12779739431505468361

noncomputable section

/-- A391370: Absolute values of norms of prime elements in Z[(1+sqrt(21))/2], the ring of integers of Q(sqrt(21)).

Offset 1, canonical program `A391370.P12779739431505468361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391370 (n : ℕ) : ℤ :=
  (A391370.P12779739431505468361.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391370.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A392277.P7607711306588657949

`floor(A051903(n+1)/3)`
-/

namespace A392277.P7607711306588657949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051903 (n + 1) : ℚ) / 3⌋

end

end A392277.P7607711306588657949

noncomputable section

/-- A392277: The maximum exponent in the prime factorization of the cube root of the largest cube dividing n.

Offset 1, canonical program `A392277.P7607711306588657949`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392277 (n : ℕ) : ℤ :=
  A392277.P7607711306588657949.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392277.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A394471.P336955902272775666

`∩[A048448(n)-1, A000040(n+3)]`
-/

namespace A394471.P336955902272775666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048448 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A394471.P336955902272775666

noncomputable section

/-- A394471: Primes of the form prime(k) + prime(k+2) - 1, where prime(k) is the k-th prime.

Offset 1, canonical program `A394471.P336955902272775666`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1188 terms. -/
def A394471 (n : ℕ) : ℤ :=
  (A394471.P336955902272775666.a (n - 1) : ℤ)

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

/-! ## A397380.P3500654932573034132

`A243116(n)+A397383(n)`
-/

namespace A397380.P3500654932573034132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243116 n + A397383 n

end

end A397380.P3500654932573034132

noncomputable section

/-- A397380: a(n) = Sum_{k=0..n} binomial(n+k,2*k) * (binomial(n+2*k,k) + binomial(n+2*k,k-1)).

Offset 0, canonical program `A397380.P3500654932573034132`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A397383, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397380 (n : ℕ) : ℤ :=
  A397380.P3500654932573034132.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A397383, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397380.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A398825.P3099503128466544509

`∩[A366762(n+1)-1, A366762(n+1)]`
-/

namespace A398825.P3099503128466544509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366762 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398825.P3099503128466544509

noncomputable section

/-- A398825: Numbers k such that the canonical prime factorizations of both k and k+1 contain only exponents that are congruent to 1 modulo 3.

Offset 1, canonical program `A398825.P3099503128466544509`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5882 terms. -/
def A398825 (n : ℕ) : ℤ :=
  (A398825.P3099503128466544509.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5882 terms. -/
def A398825.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399088.P9966872433898824773

`A051903(A005117(n+1)+1)`
-/

namespace A399088.P9966872433898824773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A005117 (n + 1) + 1).toNat

end

end A399088.P9966872433898824773

noncomputable section

/-- A399088: The maximum exponent in the prime factorization of the number following the n-th squarefree number.

Offset 1, canonical program `A399088.P9966872433898824773`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399088 (n : ℕ) : ℤ :=
  A399088.P9966872433898824773.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399088.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A399089.P17383829431704807904

`A051903(A005117(n+2)-1)`
-/

namespace A399089.P17383829431704807904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A005117 (n + 2) - 1).toNat

end

end A399089.P17383829431704807904

noncomputable section

/-- A399089: The maximum exponent in the prime factorization of the number preceding the n-th squarefree number.

Offset 2, canonical program `A399089.P17383829431704807904`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399089 (n : ℕ) : ℤ :=
  A399089.P17383829431704807904.a (n - 2)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A399089.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A400211.P15402194409591322353

`Δ[∑[-A329116(A054977(n)+n-2)]²]`
-/

namespace A400211.P15402194409591322353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A329116 (A054977 n + (n : ℤ) - 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A400211.P15402194409591322353

noncomputable section

/-- A400211: a(n) = x^3 - m*(m+1)*x, where m = floor(sqrt(n)) and x = n - m*(m+1).

Offset 0, canonical program `A400211.P15402194409591322353`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A400211 (n : ℕ) : ℤ :=
  A400211.P15402194409591322353.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A400211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401605.P10857984837398014025

`6*A070043(n+1)+1`
-/

namespace A401605.P10857984837398014025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A070043 (n + 1) + 1

end

end A401605.P10857984837398014025

noncomputable section

/-- A401605: Numbers of the form (6*y + 1) * (6*x + 1) for integers x>0 and y>0.

Offset 1, canonical program `A401605.P10857984837398014025`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070043, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401605 (n : ℕ) : ℤ :=
  A401605.P10857984837398014025.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070043, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401605.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A375847.P17445799609961011630

`A051903(A360539(n+1))`
-/

namespace A375847.P17445799609961011630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A360539 (n + 1)).toNat

end

end A375847.P17445799609961011630

noncomputable section

/-- A375847: The maximum exponent in the prime factorization of the largest unitary cubefree divisor of n.

Offset 1, canonical program `A375847.P17445799609961011630`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A360539, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375847 (n : ℕ) : ℤ :=
  A375847.P17445799609961011630.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A360539, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A375847.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378480.P5546692460362754455

`filter[A007304(1+n), A294934(#)]`
-/

namespace A378480.P5546692460362754455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A378480.P5546692460362754455

noncomputable section

/-- A378480: Products of 3 distinct prime numbers (or sphenics) that are deficient.

Offset 1, canonical program `A378480.P5546692460362754455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8934 terms. -/
def A378480 (n : ℕ) : ℤ :=
  A378480.P5546692460362754455.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8934 terms. -/
def A378480.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378985.P6789501297804054790

`A336835(2*(n+1))`
-/

namespace A378985.P6789501297804054790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336835 (2 * (n + 1))

end

end A378985.P6789501297804054790

noncomputable section

/-- A378985: Number of iterations of x -> A003961(x) needed before the result is deficient, when starting from x = 2*n.

Offset 1, canonical program `A378985.P6789501297804054790`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336835, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378985 (n : ℕ) : ℤ :=
  A378985.P6789501297804054790.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336835, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378985.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A381740.P8857660025361082134

`filter[A363171(1+n), A008966(#)]`
-/

namespace A381740.P8857660025361082134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363171 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A381740.P8857660025361082134

noncomputable section

/-- A381740: Squarefree numbers k such that k^2 is abundant.

Offset 1, canonical program `A381740.P8857660025361082134`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3068 terms. -/
def A381740 (n : ℕ) : ℤ :=
  A381740.P8857660025361082134.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3068 terms. -/
def A381740.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A392521.P1705857083292960983

`xor(1+n, A080542(n+1))`
-/

namespace A392521.P1705857083292960983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (1 + n : ℤ) (A080542 (n + 1))

end

end A392521.P1705857083292960983

noncomputable section

/-- A392521: Irregular table: apply Ducci map to each binary string of length n-1 in order and read as binary digits to get the terms of row n.

Offset 1, canonical program `A392521.P1705857083292960983`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392521 (n : ℕ) : ℤ :=
  A392521.P1705857083292960983.a (n - 1)

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

/-! ## A377029.P15592168475021674256

`A374625(a(n-1))` with `a(0)=0`
-/

namespace A377029.P15592168475021674256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A374625 (a (n - 1)).toNat

end

end A377029.P15592168475021674256

noncomputable section

/-- A377029: a(1) = 0; thereafter in the binary expansion of a(n-1), expand bits: 1->01 and 0->10.

Offset 1, canonical program `A377029.P15592168475021674256`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374625, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377029 (n : ℕ) : ℤ :=
  A377029.P15592168475021674256.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A374625, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A377029.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A381546.P8234513332747089303

`eq[1, A080224(n+1)%2]+1`
-/

namespace A381546.P8234513332747089303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080224 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A381546.P8234513332747089303

noncomputable section

/-- A381546: Numbers with an odd number of abundant divisors.

Offset 1, canonical program `A381546.P8234513332747089303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1834 terms. -/
def A381546 (n : ℕ) : ℤ :=
  (A381546.P8234513332747089303.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1834 terms. -/
def A381546.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389634.P7278143052267109822

`∪[A039725(n+1), A047228(n+1)]`
-/

namespace A389634.P7278143052267109822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A389634.P7278143052267109822

noncomputable section

/-- A389634: Numbers k whose abundancy (sigma(k)/k) is at least 4/3, where sigma(k) = A000203(k).

Offset 1, canonical program `A389634.P7278143052267109822`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389634 (n : ℕ) : ℤ :=
  (A389634.P7278143052267109822.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A389634.provenance : SequenceMachineLib.Provenance := .conjectured

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

