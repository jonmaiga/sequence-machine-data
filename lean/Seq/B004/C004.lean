import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C018
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import SequenceMachineLib.Triangle

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A369717.P11411986062886320830

`A000203(A197863(n+1))`
-/

namespace A369717.P11411986062886320830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A197863 (n + 1)).toNat

end

end A369717.P11411986062886320830

noncomputable section

/-- A369717: The sum of divisors of the smallest powerful number that is a multiple of n.

Offset 1, canonical program `A369717.P11411986062886320830`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369717 (n : ℕ) : ℤ :=
  A369717.P11411986062886320830.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369717.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369779.P3838743971055881753

`∑{d}[n+1, A010051(#)*A002618((n+1)/#)]`
-/

namespace A369779.P3838743971055881753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 d * A002618 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A369779.P3838743971055881753

noncomputable section

/-- A369779: a(n) = n * Sum_{p|n, p prime} phi(n/p) / p.

Offset 1, canonical program `A369779.P3838743971055881753`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369779 (n : ℕ) : ℤ :=
  A369779.P3838743971055881753.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369779.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A371357.P11199775498877504883

`A060818(n)*A000984(n)`
-/

namespace A371357.P11199775498877504883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060818 n * A000984 n

end

end A371357.P11199775498877504883

noncomputable section

/-- A371357: a(n) = 2^(n - HammingWeight(n)) * binomial(2*n, n).

Offset 0, canonical program `A371357.P11199775498877504883`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371357 (n : ℕ) : ℤ :=
  A371357.P11199775498877504883.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371357.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372475.P6789191976370700518

`A372472(n+1)+A372433(n+1)`
-/

namespace A372475.P6789191976370700518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372472 (n + 1) + A372433 (n + 1)

end

end A372475.P6789191976370700518

noncomputable section

/-- A372475: Length of binary expansion (or number of bits) of the n-th squarefree number.

Offset 1, canonical program `A372475.P6789191976370700518`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372475 (n : ℕ) : ℤ :=
  A372475.P6789191976370700518.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372475.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372635.P16336776361319886160

`A002088(n+1)²`
-/

namespace A372635.P16336776361319886160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1) ^ 2

end

end A372635.P16336776361319886160

noncomputable section

/-- A372635: a(n) = Sum_{j=1..n} Sum_{k=1..n} phi(j)*phi(k).

Offset 1, canonical program `A372635.P16336776361319886160`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372635 (n : ℕ) : ℤ :=
  A372635.P16336776361319886160.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372635.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373126.P14612012098336311250

`2^n-A372889(n)`
-/

namespace A373126.P14612012098336311250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A372889 n

end

end A373126.P14612012098336311250

noncomputable section

/-- A373126: Difference between 2^n and the greatest squarefree number <= 2^n.

Offset 0, canonical program `A373126.P14612012098336311250`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373126 (n : ℕ) : ℤ :=
  A373126.P14612012098336311250.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373126.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374348.P7186734061745376650

`2*A129195(n)-(n+1)`
-/

namespace A374348.P7186734061745376650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129195 n - (n + 1 : ℤ)

end

end A374348.P7186734061745376650

noncomputable section

/-- A374348: a(n) = k where wt(k) = n and k + wt(k) = a power of two, where wt(n) = A000120(n) = binary weight of n.

Offset 1, canonical program `A374348.P7186734061745376650`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374348 (n : ℕ) : ℤ :=
  A374348.P7186734061745376650.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374348.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378543.P8833094378512870217

`∑{d}[n+1, A066829((n+1)/#)*#]`
-/

namespace A378543.P8833094378512870217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A066829 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (d : ℤ)

end

end A378543.P8833094378512870217

noncomputable section

/-- A378543: Sum of divisors d of n such that n/d has an odd number of prime factors (counted with multiplicity).

Offset 1, canonical program `A378543.P8833094378512870217`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378543 (n : ℕ) : ℤ :=
  A378543.P8833094378512870217.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378543.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378642.P15085417897948943503

`n+1-A069932(n+1)`
-/

namespace A378642.P15085417897948943503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A069932 (n + 1)

end

end A378642.P15085417897948943503

noncomputable section

/-- A378642: Number of numbers m <= n such that phi(m) does not divide n, where phi is the Euler totient function (A000010).

Offset 1, canonical program `A378642.P15085417897948943503`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378642 (n : ℕ) : ℤ :=
  A378642.P15085417897948943503.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378642.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378987.P6480789479262422065

`A083254(2*n+1)`
-/

namespace A378987.P6480789479262422065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (2 * n + 1)

end

end A378987.P6480789479262422065

noncomputable section

/-- A378987: Odd bisection of A083254, where A083254(n) = 2*phi(n)-n.

Offset 1, canonical program `A378987.P6480789479262422065`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378987 (n : ℕ) : ℤ :=
  A378987.P6480789479262422065.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378987.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379715.P5673123717441379169

`A007434(A005117(n+1))`
-/

namespace A379715.P5673123717441379169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (A005117 (n + 1)).toNat

end

end A379715.P5673123717441379169

noncomputable section

/-- A379715: The second Jordan totient function applied to the squarefree numbers.

Offset 1, canonical program `A379715.P5673123717441379169`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379715 (n : ℕ) : ℤ :=
  A379715.P5673123717441379169.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379715.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379833.P6496859754452473676

`A007434(A000290(n+1))`
-/

namespace A379833.P6496859754452473676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (A000290 (n + 1)).toNat

end

end A379833.P6496859754452473676

noncomputable section

/-- A379833: The second Jordan totient function applied to the squares.

Offset 1, canonical program `A379833.P6496859754452473676`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379833 (n : ℕ) : ℤ :=
  A379833.P6496859754452473676.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379833.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379966.P12699400935038257798

`abs(A292273(n+1))`
-/

namespace A379966.P12699400935038257798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292273 (n + 1)|

end

end A379966.P12699400935038257798

noncomputable section

/-- A379966: a(n) = 1 if n is an even squarefree number, otherwise 0.

Offset 1, canonical program `A379966.P12699400935038257798`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379966 (n : ℕ) : ℤ :=
  A379966.P12699400935038257798.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379966.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385195.P13869607100043770004

`A138191(n+1)*A047994(n+1)`
-/

namespace A385195.P13869607100043770004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138191 (n + 1) * A047994 (n + 1)

end

end A385195.P13869607100043770004

noncomputable section

/-- A385195: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is either 1 or 2.

Offset 1, canonical program `A385195.P13869607100043770004`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385195 (n : ℕ) : ℤ :=
  A385195.P13869607100043770004.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385195.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A385682.P9546998427617128553

`n*(A002088(n+1)-1)`
-/

namespace A385682.P9546998427617128553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A002088 (n + 1) - 1)

end

end A385682.P9546998427617128553

noncomputable section

/-- A385682: a(n) = (n - 1) * Sum_{k=2..n} A000010(k).

Offset 1, canonical program `A385682.P9546998427617128553`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385682 (n : ℕ) : ℤ :=
  A385682.P9546998427617128553.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385682.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389447.P10658135204883957213

`A000203(n+1)/A389446(n+1)`
-/

namespace A389447.P10658135204883957213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A389446 (n + 1) : ℚ)

end

end A389447.P10658135204883957213

noncomputable section

/-- A389447: Numerator of ratio sigma(n) / A057723(n), where A057723 is sum of positive divisors of n that are divisible by every prime that divides n and sigma is the sum of divisors function.

Offset 1, canonical program `A389447.P10658135204883957213`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389447 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389447.P10658135204883957213.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389447.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389448.P4992283218641598864

`A057723(n+1)/A389446(n+1)`
-/

namespace A389448.P4992283218641598864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057723 (n + 1) : ℚ) / (A389446 (n + 1) : ℚ)

end

end A389448.P4992283218641598864

noncomputable section

/-- A389448: Denominator of ratio sigma(n) / A057723(n), where A057723 is sum of positive divisors of n that are divisible by every prime that divides n and sigma is the sum of divisors function.

Offset 1, canonical program `A389448.P4992283218641598864`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389448 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389448.P4992283218641598864.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389448.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A389978.P11057801239353336725

`(A367866(n+1)+A389977(n+1)+A367865(n+1)+A389775(n+1))/4`
-/

namespace A389978.P11057801239353336725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367866 (n + 1) + A389977 (n + 1) + A367865 (n + 1) + A389775 (n + 1) : ℚ) / 4

end

end A389978.P11057801239353336725

noncomputable section

/-- A389978: Arithmetic mean of A367866(n), A389977(n), A367865(n), and A389775(n).

Offset 1, canonical program `A389978.P11057801239353336725`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389978 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A389978.P11057801239353336725.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A389978.provenance : SequenceMachineLib.Provenance := .assumedProven

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

Offset 0, canonical program `A390442.P3251703464741091877`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390442 (n : ℕ) : ℤ :=
  A390442.P3251703464741091877.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390442.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390755.P10814338958508066738

`A000010(A197863(n+1))`
-/

namespace A390755.P10814338958508066738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A197863 (n + 1)).toNat

end

end A390755.P10814338958508066738

noncomputable section

/-- A390755: The Euler totient of the smallest powerful number divisible by n.

Offset 1, canonical program `A390755.P10814338958508066738`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390755 (n : ℕ) : ℤ :=
  A390755.P10814338958508066738.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390755.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390801.P2099821867161505700

`(A010051(n+1)+1)*(n+1)*A117494(n+1)/2`
-/

namespace A390801.P2099821867161505700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A010051 (n + 1) + 1) * (n + 1 : ℤ) * A117494 (n + 1) : ℚ) / 2

end

end A390801.P2099821867161505700

noncomputable section

/-- A390801: The sum of the integers k from 1 to n such that gcd(n, k) is prime.

Offset 1, canonical program `A390801.P2099821867161505700`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390801 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390801.P2099821867161505700.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390801.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A390805.P3287936561210564327

`(n+1+A065333(n+1))*A372671(n+1)/2`
-/

namespace A390805.P3287936561210564327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1 : ℤ) + A065333 (n + 1)) * A372671 (n + 1) : ℚ) / 2

end

end A390805.P3287936561210564327

noncomputable section

/-- A390805: The sum of the integers k from 1 to n such that gcd(n, k) is a 3-smooth number (A003586).

Offset 1, canonical program `A390805.P3287936561210564327`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390805 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390805.P3287936561210564327.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A390805.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392085.P14049026985306902224

`A047994(A019554(n+1))`
-/

namespace A392085.P14049026985306902224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A019554 (n + 1)).toNat

end

end A392085.P14049026985306902224

noncomputable section

/-- A392085: The unitary totient of the smallest number whose square is divisible by n.

Offset 1, canonical program `A392085.P14049026985306902224`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392085 (n : ℕ) : ℤ :=
  A392085.P14049026985306902224.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392085.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392087.P1327224941349964914

`A047994(A053143(n+1))`
-/

namespace A392087.P1327224941349964914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A053143 (n + 1)).toNat

end

end A392087.P1327224941349964914

noncomputable section

/-- A392087: The unitary totient of the smallest square divisible by n.

Offset 1, canonical program `A392087.P1327224941349964914`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392087 (n : ℕ) : ℤ :=
  A392087.P1327224941349964914.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392087.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392089.P14519463081902606176

`A047994(A197863(n+1))`
-/

namespace A392089.P14519463081902606176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A197863 (n + 1)).toNat

end

end A392089.P14519463081902606176

noncomputable section

/-- A392089: The unitary totient of the smallest powerful number that is divisible by n.

Offset 1, canonical program `A392089.P14519463081902606176`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392089 (n : ℕ) : ℤ :=
  A392089.P14519463081902606176.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392089.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392168.P7882618173264057118

`A001615(A053143(n+1))`
-/

namespace A392168.P7882618173264057118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A053143 (n + 1)).toNat

end

end A392168.P7882618173264057118

noncomputable section

/-- A392168: The Dedekind psi function value of the smallest square divisible by n.

Offset 1, canonical program `A392168.P7882618173264057118`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392168 (n : ℕ) : ℤ :=
  A392168.P7882618173264057118.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392168.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A392170.P11667223152530943360

`A001615(A197863(n+1))`
-/

namespace A392170.P11667223152530943360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A197863 (n + 1)).toNat

end

end A392170.P11667223152530943360

noncomputable section

/-- A392170: The Dedekind psi function value of the smallest powerful number that is a multiple of n.

Offset 1, canonical program `A392170.P11667223152530943360`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392170 (n : ℕ) : ℤ :=
  A392170.P11667223152530943360.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392170.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369049.P9666257041072368809

`(n+2)%A003415(n+2)`
-/

namespace A369049.P9666257041072368809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A003415 (n + 2))

end

end A369049.P9666257041072368809

noncomputable section

/-- A369049: a(n) = n mod n', where n' is the arithmetic derivative of n, A003415.

Offset 2, canonical program `A369049.P9666257041072368809`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369049 (n : ℕ) : ℤ :=
  A369049.P9666257041072368809.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369049.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369052.P13766350415687932564

`n-2*A003415(n)`
-/

namespace A369052.P13766350415687932564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A003415 n

end

end A369052.P13766350415687932564

noncomputable section

/-- A369052: a(n) = n - n'*2, where n' is the arithmetic derivative of n, A003415.

Offset 0, canonical program `A369052.P13766350415687932564`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369052 (n : ℕ) : ℤ :=
  A369052.P13766350415687932564.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369052.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369465.P18253036522274647247

`A003415(A000265(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369465.P18253036522274647247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000265 (n + 1)).toNat

end

end A369465.P18253036522274647247

noncomputable section

/-- A369465: Arithmetic derivative of the odd part of n: a(n) = A003415(A000265(n)).

Offset 1, canonical program `A369465.P18253036522274647247`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369465 (n : ℕ) : ℤ :=
  A369465.P18253036522274647247.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369465.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369658.P409423305445294084

`A011655(n)*A079978(A003415(n))`
-/

namespace A369658.P409423305445294084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n * A079978 (A003415 n).toNat

end

end A369658.P409423305445294084

noncomputable section

/-- A369658: a(n) = 1 if n is not multiple of 3, but its arithmetic derivative is, otherwise 0.

Offset 0, canonical program `A369658.P409423305445294084`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369658 (n : ℕ) : ℤ :=
  A369658.P409423305445294084.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369658.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370129.P9840769803165545033

`A003415(A002110(col(n))+A002110(row(n)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A370129.P9840769803165545033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A002110 (SequenceMachineLib.triCol n) + A002110 (SequenceMachineLib.triRow n)).toNat

end

end A370129.P9840769803165545033

noncomputable section

/-- A370129: Triangle read by rows: T(n,k) = A003415(A002110(n)+A002110(k)), 0 <= k <= n; arithmetic derivatives of the sums of two primorial numbers.

Offset 0, canonical program `A370129.P9840769803165545033`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370129 (n : ℕ) : ℤ :=
  A370129.P9840769803165545033.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370129.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370136.P9101358364246055497

`A003415(A370135(n+1))`
-/

namespace A370136.P9101358364246055497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A370135 (n + 1)).toNat

end

end A370136.P9101358364246055497

noncomputable section

/-- A370136: Triangle read by rows: T(n,k) = arithmetic derivative of ((A002110(n) + A002110(k)) / A002110(k)), 1 <= k <= n.

Offset 1, canonical program `A370136.P9101358364246055497`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370136 (n : ℕ) : ℤ :=
  A370136.P9101358364246055497.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370136.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370783.P9884989495501341942

`A332880(A057521(n+1))`
-/

namespace A370783.P9884989495501341942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332880 (A057521 (n + 1)).toNat

end

end A370783.P9884989495501341942

noncomputable section

/-- A370783: a(n) is the numerator of the sum of the reciprocals of the squarefree divisors of the powerful part of n.

Offset 1, canonical program `A370783.P9884989495501341942`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370783 (n : ℕ) : ℤ :=
  A370783.P9884989495501341942.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370783.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370784.P17196978018823182147

`A332881(A057521(n+1))`
-/

namespace A370784.P17196978018823182147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332881 (A057521 (n + 1)).toNat

end

end A370784.P17196978018823182147

noncomputable section

/-- A370784: a(n) is the denominator of the sum of the reciprocals of the squarefree divisors of the powerful part of n.

Offset 1, canonical program `A370784.P17196978018823182147`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370784 (n : ℕ) : ℤ :=
  A370784.P17196978018823182147.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370784.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A371240.P7897189969390004216

`A000203(A032924(n+1))`
-/

namespace A371240.P7897189969390004216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A032924 (n + 1)).toNat

end

end A371240.P7897189969390004216

noncomputable section

/-- A371240: The sum of divisors of the zeroless numbers in base 3 (A032924).

Offset 1, canonical program `A371240.P7897189969390004216`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371240 (n : ℕ) : ℤ :=
  A371240.P7897189969390004216.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371240.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A371241.P3336735415354653583

`A000010(A032924(n+1))`
-/

namespace A371241.P3336735415354653583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A032924 (n + 1)).toNat

end

end A371241.P3336735415354653583

noncomputable section

/-- A371241: Euler totient function applied to the zeroless numbers in base 3 (A032924).

Offset 1, canonical program `A371241.P3336735415354653583`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371241 (n : ℕ) : ℤ :=
  A371241.P3336735415354653583.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A371241.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372749.P13035462491583893748

`A202342(n+1)+A136496(n+1)+A381841(n+1)-2`
-/

namespace A372749.P13035462491583893748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (n + 1) + A136496 (n + 1) + A381841 (n + 1) - 2

end

end A372749.P13035462491583893748

noncomputable section

/-- A372749: 4th column of the 3-Zeckendorf array (A136189).

Offset 1, canonical program `A372749.P13035462491583893748`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372749 (n : ℕ) : ℤ :=
  A372749.P13035462491583893748.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372749.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372750.P11021400097773802461

`A202342(n+1)+A136496(n+1)+2*A381841(n+1)-3`
-/

namespace A372750.P11021400097773802461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202342 (n + 1) + A136496 (n + 1) + 2 * A381841 (n + 1) - 3

end

end A372750.P11021400097773802461

noncomputable section

/-- A372750: 5th column of the 3-Zeckendorf array (A136189).

Offset 1, canonical program `A372750.P11021400097773802461`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372750 (n : ℕ) : ℤ :=
  A372750.P11021400097773802461.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372750.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372752.P5687007721040332012

`2*A202342(n+1)+A136496(n+1)+3*A381841(n+1)-4`
-/

namespace A372752.P5687007721040332012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A202342 (n + 1) + A136496 (n + 1) + 3 * A381841 (n + 1) - 4

end

end A372752.P5687007721040332012

noncomputable section

/-- A372752: 6th column of the 3-Zeckendorf array (A136189).

Offset 1, canonical program `A372752.P5687007721040332012`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372752 (n : ℕ) : ℤ :=
  A372752.P5687007721040332012.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372752.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372756.P16576302570727181633

`3*A202342(n+1)+2*A136496(n+1)+4*A381841(n+1)-6`
-/

namespace A372756.P16576302570727181633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A202342 (n + 1) + 2 * A136496 (n + 1) + 4 * A381841 (n + 1) - 6

end

end A372756.P16576302570727181633

noncomputable section

/-- A372756: 7th column of the 3-Zeckendorf array (A136189).

Offset 1, canonical program `A372756.P16576302570727181633`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372756 (n : ℕ) : ℤ :=
  A372756.P16576302570727181633.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372756.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372757.P4399208571086954249

`4*A202342(n+1)+3*A136496(n+1)+6*A381841(n+1)-9`
-/

namespace A372757.P4399208571086954249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A202342 (n + 1) + 3 * A136496 (n + 1) + 6 * A381841 (n + 1) - 9

end

end A372757.P4399208571086954249

noncomputable section

/-- A372757: 8th column of the 3-Zeckendorf array (A136189).

Offset 1, canonical program `A372757.P4399208571086954249`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372757 (n : ℕ) : ℤ :=
  A372757.P4399208571086954249.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372757.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373364.P8547950682954605811

`gcd(A001414(n+1), A003415(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373364.P8547950682954605811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001414 (n + 1)) (A003415 (n + 1))

end

end A373364.P8547950682954605811

noncomputable section

/-- A373364: a(n) = gcd(A001414(n), A003415(n)), where A001414 is the sum of prime factors with repetition, and A003415 is the arithmetic derivative.

Offset 1, canonical program `A373364.P8547950682954605811`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373364 (n : ℕ) : ℤ :=
  (A373364.P8547950682954605811.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373364.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373378.P10527804260792404236

`gcd(A003415(n+1), A059975(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373378.P10527804260792404236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003415 (n + 1)) (A059975 (n + 1))

end

end A373378.P10527804260792404236

noncomputable section

/-- A373378: a(n) = gcd(A003415(n), A059975(n)), where A003415 is the arithmetic derivative and A059975 is fully additive with a(p) = p-1.

Offset 1, canonical program `A373378.P10527804260792404236`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373378 (n : ℕ) : ℤ :=
  (A373378.P10527804260792404236.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373378.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373480.P17278960438644468592

`A003415(n+2)%A001414(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373480.P17278960438644468592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 (n + 2)) (A001414 (n + 2))

end

end A373480.P17278960438644468592

noncomputable section

/-- A373480: a(n) = A003415(n) mod A001414(n), where A003415 is the arithmetic derivative, and A001414 is the sum of prime factors with multiplicity.

Offset 2, canonical program `A373480.P17278960438644468592`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373480 (n : ℕ) : ℤ :=
  A373480.P17278960438644468592.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373480.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373845.P12208924988060939389

`A003415(1+A370121(C(row(n)+2, 2)+col(n)+1))`
-/

namespace A373845.P12208924988060939389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (1 + A370121 (Nat.choose (SequenceMachineLib.triRow n + 2) 2 + (SequenceMachineLib.triCol n + 1))).toNat

end

end A373845.P12208924988060939389

noncomputable section

/-- A373845: Triangle read by rows: T(n,k) = arithmetic derivative of (1 + A002110(n) + A002110(k)), 1 <= k <= n, where A002110(n) is the n-th primorial number.

Offset 1, canonical program `A373845.P12208924988060939389`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373845 (n : ℕ) : ℤ :=
  A373845.P12208924988060939389.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373845.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377565.P6887549586258778470

`(n+1)*A097327(n+1)`
-/

namespace A377565.P6887549586258778470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A097327 (n + 1)

end

end A377565.P6887549586258778470

noncomputable section

/-- A377565: a(n) is the least multiple of n with more decimal digits than n.

Offset 1, canonical program `A377565.P6887549586258778470`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377565 (n : ℕ) : ℤ :=
  A377565.P6887549586258778470.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377565.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378123.P719144829619954669

`A001221(A071148(n+1))`
-/

namespace A378123.P719144829619954669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A071148 (n + 1)).toNat

end

end A378123.P719144829619954669

noncomputable section

/-- A378123: a(n) = number of prime divisors of the sum of the first n odd primes.

Offset 1, canonical program `A378123.P719144829619954669`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378123 (n : ℕ) : ℤ :=
  A378123.P719144829619954669.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378123.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A379967.P12250939003195279045

`A003415(A003557(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379967.P12250939003195279045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A003557 (n + 1)).toNat

end

end A379967.P12250939003195279045

noncomputable section

/-- A379967: Arithmetic derivative of {n divided by its largest squarefree divisor}: a(n) = A003415(A003557(n)).

Offset 1, canonical program `A379967.P12250939003195279045`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379967 (n : ℕ) : ℤ :=
  A379967.P12250939003195279045.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A379967.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382489.P8206433590181445063

`A034444(A355582(n+1))`
-/

namespace A382489.P8206433590181445063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A355582 (n + 1)).toNat

end

end A382489.P8206433590181445063

noncomputable section

/-- A382489: The number of unitary 5-smooth divisors of n.

Offset 1, canonical program `A382489.P8206433590181445063`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382489 (n : ℕ) : ℤ :=
  A382489.P8206433590181445063.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382489.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384042.P14644639506772566122

`A000010(A065331(n+1))*A065330(n+1)`
-/

namespace A384042.P14644639506772566122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A065331 (n + 1)).toNat * A065330 (n + 1)

end

end A384042.P14644639506772566122

noncomputable section

/-- A384042: The number of integers k from 1 to n such that gcd(n,k) is a 5-rough number (A007310).

Offset 1, canonical program `A384042.P14644639506772566122`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384042 (n : ℕ) : ℤ :=
  A384042.P14644639506772566122.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384042.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384048.P15247859992876317530

`A047994(A057521(n+1))*A055231(n+1)`
-/

namespace A384048.P15247859992876317530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A057521 (n + 1)).toNat * A055231 (n + 1)

end

end A384048.P15247859992876317530

noncomputable section

/-- A384048: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is squarefree.

Offset 1, canonical program `A384048.P15247859992876317530`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384048 (n : ℕ) : ℤ :=
  A384048.P15247859992876317530.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384048.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384055.P10252134696873280874

`A047994(A006519(n+1))*A000265(n+1)`
-/

namespace A384055.P10252134696873280874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A006519 (n + 1)).toNat * A000265 (n + 1)

end

end A384055.P10252134696873280874

noncomputable section

/-- A384055: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is odd.

Offset 1, canonical program `A384055.P10252134696873280874`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384055 (n : ℕ) : ℤ :=
  A384055.P10252134696873280874.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384055.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384057.P11150408959898623205

`A047994(A065330(n+1))*A065331(n+1)`
-/

namespace A384057.P11150408959898623205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A065330 (n + 1)).toNat * A065331 (n + 1)

end

end A384057.P11150408959898623205

noncomputable section

/-- A384057: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is a 3-smooth number.

Offset 1, canonical program `A384057.P11150408959898623205`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384057 (n : ℕ) : ℤ :=
  A384057.P11150408959898623205.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384057.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384058.P8076363188625105423

`A047994(A065331(n+1))*A065330(n+1)`
-/

namespace A384058.P8076363188625105423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A065331 (n + 1)).toNat * A065330 (n + 1)

end

end A384058.P8076363188625105423

noncomputable section

/-- A384058: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is a 5-rough number (A007310).

Offset 1, canonical program `A384058.P8076363188625105423`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384058 (n : ℕ) : ℤ :=
  A384058.P8076363188625105423.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A384058.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394085.P10152136709517601280

`A000203(n+1)-A063956(n+1)+A056169(n+1)`
-/

namespace A394085.P10152136709517601280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A063956 (n + 1) + A056169 (n + 1)

end

end A394085.P10152136709517601280

noncomputable section

/-- A394085: a(n) = sigma(n) - Sum_{p|n, p prime, gcd(p,n/p) = 1} (p-1).

Offset 1, canonical program `A394085.P10152136709517601280`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394085 (n : ℕ) : ℤ :=
  A394085.P10152136709517601280.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394085.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400173.P10105449556572112451

`∑{d}[n+1, A008836((n+1)/#)*A003415(#)]`
-/

namespace A400173.P10105449556572112451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A003415 d

end

end A400173.P10105449556572112451

noncomputable section

/-- A400173: Dirichlet convolution of the arithmetic derivative with Liouville's lambda.

Offset 1, canonical program `A400173.P10105449556572112451`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400173 (n : ℕ) : ℤ :=
  A400173.P10105449556572112451.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400173.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A401022.P16118425534443193509

`A065331(n+1)*A065331(n+2)`
-/

namespace A401022.P16118425534443193509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (n + 1) * A065331 (n + 2)

end

end A401022.P16118425534443193509

noncomputable section

/-- A401022: Largest 3-smooth divisor of n*(n+1).

Offset 1, canonical program `A401022.P16118425534443193509`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401022 (n : ℕ) : ℤ :=
  A401022.P16118425534443193509.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A401022.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A369716.P4935667274442389698

`A000005(A197863(n+1))`
-/

namespace A369716.P4935667274442389698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A197863 (n + 1)).toNat

end

end A369716.P4935667274442389698

noncomputable section

/-- A369716: The number of divisors of the smallest powerful number that is a multiple of n.

Offset 1, canonical program `A369716.P4935667274442389698`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369716 (n : ℕ) : ℤ :=
  A369716.P4935667274442389698.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A369716.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A370297.P12303585203069369868

`∑{d}[n+1, A008683(#)²*A000005((n+1)/#)²]`
-/

namespace A370297.P12303585203069369868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d ^ 2 * A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat ^ 2

end

end A370297.P12303585203069369868

noncomputable section

/-- A370297: Inverse Moebius transform of A322328.

Offset 1, canonical program `A370297.P12303585203069369868`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370297 (n : ℕ) : ℤ :=
  A370297.P12303585203069369868.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A370297.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372709.P8939552730713478089

`∑{#}[n, A000005((n+1)*(#+1))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372709.P8939552730713478089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000005 ((n + 1) * (k + 1))

end

end A372709.P8939552730713478089

noncomputable section

/-- A372709: a(n) = Sum_{k=1..n} tau(n*k), where tau(n) = number of divisors of n, cf. A000005.

Offset 1, canonical program `A372709.P8939552730713478089`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000005((n+1)*(#+1))]` (program `A372709.P8939552730713478089`, by `A372709.P8939552730713478089.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372709 (n : ℕ) : ℤ :=
  A372709.P8939552730713478089.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000005((n+1)*(#+1))]` (program `A372709.P8939552730713478089`, by `A372709.P8939552730713478089.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372709.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372713.P15261460817430982456

`A000005(3*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372713.P15261460817430982456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * (n + 1))

end

end A372713.P15261460817430982456

noncomputable section

/-- A372713: Number of divisors of 3n; a(n) = tau(3*n) = A000005(3*n).

Offset 1, canonical program `A372713.P15261460817430982456`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(3*(n+1))` (program `A372713.P15261460817430982456`, by `A372713.P15261460817430982456.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372713 (n : ℕ) : ℤ :=
  A372713.P15261460817430982456.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(3*(n+1))` (program `A372713.P15261460817430982456`, by `A372713.P15261460817430982456.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372713.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372714.P12117670402611410470

`A000005(3*(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372714.P12117670402611410470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * (n + 1) - 1)

end

end A372714.P12117670402611410470

noncomputable section

/-- A372714: a(n) = tau(3*n-1) = A000005(3*n-1).

Offset 1, canonical program `A372714.P12117670402611410470`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(3*(n+1)-1)` (program `A372714.P12117670402611410470`, by `A372714.P12117670402611410470.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372714 (n : ℕ) : ℤ :=
  A372714.P12117670402611410470.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(3*(n+1)-1)` (program `A372714.P12117670402611410470`, by `A372714.P12117670402611410470.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372714.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372715.P12208428737339877040

`A000005(3*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372715.P12208428737339877040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * n + 1)

end

end A372715.P12208428737339877040

noncomputable section

/-- A372715: a(n) = tau(3*n-2) = A000005(3*n-2).

Offset 1, canonical program `A372715.P12208428737339877040`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(3*n+1)` (program `A372715.P12208428737339877040`, by `A372715.P12208428737339877040.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372715 (n : ℕ) : ℤ :=
  A372715.P12208428737339877040.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(3*n+1)` (program `A372715.P12208428737339877040`, by `A372715.P12208428737339877040.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372715.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372784.P17501289729252677399

`A000005(4*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372784.P17501289729252677399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 * (n + 1))

end

end A372784.P17501289729252677399

noncomputable section

/-- A372784: a(n) = tau(4*n) = A000005(4*n).

Offset 1, canonical program `A372784.P17501289729252677399`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(4*(n+1))` (program `A372784.P17501289729252677399`, by `A372784.P17501289729252677399.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372784 (n : ℕ) : ℤ :=
  A372784.P17501289729252677399.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(4*(n+1))` (program `A372784.P17501289729252677399`, by `A372784.P17501289729252677399.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372784.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372785.P1137355158066766240

`A000005(5*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372785.P1137355158066766240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * (n + 1))

end

end A372785.P1137355158066766240

noncomputable section

/-- A372785: a(n) = tau(5*n) = A000005(5*n).

Offset 1, canonical program `A372785.P1137355158066766240`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(5*(n+1))` (program `A372785.P1137355158066766240`, by `A372785.P1137355158066766240.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372785 (n : ℕ) : ℤ :=
  A372785.P1137355158066766240.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(5*(n+1))` (program `A372785.P1137355158066766240`, by `A372785.P1137355158066766240.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372785.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372786.P3226320515726835874

`A000005(6*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372786.P3226320515726835874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (6 * (n + 1))

end

end A372786.P3226320515726835874

noncomputable section

/-- A372786: Number of divisors of 6n; a(n) = tau(6*n) = A000005(6*n).

Offset 1, canonical program `A372786.P3226320515726835874`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(6*(n+1))` (program `A372786.P3226320515726835874`, by `A372786.P3226320515726835874.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372786 (n : ℕ) : ℤ :=
  A372786.P3226320515726835874.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(6*(n+1))` (program `A372786.P3226320515726835874`, by `A372786.P3226320515726835874.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372786.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372787.P5367107089574616924

`A000005(7*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372787.P5367107089574616924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (7 * (n + 1))

end

end A372787.P5367107089574616924

noncomputable section

/-- A372787: a(n) = tau(7*n) = A000005(7*n).

Offset 1, canonical program `A372787.P5367107089574616924`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(7*(n+1))` (program `A372787.P5367107089574616924`, by `A372787.P5367107089574616924.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372787 (n : ℕ) : ℤ :=
  A372787.P5367107089574616924.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(7*(n+1))` (program `A372787.P5367107089574616924`, by `A372787.P5367107089574616924.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372787.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372788.P1588842482571205510

`A000005(8*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372788.P1588842482571205510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (8 * (n + 1))

end

end A372788.P1588842482571205510

noncomputable section

/-- A372788: a(n) = tau(8*n) = A000005(8*n).

Offset 1, canonical program `A372788.P1588842482571205510`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(8*(n+1))` (program `A372788.P1588842482571205510`, by `A372788.P1588842482571205510.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372788 (n : ℕ) : ℤ :=
  A372788.P1588842482571205510.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(8*(n+1))` (program `A372788.P1588842482571205510`, by `A372788.P1588842482571205510.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372788.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372789.P9582021093738632599

`A000005(9*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372789.P9582021093738632599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (9 * (n + 1))

end

end A372789.P9582021093738632599

noncomputable section

/-- A372789: Number of divisors of 9n; a(n) = tau(9*n) = A000005(9*n).

Offset 1, canonical program `A372789.P9582021093738632599`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(9*(n+1))` (program `A372789.P9582021093738632599`, by `A372789.P9582021093738632599.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372789 (n : ℕ) : ℤ :=
  A372789.P9582021093738632599.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(9*(n+1))` (program `A372789.P9582021093738632599`, by `A372789.P9582021093738632599.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372789.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372790.P2447796418738080202

`A000005(10*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372790.P2447796418738080202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (10 * (n + 1))

end

end A372790.P2447796418738080202

noncomputable section

/-- A372790: a(n) = tau(10*n) = A000005(10*n).

Offset 1, canonical program `A372790.P2447796418738080202`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(10*(n+1))` (program `A372790.P2447796418738080202`, by `A372790.P2447796418738080202.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372790 (n : ℕ) : ℤ :=
  A372790.P2447796418738080202.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(10*(n+1))` (program `A372790.P2447796418738080202`, by `A372790.P2447796418738080202.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372790.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372791.P11603537677751678447

`A000005(11*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372791.P11603537677751678447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (11 * (n + 1))

end

end A372791.P11603537677751678447

noncomputable section

/-- A372791: a(n) = tau(11*n) = A000005(11*n).

Offset 1, canonical program `A372791.P11603537677751678447`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(11*(n+1))` (program `A372791.P11603537677751678447`, by `A372791.P11603537677751678447.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372791 (n : ℕ) : ℤ :=
  A372791.P11603537677751678447.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(11*(n+1))` (program `A372791.P11603537677751678447`, by `A372791.P11603537677751678447.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372791.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372792.P6141643957369447150

`A000005(12*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372792.P6141643957369447150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (12 * (n + 1))

end

end A372792.P6141643957369447150

noncomputable section

/-- A372792: Number of divisors of 12n; a(n) = tau(12*n) = A000005(12*n).

Offset 1, canonical program `A372792.P6141643957369447150`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(12*(n+1))` (program `A372792.P6141643957369447150`, by `A372792.P6141643957369447150.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372792 (n : ℕ) : ℤ :=
  A372792.P6141643957369447150.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(12*(n+1))` (program `A372792.P6141643957369447150`, by `A372792.P6141643957369447150.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372792.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372928.P7980517800335584119

`∑{d}[n+1, A008683((n+1)/#)*#^3*A000005(#)]`
-/

namespace A372928.P7980517800335584119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (d ^ 3 : ℤ) * A000005 d

end

end A372928.P7980517800335584119

noncomputable section

/-- A372928: a(n) = Sum_{1 <= x_1, x_2, x_3 <= n} gcd(x_1, x_2, x_3, n)^3.

Offset 1, canonical program `A372928.P7980517800335584119`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372928 (n : ℕ) : ℤ :=
  A372928.P7980517800335584119.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372928.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372931.P10430681316221614128

`∑{d}[n+1, A008683((n+1)/#)*#^4*A000005(#)]`
-/

namespace A372931.P10430681316221614128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (d ^ 4 : ℤ) * A000005 d

end

end A372931.P10430681316221614128

noncomputable section

/-- A372931: a(n) = Sum_{1 <= x_1, x_2, x_3, x_4 <= n} gcd(x_1, x_2, x_3, x_4, n)^4.

Offset 1, canonical program `A372931.P10430681316221614128`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372931 (n : ℕ) : ℤ :=
  A372931.P10430681316221614128.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372931.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372939.P5922901756224703713

`∑{d}[n+1, A008683((n+1)/#)*#^(n+1)*A000005(#)]`
-/

namespace A372939.P5922901756224703713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (d ^ (n + 1) : ℤ) * A000005 d

end

end A372939.P5922901756224703713

noncomputable section

/-- A372939: a(n) = Sum_{1 <= x_1, x_2, ... , x_n <= n} gcd(x_1, x_2, ... , x_n, n)^n.

Offset 1, canonical program `A372939.P5922901756224703713`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372939 (n : ℕ) : ℤ :=
  A372939.P5922901756224703713.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A372939.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A372997.P16707650036408767647

`∑{#}[n, A000005(((n+1)/gcd(#+1, n+1))^3)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372997.P16707650036408767647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000005 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (Nat.gcd (k + 1) (n + 1) : ℚ)) ^ 3)).toNat

end

end A372997.P16707650036408767647

noncomputable section

/-- A372997: a(n) = Sum_{k=1..n} tau( (n/gcd(k,n))^3 ).

Offset 1, canonical program `A372997.P16707650036408767647`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000005(((n+1)/gcd(#+1, n+1))^3)]` (program `A372997.P16707650036408767647`, by `A372997.P16707650036408767647.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372997 (n : ℕ) : ℤ :=
  A372997.P16707650036408767647.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000005(((n+1)/gcd(#+1, n+1))^3)]` (program `A372997.P16707650036408767647`, by `A372997.P16707650036408767647.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372997.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A372999.P5772250302117947782

`∑{#}[n, A000005(((n+1)/gcd(#+1, n+1))^4)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A372999.P5772250302117947782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000005 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (Nat.gcd (k + 1) (n + 1) : ℚ)) ^ 4)).toNat

end

end A372999.P5772250302117947782

noncomputable section

/-- A372999: a(n) = Sum_{k=1..n} tau( (n/gcd(k,n))^4 ).

Offset 1, canonical program `A372999.P5772250302117947782`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000005(((n+1)/gcd(#+1, n+1))^4)]` (program `A372999.P5772250302117947782`, by `A372999.P5772250302117947782.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372999 (n : ℕ) : ℤ :=
  A372999.P5772250302117947782.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000005(((n+1)/gcd(#+1, n+1))^4)]` (program `A372999.P5772250302117947782`, by `A372999.P5772250302117947782.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A372999.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A373002.P1557167078996298537

`∑{#}[n, A000005(((n+1)/gcd(#+1, n+1))^(n+1))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373002.P1557167078996298537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000005 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (Nat.gcd (k + 1) (n + 1) : ℚ)) ^ (n + 1))).toNat

end

end A373002.P1557167078996298537

noncomputable section

/-- A373002: a(n) = Sum_{k=1..n} tau( (n/gcd(k,n))^n ).

Offset 1, canonical program `A373002.P1557167078996298537`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000005(((n+1)/gcd(#+1, n+1))^(n+1))]` (program `A373002.P1557167078996298537`, by `A373002.P1557167078996298537.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A373002 (n : ℕ) : ℤ :=
  A373002.P1557167078996298537.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000005(((n+1)/gcd(#+1, n+1))^(n+1))]` (program `A373002.P1557167078996298537`, by `A373002.P1557167078996298537.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A373002.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A373113.P16353525734578801021

`∑{#}[n+1+A000005(n+1)-1-(n+1), #+n+1]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373113.P16353525734578801021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A000005 (n + 1) - 1 - (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (k + (n + 1))

end

end A373113.P16353525734578801021

noncomputable section

/-- A373113: For n >= 1, a(n) = Sum_{i = n..(n + A000005(n) - 1)} i.

Offset 1, canonical program `A373113.P16353525734578801021`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n+1+A000005(n+1)-1-(n+1), #+n+1]` (program `A373113.P16353525734578801021`, by `A373113.P16353525734578801021.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A373113 (n : ℕ) : ℤ :=
  (A373113.P16353525734578801021.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n+1+A000005(n+1)-1-(n+1), #+n+1]` (program `A373113.P16353525734578801021`, by `A373113.P16353525734578801021.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A373113.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A373925.P819866508961225466

`A000005(n+1)-3-(-1)^(n+1)`
-/

namespace A373925.P819866508961225466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - 3 - (-1) ^ (n + 1)

end

end A373925.P819866508961225466

noncomputable section

/-- A373925: a(n) = Sum_{d|n} (-1)^phi(d).

Offset 1, canonical program `A373925.P819866508961225466`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373925 (n : ℕ) : ℤ :=
  A373925.P819866508961225466.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373925.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374969.P4381911814034986725

`(n+2)*A000005(n+1)-2*A000203(n+1)`
-/

namespace A374969.P4381911814034986725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A000005 (n + 1) - 2 * A000203 (n + 1)

end

end A374969.P4381911814034986725

noncomputable section

/-- A374969: Number of ordered solutions (x,y,z,w) to x*y + y*z + z*w + w*x = n with x,y,z,w >= 1.

Offset 1, canonical program `A374969.P4381911814034986725`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374969 (n : ℕ) : ℤ :=
  A374969.P4381911814034986725.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A374969.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A374973.P9268558741575386359

`∑{#}[n-1, A000005(#+1)*A001157(n+1-(#+1))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A374973.P9268558741575386359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A000005 (k + 1) * A001157 (n + 1 - (k + 1))

end

end A374973.P9268558741575386359

noncomputable section

/-- A374973: a(n) = Sum_{k=1..n-1} tau(k) * sigma_2(n-k).

Offset 1, canonical program `A374973.P9268558741575386359`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, A000005(#+1)*A001157(n+1-(#+1))]` (program `A374973.P9268558741575386359`, by `A374973.P9268558741575386359.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A374973 (n : ℕ) : ℤ :=
  A374973.P9268558741575386359.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, A000005(#+1)*A001157(n+1-(#+1))]` (program `A374973.P9268558741575386359`, by `A374973.P9268558741575386359.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A374973.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A376514.P15209874510348841502

`A000005(n+1)-2^A001221(n+1)-A046660(n+1)`
-/

namespace A376514.P15209874510348841502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) - (2 : ℚ) ^ (A001221 (n + 1) : ℤ) - (A046660 (n + 1) : ℚ)

end

end A376514.P15209874510348841502

noncomputable section

/-- A376514: Number of divisors of n that are neither squarefree nor prime powers.

Offset 1, canonical program `A376514.P15209874510348841502`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376514 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A376514.P15209874510348841502.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A376514.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A377304.P8947951460209608358

`C(A000005(n+1)+2, 3)`
-/

namespace A377304.P8947951460209608358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000005 (n + 1) + 2).toNat 3

end

end A377304.P8947951460209608358

noncomputable section

/-- A377304: a(n) is the number of distinct cuboids whose edges are divisors of n.

Offset 1, canonical program `A377304.P8947951460209608358`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377304 (n : ℕ) : ℤ :=
  (A377304.P8947951460209608358.a (n - 1) : ℤ)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A377304.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378216.P4619166357507459087

`2-A000005(n+1)`
-/

namespace A378216.P4619166357507459087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000005 (n + 1)

end

end A378216.P4619166357507459087

noncomputable section

/-- A378216: Dirichlet inverse of A174725.

Offset 1, canonical program `A378216.P4619166357507459087`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378216 (n : ℕ) : ℤ :=
  A378216.P4619166357507459087.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A378216.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A378887.P8856246218187554853

`gcd(n+1, A001511(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378887.P8856246218187554853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A001511 (n + 1))

end

end A378887.P8856246218187554853

noncomputable section

/-- A378887: a(n) = gcd(n, A001511(n)).

Offset 1, canonical program `A378887.P8856246218187554853`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n+1, A001511(n+1))` (program `A378887.P8856246218187554853`, by `A378887.P8856246218187554853.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A378887 (n : ℕ) : ℤ :=
  (A378887.P8856246218187554853.a (n - 1) : ℤ)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n+1, A001511(n+1))` (program `A378887.P8856246218187554853`, by `A378887.P8856246218187554853.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A378887.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A380447.P8742501224369410159

`(n+1)*A000005(n+1)-n*A001221(n+1)`
-/

namespace A380447.P8742501224369410159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000005 (n + 1) - (n : ℤ) * A001221 (n + 1)

end

end A380447.P8742501224369410159

noncomputable section

/-- A380447: Number of primes dividing n plus n times the number of nonprimes dividing n.

Offset 1, canonical program `A380447.P8742501224369410159`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380447 (n : ℕ) : ℤ :=
  A380447.P8742501224369410159.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A380447.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A382872.P13479336682410921135

`A000005(A018804(n+1))`
-/

namespace A382872.P13479336682410921135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A018804 (n + 1)).toNat

end

end A382872.P13479336682410921135

noncomputable section

/-- A382872: For n >= 1, a(n) is the number of divisors of Pillai's arithmetical function: Sum_{k=1..n} gcd(k, n) (A018804).

Offset 1, canonical program `A382872.P13479336682410921135`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382872 (n : ℕ) : ℤ :=
  A382872.P13479336682410921135.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A382872.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A384195.P12788916049746499615

`A000005(n+3)-A000005(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A384195.P12788916049746499615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 3) - A000005 (n + 1)

end

end A384195.P12788916049746499615

noncomputable section

/-- A384195: a(n) = tau(n+1) - tau(n-1), where tau(n) = A000005(n), the number of divisors of n.

Offset 2, canonical program `A384195.P12788916049746499615`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+3)-A000005(n+1)` (program `A384195.P12788916049746499615`, by `A384195.P12788916049746499615.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A384195 (n : ℕ) : ℤ :=
  A384195.P12788916049746499615.a (n - 2)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+3)-A000005(n+1)` (program `A384195.P12788916049746499615`, by `A384195.P12788916049746499615.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A384195.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A385148.P6659841522934302944

`A001065(A346878(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A385148.P6659841522934302944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A346878 (n + 1)).toNat

end

end A385148.P6659841522934302944

noncomputable section

/-- A385148: a(n) = A001065(A346878(n)).

Offset 1, canonical program `A385148.P6659841522934302944`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385148 (n : ℕ) : ℤ :=
  A385148.P6659841522934302944.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A385148.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A386012.P11696724120379954040

`(n+1)^3*A000005(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A386012.P11696724120379954040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) * A000005 (n + 1)

end

end A386012.P11696724120379954040

noncomputable section

/-- A386012: a(n) = n^3*tau(n).

Offset 1, canonical program `A386012.P11696724120379954040`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^3*A000005(n+1)` (program `A386012.P11696724120379954040`, by `A386012.P11696724120379954040.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A386012 (n : ℕ) : ℤ :=
  A386012.P11696724120379954040.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^3*A000005(n+1)` (program `A386012.P11696724120379954040`, by `A386012.P11696724120379954040.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A386012.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A386013.P12576186223749678081

`(n+1)^4*A000005(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A386013.P12576186223749678081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 : ℤ) * A000005 (n + 1)

end

end A386013.P12576186223749678081

noncomputable section

/-- A386013: a(n) = n^4*tau(n).

Offset 1, canonical program `A386013.P12576186223749678081`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^4*A000005(n+1)` (program `A386013.P12576186223749678081`, by `A386013.P12576186223749678081.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A386013 (n : ℕ) : ℤ :=
  A386013.P12576186223749678081.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^4*A000005(n+1)` (program `A386013.P12576186223749678081`, by `A386013.P12576186223749678081.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A386013.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A386261.P786158884757430491

`A001511(A001511(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A386261.P786158884757430491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A001511 (n + 1)).toNat

end

end A386261.P786158884757430491

noncomputable section

/-- A386261: a(n) = A001511(A001511(n)), where A001511 is the ruler function.

Offset 1, canonical program `A386261.P786158884757430491`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001511(A001511(n+1))` (program `A386261.P786158884757430491`, by `A386261.P786158884757430491.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A386261 (n : ℕ) : ℤ :=
  A386261.P786158884757430491.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001511(A001511(n+1))` (program `A386261.P786158884757430491`, by `A386261.P786158884757430491.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A386261.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A387633.P569874418725638644

`A000005(n+1)+n*A000005(A007947(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A387633.P569874418725638644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (n : ℤ) * A000005 (A007947 (n + 1)).toNat

end

end A387633.P569874418725638644

noncomputable section

/-- A387633: a(n) = tau(n) + (n-1) * tau(rad(n)).

Offset 1, canonical program `A387633.P569874418725638644`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)+n*A000005(A007947(n+1))` (program `A387633.P569874418725638644`, by `A387633.P569874418725638644.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A387633 (n : ℕ) : ℤ :=
  A387633.P569874418725638644.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)+n*A000005(A007947(n+1))` (program `A387633.P569874418725638644`, by `A387633.P569874418725638644.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A387633.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A388270.P10233009455192801401

`A000005(n+1)*A009194(n+1)`
-/

namespace A388270.P10233009455192801401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A009194 (n + 1)

end

end A388270.P10233009455192801401

noncomputable section

/-- A388270: a(n) = d(n) * gcd(n, sigma(n)), where d is the number of divisors function (A000005), and sigma is the sum of divisors.

Offset 1, canonical program `A388270.P10233009455192801401`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A388270 (n : ℕ) : ℤ :=
  A388270.P10233009455192801401.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A388270.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A394391.P4992548440944162986

`A000005(n+1)²+(n+1-A000005(n+1))²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A394391.P4992548440944162986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) ^ 2 + ((n + 1 : ℤ) - A000005 (n + 1)) ^ 2

end

end A394391.P4992548440944162986

noncomputable section

/-- A394391: a(n) = tau(n)^2 + (n - tau(n))^2.

Offset 1, canonical program `A394391.P4992548440944162986`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)²+(n+1-A000005(n+1))²` (program `A394391.P4992548440944162986`, by `A394391.P4992548440944162986.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A394391 (n : ℕ) : ℤ :=
  A394391.P4992548440944162986.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)²+(n+1-A000005(n+1))²` (program `A394391.P4992548440944162986`, by `A394391.P4992548440944162986.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A394391.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A394470.P12281335905416762997

`(n+1)*A000005(n+1)-n*A056169(n+1)`
-/

namespace A394470.P12281335905416762997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000005 (n + 1) - (n : ℤ) * A056169 (n + 1)

end

end A394470.P12281335905416762997

noncomputable section

/-- A394470: a(n) = n*tau(n) - (n-1)*Sum_{p|n, p prime} [gcd(p,n/p) = 1], where [ ] is the Iverson bracket.

Offset 1, canonical program `A394470.P12281335905416762997`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394470 (n : ℕ) : ℤ :=
  A394470.P12281335905416762997.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394470.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394651.P12518876512393771500

`A000005(n+1)+A063956(n+1)-A056169(n+1)`
-/

namespace A394651.P12518876512393771500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A063956 (n + 1) - A056169 (n + 1)

end

end A394651.P12518876512393771500

noncomputable section

/-- A394651: a(n) = tau(n) + Sum_{p|n, p prime, gcd(p,n/p) = 1} (p-1).

Offset 1, canonical program `A394651.P12518876512393771500`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394651 (n : ℕ) : ℤ :=
  A394651.P12518876512393771500.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394651.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394785.P5729035615530729007

`∑{#}[floor(sqrt(n/2))-1, A000005(n-(#+1)²)]`
-/

namespace A394785.P5729035615530729007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((n : ℚ) / 2 : ℝ)⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, A000005 (n - (k + 1) ^ 2)

end

end A394785.P5729035615530729007

noncomputable section

/-- A394785: a(n) = number of triples (x, y, z) such that x^2 + y*z = n, where x,y,z are positive integers satisfying x^2 <= y*z.

Offset 0, canonical program `A394785.P5729035615530729007`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394785 (n : ℕ) : ℤ :=
  A394785.P5729035615530729007.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A394785.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A394790.P4967719223950179716

`A000203(n+1)*A001511(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A394790.P4967719223950179716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A001511 (n + 1)

end

end A394790.P4967719223950179716

noncomputable section

/-- A394790: Product of the sum of divisors of n with the exponent of the highest power of 2 dividing 2n: a(n) = A000203(n)*A001511(n).

Offset 1, canonical program `A394790.P4967719223950179716`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)*A001511(n+1)` (program `A394790.P4967719223950179716`, by `A394790.P4967719223950179716.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A394790 (n : ℕ) : ℤ :=
  A394790.P4967719223950179716.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)*A001511(n+1)` (program `A394790.P4967719223950179716`, by `A394790.P4967719223950179716.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A394790.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A395330.P17136906903227382088

`A000005((col(n)+1)*(row(n)-col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A395330.P17136906903227382088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((SequenceMachineLib.triCol n + 1 : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1)).toNat

end

end A395330.P17136906903227382088

noncomputable section

/-- A395330: Symmetric array read by antidiagonals: A(n,k) = tau(n*k), where tau = A000005.

Offset 1, canonical program `A395330.P17136906903227382088`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005((col(n)+1)*(row(n)-col(n)+1))` (program `A395330.P17136906903227382088`, by `A395330.P17136906903227382088.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A395330 (n : ℕ) : ℤ :=
  A395330.P17136906903227382088.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005((col(n)+1)*(row(n)-col(n)+1))` (program `A395330.P17136906903227382088`, by `A395330.P17136906903227382088.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A395330.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A395458.P9897769218609620014

`(n+1)*A000005(n+1)-n*A000005(A007947(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A395458.P9897769218609620014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000005 (n + 1) - (n : ℤ) * A000005 (A007947 (n + 1)).toNat

end

end A395458.P9897769218609620014

noncomputable section

/-- A395458: a(n) = n*tau(n) - (n-1)*tau(rad(n)).

Offset 1, canonical program `A395458.P9897769218609620014`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A000005(n+1)-n*A000005(A007947(n+1))` (program `A395458.P9897769218609620014`, by `A395458.P9897769218609620014.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A395458 (n : ℕ) : ℤ :=
  A395458.P9897769218609620014.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A000005(n+1)-n*A000005(A007947(n+1))` (program `A395458.P9897769218609620014`, by `A395458.P9897769218609620014.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A395458.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A395491.P9780452655082946417

`A000005(n+1)+n*A056169(n+1)`
-/

namespace A395491.P9780452655082946417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (n : ℤ) * A056169 (n + 1)

end

end A395491.P9780452655082946417

noncomputable section

/-- A395491: a(n) = tau(n) + (n-1) * Sum_{p|n, p prime} [gcd(p,n/p) = 1], where [ ] is the Iverson bracket.

Offset 1, canonical program `A395491.P9780452655082946417`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395491 (n : ℕ) : ℤ :=
  A395491.P9780452655082946417.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A395491.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396515.P9540040117226872358

`A000005(n+1)+A396514(n+1)`
-/

namespace A396515.P9540040117226872358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + A396514 (n + 1)

end

end A396515.P9540040117226872358

noncomputable section

/-- A396515: a(n) = Sum_{k=1..n} gcd(k,n)^(ceiling(n/k) - floor(n/k)).

Offset 1, canonical program `A396515.P9540040117226872358`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396515 (n : ℕ) : ℤ :=
  A396515.P9540040117226872358.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396515.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396769.P5317963927150121089

`A003071(n+1)+n`
-/

namespace A396769.P5317963927150121089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003071 (n + 1) + (n : ℤ)

end

end A396769.P5317963927150121089

noncomputable section

/-- A396769: Value of the Sackin index for the rooted binary echelon tree with n leaves.

Offset 1, canonical program `A396769.P5317963927150121089`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396769 (n : ℕ) : ℤ :=
  A396769.P5317963927150121089.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396769.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A396945.P1470108520854866059

`A000005(n^3+1)`
-/

namespace A396945.P1470108520854866059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n ^ 3 + 1)

end

end A396945.P1470108520854866059

noncomputable section

/-- A396945: Number of divisors of n^3 + 1.

Offset 0, canonical program `A396945.P1470108520854866059`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396945 (n : ℕ) : ℤ :=
  A396945.P1470108520854866059.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A396945.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398520.P3879229793699235213

`∑{#}[n, A000005(floor((n+1)/(#+1)))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A398520.P3879229793699235213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000005 ⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋.toNat

end

end A398520.P3879229793699235213

noncomputable section

/-- A398520: a(n) = Sum_{k=1..n} tau(floor(n/k)), where tau(n) = A000005(n) is the number of divisors of n.

Offset 1, canonical program `A398520.P3879229793699235213`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000005(floor((n+1)/(#+1)))]` (program `A398520.P3879229793699235213`, by `A398520.P3879229793699235213.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A398520 (n : ℕ) : ℤ :=
  A398520.P3879229793699235213.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000005(floor((n+1)/(#+1)))]` (program `A398520.P3879229793699235213`, by `A398520.P3879229793699235213.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A398520.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A398826.P7098747537138350296

`A008284(C(n+1, 2)+A000005(n+1))`
-/

namespace A398826.P7098747537138350296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 ((Nat.choose (n + 1) 2 : ℤ) + A000005 (n + 1)).toNat

end

end A398826.P7098747537138350296

noncomputable section

/-- A398826: Number of partitions of n where the largest part is equal to the number of divisors of n.

Offset 1, canonical program `A398826.P7098747537138350296`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398826 (n : ℕ) : ℤ :=
  A398826.P7098747537138350296.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398826.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398981.P1881830709133702135

`(A000005(n+1)-2)/gcd(A000005(n+1)-2, 2*(n+1)-A000203(n+1))`
-/

namespace A398981.P1881830709133702135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) - 2 : ℚ) / (Int.gcd (A000005 (n + 1) - 2) ((2 * (n + 1) : ℤ) - A000203 (n + 1)) : ℚ)

end

end A398981.P1881830709133702135

noncomputable section

/-- A398981: a(n) is the number k such that 2*(k*n+v) = Sum_{d|n} (k*d+v), where k and v are coprime and not both are 0.

Offset 1, canonical program `A398981.P1881830709133702135`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398981 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398981.P1881830709133702135.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398981.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A398982.P10718508914280456224

`(2*(n+1)-A000203(n+1))/gcd(A000005(n+1)-2, 2*(n+1)-A000203(n+1))`
-/

namespace A398982.P10718508914280456224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - A000203 (n + 1) : ℚ) / (Int.gcd (A000005 (n + 1) - 2) ((2 * (n + 1) : ℤ) - A000203 (n + 1)) : ℚ)

end

end A398982.P10718508914280456224

noncomputable section

/-- A398982: a(n) is the number k such that 2*(u*n+k) = Sum_{d|n} (u*d+k), where u and k are coprime and not both are 0.

Offset 1, canonical program `A398982.P10718508914280456224`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398982 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A398982.P10718508914280456224.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A398982.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A400415.P10373400726085747654

`(2*(n+1)-A000203(n+1))/gcd(A000005(n+1), 2*(n+1)-A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A400415.P10373400726085747654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - A000203 (n + 1) : ℚ) / (Int.gcd (A000005 (n + 1)) ((2 * (n + 1) : ℤ) - A000203 (n + 1)) : ℚ)

end

end A400415.P10373400726085747654

noncomputable section

/-- A400415: a(n) = (2*n-sigma(n))/gcd(tau(n), 2*n-sigma(n)), tau = A000005, sigma = A000203.

Offset 1, canonical program `A400415.P10373400726085747654`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400415 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A400415.P10373400726085747654.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A400415.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373934.P2638291770601585293

`A373935(n+2)-A373935(n+1)`
-/

namespace A373934.P2638291770601585293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373935 (n + 2) - A373935 (n + 1)

end

end A373934.P2638291770601585293

noncomputable section

/-- A373934: Number of compositions of 7*n-2 into parts 6 and 7.

Offset 1, canonical program `A373934.P2638291770601585293`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373934 (n : ℕ) : ℤ :=
  A373934.P2638291770601585293.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373934.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A373961.P18328240497616127407

`A373962(n+2)-A373962(n+1)`
-/

namespace A373961.P18328240497616127407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373962 (n + 2) - A373962 (n + 1)

end

end A373961.P18328240497616127407

noncomputable section

/-- A373961: Number of compositions of 6*n-1 into parts 5 and 6.

Offset 1, canonical program `A373961.P18328240497616127407`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373961 (n : ℕ) : ℤ :=
  A373961.P18328240497616127407.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A373961.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A368405.P11135542014781809674

`∑[∏{e}[n+1, A106400(#)]]`
-/

namespace A368405.P11135542014781809674
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A106400 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368405.P11135542014781809674

noncomputable section

/-- A368405: Infinitary version of Mertens's function: a(n) = Sum_{k=1..n} A064179(k).

Offset 1, canonical program `A368405.P11135542014781809674`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368405 (n : ℕ) : ℤ :=
  A368405.P11135542014781809674.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368638.P4766696637105011760

`∑[A135342(n+1)]-2*n`
-/

namespace A368638.P4766696637105011760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 * n : ℤ)

end

end A368638.P4766696637105011760

noncomputable section

/-- A368638: a(n) is the number of triangular partitions whose Young diagram fits inside a square of side n.

Offset 0, canonical program `A368638.P4766696637105011760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368638 (n : ℕ) : ℤ :=
  A368638.P4766696637105011760.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368827.P6800860820109245478

`eq[1, A368825(n+1)]+1`
-/

namespace A368827.P6800860820109245478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368825 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A368827.P6800860820109245478

noncomputable section

/-- A368827: Indices k where A368825(k) = 1.

Offset 1, canonical program `A368827.P6800860820109245478`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A368827 (n : ℕ) : ℤ :=
  (A368827.P6800860820109245478.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A368827.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368929.P5346765697596700696

`∑{d}[n+1, A063445(#)*A326238((n+1)/#)]`
-/

namespace A368929.P5346765697596700696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063445 d * A326238 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A368929.P5346765697596700696

noncomputable section

/-- A368929: Dirichlet g.f.: zeta(s-2)^2 * (1 - 2^(3-s)) / zeta(s).

Offset 1, canonical program `A368929.P5346765697596700696`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368929 (n : ℕ) : ℤ :=
  A368929.P5346765697596700696.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368929.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369359.P11914376555270565853

`A225034(n)-A002426(n)`
-/

namespace A369359.P11914376555270565853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225034 n - A002426 n

end

end A369359.P11914376555270565853

noncomputable section

/-- A369359: a(n) is the total semiperimeter over all Motzkin polyominoes of length n.

Offset 0, canonical program `A369359.P11914376555270565853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A369359 (n : ℕ) : ℤ :=
  A369359.P11914376555270565853.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. -/
def A369359.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369757.P5287777437790964755

`A000005(A356192(n+1))`
-/

namespace A369757.P5287777437790964755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A356192 (n + 1)).toNat

end

end A369757.P5287777437790964755

noncomputable section

/-- A369757: The number of divisors of the smallest cubefull exponentially odd number that is divisible by n.

Offset 1, canonical program `A369757.P5287777437790964755`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356192, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369757 (n : ℕ) : ℤ :=
  A369757.P5287777437790964755.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356192, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369757.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369758.P236084488663508184

`A000203(A356192(n+1))`
-/

namespace A369758.P236084488663508184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A356192 (n + 1)).toNat

end

end A369758.P236084488663508184

noncomputable section

/-- A369758: The sum of divisors of the smallest cubefull exponentially odd number that is divisible by n.

Offset 1, canonical program `A369758.P236084488663508184`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356192, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369758 (n : ℕ) : ℤ :=
  A369758.P236084488663508184.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356192, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369758.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369894.P6022834030566867297

`∑{d}[n+1, A347134(#)]`
-/

namespace A369894.P6022834030566867297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347134 d

end

end A369894.P6022834030566867297

noncomputable section

/-- A369894: a(n) = n * Sum_{p|n, p prime} tau(n/p) / p.

Offset 1, canonical program `A369894.P6022834030566867297`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369894 (n : ℕ) : ℤ :=
  A369894.P6022834030566867297.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369967.P2338115965869939887

`1-A011558(A003415(n))`
-/

namespace A369967.P2338115965869939887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A011558 (A003415 n).toNat

end

end A369967.P2338115965869939887

noncomputable section

/-- A369967: a(n) = 1 if the arithmetic derivative of n is a multiple of 5, otherwise 0.

Offset 0, canonical program `A369967.P2338115965869939887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369967 (n : ℕ) : ℤ :=
  A369967.P2338115965869939887.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369967.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370009.P11224753345839745758

`A151800(A001748(n+1))`
-/

namespace A370009.P11224753345839745758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A001748 (n + 1)).toNat

end

end A370009.P11224753345839745758

noncomputable section

/-- A370009: a(n) is the least prime greater than 3*prime(n).

Offset 1, canonical program `A370009.P11224753345839745758`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370009 (n : ℕ) : ℤ :=
  A370009.P11224753345839745758.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A370009.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370427.P3544381458467413037

`A175298(n)-n`
-/

namespace A370427.P3544381458467413037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175298 n - (n : ℤ)

end

end A370427.P3544381458467413037

noncomputable section

/-- A370427: a(n) is the least k >= 0 such that n OR k is a binary palindrome (where OR denotes the bitwise OR operator).

Offset 0, canonical program `A370427.P3544381458467413037`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370427 (n : ℕ) : ℤ :=
  A370427.P3544381458467413037.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370596.P16435059816555867442

`eq[(-1)^n, A003415(A327491(n))]`
-/

namespace A370596.P16435059816555867442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A327491 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370596.P16435059816555867442

noncomputable section

/-- A370596: Numbers k such that A007814(k) is a prime number.

Offset 1, canonical program `A370596.P16435059816555867442`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2073 terms. -/
def A370596 (n : ℕ) : ℤ :=
  (A370596.P16435059816555867442.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2073 terms. -/
def A370596.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370899.P10835421738952848629

`∑[(-1)^n*A047994(n+1)]`
-/

namespace A370899.P10835421738952848629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A047994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370899.P10835421738952848629

noncomputable section

/-- A370899: Partial alternating sums of the unitary totient function (A047994).

Offset 1, canonical program `A370899.P10835421738952848629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370899 (n : ℕ) : ℤ :=
  A370899.P10835421738952848629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370899.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370906.P14316792219775904459

`∑[(-1)^n*A206369(n+1)]`
-/

namespace A370906.P14316792219775904459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A206369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370906.P14316792219775904459

noncomputable section

/-- A370906: Partial alternating sums of the alternating sum of divisors function (A206369).

Offset 1, canonical program `A370906.P14316792219775904459`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370906 (n : ℕ) : ℤ :=
  A370906.P14316792219775904459.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371188.P488392441008500169

`lt[A368712(1+n), 2]+1`
-/

namespace A371188.P488392441008500169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368712 (1 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A371188.P488392441008500169

noncomputable section

/-- A371188: Indices of the squarefree numbers in the sequence of cubefree numbers.

Offset 1, canonical program `A371188.P488392441008500169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7305 terms. -/
def A371188 (n : ℕ) : ℤ :=
  (A371188.P488392441008500169.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7305 terms. -/
def A371188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371239.P1240619195337993519

`filter[A032924(n+1), A359377(#)]`
-/

namespace A371239.P1240619195337993519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A371239.P1240619195337993519

noncomputable section

/-- A371239: Squarefree numbers that are zeroless in base 3 (A032924).

Offset 1, canonical program `A371239.P1240619195337993519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1703 terms. -/
def A371239 (n : ℕ) : ℤ :=
  A371239.P1240619195337993519.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1703 terms. -/
def A371239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371628.P15621552581421940745

`∑{d}[n+1, A084220(#)*A189393((n+1)/#)]`
-/

namespace A371628.P15621552581421940745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A084220 d * A189393 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A371628.P15621552581421940745

noncomputable section

/-- A371628: a(n) = Sum_{1 <= x_1, x_2, x_3, x_4 <= n} ( gcd(x_1, n)/gcd(x_1, x_2, x_3, x_4, n) )^3.

Offset 1, canonical program `A371628.P15621552581421940745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371628 (n : ℕ) : ℤ :=
  A371628.P15621552581421940745.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371628.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372516.P8084116944890719171

`A014499(n+1)-A035103(n+1)`
-/

namespace A372516.P8084116944890719171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014499 (n + 1) - A035103 (n + 1)

end

end A372516.P8084116944890719171

noncomputable section

/-- A372516: Number of ones minus number of zeros in the binary expansion of the n-th prime number.

Offset 1, canonical program `A372516.P8084116944890719171`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372516 (n : ℕ) : ℤ :=
  A372516.P8084116944890719171.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035103, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372516.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372573.P2519904625794954656

`1-A234045(A065331(n+1))²`
-/

namespace A372573.P2519904625794954656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A234045 (A065331 (n + 1)).toNat ^ 2

end

end A372573.P2519904625794954656

noncomputable section

/-- A372573: a(n) = 1 if A276085(n) is a multiple of 3, otherwise 0, where A276085 is the primorial base log-function.

Offset 1, canonical program `A372573.P2519904625794954656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372573 (n : ℕ) : ℤ :=
  A372573.P2519904625794954656.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372573.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372601.P13128133087775148390

`A051903(A350390(n+1))`
-/

namespace A372601.P13128133087775148390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A350390 (n + 1)).toNat

end

end A372601.P13128133087775148390

noncomputable section

/-- A372601: The maximal exponent in the prime factorization of the largest exponentially odd divisor of n.

Offset 1, canonical program `A372601.P13128133087775148390`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372601 (n : ℕ) : ℤ :=
  A372601.P13128133087775148390.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372601.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372619.P17153185266930778544

`A372673(n+1)+T(n-1,k-1)` with `a(0)=1`
-/

namespace A372619.P17153185266930778544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A372673 (n + 1) + SequenceMachineLib.triUpLeft a n

end

end A372619.P17153185266930778544

noncomputable section

/-- A372619: Square array T(n,k), n >= 1, k >= 1, read by antidiagonals downwards, where T(n,k) = 1/(phi(k)) * Sum_{j=1..n} phi(k*j).

Offset 1, canonical program `A372619.P17153185266930778544`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372619 (n : ℕ) : ℤ :=
  A372619.P17153185266930778544.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372621.P2752867004520561479

`∑[A195459(n+1)]`
-/

namespace A372621.P2752867004520561479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372621.P2752867004520561479

noncomputable section

/-- A372621: a(n) = (1/2) * Sum_{k=1..n} phi(3*k).

Offset 1, canonical program `A372621.P2752867004520561479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372621 (n : ℕ) : ℤ :=
  A372621.P2752867004520561479.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372622.P10615586684358842843

`∑[A359101(n+1)]`
-/

namespace A372622.P10615586684358842843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372622.P10615586684358842843

noncomputable section

/-- A372622: a(n) = (1/4) * Sum_{k=1..n} phi(5*k).

Offset 1, canonical program `A372622.P10615586684358842843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372622 (n : ℕ) : ℤ :=
  A372622.P10615586684358842843.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372638.P3612141055778573363

`∑[A359102(n+1)]`
-/

namespace A372638.P3612141055778573363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372638.P3612141055778573363

noncomputable section

/-- A372638: a(n) = (1/6) * Sum_{k=1..n} phi(7*k).

Offset 1, canonical program `A372638.P3612141055778573363`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372638 (n : ℕ) : ℤ :=
  A372638.P3612141055778573363.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372639.P3503106083445963658

`∑[A372672(n+1)]`
-/

namespace A372639.P3503106083445963658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372639.P3503106083445963658

noncomputable section

/-- A372639: a(n) = (1/4) * Sum_{k=1..n} phi(10*k).

Offset 1, canonical program `A372639.P3503106083445963658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372639 (n : ℕ) : ℤ :=
  A372639.P3503106083445963658.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372684.P14779655988470059317

`A000720(A104080(n+1))`
-/

namespace A372684.P14779655988470059317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A104080 (n + 1)).toNat

end

end A372684.P14779655988470059317

noncomputable section

/-- A372684: Least k such that prime(k) >= 2^n.

Offset 1, canonical program `A372684.P14779655988470059317`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104080, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372684 (n : ℕ) : ℤ :=
  A372684.P14779655988470059317.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104080, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A372684.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372950.P9193589771118210262

`∑{d}[n+1, A068970(#)*A238533((n+1)/#)]`
-/

namespace A372950.P9193589771118210262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068970 d * A238533 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A372950.P9193589771118210262

noncomputable section

/-- A372950: a(n) = Sum_{1 <= x_1, x_2 <= n} ( n/gcd(x_1, x_2, n) )^3.

Offset 1, canonical program `A372950.P9193589771118210262`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372950 (n : ℕ) : ℤ :=
  A372950.P9193589771118210262.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372950.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373061.P4996465783766224626

`∑{d}[n+1, #*A341772(#)]`
-/

namespace A373061.P4996465783766224626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A341772 d

end

end A373061.P4996465783766224626

noncomputable section

/-- A373061: a(n) = Sum_{1 <= x_1, x_2, x_3 <= n} gcd(x_1, x_2, n)/gcd(x_1, x_2, x_3, n).

Offset 1, canonical program `A373061.P4996465783766224626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373061 (n : ℕ) : ℤ :=
  A373061.P4996465783766224626.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373061.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373129.P16918047502827028780

`∑{d}[n+1, A002618(#)*A372227((n+1)/#)]`
-/

namespace A373129.P16918047502827028780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A372227 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373129.P16918047502827028780

noncomputable section

/-- A373129: a(n) = Sum_{1 <= x_1, x_2 <= n} sigma( n/gcd(x_1, x_2, n) ).

Offset 1, canonical program `A373129.P16918047502827028780`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373129 (n : ℕ) : ℤ :=
  A373129.P16918047502827028780.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373129.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373153.P13043252029439132361

`A234045(A065331(n+1))`
-/

namespace A373153.P13043252029439132361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234045 (A065331 (n + 1)).toNat

end

end A373153.P13043252029439132361

noncomputable section

/-- A373153: a(n) is -1, 0, or 1 such that a(n) == A276085(n) (mod 3), where A276085 is the primorial base log-function.

Offset 1, canonical program `A373153.P13043252029439132361`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373153 (n : ℕ) : ℤ :=
  A373153.P13043252029439132361.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373153.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373184.P13347508952625175779

`A168570(n+1)+A327625(n+1)+A284413(n+1)`
-/

namespace A373184.P13347508952625175779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168570 (n + 1) + (A327625 (n + 1) + A284413 (n + 1))

end

end A373184.P13347508952625175779

noncomputable section

/-- A373184: G.f. A(x) satisfies A(x) = 1/(1 - x)^2 - 1 + A(x^3).

Offset 1, canonical program `A373184.P13347508952625175779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373184 (n : ℕ) : ℤ :=
  A373184.P13347508952625175779.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373186.P9548359750285709063

`∑{d}[n+1, A057661(#)*A195459((n+1)/#)]`
-/

namespace A373186.P9548359750285709063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057661 d * A195459 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373186.P9548359750285709063

noncomputable section

/-- A373186: Expansion of Sum_{k>=0} x^(3^k) / (1 - x^(3^k))^3.

Offset 1, canonical program `A373186.P9548359750285709063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1835 terms. -/
def A373186 (n : ℕ) : ℤ :=
  A373186.P9548359750285709063.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1835 terms. -/
def A373186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373253.P11918678526335945068

`(A003415(n)+1)%3-1`
-/

namespace A373253.P11918678526335945068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003415 n + 1) 3 - 1

end

end A373253.P11918678526335945068

noncomputable section

/-- A373253: a(n) is -1, 0, or 1 such that a(n) == A003415(n) (mod 3), where A003415 is the arithmetic derivative.

Offset 0, canonical program `A373253.P11918678526335945068`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373253 (n : ℕ) : ℤ :=
  A373253.P11918678526335945068.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373384.P9807779090313216379

`filter[A319701(n+1), A373383(#)]`
-/

namespace A373384.P9807779090313216379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373383 (f1 j).toNat = 1) n)

end

end A373384.P9807779090313216379

noncomputable section

/-- A373384: Numbers k that are multiples of 3 and also A059975(k) is a multiple of 3, where A059975 is fully additive with a(p) = p-1.

Offset 1, canonical program `A373384.P9807779090313216379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6017 terms. -/
def A373384 (n : ℕ) : ℤ :=
  A373384.P9807779090313216379.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6017 terms. -/
def A373384.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373397.P14400357127221746357

`∑{d}[n+1, A372671(#)*A373156((n+1)/#)]`
-/

namespace A373397.P14400357127221746357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A372671 d * A373156 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A373397.P14400357127221746357

noncomputable section

/-- A373397: Expansion of Sum_{k>=0} x^(6^k) / (1 - x^(6^k))^2.

Offset 1, canonical program `A373397.P14400357127221746357`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373397 (n : ℕ) : ℤ :=
  A373397.P14400357127221746357.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373397.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373591.P16264058647901355878

`A001222(A248909(n+1))`
-/

namespace A373591.P16264058647901355878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A248909 (n + 1)).toNat

end

end A373591.P16264058647901355878

noncomputable section

/-- A373591: Number of primes congruent to 1 modulo 3 dividing n (with multiplicity).

Offset 1, canonical program `A373591.P16264058647901355878`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A248909, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373591 (n : ℕ) : ℤ :=
  A373591.P16264058647901355878.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A248909, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373591.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373648.P8244611939884756043

`A296023(n+1)-1`
-/

namespace A373648.P8244611939884756043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296023 (n + 1) - 1

end

end A373648.P8244611939884756043

noncomputable section

/-- A373648: Integers k such that there are i groups of order k+i up to isomorphism, for i=1,2.

Offset 1, canonical program `A373648.P8244611939884756043`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A373648 (n : ℕ) : ℤ :=
  A373648.P8244611939884756043.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A373648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373832.P1127002514526717850

`(n+1)%A276150(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373832.P1127002514526717850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A276150 (n + 1))

end

end A373832.P1127002514526717850

noncomputable section

/-- A373832: a(n) = n mod A276150(n), where A276150 is the digit sum in the primorial base.

Offset 1, canonical program `A373832.P1127002514526717850`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373832 (n : ℕ) : ℤ :=
  A373832.P1127002514526717850.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373832.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373833.P1677573499582523216

`gcd(n, A276150(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373833.P1677573499582523216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A276150 n)

end

end A373833.P1677573499582523216

noncomputable section

/-- A373833: a(n) = gcd(n, A276150(n)), where A276150 is the digit sum in the primorial base.

Offset 0, canonical program `A373833.P1677573499582523216`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373833 (n : ℕ) : ℤ :=
  (A373833.P1677573499582523216.a n : ℤ)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373833.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373840.P5142814624606687256

`A079978(A276150(n))`
-/

namespace A373840.P5142814624606687256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A276150 n).toNat

end

end A373840.P5142814624606687256

noncomputable section

/-- A373840: a(n) = 1 if A276150(n) is a multiple of 3, otherwise 0, where A276150 is the digit sum in the primorial base.

Offset 0, canonical program `A373840.P5142814624606687256`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373840 (n : ℕ) : ℤ :=
  A373840.P5142814624606687256.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373840.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373993.P16686830910054354384

`C(n, lcm(n, A000005(n+1)))`
-/

namespace A373993.P16686830910054354384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Int.lcm (n : ℤ) (A000005 (n + 1)))

end

end A373993.P16686830910054354384

noncomputable section

/-- A373993: a(n) = 1 if the number of divisors of n divides n-1, otherwise 0.

Offset 1, canonical program `A373993.P16686830910054354384`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373993 (n : ℕ) : ℤ :=
  (A373993.P16686830910054354384.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373993.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374466.P2704209594539488434

`A066829(n+1)*(1-A359464(n+1))`
-/

namespace A374466.P2704209594539488434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (n + 1) * (1 - A359464 (n + 1))

end

end A374466.P2704209594539488434

noncomputable section

/-- A374466: a(n) = 1 if n is the product of an odd number of primes and the total number of 1-bits in the exponents of its prime factorization is odd, otherwise 0.

Offset 1, canonical program `A374466.P2704209594539488434`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359464, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374466 (n : ℕ) : ℤ :=
  A374466.P2704209594539488434.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359464, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A374466.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A374472.P9715634022253251052

`eq[1, A374471(n+1)]+1`
-/

namespace A374472.P9715634022253251052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374471 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A374472.P9715634022253251052

noncomputable section

/-- A374472: Numbers k such that bigomega(k) and A064547(k) are both even, where A064547 is the count of 1-bits in the exponents of the prime factorization of n, and bigomega is the number of prime factors of n (with multiplicity).

Offset 1, canonical program `A374472.P9715634022253251052`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374472 (n : ℕ) : ℤ :=
  (A374472.P9715634022253251052.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374472.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375106.P7559096786302579084

`A363851(n+1)-A363856(n+1)`
-/

namespace A375106.P7559096786302579084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363851 (n + 1) - A363856 (n + 1)

end

end A375106.P7559096786302579084

noncomputable section

/-- A375106: Expansion of Sum_{k in Z} x^k / (1 - x^(7*k+3)).

Offset 0, canonical program `A375106.P7559096786302579084`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375106 (n : ℕ) : ℤ :=
  A375106.P7559096786302579084.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375107.P16653102152346914502

`A363859(n+1)-A363860(n+1)`
-/

namespace A375107.P16653102152346914502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363859 (n + 1) - A363860 (n + 1)

end

end A375107.P16653102152346914502

noncomputable section

/-- A375107: Expansion of Sum_{k in Z} x^(2*k) / (1 - x^(7*k+3)).

Offset 0, canonical program `A375107.P16653102152346914502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375107 (n : ℕ) : ℤ :=
  A375107.P16653102152346914502.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375108.P7246935247640333009

`A363887(n+2)-A363888(n+2)`
-/

namespace A375108.P7246935247640333009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363887 (n + 2) - A363888 (n + 2)

end

end A375108.P7246935247640333009

noncomputable section

/-- A375108: Expansion of Sum_{k in Z} x^(3*k) / (1 - x^(7*k+3)).

Offset 0, canonical program `A375108.P7246935247640333009`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A375108 (n : ℕ) : ℤ :=
  A375108.P7246935247640333009.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A375108.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375257.P7772889362552758042

`eq[1, A180017(n)+2]`
-/

namespace A375257.P7772889362552758042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180017 n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A375257.P7772889362552758042

noncomputable section

/-- A375257: Numbers whose sum of base-2 digits is 1 more than their sum of base-3 digits.

Offset 1, canonical program `A375257.P7772889362552758042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 950 terms. -/
def A375257 (n : ℕ) : ℤ :=
  (A375257.P7772889362552758042.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 950 terms. -/
def A375257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375536.P10078658063554449520

`A051903(A355582(n+1))`
-/

namespace A375536.P10078658063554449520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A355582 (n + 1)).toNat

end

end A375536.P10078658063554449520

noncomputable section

/-- A375536: The maximum exponent in the prime factorization of the largest 5-smooth divisor of n.

Offset 1, canonical program `A375536.P10078658063554449520`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375536 (n : ℕ) : ℤ :=
  A375536.P10078658063554449520.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375536.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375848.P3349839009645680969

`filter[A051903(n+1), A010059(#)]`
-/

namespace A375848.P3349839009645680969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010059 (f1 j).toNat = 1) n)

end

end A375848.P3349839009645680969

noncomputable section

/-- A375848: The maximum exponent in the prime factorization of the numbers whose maximum exponent in their prime factorization is an evil number (A374590).

Offset 1, canonical program `A375848.P3349839009645680969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375848 (n : ℕ) : ℤ :=
  A375848.P3349839009645680969.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375848.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376131.P331097049803313439

`∑[A376132(n+1)]-A376132(n+1)`
-/

namespace A376131.P331097049803313439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A376132 (n + 1)

end

end A376131.P331097049803313439

noncomputable section

/-- A376131: Total number of times all nodes fire in a chip-firing game starting with 2n chips at the root on an infinite binary tree with a loop at the root.

Offset 1, canonical program `A376131.P331097049803313439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376131 (n : ℕ) : ℤ :=
  A376131.P331097049803313439.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376286.P4544263140119506476

`A004154(n)%A151800(n)`
-/

namespace A376286.P4544263140119506476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004154 n) (A151800 n)

end

end A376286.P4544263140119506476

noncomputable section

/-- A376286: n! less trailing zeros (A004154) (mod nextprime(n)).

Offset 0, canonical program `A376286.P4544263140119506476`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376286 (n : ℕ) : ℤ :=
  A376286.P4544263140119506476.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376286.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376366.P16346461924270472844

`A368779(n+1)-A376365(n+1)`
-/

namespace A376366.P16346461924270472844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368779 (n + 1) - A376365 (n + 1)

end

end A376366.P16346461924270472844

noncomputable section

/-- A376366: The number of non-unitary prime divisors of the cubefree numbers.

Offset 1, canonical program `A376366.P16346461924270472844`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368779, A376365, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376366 (n : ℕ) : ℤ :=
  A376366.P16346461924270472844.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368779, A376365, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A376366.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376715.P17313450320270734925

`filter[A265640(n+1), A066247(#)]`
-/

namespace A376715.P17313450320270734925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A376715.P17313450320270734925

noncomputable section

/-- A376715: Composite numbers in A265640.

Offset 1, canonical program `A376715.P17313450320270734925`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5018 terms. -/
def A376715 (n : ℕ) : ℤ :=
  A376715.P17313450320270734925.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5018 terms. -/
def A376715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376720.P7784690848056402490

`A126706(n+1)*A365783(n+1)`
-/

namespace A376720.P7784690848056402490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1) * A365783 (n + 1)

end

end A376720.P7784690848056402490

noncomputable section

/-- A376720: Product of numbers m that are neither squarefree nor prime powers and rad(m), where rad = A007947.

Offset 1, canonical program `A376720.P7784690848056402490`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376720 (n : ℕ) : ℤ :=
  A376720.P7784690848056402490.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376885.P9304065174401764500

`∑{e}[n+1, A276150(#)]`
-/

namespace A376885.P9304065174401764500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A276150 (Nat.factorization (f1 n) p)

end

end A376885.P9304065174401764500

noncomputable section

/-- A376885: The number of factors of n of the form p^(k!) counted with multiplicity, where p is a prime and k >= 1, when the factorization is uniquely done using the factorial-base representation of the exponents in the prime factorization of n.

Offset 1, canonical program `A376885.P9304065174401764500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376885 (n : ℕ) : ℤ :=
  A376885.P9304065174401764500.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376885.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A377540.P8485193340030685808

`eq[1, A161996(n+1)]+1`
-/

namespace A377540.P8485193340030685808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161996 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377540.P8485193340030685808

noncomputable section

/-- A377540: Numbers k such that at least one of the numbers 6k-1 or 6k+1 is prime.

Offset 1, canonical program `A377540.P8485193340030685808`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377540 (n : ℕ) : ℤ :=
  (A377540.P8485193340030685808.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377540.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377816.P4596076651778180258

`eq[2, A000005(A336643(n+1))%4]+1`
-/

namespace A377816.P4596076651778180258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A336643 (n + 1)).toNat) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377816.P4596076651778180258

noncomputable section

/-- A377816: Numbers that have a single even exponent in their prime factorization.

Offset 1, canonical program `A377816.P4596076651778180258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377816 (n : ℕ) : ℤ :=
  (A377816.P4596076651778180258.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A377816.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377817.P402920297205935675

`lt[1, A162641(n+1)]+1`
-/

namespace A377817.P402920297205935675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162641 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A377817.P402920297205935675

noncomputable section

/-- A377817: Numbers that have more than one even exponent in their prime factorization.

Offset 1, canonical program `A377817.P402920297205935675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A377817 (n : ℕ) : ℤ :=
  (A377817.P402920297205935675.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 319 terms. -/
def A377817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378036.P4355795129430558583

`A378033(n+2)-A378033(n+1)`
-/

namespace A378036.P4355795129430558583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378033 (n + 2) - A378033 (n + 1)

end

end A378036.P4355795129430558583

noncomputable section

/-- A378036: First differences of A378033 (greatest positive integer < n that is 1 or nonsquarefree).

Offset 1, canonical program `A378036.P4355795129430558583`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378033, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378036 (n : ℕ) : ℤ :=
  A378036.P4355795129430558583.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378033, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378036.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378085.P12109818959703916191

`1-Δ[A378619(n+1)]`
-/

namespace A378085.P12109818959703916191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A378085.P12109818959703916191

noncomputable section

/-- A378085: First differences of A070321 (greatest squarefree number <= n).

Offset 1, canonical program `A378085.P12109818959703916191`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378085 (n : ℕ) : ℤ :=
  A378085.P12109818959703916191.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378135.P14945920561631951396

`A151800(n*A151800(n))`
-/

namespace A378135.P14945920561631951396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((n : ℤ) * A151800 n).toNat

end

end A378135.P14945920561631951396

noncomputable section

/-- A378135: a(n) = p(n*p(n)), where p(x) = least prime > x.

Offset 0, canonical program `A378135.P14945920561631951396`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378135 (n : ℕ) : ℤ :=
  A378135.P14945920561631951396.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378135.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378137.P1083240671086047846

`A151800(n²*A151800(n))`
-/

namespace A378137.P1083240671086047846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((n ^ 2 : ℤ) * A151800 n).toNat

end

end A378137.P1083240671086047846

noncomputable section

/-- A378137: a(n) = p(n^2*p(n)), where p(x) is the least prime > x.

Offset 0, canonical program `A378137.P1083240671086047846`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378137 (n : ℕ) : ℤ :=
  A378137.P1083240671086047846.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378137.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378217.P591878857379882394

`∑{d}[n+1, A378211(#)]`
-/

namespace A378217.P591878857379882394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378211 d

end

end A378217.P591878857379882394

noncomputable section

/-- A378217: Dirichlet inverse of A330575.

Offset 1, canonical program `A378217.P591878857379882394`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378217 (n : ℕ) : ℤ :=
  A378217.P591878857379882394.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378620.P6069083703779704707

`∩[A068360(n+1), A270192(n+1)]`
-/

namespace A378620.P6069083703779704707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378620.P6069083703779704707

noncomputable section

/-- A378620: Lesser prime index of twin primes with nonsquarefree mean.

Offset 1, canonical program `A378620.P6069083703779704707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A378620 (n : ℕ) : ℤ :=
  (A378620.P6069083703779704707.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A378620.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379219.P16078624363697017036

`∑{d}[n+1, A379109(#)]`
-/

namespace A379219.P16078624363697017036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A379109 d

end

end A379219.P16078624363697017036

noncomputable section

/-- A379219: Dirichlet inverse of A379218.

Offset 1, canonical program `A379219.P16078624363697017036`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A379109, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379219 (n : ℕ) : ℤ :=
  A379219.P16078624363697017036.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A379109, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379219.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379405.P17696526180092176553

`A151800(A053024(n+1))`
-/

namespace A379405.P17696526180092176553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A053024 (n + 1)).toNat

end

end A379405.P17696526180092176553

noncomputable section

/-- A379405: a(n) = p((n+1)*p(n)), where p(x) = least prime > x; i.e., p = A151800.

Offset 0, canonical program `A379405.P17696526180092176553`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053024, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379405 (n : ℕ) : ℤ :=
  A379405.P17696526180092176553.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053024, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379405.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379714.P11693460408281101641

`∑[A049419(n+1)*(-1)^n]`
-/

namespace A379714.P11693460408281101641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (n + 1) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379714.P11693460408281101641

noncomputable section

/-- A379714: Partial alternating sums of the number of exponential divisors function (A049419).

Offset 1, canonical program `A379714.P11693460408281101641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379714 (n : ℕ) : ℤ :=
  A379714.P11693460408281101641.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379714.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379717.P10074037294569084625

`A007434(A004709(n+1))`
-/

namespace A379717.P10074037294569084625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (A004709 (n + 1)).toNat

end

end A379717.P10074037294569084625

noncomputable section

/-- A379717: The second Jordan totient function applied to the cubefree numbers.

Offset 1, canonical program `A379717.P10074037294569084625`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379717 (n : ℕ) : ℤ :=
  A379717.P10074037294569084625.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379717.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379851.P2408517926029222728

`lt[2, A332881(n+1)]+1`
-/

namespace A379851.P2408517926029222728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332881 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A379851.P2408517926029222728

noncomputable section

/-- A379851: Numbers k such that phi(k) does not divide k. Complement of A007694.

Offset 1, canonical program `A379851.P2408517926029222728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379851 (n : ℕ) : ℤ :=
  (A379851.P2408517926029222728.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379970.P2983459517443085042

`and(1, n*A341635(n+1))`
-/

namespace A379970.P2983459517443085042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n : ℤ) * A341635 (n + 1))

end

end A379970.P2983459517443085042

noncomputable section

/-- A379970: a(n) = 1 if n is twice its squarefree kernel (A007949), otherwise 0.

Offset 1, canonical program `A379970.P2983459517443085042`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379970 (n : ℕ) : ℤ :=
  A379970.P2983459517443085042.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379970.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380288.P9721759158945038093

`A000005(n+1)-A379590(n+1)`
-/

namespace A380288.P9721759158945038093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A379590 (n + 1)

end

end A380288.P9721759158945038093

noncomputable section

/-- A380288: a(n) is the number of divisors d of n such that 2^d - 1 is not prime.

Offset 1, canonical program `A380288.P9721759158945038093`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A379590, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380288 (n : ℕ) : ℤ :=
  A380288.P9721759158945038093.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A379590, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380288.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380329.P8351164185332422839

`A151800((A028310(n)-1)*A151800(n))`
-/

namespace A380329.P8351164185332422839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((A028310 n - 1) * A151800 n).toNat

end

end A380329.P8351164185332422839

noncomputable section

/-- A380329: a(n) = A151800((n-1)*A151800(n)).

Offset 0, canonical program `A380329.P8351164185332422839`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A380329 (n : ℕ) : ℤ :=
  A380329.P8351164185332422839.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. -/
def A380329.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380330.P10363215935538864354

`A151800(A000040(n+1)*A151800(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A380330.P10363215935538864354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A000040 (n + 1) * A151800 (n + 1)).toNat

end

end A380330.P10363215935538864354

noncomputable section

/-- A380330: a(n) = A151800(prime(n)*A151800(n)).

Offset 1, canonical program `A380330.P10363215935538864354`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380330 (n : ℕ) : ℤ :=
  A380330.P10363215935538864354.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380330.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380804.P3432496646295256472

`2*A007064(n+1)-(n+1)`
-/

namespace A380804.P3432496646295256472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007064 (n + 1) - (n + 1 : ℤ)

end

end A380804.P3432496646295256472

noncomputable section

/-- A380804: a(n) = floor(A001622*A007064(n)).

Offset 1, canonical program `A380804.P3432496646295256472`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380804 (n : ℕ) : ℤ :=
  A380804.P3432496646295256472.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A380804.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A380952.P15515145725321038377

`n*A046161(n)-A173384(n)`
-/

namespace A380952.P15515145725321038377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A046161 n - A173384 n

end

end A380952.P15515145725321038377

noncomputable section

/-- A380952: a(n) = 2^(2*n - HammingWeight(n)) * [x^n] ((x - 1)^(-2) - (1 - x)^(-3/2)).

Offset 0, canonical program `A380952.P15515145725321038377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A380952 (n : ℕ) : ℤ :=
  A380952.P15515145725321038377.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. -/
def A380952.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381241.P648882658982533390

`record[A381096(n+1)]`
-/

namespace A381241.P648882658982533390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A381241.P648882658982533390

noncomputable section

/-- A381241: Records in A381096.

Offset 1, canonical program `A381241.P648882658982533390`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A381241 (n : ℕ) : ℤ :=
  A381241.P648882658982533390.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. -/
def A381241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382662.P17606153397219342384

`A047994(A004709(n+1))`
-/

namespace A382662.P17606153397219342384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A004709 (n + 1)).toNat

end

end A382662.P17606153397219342384

noncomputable section

/-- A382662: The unitary totient function applied to the cubefree numbers (A004709).

Offset 1, canonical program `A382662.P17606153397219342384`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382662 (n : ℕ) : ℤ :=
  A382662.P17606153397219342384.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382662.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382889.P8393808026600234868

`(A004709(n+1)/A382888(n+1))²`
-/

namespace A382889.P8393808026600234868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A004709 (n + 1) : ℚ) / (A382888 (n + 1) : ℚ)) ^ 2

end

end A382889.P8393808026600234868

noncomputable section

/-- A382889: The largest square dividing the n-th cubefree number.

Offset 1, canonical program `A382889.P8393808026600234868`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A382888, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382889 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382889.P8393808026600234868.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A382888, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382889.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383427.P11284326733180387964

`comp[∪[A383425(n+1), A383426(n+1)]]`
-/

namespace A383427.P11284326733180387964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383425 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383426 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A383427.P11284326733180387964

noncomputable section

/-- A383427: Indices k such that A003849(k) = A383422(k).

Offset 1, canonical program `A383427.P11284326733180387964`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383427 (n : ℕ) : ℤ :=
  (A383427.P11284326733180387964.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383427.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384189.P11228189298359388274

`comp[A030130(n+1)]`
-/

namespace A384189.P11228189298359388274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A384189.P11228189298359388274

noncomputable section

/-- A384189: Numbers whose number of zeros in their binary representation is not equal to 1.

Offset 1, canonical program `A384189.P11228189298359388274`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384189 (n : ℕ) : ℤ :=
  (A384189.P11228189298359388274.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384189.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384423.P12075957193450750820

`∑{e}[n+1, A047994(#)]`
-/

namespace A384423.P12075957193450750820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A047994 (Nat.factorization (f1 n) p)

end

end A384423.P12075957193450750820

noncomputable section

/-- A384423: The number of prime powers (not including 1) p^e that divide n such that e is unitarily coprime to the p-adic valuation of n.

Offset 1, canonical program `A384423.P12075957193450750820`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384423 (n : ℕ) : ℤ :=
  A384423.P12075957193450750820.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384556.P4300059835760640918

`A007947(n+1)*A367990(n+1)`
-/

namespace A384556.P4300059835760640918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A367990 (n + 1)

end

end A384556.P4300059835760640918

noncomputable section

/-- A384556: The sum of the exponential divisors of n that are cubefree.

Offset 1, canonical program `A384556.P4300059835760640918`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384556 (n : ℕ) : ℤ :=
  A384556.P4300059835760640918.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384556.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384710.P3301350355556147673

`1+n-A062830(n)`
-/

namespace A384710.P3301350355556147673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) - A062830 n

end

end A384710.P3301350355556147673

noncomputable section

/-- A384710: a(n) = Sum_{k=0..n} [gcd(k, n) = 1], where [.] are the Iverson brackets.

Offset 0, canonical program `A384710.P3301350355556147673`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384710 (n : ℕ) : ℤ :=
  A384710.P3301350355556147673.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384710.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385072.P12514858410014300209

`A360010(∑[n]+1)`
-/

namespace A385072.P12514858410014300209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360010 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A385072.P12514858410014300209

noncomputable section

/-- A385072: a(n) = number of tetrahedral numbers <= n-th triangular number.

Offset 0, canonical program `A385072.P12514858410014300209`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A385072 (n : ℕ) : ℤ :=
  A385072.P12514858410014300209.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A385072.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385147.P13098067646068759981

`∑[A066781(n+1)]`
-/

namespace A385147.P13098067646068759981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385147.P13098067646068759981

noncomputable section

/-- A385147: a(n) = Sum_{i=1..n} 2^phi(i), where phi=A000010.

Offset 1, canonical program `A385147.P13098067646068759981`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A385147 (n : ℕ) : ℤ :=
  A385147.P13098067646068759981.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A385147.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385183.P12873662820540896865

`A341674(lt[1, A341674(n+1)]+1)`
-/

namespace A385183.P12873662820540896865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341674 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A385183.P12873662820540896865

noncomputable section

/-- A385183: The v sequence in quartets (1,u,v,w); see A385182.

Offset 1, canonical program `A385183.P12873662820540896865`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7491 terms. -/
def A385183 (n : ℕ) : ℤ :=
  A385183.P12873662820540896865.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7491 terms. -/
def A385183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385374.P1692704901140031766

`A060016(A000005(n+1)+∑[n])`
-/

namespace A385374.P1692704901140031766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060016 (A000005 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A385374.P1692704901140031766

noncomputable section

/-- A385374: a(n) is the number of partitions of n into tau(n) distinct parts.

Offset 1, canonical program `A385374.P1692704901140031766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A385374 (n : ℕ) : ℤ :=
  A385374.P1692704901140031766.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A385374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385614.P9354234976025821991

`A066846(lt[1, A173075(n)])`
-/

namespace A385614.P9354234976025821991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066846 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A385614.P9354234976025821991

noncomputable section

/-- A385614: Numbers of the form x^x + y^y, 1 < x < y.

Offset 1, canonical program `A385614.P9354234976025821991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1485 terms. -/
def A385614 (n : ℕ) : ℤ :=
  A385614.P9354234976025821991.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1485 terms. -/
def A385614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385822.P7363694969260658902

`comp[A039770(n+1)-1]+1`
-/

namespace A385822.P7363694969260658902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A385822.P7363694969260658902

noncomputable section

/-- A385822: Numbers k such that phi(k) is not a perfect square.

Offset 1, canonical program `A385822.P7363694969260658902`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385822 (n : ℕ) : ℤ :=
  (A385822.P7363694969260658902.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385865.P12036821787748699265

`A003057(n+2)-A233558(n+2)`
-/

namespace A385865.P12036821787748699265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) - A233558 (n + 2)

end

end A385865.P12036821787748699265

noncomputable section

/-- A385865: Triangle read by rows where T(n,k), for 1 <= k < n, is the column number where (n-k)^2 occurs in an n X n grid filled rowwise with the numbers 1 to n^2.

Offset 2, canonical program `A385865.P12036821787748699265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A385865 (n : ℕ) : ℤ :=
  A385865.P12036821787748699265.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A385865.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386260.P6511394381099978900

`A051903(A001511(n+1)+1)`
-/

namespace A386260.P6511394381099978900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A001511 (n + 1) + 1).toNat

end

end A386260.P6511394381099978900

noncomputable section

/-- A386260: Maximum exponent in the prime factorization of the exponent of the highest power of 2 dividing 4*n.

Offset 1, canonical program `A386260.P6511394381099978900`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386260 (n : ℕ) : ℤ :=
  A386260.P6511394381099978900.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A386260.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A387362.P10061794841326187916

`∩[A003277(n+1)-2, A003277(n+1)]`
-/

namespace A387362.P10061794841326187916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387362.P10061794841326187916

noncomputable section

/-- A387362: Cyclic numbers k such that k+2 is also a cyclic number.

Offset 1, canonical program `A387362.P10061794841326187916`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5319 terms. -/
def A387362 (n : ℕ) : ℤ :=
  (A387362.P10061794841326187916.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5319 terms. -/
def A387362.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387728.P1733724163278442984

`lt[A387726(n+1), n+1]+1`
-/

namespace A387728.P1733724163278442984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387726 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A387728.P1733724163278442984

noncomputable section

/-- A387728: Numbers k such that the powerful part of the sum of divisors of k (A387726) is less than k.

Offset 1, canonical program `A387728.P1733724163278442984`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9195 terms. -/
def A387728 (n : ℕ) : ℤ :=
  (A387728.P1733724163278442984.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9195 terms. -/
def A387728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388067.P9453088931527127366

`∑{d}[n+1, A369308(#)]`
-/

namespace A388067.P9453088931527127366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A369308 d

end

end A388067.P9453088931527127366

noncomputable section

/-- A388067: Multiplicative sequence a(n) with a(p^e) = (1+floor(e/2)) * (2+floor(e/2)) / 2 for prime p and e >= 0.

Offset 1, canonical program `A388067.P9453088931527127366`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A388067 (n : ℕ) : ℤ :=
  A388067.P9453088931527127366.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A388067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388972.P12899895285067129731

`lt[gcd(3, A049419(n+1)), 3]+1`
-/

namespace A388972.P12899895285067129731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A049419 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A388972.P12899895285067129731

noncomputable section

/-- A388972: Numbers whose number of exponential divisors is a power of 2.

Offset 1, canonical program `A388972.P12899895285067129731`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9581 terms. -/
def A388972 (n : ℕ) : ℤ :=
  (A388972.P12899895285067129731.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9581 terms. -/
def A388972.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A390252.P10563885878935831131

`∪[A280076(n+1), A386637(n+1)]`
-/

namespace A390252.P10563885878935831131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386637 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390252.P10563885878935831131

noncomputable section

/-- A390252: Numbers k such that sigma(k) = psi(k) + omega(k)^3.

Offset 1, canonical program `A390252.P10563885878935831131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 991 terms. -/
def A390252 (n : ℕ) : ℤ :=
  (A390252.P10563885878935831131.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 991 terms. -/
def A390252.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A390555.P7215730010681652163

`A049419((n+1)²)`
-/

namespace A390555.P7215730010681652163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 ((n + 1) ^ 2)

end

end A390555.P7215730010681652163

noncomputable section

/-- A390555: The number of exponential divisors of n^2.

Offset 1, canonical program `A390555.P7215730010681652163`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390555 (n : ℕ) : ℤ :=
  A390555.P7215730010681652163.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049419, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390555.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390804.P18010543064015329428

`(A062570(n+1)+A209229(n+1))*(n+1)/2`
-/

namespace A390804.P18010543064015329428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A062570 (n + 1) + A209229 (n + 1)) * (n + 1 : ℤ) : ℚ) / 2

end

end A390804.P18010543064015329428

noncomputable section

/-- A390804: The sum of the integers k from 1 to n such that gcd(n, k) is a power of 2.

Offset 1, canonical program `A390804.P18010543064015329428`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390804 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A390804.P18010543064015329428.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A390804.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391575.P15759118219380588408

`eq[A286576(n), A293162(n)]`
-/

namespace A391575.P15759118219380588408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293162 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391575.P15759118219380588408

noncomputable section

/-- A391575: Numbers k such that 3*k = A048720(3,m) for some m > k, where A048720 is carryless base-2 multiplication.

Offset 1, canonical program `A391575.P15759118219380588408`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5568 terms. -/
def A391575 (n : ℕ) : ℤ :=
  (A391575.P15759118219380588408.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5568 terms. -/
def A391575.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391658.P1593916310506347255

`A233671(n+1)-A046868(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391658.P1593916310506347255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233671 (n + 1) - A046868 (n + 1)

end

end A391658.P1593916310506347255

noncomputable section

/-- A391658: a(n) = A233671(n) - A046868(n).

Offset 1, canonical program `A391658.P1593916310506347255`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046868, A233671, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391658 (n : ℕ) : ℤ :=
  A391658.P1593916310506347255.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046868, A233671, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A391658.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A391793.P952432281470037196

`∑{d}[n+1, A253206(#)*A307425((n+1)/#)]`
-/

namespace A391793.P952432281470037196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A253206 d * A307425 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A391793.P952432281470037196

noncomputable section

/-- A391793: Multiplicative sequence a(n) with a(p^e) = ((e mod 5) * ((e mod 5) - 5) + 4) / 2 for prime p and e > 0.

Offset 1, canonical program `A391793.P952432281470037196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391793 (n : ℕ) : ℤ :=
  A391793.P952432281470037196.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391804.P2522922692948596025

`A151800(A006094(n+1))`
-/

namespace A391804.P2522922692948596025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A006094 (n + 1)).toNat

end

end A391804.P2522922692948596025

noncomputable section

/-- A391804: a(n) = least prime greater than prime(n)*prime(n+1).

Offset 1, canonical program `A391804.P2522922692948596025`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391804 (n : ℕ) : ℤ :=
  A391804.P2522922692948596025.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391804.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392111.P4220090756127954583

`∪[A002001(n), A268328(n+1)]`
-/

namespace A392111.P4220090756127954583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392111.P4220090756127954583

noncomputable section

/-- A392111: Numbers k such that 5*k - (greatest prime < 5*k) = (least prime > 5*k) - 5*k.

Offset 1, canonical program `A392111.P4220090756127954583`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A392111 (n : ℕ) : ℤ :=
  (A392111.P4220090756127954583.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A392111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392114.P11332587441482956445

`A072570(n+2)/6`
-/

namespace A392114.P11332587441482956445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072570 (n + 2) : ℚ) / 6

end

end A392114.P11332587441482956445

noncomputable section

/-- A392114: Numbers k such that 6*k - (greatest prime < 6*n) = (least prime > 6*n) - 6*k.

Offset 1, canonical program `A392114.P11332587441482956445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A392114 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392114.P11332587441482956445.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A392114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392262.P13598658566703554878

`filter[A388427(n+1), A373252(#)]`
-/

namespace A392262.P13598658566703554878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373252 (f1 j).toNat = 1) n)

end

end A392262.P13598658566703554878

noncomputable section

/-- A392262: Even composite numbers that are squarefree or powers of 2.

Offset 1, canonical program `A392262.P13598658566703554878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4083 terms. -/
def A392262 (n : ℕ) : ℤ :=
  A392262.P13598658566703554878.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4083 terms. -/
def A392262.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392280.P9803896424176821439

`A053644(A372604(n+1)+A372603(n+1))`
-/

namespace A392280.P9803896424176821439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A372604 (n + 1) + A372603 (n + 1)).toNat

end

end A392280.P9803896424176821439

noncomputable section

/-- A392280: The maximum exponent in the prime factorization of the smallest multiple of n whose prime factorization exponents are all powers of 2.

Offset 1, canonical program `A392280.P9803896424176821439`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392280 (n : ℕ) : ℤ :=
  A392280.P9803896424176821439.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392280.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392341.P17720603421166545301

`A370905(n+1)-A000196(n+1)`
-/

namespace A392341.P17720603421166545301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370905 (n + 1) - A000196 (n + 1)

end

end A392341.P17720603421166545301

noncomputable section

/-- A392341: Number of pairs (x, y) with 1 <= x < y <= n such that gcd(x, y) is a perfect square.

Offset 1, canonical program `A392341.P17720603421166545301`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392341 (n : ℕ) : ℤ :=
  A392341.P17720603421166545301.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392598.P12361947951948516843

`A268357(n+1)*A392597(n+1)`
-/

namespace A392598.P12361947951948516843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268357 (n + 1) * A392597 (n + 1)

end

end A392598.P12361947951948516843

noncomputable section

/-- A392598: The largest 11-smooth divisor of n.

Offset 1, canonical program `A392598.P12361947951948516843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392598 (n : ℕ) : ℤ :=
  A392598.P12361947951948516843.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392598.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392632.P57096770616822519

`eq[1, A392630(1+n)]+1`
-/

namespace A392632.P57096770616822519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392630 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A392632.P57096770616822519

noncomputable section

/-- A392632: Numbers k whose squarefree kernel is the only exponential divisor of k that is a number whose number of divisors is a power of 2.

Offset 1, canonical program `A392632.P57096770616822519`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8914 terms. -/
def A392632 (n : ℕ) : ℤ :=
  (A392632.P57096770616822519.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8914 terms. -/
def A392632.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392841.P5224296855695962585

`val(A165404(1+n), 2)`
-/

namespace A392841.P5224296855695962585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165404 (1 + n)).toNat 2

end

end A392841.P5224296855695962585

noncomputable section

/-- A392841: Number of trailing zeros in a type of Zeckendorf expansion based on the Fibonacci numbers of odd index.

Offset 1, canonical program `A392841.P5224296855695962585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 609 terms. -/
def A392841 (n : ℕ) : ℤ :=
  (A392841.P5224296855695962585.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 609 terms. -/
def A392841.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393450.P12893032744760769802

`lt[A004741(n+1)², n+2]`
-/

namespace A393450.P12893032744760769802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A393450.P12893032744760769802

noncomputable section

/-- A393450: Consider the square spiral with its cells numbered starting at 0, as in A308884 and A274641. Two players, Black and Red, take turns. When it is Black's turn, he places a king at the smallest unoccupied cell not attacked by an existing Red king, and when it is Red's turn, she places a king at the smallest unoccupied cell not attacked by an existing Black king. Sequence lists squares occupied by a Black king.

Offset 0, canonical program `A393450.P12893032744760769802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A393450 (n : ℕ) : ℤ :=
  (A393450.P12893032744760769802.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A393450.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A393924.P12806141696084150267

`record[gcd(n, A326186(n+1))+1]`
-/

namespace A393924.P12806141696084150267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A326186 (n + 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A393924.P12806141696084150267

noncomputable section

/-- A393924: Numbers that are either squarefree or squareful.

Offset 1, canonical program `A393924.P12806141696084150267`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393924 (n : ℕ) : ℤ :=
  (A393924.P12806141696084150267.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395253.P18042258813510098844

`Δ[A395251(n+1)]`
-/

namespace A395253.P18042258813510098844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A395253.P18042258813510098844

noncomputable section

/-- A395253: Differences of A395251.

Offset 1, canonical program `A395253.P18042258813510098844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A395253 (n : ℕ) : ℤ :=
  A395253.P18042258813510098844.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A395253.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A395766.P2737168039498040355

`eq[1, A003415(A126084(n))]`
-/

namespace A395766.P2737168039498040355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A126084 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A395766.P2737168039498040355

noncomputable section

/-- A395766: Indices k such that the cumulative bitwise XOR of the first k primes is prime.

Offset 1, canonical program `A395766.P2737168039498040355`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. -/
def A395766 (n : ℕ) : ℤ :=
  (A395766.P2737168039498040355.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. -/
def A395766.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395853.P3335866657025949553

`comp[A354626(n+1)]`
-/

namespace A395853.P3335866657025949553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A395853.P3335866657025949553

noncomputable section

/-- A395853: Numbers that can be written as the sum of a Fibonacci number and the square of a Fibonacci number.

Offset 1, canonical program `A395853.P3335866657025949553`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A395853 (n : ℕ) : ℤ :=
  (A395853.P3335866657025949553.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 185 terms. -/
def A395853.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396005.P3331202337071795760

`eq[A000005(n+2), A000005(A004277(n))]`
-/

namespace A396005.P3331202337071795760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A396005.P3331202337071795760

noncomputable section

/-- A396005: Numbers k such that tau(2*k) = tau(k + 2) where tau = A000005.

Offset 1, canonical program `A396005.P3331202337071795760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1407 terms. -/
def A396005 (n : ℕ) : ℤ :=
  (A396005.P3331202337071795760.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1407 terms. -/
def A396005.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396757.P17629373591554347018

`∑{d}[n+1, A002618(#)*A372952((n+1)/#)]`
-/

namespace A396757.P17629373591554347018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A372952 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A396757.P17629373591554347018

noncomputable section

/-- A396757: a(n) = Sum_{1 <= x_1, x_2, x_3, x_4 <= n} gcd(x_1, x_2, x_3, n)/gcd(x_1, x_2, x_3, x_4, n).

Offset 1, canonical program `A396757.P17629373591554347018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396757 (n : ℕ) : ℤ :=
  A396757.P17629373591554347018.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396830.P2907240804271392718

`∑{d}[n+1, A002618(#)*A372961((n+1)/#)]`
-/

namespace A396830.P2907240804271392718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A372961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A396830.P2907240804271392718

noncomputable section

/-- A396830: a(n) = Sum_{1 <= x_1, x_2, x_3, x_4, x_5 <= n} gcd(x_1, x_2, x_3, x_4, n)/gcd(x_1, x_2, x_3, x_4, x_5, n).

Offset 1, canonical program `A396830.P2907240804271392718`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396830 (n : ℕ) : ℤ :=
  A396830.P2907240804271392718.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396830.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397148.P13443785870938589229

`eq[2, A000005(n+A001221(n+1)+1)]+1`
-/

namespace A397148.P13443785870938589229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n : ℤ) + A001221 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A397148.P13443785870938589229

noncomputable section

/-- A397148: Numbers k such that k + omega(k) is prime.

Offset 1, canonical program `A397148.P13443785870938589229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5230 terms. -/
def A397148 (n : ℕ) : ℤ :=
  (A397148.P13443785870938589229.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5230 terms. -/
def A397148.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398144.P14755306268000008284

`A057627(n+1)²+A070548(n+1)²+A070549(n+1)²`
-/

namespace A398144.P14755306268000008284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057627 (n + 1) ^ 2 + A070548 (n + 1) ^ 2 + A070549 (n + 1) ^ 2

end

end A398144.P14755306268000008284

noncomputable section

/-- A398144: a(n) is the number of pairs (i,j) with mu(i) = mu(j), 1 <= i,j <= n, where mu = A008683 (Moebius function).

Offset 1, canonical program `A398144.P14755306268000008284`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070548, A070549, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A398144 (n : ℕ) : ℤ :=
  A398144.P14755306268000008284.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070548, A070549, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A398144.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A400140.P15113358589886893370

`∑{d}[n+1, A074823(#)*A369308((n+1)/#)]`
-/

namespace A400140.P15113358589886893370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074823 d * A369308 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A400140.P15113358589886893370

noncomputable section

/-- A400140: The number of divisors d of n such that gcid(d, n/d) is a square, where gcid is the greatest common infinitary divisor.

Offset 1, canonical program `A400140.P15113358589886893370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400140 (n : ℕ) : ℤ :=
  A400140.P15113358589886893370.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400140.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400259.P12374509986453713779

`A276150(A003415(n))`
-/

namespace A400259.P12374509986453713779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 (A003415 n).toNat

end

end A400259.P12374509986453713779

noncomputable section

/-- A400259: Sum of digits when n' [the arithmetic derivative of n] is written in primorial base (A049345).

Offset 0, canonical program `A400259.P12374509986453713779`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400259 (n : ℕ) : ℤ :=
  A400259.P12374509986453713779.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276150, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A400259.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A400263.P16430157934962236764

`floor(A003415(n)/2)%3`
-/

namespace A400263.P16430157934962236764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A003415 n : ℚ) / 2⌋ 3

end

end A400263.P16430157934962236764

noncomputable section

/-- A400263: The second least significant digit of n' [the arithmetic derivative of n, A003415] in the primorial base, A049345.

Offset 0, canonical program `A400263.P16430157934962236764`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400263 (n : ℕ) : ℤ :=
  A400263.P16430157934962236764.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400263.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A400451.P13155712066239824629

`A059268(n)*A062111(n)`
-/

namespace A400451.P13155712066239824629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A062111 n

end

end A400451.P13155712066239824629

noncomputable section

/-- A400451: Distinct values of A400450 in increasing order.

Offset 1, canonical program `A400451.P13155712066239824629`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400451 (n : ℕ) : ℤ :=
  A400451.P13155712066239824629.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A400451.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401085.P16377491220029045574

`∑{d}[n+1, A008833(#)*A369308((n+1)/#)]`
-/

namespace A401085.P16377491220029045574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008833 d * A369308 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A401085.P16377491220029045574

noncomputable section

/-- A401085: The total sum of square divisors of the square divisors of n.

Offset 1, canonical program `A401085.P16377491220029045574`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401085 (n : ℕ) : ℤ :=
  A401085.P16377491220029045574.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401085.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401192.P10263266885400746723

`(A058026(2*(n+3)-5)+3+2*A000086(2*(n+3)-5))/6`
-/

namespace A401192.P10263266885400746723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058026 (2 * (n + 3) - 5) + 3 + 2 * A000086 (2 * (n + 3) - 5) : ℚ) / 6

end

end A401192.P10263266885400746723

noncomputable section

/-- A401192: a(n) is the number of inequivalent lattice triangles containing n lattice points, with no boundary lattice points other than their three vertices.

Offset 3, canonical program `A401192.P10263266885400746723`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000086, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401192 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A401192.P10263266885400746723.a (n - 3))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000086, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A401192.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A401421.P9073841599611467425

`A007947(n+1)*A295295(n+1)`
-/

namespace A401421.P9073841599611467425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A295295 (n + 1)

end

end A401421.P9073841599611467425

noncomputable section

/-- A401421: The sum of coreful divisors of n (A284318) that are cubefree (A004709).

Offset 1, canonical program `A401421.P9073841599611467425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401421 (n : ℕ) : ℤ :=
  A401421.P9073841599611467425.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369252.P4904178596976423146

`A003415(A046316(n+1))`
-/

namespace A369252.P4904178596976423146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A046316 (n + 1)).toNat

end

end A369252.P4904178596976423146

noncomputable section

/-- A369252: Arithmetic derivative applied to the numbers of the form p*q*r where p,q,r are (not necessarily distinct) odd primes.

Offset 1, canonical program `A369252.P4904178596976423146`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369252 (n : ℕ) : ℤ :=
  A369252.P4904178596976423146.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046316, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369252.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369432.P9081295232160425038

`∑{#}[n, (-1)^(n-#)*C(n, #)*A059712(#+1)]`
-/

namespace A369432.P9081295232160425038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A059712 (k + 1) : ℚ)

end

end A369432.P9081295232160425038

noncomputable section

/-- A369432: Number of Dyck excursions with catastrophes from (0,0) to (n,0).

Offset 0, canonical program `A369432.P9081295232160425038`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A369432 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A369432.P9081295232160425038.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. -/
def A369432.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369934.P13862989399101401455

`log2(A369933(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A369934.P13862989399101401455
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A369933 (n + 2) : ℝ)

end

end A369934.P13862989399101401455

noncomputable section

/-- A369934: a(n) = log_2(A369933(n)).

Offset 2, canonical program `A369934.P13862989399101401455`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A369933, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369934 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A369934.P13862989399101401455.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A369933, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369934.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370478.P15478939800162583735

`Δ[Δ[A370477(n)-A026012(n)]]`
-/

namespace A370478.P15478939800162583735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370477 n - A026012 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370478.P15478939800162583735

noncomputable section

/-- A370478: G.f. satisfies A(x) = ( 1 + x * (A(x)^(1/3) / (1-x))^(3/2) )^3.

Offset 0, canonical program `A370478.P15478939800162583735`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A370478 (n : ℕ) : ℤ :=
  A370478.P15478939800162583735.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A370478.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A370695.P1861615935770778993

`Δ[A270386(n)-A307678(n)]`
-/

namespace A370695.P1861615935770778993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270386 n - A307678 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370695.P1861615935770778993

noncomputable section

/-- A370695: G.f. A(x) satisfies A(x) = (1 + x*A(x)^(3/4) / (1-x))^4.

Offset 0, canonical program `A370695.P1861615935770778993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A370695 (n : ℕ) : ℤ :=
  A370695.P1861615935770778993.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A370695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372209.P616246694490321131

`A008578(A046868(n+1))`
-/

namespace A372209.P616246694490321131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A046868 (n + 1)).toNat

end

end A372209.P616246694490321131

noncomputable section

/-- A372209: Primes p_1 where products m of k = 3 consecutive primes p_1..p_k are such that only p_1 < m^(1/k).

Offset 1, canonical program `A372209.P616246694490321131`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5198 terms. -/
def A372209 (n : ℕ) : ℤ :=
  A372209.P616246694490321131.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5198 terms. -/
def A372209.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372511.P6889518927263151039

`∑[A290081(n)]`
-/

namespace A372511.P6889518927263151039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372511.P6889518927263151039

noncomputable section

/-- A372511: Number of solutions to x^2 + y^2 <= n, where x, y are positive odd integers.

Offset 0, canonical program `A372511.P6889518927263151039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1986 terms. -/
def A372511 (n : ℕ) : ℤ :=
  A372511.P6889518927263151039.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1986 terms. -/
def A372511.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373336.P12067862293443695425

`A279061(n+1)-A363795(n+1)`
-/

namespace A373336.P12067862293443695425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (n + 1) - A363795 (n + 1)

end

end A373336.P12067862293443695425

noncomputable section

/-- A373336: Expansion of Sum_{k>=1} x^k / (1 + x^k + x^(2*k) + x^(3*k) + x^(4*k) + x^(5*k) + x^(6*k)).

Offset 1, canonical program `A373336.P12067862293443695425`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279061, A363795, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373336 (n : ℕ) : ℤ :=
  A373336.P12067862293443695425.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A279061, A363795, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373336.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373439.P16901655103107973233

`A017667(sqrt(abs(A358272(n+1))))`
-/

namespace A373439.P16901655103107973233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017667 (SequenceMachineLib.roundAway (Real.sqrt (|A358272 (n + 1)| : ℝ))).toNat

end

end A373439.P16901655103107973233

noncomputable section

/-- A373439: Numerator of sum of reciprocals of square divisors of n.

Offset 1, canonical program `A373439.P16901655103107973233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373439 (n : ℕ) : ℤ :=
  A373439.P16901655103107973233.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374052.P16324426234516621321

`lt[0, A374051(n+1)]+1`
-/

namespace A374052.P16324426234516621321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374051 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A374052.P16324426234516621321

noncomputable section

/-- A374052: Numbers k for which A113177(k) is a multiple of 3, where A113177 is fully additive with a(p) = Fibonacci(p).

Offset 1, canonical program `A374052.P16324426234516621321`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374052 (n : ℕ) : ℤ :=
  (A374052.P16324426234516621321.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374052.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374093.P11725955277954229124

`C(A035187(A008574(n)), 2)`
-/

namespace A374093.P11725955277954229124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A035187 (A008574 n).toNat).toNat 2

end

end A374093.P11725955277954229124

noncomputable section

/-- A374093: Number of solutions to n = x^2 + 3*x*y + y^2 with 0 < x < y.

Offset 0, canonical program `A374093.P11725955277954229124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A374093 (n : ℕ) : ℤ :=
  (A374093.P11725955277954229124.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. -/
def A374093.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A374135.P13347825855800962703

`filter[A202822(n+1), A070563(#)]`
-/

namespace A374135.P13347825855800962703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A070563 (f1 j).toNat = 1) n)

end

end A374135.P13347825855800962703

noncomputable section

/-- A374135: Nonmultiples of 3 whose sum of divisors is also a nonmultiple of 3.

Offset 1, canonical program `A374135.P13347825855800962703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9598 terms. -/
def A374135 (n : ℕ) : ℤ :=
  A374135.P13347825855800962703.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9598 terms. -/
def A374135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375087.P8456723521891746720

`A075526(n)-A036263(n+1)`
-/

namespace A375087.P8456723521891746720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n - A036263 (n + 1)

end

end A375087.P8456723521891746720

noncomputable section

/-- A375087: Numbers added to cumulative correction term in order for prime numbers to resemble a recursive sequence.

Offset 1, canonical program `A375087.P8456723521891746720`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375087 (n : ℕ) : ℤ :=
  A375087.P8456723521891746720.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375932.P15622445158983307868

`(n+1)/A375931(n+1)`
-/

namespace A375932.P15622445158983307868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A375931 (n + 1) : ℚ)

end

end A375932.P15622445158983307868

noncomputable section

/-- A375932: The largest unitary k-free divisor of n where k = A051903(n) is the maximum exponent in the prime factorization of n.

Offset 1, canonical program `A375932.P15622445158983307868`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A375931, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375932 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375932.P15622445158983307868.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A375931, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375932.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376295.P17984946659745279071

`A030101(A047778(n+1))`
-/

namespace A376295.P17984946659745279071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A047778 (n + 1)).toNat

end

end A376295.P17984946659745279071

noncomputable section

/-- A376295: The binary expansion of a(n) is the reversal of the concatenation of the binary expansions of 1,...,n.

Offset 1, canonical program `A376295.P17984946659745279071`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376295 (n : ℕ) : ℤ :=
  A376295.P17984946659745279071.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A376295.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A378032.P1075511213774378918

`A378033(A000040(n+1))`
-/

namespace A378032.P1075511213774378918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378033 (A000040 (n + 1)).toNat

end

end A378032.P1075511213774378918

noncomputable section

/-- A378032: a(1) = a(2) = 1; a(n>2) is the greatest nonsquarefree number < prime(n).

Offset 1, canonical program `A378032.P1075511213774378918`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378033, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378032 (n : ℕ) : ℤ :=
  A378032.P1075511213774378918.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378033, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378032.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378299.P15957382925163367627

`A006068(A030101(n))`
-/

namespace A378299.P15957382925163367627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A030101 n).toNat

end

end A378299.P15957382925163367627

noncomputable section

/-- A378299: Read the binary representation of n from the most to least significant bit then perform a cumulative XOR and store by reading from least to most significant bit.

Offset 0, canonical program `A378299.P15957382925163367627`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378299 (n : ℕ) : ℤ :=
  A378299.P15957382925163367627.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378299.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378814.P9140415008619509841

`round((n+1)/(A000005(A071904(n+1))-2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378814.P9140415008619509841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000005 (A071904 (n + 1)).toNat - 2 : ℚ))

end

end A378814.P9140415008619509841

noncomputable section

/-- A378814: a(n) = round(n/(A000005(A071904(n))-2)).

Offset 1, canonical program `A378814.P9140415008619509841`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071904, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378814 (n : ℕ) : ℤ :=
  A378814.P9140415008619509841.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071904, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378814.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379226.P6425558838148186179

`eq[1, A379227(n+1)]+1`
-/

namespace A379226.P6425558838148186179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379227 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A379226.P6425558838148186179

noncomputable section

/-- A379226: Numbers k for which A113177(k) is a multiple of 5, where A113177 is fully additive with a(p) = Fibonacci(p).

Offset 1, canonical program `A379226.P6425558838148186179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9344 terms. -/
def A379226 (n : ℕ) : ℤ :=
  (A379226.P6425558838148186179.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9344 terms. -/
def A379226.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379444.P1698995234905750944

`(A007491(n+3)-A053001(n+2))/2`
-/

namespace A379444.P1698995234905750944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007491 (n + 3) - A053001 (n + 2) : ℚ) / 2

end

end A379444.P1698995234905750944

noncomputable section

/-- A379444: a(n) is the difference between the least prime > (n+1)^2 and the largest prime < n^2, divided by 2.

Offset 2, canonical program `A379444.P1698995234905750944`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007491, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379444 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A379444.P1698995234905750944.a (n - 2))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007491, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A379444.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379655.P8370440045132566259

`∩[A002191(n+1), ∑[A083531(n+1)]]`
-/

namespace A379655.P8370440045132566259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002191 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379655.P8370440045132566259

noncomputable section

/-- A379655: Numbers k such that k and k+1 are both possible values of the sum of divisors function (A000203).

Offset 1, canonical program `A379655.P8370440045132566259`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. -/
def A379655 (n : ℕ) : ℤ :=
  (A379655.P8370440045132566259.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. -/
def A379655.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382415.P7885958803409723842

`comp[A023721(n+1)]`
-/

namespace A382415.P7885958803409723842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382415.P7885958803409723842

noncomputable section

/-- A382415: Numbers with at least one zero in their base-5 representation.

Offset 1, canonical program `A382415.P7885958803409723842`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382415 (n : ℕ) : ℤ :=
  (A382415.P7885958803409723842.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382906.P11250018393502254710

`A046100(n+1)/A382905(n+1)`
-/

namespace A382906.P11250018393502254710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046100 (n + 1) : ℚ) / (A382905 (n + 1) : ℚ)

end

end A382906.P11250018393502254710

noncomputable section

/-- A382906: The powerful part of the n-th biquadratefree number.

Offset 1, canonical program `A382906.P11250018393502254710`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, A382905, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382906 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382906.P11250018393502254710.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046100, A382905, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A382906.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A383785.P9174165813630133873

`comp[A383784(n+1)]`
-/

namespace A383785.P9174165813630133873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A383785.P9174165813630133873

noncomputable section

/-- A383785: Numbers not occurring as norms of vectors in any regular planar lattice.

Offset 1, canonical program `A383785.P9174165813630133873`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383785 (n : ℕ) : ℤ :=
  (A383785.P9174165813630133873.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383785.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384038.P3168787220566685781

`A002884(n)*A006098(n)`
-/

namespace A384038.P3168787220566685781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002884 n * A006098 n

end

end A384038.P3168787220566685781

noncomputable section

/-- A384038: Number of 2n X 2n matrices M over GF(2) such that the column space of M is equal to the null space of M.

Offset 0, canonical program `A384038.P3168787220566685781`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006098, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384038 (n : ℕ) : ℤ :=
  A384038.P3168787220566685781.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006098, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384038.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384517.P2524242939913956237

`A062770(n+1)²`
-/

namespace A384517.P2524242939913956237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062770 (n + 1) ^ 2

end

end A384517.P2524242939913956237

noncomputable section

/-- A384517: Nonsquarefree numbers that are squarefree numbers raised to an even power.

Offset 1, canonical program `A384517.P2524242939913956237`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062770, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384517 (n : ℕ) : ℤ :=
  A384517.P2524242939913956237.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062770, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A384517.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385128.P3222418224828136052

`A000005(n+1)-A385129(n+1)`
-/

namespace A385128.P3222418224828136052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A385129 (n + 1)

end

end A385128.P3222418224828136052

noncomputable section

/-- A385128: The number of divisors of n whose maximum exponent in their prime factorization is even.

Offset 1, canonical program `A385128.P3222418224828136052`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A385129, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385128 (n : ℕ) : ℤ :=
  A385128.P3222418224828136052.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A385129, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385128.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385186.P4786045568556836293

`2*A147846(n+1)`
-/

namespace A385186.P4786045568556836293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A147846 (n + 1)

end

end A385186.P4786045568556836293

noncomputable section

/-- A385186: Oblong numbers of the form k*(k + 1) such that at least one of k and k + 1 is prime.

Offset 1, canonical program `A385186.P4786045568556836293`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385186 (n : ℕ) : ℤ :=
  A385186.P4786045568556836293.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386253.P11103916408010267952

`A054054(n)^A054055(n)+n`
-/

namespace A386253.P11103916408010267952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054054 n : ℚ) ^ (A054055 n : ℤ) + (n : ℚ)

end

end A386253.P11103916408010267952

noncomputable section

/-- A386253: a(n) = (smallest digit of n)^(largest digit of n) + n.

Offset 0, canonical program `A386253.P11103916408010267952`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054054, A054055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A386253 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A386253.P11103916408010267952.a n)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054054, A054055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A386253.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A388983.P17500820432191245093

`filter[A228056(n+1), A355447(#)]`
-/

namespace A388983.P17500820432191245093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A388983.P17500820432191245093

noncomputable section

/-- A388983: Numbers, not powers of primes, that are of the form p * m^2, where p is prime and m by necessity > 1.

Offset 1, canonical program `A388983.P17500820432191245093`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9010 terms. -/
def A388983 (n : ℕ) : ℤ :=
  A388983.P17500820432191245093.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9010 terms. -/
def A388983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389826.P9330026923282160192

`floor((n+1)*A030101(n+1)/(n+1+A030101(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389826.P9330026923282160192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1 : ℤ) * A030101 (n + 1) : ℚ) / ((n + 1 : ℤ) + A030101 (n + 1) : ℚ)⌋

end

end A389826.P9330026923282160192

noncomputable section

/-- A389826: a(n) = floor(n*A030101(n)/(n + A030101(n))).

Offset 1, canonical program `A389826.P9330026923282160192`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389826 (n : ℕ) : ℤ :=
  A389826.P9330026923282160192.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030101, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389826.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A390361.P11253792903099633654

`eq[1, A050361(2*(n+1))]+1`
-/

namespace A390361.P11253792903099633654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A390361.P11253792903099633654

noncomputable section

/-- A390361: Numbers k such that the first sums of 1-prepended prime indices of k are all distinct. Positions of strict rows in A390308.

Offset 1, canonical program `A390361.P11253792903099633654`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390361 (n : ℕ) : ℤ :=
  (A390361.P11253792903099633654.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A390361.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391733.P1683383338998513801

`eq[1, A005590(n)]`
-/

namespace A391733.P1683383338998513801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005590 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A391733.P1683383338998513801

noncomputable section

/-- A391733: Numbers in whose binary expansion there is exactly one run of 1-bits with an odd length, while all other runs of 1-bits are of an even length (or absent).

Offset 1, canonical program `A391733.P1683383338998513801`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1664 terms. -/
def A391733 (n : ℕ) : ℤ :=
  (A391733.P1683383338998513801.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1664 terms. -/
def A391733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391797.P1688153076789904434

`A000720(A391800(n+1))`
-/

namespace A391797.P1688153076789904434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A391800 (n + 1)).toNat

end

end A391797.P1688153076789904434

noncomputable section

/-- A391797: Numbers k such that prime(2*k + 2) - prime(2*k) < prime(2*k + 1) - prime(2*k - 1).

Offset 1, canonical program `A391797.P1688153076789904434`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4320 terms. -/
def A391797 (n : ℕ) : ℤ :=
  A391797.P1688153076789904434.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4320 terms. -/
def A391797.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A393562.P13338399434190979828

`A247367(n)+A000196(n)`
-/

namespace A393562.P13338399434190979828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247367 n + A000196 n

end

end A393562.P13338399434190979828

noncomputable section

/-- A393562: a(n) is the number of unit squares in the square lattice, divided by 4, that have at least one vertex strictly inside and at least one vertex strictly outside the circle x^2 + y^2 = n.

Offset 0, canonical program `A393562.P13338399434190979828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393562 (n : ℕ) : ℤ :=
  A393562.P13338399434190979828.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A393562.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A395114.P18219317400035454050

`A005590(A103354(n+2))`
-/

namespace A395114.P18219317400035454050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005590 (A103354 (n + 2)).toNat

end

end A395114.P18219317400035454050

noncomputable section

/-- A395114: Irregular triangle, next row is the previous row with the difference between consecutive numbers inserted between, starting with row 1 1.

Offset 1, canonical program `A395114.P18219317400035454050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A395114 (n : ℕ) : ℤ :=
  A395114.P18219317400035454050.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A395114.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395817.P7759252888401829851

`A135210(1+n)+1`
-/

namespace A395817.P7759252888401829851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135210 (1 + n) + 1

end

end A395817.P7759252888401829851

noncomputable section

/-- A395817: Strictly increasing minimal sequence where consecutive terms can be added digit-by-digit without carrying in base 10.

Offset 1, canonical program `A395817.P7759252888401829851`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A395817 (n : ℕ) : ℤ :=
  A395817.P7759252888401829851.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A395817.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A395958.P5165968733303486376

`A010060(A064707(n))`
-/

namespace A395958.P5165968733303486376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A064707 n).toNat

end

end A395958.P5165968733303486376

noncomputable section

/-- A395958: Third iterate of the Thue-Morse transform applied to A000035.

Offset 0, canonical program `A395958.P5165968733303486376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395958 (n : ℕ) : ℤ :=
  A395958.P5165968733303486376.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A395958.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A396571.P6988239857056960462

`(A071904(n+1)+A071904(n+2))/2`
-/

namespace A396571.P6988239857056960462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071904 (n + 1) + A071904 (n + 2) : ℚ) / 2

end

end A396571.P6988239857056960462

noncomputable section

/-- A396571: Averages of adjacent odd composite numbers.

Offset 1, canonical program `A396571.P6988239857056960462`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071904, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396571 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A396571.P6988239857056960462.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071904, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A396571.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A397284.P11033495092496848877

`A059268(n)*A397286(n)`
-/

namespace A397284.P11033495092496848877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A397286 n

end

end A397284.P11033495092496848877

noncomputable section

/-- A397284: Triangle read by rows: T(n, k) = 2^n * P_{n, k}(1/2) where P_{n, k}(x) = x * (n - k + x)^(n - k - 1) * binomial(n, k).

Offset 0, canonical program `A397284.P11033495092496848877`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A397284 (n : ℕ) : ℤ :=
  A397284.P11033495092496848877.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A397284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397287.P13110243874882363043

`A232006(C(row(n)+col(n)+1, 2)+col(n))`
-/

namespace A397287.P13110243874882363043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232006 (Nat.choose (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n + 1) 2 + SequenceMachineLib.triCol n)

end

end A397287.P13110243874882363043

noncomputable section

/-- A397287: Triangle read by rows: T(n, k) = k*(k + n)^(n - 1) for n > 0 and T(0, k) = 1.

Offset 0, canonical program `A397287.P13110243874882363043`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A232006, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397287 (n : ℕ) : ℤ :=
  A397287.P13110243874882363043.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A232006, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A397287.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A397754.P18151342160138794166

`∩[A209932(n+1), A259315(n+1)]`
-/

namespace A397754.P18151342160138794166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397754.P18151342160138794166

noncomputable section

/-- A397754: Numbers that don't contain digit 0 but have a divisor that does.

Offset 1, canonical program `A397754.P18151342160138794166`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3190 terms. -/
def A397754 (n : ℕ) : ℤ :=
  (A397754.P18151342160138794166.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3190 terms. -/
def A397754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A397908.P14349578286456634050

`a(n-A075526(n))+n` with `a(0)=1`
-/

namespace A397908.P14349578286456634050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - A075526 n).toNat + n

end

end A397908.P14349578286456634050

noncomputable section

/-- A397908: a(1) = 1; a(n) = a(n-d(n)) + n - 1 for n > 1, where d(n) = prime(n) - prime(n-1).

Offset 1, canonical program `A397908.P14349578286456634050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397908 (n : ℕ) : ℤ :=
  (A397908.P14349578286456634050.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A397908.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398874.P18069216164434100368

`2*a(n-1)-a(n-2)+A001037(n+1)` with `a(0)=3, a(1)=6`
-/

namespace A398874.P18069216164434100368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 6] fun n a =>
  2 * a (n - 1) - a (n - 2) + A001037 (n + 1)

end

end A398874.P18069216164434100368

noncomputable section

/-- A398874: Number of recursive calls made by the binary Fredricksen-Kessler-Maiorana (FKM) recursive generator when generating a de Bruijn sequence of order n.

Offset 1, canonical program `A398874.P18069216164434100368`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001037, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A398874 (n : ℕ) : ℤ :=
  A398874.P18069216164434100368.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001037, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A398874.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A398913.P9418002320819438425

`A135278(n)*A232006(n)`
-/

namespace A398913.P9418002320819438425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n * A232006 n

end

end A398913.P9418002320819438425

noncomputable section

/-- A398913: Table read by rows: the number of functions f: [n] -> [n] where the longest initial run of strictly increasing values has length k.

Offset 0, canonical program `A398913.P9418002320819438425`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1712 terms. -/
def A398913 (n : ℕ) : ℤ :=
  A398913.P9418002320819438425.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1712 terms. -/
def A398913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A398936.P16638885120004625840

`∩[A023444(A246298(n+1)), A246293(n+1)]`
-/

namespace A398936.P16638885120004625840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A246298 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A398936.P16638885120004625840

noncomputable section

/-- A398936: Nonnegative integers k satisfying sin(k) > sin(k+1) > sin(k+2) > sin(k+3) > sin(k+4) < sin(k+5).

Offset 1, canonical program `A398936.P16638885120004625840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. -/
def A398936 (n : ℕ) : ℤ :=
  (A398936.P16638885120004625840.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. -/
def A398936.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399747.P17310883521128029216

`∑{d}[n+1, #*A075802((n+1)/#)]`
-/

namespace A399747.P17310883521128029216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A075802 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A399747.P17310883521128029216

noncomputable section

/-- A399747: The sum of divisors d of n such that n/d is a perfect power (A001597).

Offset 1, canonical program `A399747.P17310883521128029216`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399747 (n : ℕ) : ℤ :=
  A399747.P17310883521128029216.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399748.P7728002996692195864

`∑{d}[n+1, A000010(#)*A075802((n+1)/#)]`
-/

namespace A399748.P7728002996692195864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A075802 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A399748.P7728002996692195864

noncomputable section

/-- A399748: The number of integers k from 1 to n such that gcd(n,k) is a perfect power (A001597).

Offset 1, canonical program `A399748.P7728002996692195864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399748 (n : ℕ) : ℤ :=
  A399748.P7728002996692195864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399787.P2833151344298386626

`A040000(A118759(n)-A320485(n))`
-/

namespace A399787.P2833151344298386626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 (A118759 n - A320485 n).toNat

end

end A399787.P2833151344298386626

noncomputable section

/-- A399787: Length of the longest palindromic substring of n written in base 10.

Offset 0, canonical program `A399787.P2833151344298386626`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A399787 (n : ℕ) : ℤ :=
  A399787.P2833151344298386626.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. -/
def A399787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399863.P5848190532128983579

`A220053(n+1)+A004247(n)`
-/

namespace A399863.P5848190532128983579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220053 (n + 1) + A004247 n

end

end A399863.P5848190532128983579

noncomputable section

/-- A399863: Triangle read by rows: T(n,k) = binomial(n+1,2) - binomial(n-k+1,2) + binomial(n-k,2) - [n-k+1 > k]*binomial(n-2*k+1,2), k = 1..n, with Iverson brackets.

Offset 1, canonical program `A399863.P5848190532128983579`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7260 terms. -/
def A399863 (n : ℕ) : ℤ :=
  A399863.P5848190532128983579.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7260 terms. -/
def A399863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A401409.P15315601482885361592

`A065359(A003188(n))`
-/

namespace A401409.P15315601482885361592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A003188 n).toNat

end

end A401409.P15315601482885361592

noncomputable section

/-- A401409: Partial sums of A209615.

Offset 0, canonical program `A401409.P15315601482885361592`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401409 (n : ℕ) : ℤ :=
  A401409.P15315601482885361592.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A401409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371672.P8531591036181247015

`floor(log2(A105425(n+1)))`
-/

namespace A371672.P8531591036181247015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A105425 (n + 1)).toNat

end

end A371672.P8531591036181247015

noncomputable section

/-- A371672: a(n) = floor(log_phi(n)) with phi = A001622.

Offset 1, canonical program `A371672.P8531591036181247015`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371672 (n : ℕ) : ℤ :=
  (A371672.P8531591036181247015.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A371672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378366.P5705427883801254966

`n+1-A378367(n+1)`
-/

namespace A378366.P5705427883801254966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A378367 (n + 1)

end

end A378366.P5705427883801254966

noncomputable section

/-- A378366: Difference between n and the greatest non prime power <= n (allowing 1).

Offset 1, canonical program `A378366.P5705427883801254966`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378367, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378366 (n : ℕ) : ℤ :=
  A378366.P5705427883801254966.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A378367, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A378366.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380117.P852758399818597968

`n+1-A380118(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A380117.P852758399818597968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A380118 (n + 1)

end

end A380117.P852758399818597968

noncomputable section

/-- A380117: a(n) = n - A380118(n).

Offset 1, canonical program `A380117.P852758399818597968`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A380118, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380117 (n : ℕ) : ℤ :=
  A380117.P852758399818597968.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A380118, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A380117.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A380906.P1124574358086231309

`∩[A038611(n+1), A038613(n+1)]`
-/

namespace A380906.P1124574358086231309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A380906.P1124574358086231309

noncomputable section

/-- A380906: Primes without {3, 5} as digits.

Offset 1, canonical program `A380906.P1124574358086231309`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4595 terms. -/
def A380906 (n : ℕ) : ℤ :=
  (A380906.P1124574358086231309.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4595 terms. -/
def A380906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381608.P6073522075897922791

`eq[A005812(n), A053735(n)]`
-/

namespace A381608.P6073522075897922791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A381608.P6073522075897922791

noncomputable section

/-- A381608: Nonnegative integers whose ternary expansion does not contain pairs of 2's only separated by (zero or more) 1's, with offset 0.

Offset 0, canonical program `A381608.P6073522075897922791`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4267 terms. -/
def A381608 (n : ℕ) : ℤ :=
  (A381608.P6073522075897922791.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4267 terms. -/
def A381608.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382417.P6349824024149082196

`comp[A255805(n+1)]`
-/

namespace A382417.P6349824024149082196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382417.P6349824024149082196

noncomputable section

/-- A382417: Numbers with at least one zero in their base-8 representation.

Offset 1, canonical program `A382417.P6349824024149082196`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6381 terms. -/
def A382417 (n : ℕ) : ℤ :=
  (A382417.P6349824024149082196.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6381 terms. -/
def A382417.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386032.P1209115764652298695

`∩[A160337(n+1), A386335(n+1)]`
-/

namespace A386032.P1209115764652298695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386032.P1209115764652298695

noncomputable section

/-- A386032: Primes having only {0, 1, 5, 7} as digits.

Offset 1, canonical program `A386032.P1209115764652298695`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A386032 (n : ℕ) : ℤ :=
  (A386032.P1209115764652298695.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. -/
def A386032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386133.P16322278265495054683

`∩[A030096(n+1), A386335(n+1)]`
-/

namespace A386133.P16322278265495054683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386133.P16322278265495054683

noncomputable section

/-- A386133: Primes having only {1, 5, 7, 9} as digits.

Offset 1, canonical program `A386133.P16322278265495054683`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 539 terms. -/
def A386133 (n : ℕ) : ℤ :=
  (A386133.P16322278265495054683.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 539 terms. -/
def A386133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386337.P5423590144065966214

`∩[A038604(n+1), A038614(n+1)]`
-/

namespace A386337.P5423590144065966214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386337.P5423590144065966214

noncomputable section

/-- A386337: Primes without {2, 6} as digits.

Offset 1, canonical program `A386337.P5423590144065966214`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6055 terms. -/
def A386337 (n : ℕ) : ℤ :=
  (A386337.P5423590144065966214.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6055 terms. -/
def A386337.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386338.P12113303320728621064

`∩[A038604(n+1), A038616(n+1)]`
-/

namespace A386338.P12113303320728621064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386338.P12113303320728621064

noncomputable section

/-- A386338: Primes without {2, 8} as digits.

Offset 1, canonical program `A386338.P12113303320728621064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386338 (n : ℕ) : ℤ :=
  (A386338.P12113303320728621064.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386338.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386341.P11111794436961837809

`∩[A038611(n+1), A038614(n+1)]`
-/

namespace A386341.P11111794436961837809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386341.P11111794436961837809

noncomputable section

/-- A386341: Primes without {3, 6} as digits.

Offset 1, canonical program `A386341.P11111794436961837809`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4574 terms. -/
def A386341 (n : ℕ) : ℤ :=
  (A386341.P11111794436961837809.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4574 terms. -/
def A386341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386343.P17130214579981136633

`∩[A038611(n+1), A038616(n+1)]`
-/

namespace A386343.P17130214579981136633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386343.P17130214579981136633

noncomputable section

/-- A386343: Primes without {3, 8} as digits.

Offset 1, canonical program `A386343.P17130214579981136633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386343 (n : ℕ) : ℤ :=
  (A386343.P17130214579981136633.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A386343.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386350.P2011497625234474322

`∩[A038613(n+1), A038614(n+1)]`
-/

namespace A386350.P2011497625234474322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386350.P2011497625234474322

noncomputable section

/-- A386350: Primes without {5, 6} as digits.

Offset 1, canonical program `A386350.P2011497625234474322`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6138 terms. -/
def A386350 (n : ℕ) : ℤ :=
  (A386350.P2011497625234474322.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6138 terms. -/
def A386350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386352.P14653844485856961628

`∩[A038613(n+1), A038616(n+1)]`
-/

namespace A386352.P14653844485856961628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386352.P14653844485856961628

noncomputable section

/-- A386352: Primes without {5, 8} as digits.

Offset 1, canonical program `A386352.P14653844485856961628`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6593 terms. -/
def A386352 (n : ℕ) : ℤ :=
  (A386352.P14653844485856961628.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6593 terms. -/
def A386352.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386355.P6323683761705395638

`∩[A038614(n+1), A038616(n+1)]`
-/

namespace A386355.P6323683761705395638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386355.P6323683761705395638

noncomputable section

/-- A386355: Primes without {6, 8} as digits.

Offset 1, canonical program `A386355.P6323683761705395638`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6614 terms. -/
def A386355 (n : ℕ) : ℤ :=
  (A386355.P6323683761705395638.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6614 terms. -/
def A386355.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391958.P4973106280450321391

`A187059(n)+A187059(n)+A011371(n)`
-/

namespace A391958.P4973106280450321391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187059 n + (A187059 n + A011371 n)

end

end A391958.P4973106280450321391

noncomputable section

/-- A391958: First column of A391957.

Offset 0, canonical program `A391958.P4973106280450321391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391958 (n : ℕ) : ℤ :=
  A391958.P4973106280450321391.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391958.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A368170.P17133771726429753802

`A057521(A350390(n+1))`
-/

namespace A368170.P17133771726429753802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A350390 (n + 1)).toNat

end

end A368170.P17133771726429753802

noncomputable section

/-- A368170: The largest cubefull exponentially odd divisor of n.

Offset 1, canonical program `A368170.P17133771726429753802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368170 (n : ℕ) : ℤ :=
  A368170.P17133771726429753802.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369719.P18303552168383655355

`A000005(A356193(n+1))`
-/

namespace A369719.P18303552168383655355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A356193 (n + 1)).toNat

end

end A369719.P18303552168383655355

noncomputable section

/-- A369719: The number of divisors of the smallest cubefull number that is a multiple of n.

Offset 1, canonical program `A369719.P18303552168383655355`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356193, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369719 (n : ℕ) : ℤ :=
  A369719.P18303552168383655355.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356193, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369719.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A370706.P10819961141183438908

`A008279(n)*A059481(n)`
-/

namespace A370706.P10819961141183438908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A059481 n

end

end A370706.P10819961141183438908

noncomputable section

/-- A370706: Triangle read by rows: T(n, k) = binomial(n, k) * Pochhammer(n, k).

Offset 0, canonical program `A370706.P10819961141183438908`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1484 terms. -/
def A370706 (n : ℕ) : ℤ :=
  A370706.P10819961141183438908.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1484 terms. -/
def A370706.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373125.P1876854732026961662

`A372683(n)-2^n`
-/

namespace A373125.P1876854732026961662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372683 n - (2 ^ n : ℤ)

end

end A373125.P1876854732026961662

noncomputable section

/-- A373125: Difference between 2^n and the least squarefree number >= 2^n.

Offset 0, canonical program `A373125.P1876854732026961662`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372683, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373125 (n : ℕ) : ℤ :=
  A373125.P1876854732026961662.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A372683, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373125.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373299.P1347449349989211872

`A151800(A022885(n+1))`
-/

namespace A373299.P1347449349989211872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A022885 (n + 1)).toNat

end

end A373299.P1347449349989211872

noncomputable section

/-- A373299: Numbers prime(k) such that prime(k) - prime(k-1) = prime(k+2) - prime(k+1).

Offset 1, canonical program `A373299.P1347449349989211872`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022885, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373299 (n : ℕ) : ℤ :=
  A373299.P1347449349989211872.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022885, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373299.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A376164.P7708879350905486662

`eq[1, A081221(n+1)]+1`
-/

namespace A376164.P7708879350905486662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A376164.P7708879350905486662

noncomputable section

/-- A376164: Maximum of the n-th maximal run of nonsquarefree numbers (increasing by 1 at a time).

Offset 1, canonical program `A376164.P7708879350905486662`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376164 (n : ℕ) : ℤ :=
  (A376164.P7708879350905486662.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376164.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378087.P5730754973821830144

`Δ[A081221(n+1)]+1`
-/

namespace A378087.P5730754973821830144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A378087.P5730754973821830144

noncomputable section

/-- A378087: First-differences of A067535 (least positive integer >= n that is squarefree).

Offset 1, canonical program `A378087.P5730754973821830144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378087 (n : ℕ) : ℤ :=
  A378087.P5730754973821830144.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378087.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A381218.P12547036818025043636

`filter[A098903(n+1), A359372(#)]`
-/

namespace A381218.P12547036818025043636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359372 (f1 j).toNat = 1) n)

end

end A381218.P12547036818025043636

noncomputable section

/-- A381218: Odd numbers with both an odd number of prime factors (counted with multiplicity) and an odd number of distinct prime factors. (Intersection of A067019 and A098903.)

Offset 1, canonical program `A381218.P12547036818025043636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8656 terms. -/
def A381218 (n : ℕ) : ℤ :=
  A381218.P12547036818025043636.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8656 terms. -/
def A381218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A382291.P6985755138510803654

`2^A382290(n+1)`
-/

namespace A382291.P6985755138510803654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A382290 (n + 1) : ℤ)

end

end A382291.P6985755138510803654

noncomputable section

/-- A382291: a(n) = A037445(n)/A034444(n).

Offset 1, canonical program `A382291.P6985755138510803654`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A382290, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382291 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A382291.P6985755138510803654.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A382290, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382291.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A382490.P15041511037275720396

`A037445(A065331(n+1))`
-/

namespace A382490.P15041511037275720396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (A065331 (n + 1)).toNat

end

end A382490.P15041511037275720396

noncomputable section

/-- A382490: The number of infinitary 3-smooth divisors of n.

Offset 1, canonical program `A382490.P15041511037275720396`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037445, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382490 (n : ℕ) : ℤ :=
  A382490.P15041511037275720396.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037445, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A382490.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A385137.P2568860053888881347

`∑{d}[n+1, A372671(#)]`
-/

namespace A385137.P2568860053888881347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A372671 d

end

end A385137.P2568860053888881347

noncomputable section

/-- A385137: The sum of divisors d of n such that n/d is a 3-smooth number (A003586).

Offset 1, canonical program `A385137.P2568860053888881347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385137 (n : ℕ) : ℤ :=
  A385137.P2568860053888881347.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392090.P974268744326610450

`A047994(A356193(n+1))`
-/

namespace A392090.P974268744326610450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A356193 (n + 1)).toNat

end

end A392090.P974268744326610450

noncomputable section

/-- A392090: The unitary totient of the smallest cubefull number that is divisible by n.

Offset 1, canonical program `A392090.P974268744326610450`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356193, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392090 (n : ℕ) : ℤ :=
  A392090.P974268744326610450.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356193, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A392090.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A396409.P16372428509261204668

`A326730(A025480(n))`
-/

namespace A396409.P16372428509261204668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326730 (A025480 n).toNat

end

end A396409.P16372428509261204668

noncomputable section

/-- A396409: Number of iterations of x -> x XOR 2^A000120(x) from x = n to reach a number of the form 2^m-1.

Offset 0, canonical program `A396409.P16372428509261204668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396409 (n : ℕ) : ℤ :=
  A396409.P16372428509261204668.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A396409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A369032.P9747696111945326450

`A105560(n+1)^A304438(n+1)²`
-/

namespace A369032.P9747696111945326450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105560 (n + 1) : ℚ) ^ (A304438 (n + 1) ^ 2 : ℤ)

end

end A369032.P9747696111945326450

noncomputable section

/-- A369032: LCM-transform of permutation A241909.

Offset 1, canonical program `A369032.P9747696111945326450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369032 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A369032.P9747696111945326450.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369032.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A371176.P2878950055265495219

`2*a(A005206(n+1)-1)-A003849(n+1)*2^A007895(n)` with `a(0)=1`
-/

namespace A371176.P2878950055265495219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (A005206 (n + 1) - 1).toNat - (A003849 (n + 1) : ℚ) * (2 : ℚ) ^ (A007895 n : ℤ)

end

end A371176.P2878950055265495219

noncomputable section

/-- A371176: Numbers k such that A000120(k) <= A001511(k).

Offset 1, canonical program `A371176.P2878950055265495219`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007895, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371176 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A371176.P2878950055265495219.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007895, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A371176.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372885.P14839180436812864898

`A000040(A372886(n+1))`
-/

namespace A372885.P14839180436812864898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A372886 (n + 1)).toNat

end

end A372885.P14839180436812864898

noncomputable section

/-- A372885: Prime numbers whose binary indices (positions of ones in reversed binary expansion) sum to another prime number.

Offset 1, canonical program `A372885.P14839180436812864898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2535 terms. -/
def A372885 (n : ℕ) : ℤ :=
  A372885.P14839180436812864898.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2535 terms. -/
def A372885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373188.P5716519306742437807

`A373185(n+1)-A115362(n)`
-/

namespace A373188.P5716519306742437807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373185 (n + 1) - A115362 n

end

end A373188.P5716519306742437807

noncomputable section

/-- A373188: Expansion of Sum_{k>=0} x^(4^k) / (1 - x^(4^k))^2.

Offset 1, canonical program `A373188.P5716519306742437807`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373188 (n : ℕ) : ℤ :=
  A373188.P5716519306742437807.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385663.P12077718086945892519

`A007088(A001969(n+1))`
-/

namespace A385663.P12077718086945892519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A001969 (n + 1)).toNat

end

end A385663.P12077718086945892519

noncomputable section

/-- A385663: Binary numbers with an even number of 1s.

Offset 1, canonical program `A385663.P12077718086945892519`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385663 (n : ℕ) : ℤ :=
  A385663.P12077718086945892519.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A385663.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A392236.P3767480464349034148

`eq[A145037(n), A393336(n)]`
-/

namespace A392236.P3767480464349034148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393336 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392236.P3767480464349034148

noncomputable section

/-- A392236: Positions of zeros in A309983.

Offset 1, canonical program `A392236.P3767480464349034148`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A392236 (n : ℕ) : ℤ :=
  (A392236.P3767480464349034148.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 221 terms. -/
def A392236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383008.P10745250568338898044

`A013928(A160785(n+1))`
-/

namespace A383008.P10745250568338898044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A160785 (n + 1)).toNat

end

end A383008.P10745250568338898044

noncomputable section

/-- A383008: Indices of the even terms in the sequence of squarefree numbers.

Offset 1, canonical program `A383008.P10745250568338898044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383008 (n : ℕ) : ℤ :=
  A383008.P10745250568338898044.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A383008.provenance : SequenceMachineLib.Provenance := .conjectured

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

