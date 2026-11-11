import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C048
import Seq.B000.C050
import Seq.B000.C051
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

/-! ## A392285.P2958692523418785165

`A001221(n+1)*(-1)^A073093(n+1)`
-/

namespace A392285.P2958692523418785165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001221 (n + 1) : ℚ) * (-1 : ℚ) ^ (A073093 (n + 1) : ℤ)

end

end A392285.P2958692523418785165

noncomputable section

/-- A392285: a(n) = omega(n) * (-1)^(bigomega(n) + 1).

Offset 1, canonical program `A392285.P2958692523418785165`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392285 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392285.P2958692523418785165.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392285.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A386684.P6936343892752032316

`filter[A067259(n+1), A049240(#)]`
-/

namespace A386684.P6936343892752032316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A386684.P6936343892752032316

noncomputable section

/-- A386684: Cubefree nonsquares with at least one prime power factor that is not square.

Offset 1, canonical program `A386684.P6936343892752032316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9871 terms. -/
def A386684 (n : ℕ) : ℤ :=
  A386684.P6936343892752032316.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9871 terms. -/
def A386684.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A390551.P17563142815161189481

`∑[A380230(n)]*A158388(n)`
-/

namespace A390551.P17563142815161189481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A158388 n

end

end A390551.P17563142815161189481

noncomputable section

/-- A390551: a(n) = Sum_{i = 0..n} i*A070939(i).

Offset 0, canonical program `A390551.P17563142815161189481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390551 (n : ℕ) : ℤ :=
  A390551.P17563142815161189481.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390551.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A391023.P8301791934320593997

`filter[A067259(1+n), A355447(#)]`
-/

namespace A391023.P8301791934320593997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067259 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A391023.P8301791934320593997

noncomputable section

/-- A391023: Numbers with more than 1 distinct prime factor and whose largest prime factor exponent is 2.

Offset 1, canonical program `A391023.P8301791934320593997`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9953 terms. -/
def A391023 (n : ℕ) : ℤ :=
  A391023.P8301791934320593997.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9953 terms. -/
def A391023.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A393588.P11221701577275867718

`∑[∑[∑[A369416(4+n)]]]`
-/

namespace A393588.P11221701577275867718
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369416 (4 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393588.P11221701577275867718

noncomputable section

/-- A393588: Expansion of 1/((1-z)*(1-2*z)*(1-3*z))^3.

Offset 0, canonical program `A393588.P11221701577275867718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A393588 (n : ℕ) : ℤ :=
  A393588.P11221701577275867718.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A393588.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A399490.P15700466457018084356

`A219054(1+n)-A212760(n)`
-/

namespace A399490.P15700466457018084356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219054 (1 + n) - A212760 n

end

end A399490.P15700466457018084356

noncomputable section

/-- A399490: Sum of squares of the elements of R(n), where R(n) is the set of n consecutive integers centered at n, with the center n omitted when n is even.

Offset 1, canonical program `A399490.P15700466457018084356`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399490 (n : ℕ) : ℤ :=
  A399490.P15700466457018084356.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399490.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A387056.P16565833962943270361

`lt[(n+1)%A037445(n+1), 1]+1`
-/

namespace A387056.P16565833962943270361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A037445 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A387056.P16565833962943270361

noncomputable section

/-- A387056: Numbers k that are divisible by the number of infinitary divisors of k.

Offset 1, canonical program `A387056.P16565833962943270361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1227 terms. -/
def A387056 (n : ℕ) : ℤ :=
  (A387056.P16565833962943270361.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1227 terms. -/
def A387056.provenance : SequenceMachineLib.Provenance := .conjectured

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

Offset 0, canonical program `A388539.P17116264068590608702`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388539 (n : ℕ) : ℤ :=
  A388539.P17116264068590608702.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A388539.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A400478.P8710240923367081991

`(a(n-1)-a(n-2))*A007953(a(n-1)+a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A400478.P8710240923367081991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (a (n - 1) - a (n - 2)) * A007953 (a (n - 1) + a (n - 2)).toNat

end

end A400478.P8710240923367081991

noncomputable section

/-- A400478: a(1)=1, a(2)=2; thereafter a(n) = (a(n-1)-a(n-2))*sum of digits(a(n-1)+a(n-2)).

Offset 1, canonical program `A400478.P8710240923367081991`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400478 (n : ℕ) : ℤ :=
  A400478.P8710240923367081991.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400478.provenance : SequenceMachineLib.Provenance := .conditional

