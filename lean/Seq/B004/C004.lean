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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B002.C008
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

/-! ## A359352.P14078753108705027464

`A026430(1+A026430(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A359352.P14078753108705027464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 (1 + A026430 (n + 1)).toNat

end

end A359352.P14078753108705027464

noncomputable section

/-- A359352: a(n) = A026430(1 + A026430(n)).

Offset 1, canonical program `A359352.P14078753108705027464`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A026430(1+A026430(n+1))` (program `A359352.P14078753108705027464`, by `A359352.P14078753108705027464.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A359352 (n : ℕ) : ℤ :=
  A359352.P14078753108705027464.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A026430(1+A026430(n+1))` (program `A359352.P14078753108705027464`, by `A359352.P14078753108705027464.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A359352.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A360136.P4184868371155148676

`1+A026430(A026430(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A360136.P4184868371155148676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A026430 (A026430 (n + 1)).toNat

end

end A360136.P4184868371155148676

noncomputable section

/-- A360136: a(n) = 1 + A026430(A026430(n)).

Offset 1, canonical program `A360136.P4184868371155148676`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+A026430(A026430(n+1))` (program `A360136.P4184868371155148676`, by `A360136.P4184868371155148676.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A360136 (n : ℕ) : ℤ :=
  A360136.P4184868371155148676.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+A026430(A026430(n+1))` (program `A360136.P4184868371155148676`, by `A360136.P4184868371155148676.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A360136.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A360392.P6145566539357259399

`2+A026430(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A360392.P6145566539357259399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + A026430 (n + 1)

end

end A360392.P6145566539357259399

noncomputable section

/-- A360392: a(n) = 2 + A026430(n); complement of A360393.

Offset 1, canonical program `A360392.P6145566539357259399`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2+A026430(n+1)` (program `A360392.P6145566539357259399`, by `A360392.P6145566539357259399.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A360392 (n : ℕ) : ℤ :=
  A360392.P6145566539357259399.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2+A026430(n+1)` (program `A360392.P6145566539357259399`, by `A360392.P6145566539357259399.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A360392.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A359150.P10846391432532706989

`A066829(n+1)*A121262(n)`
-/

namespace A359150.P10846391432532706989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (n + 1) * A121262 n

end

end A359150.P10846391432532706989

noncomputable section

/-- A359150: a(n) = 1 if n is a number of the form 4u+1 with an odd number of prime factors (counted with multiplicity), otherwise 0.

Offset 1, canonical program `A359150.P10846391432532706989`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359150 (n : ℕ) : ℤ :=
  A359150.P10846391432532706989.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359150.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359158.P14804396004552753222

`A353627(n+1)-A359156(n+1)`
-/

namespace A359158.P14804396004552753222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353627 (n + 1) - A359156 (n + 1)

end

end A359158.P14804396004552753222

noncomputable section

/-- A359158: a(n) = 1 if the odd part of n is squarefree and the number of prime factors of n (with multiplicity) is odd, otherwise 0.

Offset 1, canonical program `A359158.P14804396004552753222`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359158 (n : ℕ) : ℤ :=
  A359158.P14804396004552753222.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359158.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359172.P12560099474824915828

`A011655(n+1)-A359170(n+1)`
-/

namespace A359172.P12560099474824915828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (n + 1) - A359170 (n + 1)

end

end A359172.P12560099474824915828

noncomputable section

/-- A359172: a(n) = 1 if n is not a multiple of 3 and has an odd number of prime factors (with multiplicity), otherwise a(n) = 0.

Offset 1, canonical program `A359172.P12560099474824915828`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359172 (n : ℕ) : ℤ :=
  A359172.P12560099474824915828.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359172.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359591.P9068026625313844446

`(A008683(n+1)+A086831(n+1))/2`
-/

namespace A359591.P9068026625313844446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 1) + A086831 (n + 1) : ℚ) / 2

end

end A359591.P9068026625313844446

noncomputable section

/-- A359591: Dirichlet inverse of A035263, where A035263(n) is parity of 2-adic valuation of 2n.

Offset 1, canonical program `A359591.P9068026625313844446`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359591 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A359591.P9068026625313844446.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359591.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A361019.P15075616182394612609

`2*A008683(n+1)-A086831(n+1)`
-/

namespace A361019.P15075616182394612609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008683 (n + 1) - A086831 (n + 1)

end

end A361019.P15075616182394612609

noncomputable section

/-- A361019: Dirichlet inverse of A038712.

Offset 1, canonical program `A361019.P15075616182394612609`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361019 (n : ℕ) : ℤ :=
  A361019.P15075616182394612609.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361019.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A362414.P9769977352830913817

`gcd(n+1, A127473(n+1))/A009195(n+1)`
-/

namespace A362414.P9769977352830913817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A127473 (n + 1)) : ℚ) / (A009195 (n + 1) : ℚ)

end

end A362414.P9769977352830913817

noncomputable section

/-- A362414: a(n) = gcd(n, phi(n)^2) / gcd(n, phi(n)).

Offset 1, canonical program `A362414.P9769977352830913817`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362414 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A362414.P9769977352830913817.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362414.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A362951.P3946018214728712457

`A000120(A169814(n+1))`
-/

namespace A362951.P3946018214728712457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A169814 (n + 1)).toNat

end

end A362951.P3946018214728712457

noncomputable section

/-- A362951: a(n) is the Hamming distance between the binary expansions of n and phi(n) where phi is the Euler totient function (A000010).

Offset 1, canonical program `A362951.P3946018214728712457`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362951 (n : ℕ) : ℤ :=
  A362951.P3946018214728712457.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A362951.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365337.P17860016322392539795

`A000203(A350390(n+1))`
-/

namespace A365337.P17860016322392539795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A350390 (n + 1)).toNat

end

end A365337.P17860016322392539795

noncomputable section

/-- A365337: The sum of divisors of the largest exponentially odd number dividing n.

Offset 1, canonical program `A365337.P17860016322392539795`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365337 (n : ℕ) : ℤ :=
  A365337.P17860016322392539795.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365337.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365346.P13037943139291011402

`A000203(A053143(n+1))`
-/

namespace A365346.P13037943139291011402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A053143 (n + 1)).toNat

end

end A365346.P13037943139291011402

noncomputable section

/-- A365346: The sum of divisors of the smallest square divisible by n.

Offset 1, canonical program `A365346.P13037943139291011402`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365346 (n : ℕ) : ℤ :=
  A365346.P13037943139291011402.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365346.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A367991.P5779548576678775471

`A048250(n+1)/A367990(n+1)`
-/

namespace A367991.P5779548576678775471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) : ℚ) / (A367990 (n + 1) : ℚ)

end

end A367991.P5779548576678775471

noncomputable section

/-- A367991: The sum of the divisors of the squarefree part of n.

Offset 1, canonical program `A367991.P5779548576678775471`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367991 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367991.P5779548576678775471.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A367991.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A392065.P5250998187842381599

`max(A056169(n+1), 1)`
-/

namespace A392065.P5250998187842381599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  max (A056169 (n + 1)) (1 : ℤ)

end

end A392065.P5250998187842381599

noncomputable section

/-- A392065: a(n) = number of primes with unit exponent in the prime factorization of n, or 1 if no such primes exist.

Offset 1, canonical program `A392065.P5250998187842381599`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392065 (n : ℕ) : ℤ :=
  A392065.P5250998187842381599.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A392065.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A359499.P4428695671887271465

`A219086(n)*A175110(n)*A359844(n)`
-/

namespace A359499.P4428695671887271465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219086 n * A175110 n * A359844 n

end

end A359499.P4428695671887271465

noncomputable section

/-- A359499: a(n) = ((2*n+1)^16 - 1)/64.

Offset 0, canonical program `A359499.P4428695671887271465`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359499 (n : ℕ) : ℤ :=
  A359499.P4428695671887271465.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359499.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359820.P4426895942293485706

`(n+A003415(n))%2`
-/

namespace A359820.P4426895942293485706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) + A003415 n) 2

end

end A359820.P4426895942293485706

noncomputable section

/-- A359820: a(n) = 1 if n and n' are of different parity, otherwise 0. Here n' stands for the arithmetic derivative of n, A003415(n).

Offset 0, canonical program `A359820.P4426895942293485706`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359820 (n : ℕ) : ℤ :=
  A359820.P4426895942293485706.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359820.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A358380.P4565112230755289123

`∑{d}[n+1, A000005(#^5)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A358380.P4565112230755289123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 (d ^ 5)

end

end A358380.P4565112230755289123

noncomputable section

/-- A358380: a(n) = Sum_{d|n} tau(d^5), where tau(n) = number of divisors of n, cf. A000005.

Offset 1, canonical program `A358380.P4565112230755289123`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, A000005(#^5)]` (program `A358380.P4565112230755289123`, by `A358380.P4565112230755289123.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A358380 (n : ℕ) : ℤ :=
  A358380.P4565112230755289123.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, A000005(#^5)]` (program `A358380.P4565112230755289123`, by `A358380.P4565112230755289123.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A358380.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A359037.P8951577004825294030

`A000005(n+1)*A000005((n+1)^3)`
-/

namespace A359037.P8951577004825294030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000005 ((n + 1) ^ 3)

end

end A359037.P8951577004825294030

noncomputable section

/-- A359037: a(n) = Sum_{d|n} tau(d^6), where tau(n) = number of divisors of n, cf. A000005.

Offset 1, canonical program `A359037.P8951577004825294030`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359037 (n : ℕ) : ℤ :=
  A359037.P8951577004825294030.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359037.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359038.P8986927019358252689

`∑{d}[n+1, A000005((n+1)^3*#)]`
-/

namespace A359038.P8986927019358252689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 ((n + 1) ^ 3 * d)

end

end A359038.P8986927019358252689

noncomputable section

/-- A359038: a(n) = Sum_{d|n} tau(d^7), where tau(n) = number of divisors of n, cf. A000005.

Offset 1, canonical program `A359038.P8986927019358252689`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359038 (n : ℕ) : ℤ :=
  A359038.P8986927019358252689.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359038.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359211.P16936489386664645065

`A000005(3*(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A359211.P16936489386664645065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (3 * (n + 1) - 1) : ℚ) / 2

end

end A359211.P16936489386664645065

noncomputable section

/-- A359211: a(n) = tau(3*n-1)/2, where tau(n) = number of divisors of n, cf. A000005.

Offset 1, canonical program `A359211.P16936489386664645065`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359211 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A359211.P16936489386664645065.a (n - 1))

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A359211.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A359954.P14838428775144650798

`∑{d}[n+1, A000005(#)*A000010(#)*A008683((n+1)/#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A359954.P14838428775144650798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A000010 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359954.P14838428775144650798

noncomputable section

/-- A359954: a(n) = Sum_{d|n} tau(d)*phi(d)*mu(n/d).

Offset 1, canonical program `A359954.P14838428775144650798`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, A000005(#)*A000010(#)*A008683((n+1)/#)]` (program `A359954.P14838428775144650798`, by `A359954.P14838428775144650798.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A359954 (n : ℕ) : ℤ :=
  A359954.P14838428775144650798.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, A000005(#)*A000010(#)*A008683((n+1)/#)]` (program `A359954.P14838428775144650798`, by `A359954.P14838428775144650798.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A359954.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A360428.P14202328874071523169

`∑{d}[n+1, A008683((n+1)/#)*A000005(#)*#²]`
-/

namespace A360428.P14202328874071523169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A000005 d * (d ^ 2 : ℤ)

end

end A360428.P14202328874071523169

noncomputable section

/-- A360428: Inverse Mobius transformation of A338164.

Offset 1, canonical program `A360428.P14202328874071523169`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360428 (n : ℕ) : ℤ :=
  A360428.P14202328874071523169.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360428.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A360429.P16462646638625319066

`∑{d}[n+1, A000005(#)*#²]`
-/

namespace A360429.P16462646638625319066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * (d ^ 2 : ℤ)

end

end A360429.P16462646638625319066

noncomputable section

/-- A360429: Inverse Mobius transformation of A034714.

Offset 1, canonical program `A360429.P16462646638625319066`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360429 (n : ℕ) : ℤ :=
  A360429.P16462646638625319066.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360429.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A360430.P14646993219273584393

`∑{d}[n+1, A001615((n+1)/#)*A000005(#)*#]`
-/

namespace A360430.P14646993219273584393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A000005 d * (d : ℤ)

end

end A360430.P14646993219273584393

noncomputable section

/-- A360430: Dirichlet convolution of Dedekind psi by A038040.

Offset 1, canonical program `A360430.P14646993219273584393`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360430 (n : ℕ) : ℤ :=
  A360430.P14646993219273584393.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A360430.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A361003.P13934684956292861975

`A000005(n+1)+floor(n/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A361003.P13934684956292861975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + ⌊(n : ℚ) / 2⌋

end

end A361003.P13934684956292861975

noncomputable section

/-- A361003: a(n) = A000005(n) + floor((n-1)/2).

Offset 1, canonical program `A361003.P13934684956292861975`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)+floor(n/2)` (program `A361003.P13934684956292861975`, by `A361003.P13934684956292861975.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A361003 (n : ℕ) : ℤ :=
  A361003.P13934684956292861975.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)+floor(n/2)` (program `A361003.P13934684956292861975`, by `A361003.P13934684956292861975.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A361003.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A361706.P7914681069526304893

`∑{d}[n+1, A000005((n+1)/#)*A000040(#)]`
-/

namespace A361706.P7914681069526304893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A000040 d

end

end A361706.P7914681069526304893

noncomputable section

/-- A361706: Inverse Moebius transform applied twice to primes.

Offset 1, canonical program `A361706.P7914681069526304893`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361706 (n : ℕ) : ℤ :=
  A361706.P7914681069526304893.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A361706.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A363012.P12518514360202843483

`∑{d}[n+1, #*A000005(#)*A000010(#)*A008683((n+1)/#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A363012.P12518514360202843483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000005 d * A000010 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A363012.P12518514360202843483

noncomputable section

/-- A363012: a(n) = Sum_{d|n} d*tau(d)*phi(d)*mu(n/d).

Offset 1, canonical program `A363012.P12518514360202843483`. Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, #*A000005(#)*A000010(#)*A008683((n+1)/#)]` (program `A363012.P12518514360202843483`, by `A363012.P12518514360202843483.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A363012 (n : ℕ) : ℤ :=
  A363012.P12518514360202843483.a (n - 1)

end

/-- Verified: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, #*A000005(#)*A000010(#)*A008683((n+1)/#)]` (program `A363012.P12518514360202843483`, by `A363012.P12518514360202843483.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. -/
def A363012.provenance : SequenceMachineLib.Provenance := .verified

/-! ## A363831.P3613452849276676331

`A000005(A000129(n+1))`
-/

namespace A363831.P3613452849276676331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000129 (n + 1)).toNat

end

end A363831.P3613452849276676331

noncomputable section

/-- A363831: Number of divisors of A000129(n) (Pell numbers).

Offset 1, canonical program `A363831.P3613452849276676331`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363831 (n : ℕ) : ℤ :=
  A363831.P3613452849276676331.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A363831.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365207.P8652609855473738591

`A000005(A006519(n+1))*A034444(A000265(n+1))`
-/

namespace A365207.P8652609855473738591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006519 (n + 1)).toNat * A034444 (A000265 (n + 1)).toNat

end

end A365207.P8652609855473738591

noncomputable section

/-- A365207: The number of divisors d of n such that gcd(d, n/d) is a power of 2 (A000079).

Offset 1, canonical program `A365207.P8652609855473738591`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365207 (n : ℕ) : ℤ :=
  A365207.P8652609855473738591.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365207.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365208.P1092856368353075175

`A000005(A065331(n+1))*A034444(A065330(n+1))`
-/

namespace A365208.P1092856368353075175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A065331 (n + 1)).toNat * A034444 (A065330 (n + 1)).toNat

end

end A365208.P1092856368353075175

noncomputable section

/-- A365208: The number of divisors d of n such that gcd(d, n/d) is a 3-smooth number (A003586).

Offset 1, canonical program `A365208.P1092856368353075175`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365208 (n : ℕ) : ℤ :=
  A365208.P1092856368353075175.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365208.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365210.P7966765262049614878

`A000005(A065330(n+1))*A034444(A065331(n+1))`
-/

namespace A365210.P7966765262049614878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A065330 (n + 1)).toNat * A034444 (A065331 (n + 1)).toNat

end

end A365210.P7966765262049614878

noncomputable section

/-- A365210: The number of divisors d of n such that gcd(d, n/d) is a 5-rough number (A007310).

Offset 1, canonical program `A365210.P7966765262049614878`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365210 (n : ℕ) : ℤ :=
  A365210.P7966765262049614878.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365210.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365331.P9498320090856852280

`A000005(A008833(n+1))`
-/

namespace A365331.P9498320090856852280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008833 (n + 1)).toNat

end

end A365331.P9498320090856852280

noncomputable section

/-- A365331: The number of divisors of the largest square dividing n.

Offset 1, canonical program `A365331.P9498320090856852280`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365331 (n : ℕ) : ℤ :=
  A365331.P9498320090856852280.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365331.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365345.P13783101688852051196

`A000005(A053143(n+1))`
-/

namespace A365345.P13783101688852051196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A053143 (n + 1)).toNat

end

end A365345.P13783101688852051196

noncomputable section

/-- A365345: The number of divisors of the smallest square divisible by n.

Offset 1, canonical program `A365345.P13783101688852051196`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365345 (n : ℕ) : ℤ :=
  A365345.P13783101688852051196.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365345.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365348.P17779330658801885884

`A000005(A356191(n+1))`
-/

namespace A365348.P17779330658801885884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A356191 (n + 1)).toNat

end

end A365348.P17779330658801885884

noncomputable section

/-- A365348: The number of divisors of the smallest exponentially odd number divisible by n.

Offset 1, canonical program `A365348.P17779330658801885884`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365348 (n : ℕ) : ℤ :=
  A365348.P17779330658801885884.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365348.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365490.P10530064324092144185

`A000005(A008835(n+1))`
-/

namespace A365490.P10530064324092144185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008835 (n + 1)).toNat

end

end A365490.P10530064324092144185

noncomputable section

/-- A365490: The number of divisors of the largest 4th power dividing n.

Offset 1, canonical program `A365490.P10530064324092144185`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365490 (n : ℕ) : ℤ :=
  A365490.P10530064324092144185.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365490.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A365491.P1731806866241579839

`A000005(A053166(n+1))`
-/

namespace A365491.P1731806866241579839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A053166 (n + 1)).toNat

end

end A365491.P1731806866241579839

noncomputable section

/-- A365491: The number of divisors of the smallest number whose 4th power is divisible by n.

Offset 1, canonical program `A365491.P1731806866241579839`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365491 (n : ℕ) : ℤ :=
  A365491.P1731806866241579839.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A365491.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366441.P11350322075649191036

`A000005(A007310(n+1))`
-/

namespace A366441.P11350322075649191036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007310 (n + 1)).toNat

end

end A366441.P11350322075649191036

noncomputable section

/-- A366441: The number of divisors of the 5-rough numbers (A007310).

Offset 1, canonical program `A366441.P11350322075649191036`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366441 (n : ℕ) : ℤ :=
  A366441.P11350322075649191036.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366441.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366771.P6017539246711155575

`A000005(A001045(n+1))`
-/

namespace A366771.P6017539246711155575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001045 (n + 1)).toNat

end

end A366771.P6017539246711155575

noncomputable section

/-- A366771: Number of divisors of A001045(n) (Jacobsthal numbers).

Offset 1, canonical program `A366771.P6017539246711155575`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366771 (n : ℕ) : ℤ :=
  A366771.P6017539246711155575.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366771.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366782.P11732756249166605759

`A000005(A000073(n+2))`
-/

namespace A366782.P11732756249166605759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000073 (n + 2)).toNat

end

end A366782.P11732756249166605759

noncomputable section

/-- A366782: Number of divisors of A000073(n) (tribonacci numbers).

Offset 2, canonical program `A366782.P11732756249166605759`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366782 (n : ℕ) : ℤ :=
  A366782.P11732756249166605759.a (n - 2)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366782.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366839.P8593895561095689137

`2*A001511(n+1)`
-/

namespace A366839.P8593895561095689137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001511 (n + 1)

end

end A366839.P8593895561095689137

noncomputable section

/-- A366839: Sum of even prime factors of 2n, counted with multiplicity.

Offset 1, canonical program `A366839.P8593895561095689137`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366839 (n : ℕ) : ℤ :=
  A366839.P8593895561095689137.a (n - 1)

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366839.provenance : SequenceMachineLib.Provenance := .assumedProven

/-! ## A366872.P9213635915992081364

`A000005(8+4*n)`
-/

namespace A366872.P9213635915992081364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (8 + 4 * n)

end

end A366872.P9213635915992081364

noncomputable section

/-- A366872: Number of closed chains of identical regular polygons with connecting inner vertices lying n vertices apart.

Offset 0, canonical program `A366872.P9213635915992081364`. OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366872 (n : ℕ) : ℤ :=
  A366872.P9213635915992081364.a n

end

/-- OEIS-proven: the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. -/
def A366872.provenance : SequenceMachineLib.Provenance := .assumedProven

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

/-! ## A358529.P11632851717617367385

`A233671(n+1)+1`
-/

namespace A358529.P11632851717617367385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233671 (n + 1) + 1

end

end A358529.P11632851717617367385

noncomputable section

/-- A358529: Indices of the primes in A358528.

Offset 1, canonical program `A358529.P11632851717617367385`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A233671, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358529 (n : ℕ) : ℤ :=
  A358529.P11632851717617367385.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A233671, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358529.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358530.P16462741210301020417

`A151800(A051634(n+1))`
-/

namespace A358530.P16462741210301020417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A051634 (n + 1)).toNat

end

end A358530.P16462741210301020417

noncomputable section

/-- A358530: a(n) = n-th prime prime(k) such that prime(k) - prime(k-1) < prime(k-1) - prime(k-2).

Offset 1, canonical program `A358530.P16462741210301020417`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051634, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358530 (n : ℕ) : ℤ :=
  A358530.P16462741210301020417.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051634, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358530.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358531.P7250430587380128327

`A258026(n+1)+2`
-/

namespace A358531.P7250430587380128327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258026 (n + 1) + 2

end

end A358531.P7250430587380128327

noncomputable section

/-- A358531: Indices of the primes in A358530.

Offset 1, canonical program `A358531.P7250430587380128327`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A258026, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358531 (n : ℕ) : ℤ :=
  A358531.P7250430587380128327.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A258026, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A358531.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A358557.P6214688678443015509

`comp[A098464(n+1)-1]+1`
-/

namespace A358557.P6214688678443015509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098464 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A358557.P6214688678443015509

noncomputable section

/-- A358557: Numbers k for which denominator(H(k)) < LCM(1..k), where harmonic numbers H(k) = Sum_{i=1..k} 1/i = r(k)/q(k).

Offset 1, canonical program `A358557.P6214688678443015509`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358557 (n : ℕ) : ℤ :=
  (A358557.P6214688678443015509.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358557.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358977.P3842764694478648946

`eq[1, gcd(n, A276150(n))]`
-/

namespace A358977.P3842764694478648946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A276150 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A358977.P3842764694478648946

noncomputable section

/-- A358977: Numbers that are coprime to the sum of their primorial base digits (A276150).

Offset 1, canonical program `A358977.P3842764694478648946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358977 (n : ℕ) : ℤ :=
  (A358977.P3842764694478648946.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358977.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359159.P5613364767986315554

`filter[A026424(n+1), A353627(#)]`
-/

namespace A359159.P5613364767986315554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A359159.P5613364767986315554

noncomputable section

/-- A359159: Numbers whose odd part is squarefree and the number of prime factors (with multiplicity) is odd.

Offset 1, canonical program `A359159.P5613364767986315554`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8081 terms. -/
def A359159 (n : ℕ) : ℤ :=
  A359159.P5613364767986315554.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8081 terms. -/
def A359159.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359167.P9620402831004912511

`lt[0, A359166(n+1)]+1`
-/

namespace A359167.P9620402831004912511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359166 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A359167.P9620402831004912511

noncomputable section

/-- A359167: Numbers k for which there is an even number of prime factors (when counted with multiplicity) in k*sigma(k), where sigma is the sum of divisors function.

Offset 1, canonical program `A359167.P9620402831004912511`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359167 (n : ℕ) : ℤ :=
  (A359167.P9620402831004912511.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359167.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359171.P16462800136344119530

`lt[0, A359170(1+n)]+1`
-/

namespace A359171.P16462800136344119530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359170 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A359171.P16462800136344119530

noncomputable section

/-- A359171: Nonmultiples of 3 that have an even number of prime factors (with multiplicity).

Offset 1, canonical program `A359171.P16462800136344119530`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359171 (n : ℕ) : ℤ :=
  (A359171.P16462800136344119530.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359300.P10070037077430120154

`A087030(n+1)-(A175851(n+2)+A151800(n+1))`
-/

namespace A359300.P10070037077430120154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087030 (n + 1) - (A175851 (n + 2) + A151800 (n + 1))

end

end A359300.P10070037077430120154

noncomputable section

/-- A359300: a(n) = (distance from n to nearest prime >= n) - (distance from n to nearest prime <= n).

Offset 2, canonical program `A359300.P10070037077430120154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359300 (n : ℕ) : ℤ :=
  A359300.P10070037077430120154.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359300.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359364.P6184962185695480939

`A007318(n)*A126120(A002262(n))`
-/

namespace A359364.P6184962185695480939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A126120 (A002262 n).toNat

end

end A359364.P6184962185695480939

noncomputable section

/-- A359364: Triangle read by rows. The Motzkin triangle, the coefficients of the Motzkin polynomials. M(n, k) = binomial(n, k) * CatalanNumber(k/2) if k is even, otherwise 0.

Offset 0, canonical program `A359364.P6184962185695480939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359364 (n : ℕ) : ℤ :=
  A359364.P6184962185695480939.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359364.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359468.P5001194192329973265

`lt[0, A359467(n+1)]+1`
-/

namespace A359468.P5001194192329973265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359467 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A359468.P5001194192329973265

noncomputable section

/-- A359468: Numbers that are either multiples of 4 with their odd part squarefree, or that are not multiples of 4 and not squarefree.

Offset 1, canonical program `A359468.P5001194192329973265`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359468 (n : ℕ) : ℤ :=
  (A359468.P5001194192329973265.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359468.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359473.P5174824545835334631

`A209229(A000005(n+1))`
-/

namespace A359473.P5174824545835334631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A000005 (n + 1)).toNat

end

end A359473.P5174824545835334631

noncomputable section

/-- A359473: a(n) = 1 if the number of divisors of n is a power of 2, otherwise 0.

Offset 1, canonical program `A359473.P5174824545835334631`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359473 (n : ℕ) : ℤ :=
  A359473.P5174824545835334631.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A359473.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A359485.P1680214592273319641

`∑{d}[n+1, A002131(#)*A328254((n+1)/#)]`
-/

namespace A359485.P1680214592273319641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002131 d * A328254 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A359485.P1680214592273319641

noncomputable section

/-- A359485: a(1) = 1, a(2) = -5; a(n) = -n^2 * Sum_{d|n, d < n} a(d) / d^2.

Offset 1, canonical program `A359485.P1680214592273319641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359485 (n : ℕ) : ℤ :=
  A359485.P1680214592273319641.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359485.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359870.P1653634179700732458

`lt[A001414(n+1), A007913(A350390(n+1))]+1`
-/

namespace A359870.P1653634179700732458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A350390 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A359870.P1653634179700732458

noncomputable section

/-- A359870: Numbers whose product of distinct prime factors is greater than the sum of its prime factors (with repetition).

Offset 1, canonical program `A359870.P1653634179700732458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8550 terms. -/
def A359870 (n : ℕ) : ℤ :=
  (A359870.P1653634179700732458.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8550 terms. -/
def A359870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360157.P14177147188931133787

`A068068(A066990(n+1)/(A073353(n+1)-(n+1)))`
-/

namespace A360157.P14177147188931133787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068068 (SequenceMachineLib.roundAway ((A066990 (n + 1) : ℚ) / (A073353 (n + 1) - (n + 1 : ℤ) : ℚ))).toNat

end

end A360157.P14177147188931133787

noncomputable section

/-- A360157: a(n) is the number of unitary divisors of n that are odd squares.

Offset 1, canonical program `A360157.P14177147188931133787`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360157 (n : ℕ) : ℤ :=
  A360157.P14177147188931133787.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360157.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360163.P4073483441112475958

`(A069290(n+1)+A347176(n+1))/2`
-/

namespace A360163.P4073483441112475958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069290 (n + 1) + A347176 (n + 1) : ℚ) / 2

end

end A360163.P4073483441112475958

noncomputable section

/-- A360163: a(n) is the sum of the square roots of the divisors of n that are odd squares.

Offset 1, canonical program `A360163.P4073483441112475958`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347176, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360163 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A360163.P4073483441112475958.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347176, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A360163.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A360445.P439609881080055747

`∑[A178244(n)]-A178244(n)`
-/

namespace A360445.P439609881080055747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A178244 n

end

end A360445.P439609881080055747

noncomputable section

/-- A360445: a(n) = Sum_{k=1..n} A178244(k-1).

Offset 0, canonical program `A360445.P439609881080055747`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360445 (n : ℕ) : ℤ :=
  A360445.P439609881080055747.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360452.P5231315610190854606

`record[A049691(n)-a(n-1)]` with `a(0)=0`
-/

namespace A360452.P5231315610190854606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A049691 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360452.P5231315610190854606

noncomputable section

/-- A360452: Number of fractions c/d with |c| <= d <= 2n and odd denominator when factors of 2 are canceled.

Offset 0, canonical program `A360452.P5231315610190854606`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1458 terms. -/
def A360452 (n : ℕ) : ℤ :=
  A360452.P5231315610190854606.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1458 terms. -/
def A360452.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360477.P935886871947782901

`comp[A359869(n+1)-1]+1`
-/

namespace A360477.P935886871947782901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359869 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A360477.P935886871947782901

noncomputable section

/-- A360477: Numbers whose product of distinct prime factors is greater than or equal to the sum of its prime factors (with repetition).

Offset 1, canonical program `A360477.P935886871947782901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360477 (n : ℕ) : ℤ :=
  (A360477.P935886871947782901.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A360477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360525.P13636672009762808303

`lt[2*n+3, A360522(n+1)]+1`
-/

namespace A360525.P13636672009762808303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360522 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A360525.P13636672009762808303

noncomputable section

/-- A360525: Numbers k such that A360522(k) > 2*k.

Offset 1, canonical program `A360525.P13636672009762808303`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1135 terms. -/
def A360525 (n : ℕ) : ℤ :=
  (A360525.P13636672009762808303.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1135 terms. -/
def A360525.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360944.P4031922297665866421

`eq[2, A035214(sqrt(A127473(n+1)))]+1`
-/

namespace A360944.P4031922297665866421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (SequenceMachineLib.roundAway (Real.sqrt (A127473 (n + 1) : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A360944.P4031922297665866421

noncomputable section

/-- A360944: Numbers m such that phi(m) is a triangular number, where phi is the Euler totient function (A000010).

Offset 1, canonical program `A360944.P4031922297665866421`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 306 terms. -/
def A360944 (n : ℕ) : ℤ :=
  (A360944.P4031922297665866421.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 306 terms. -/
def A360944.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361023.P14930666905499730848

`A000035(A017666(n+1))`
-/

namespace A361023.P14930666905499730848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A017666 (n + 1)).toNat

end

end A361023.P14930666905499730848

noncomputable section

/-- A361023: a(n) = 1 if A007814(sigma(n)) >= A007814(n), otherwise 0, where A007814(n) gives the 2-adic valuation of n.

Offset 1, canonical program `A361023.P14930666905499730848`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361023 (n : ℕ) : ℤ :=
  A361023.P14930666905499730848.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017666, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361023.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A361116.P7100103913625895617

`1-A361115(n)`
-/

namespace A361116.P7100103913625895617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A361115 n

end

end A361116.P7100103913625895617

noncomputable section

/-- A361116: a(n)=0 if A361102(n) is divisible by 3, otherwise 1.

Offset 0, canonical program `A361116.P7100103913625895617`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361116 (n : ℕ) : ℤ :=
  A361116.P7100103913625895617.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361116.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361464.P557628188156379608

`lt[0, A361463(n+1)]+1`
-/

namespace A361464.P557628188156379608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361463 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A361464.P557628188156379608

noncomputable section

/-- A361464: Numbers k such that A135504(k+1) / A135504(k) is a multiple of 4.

Offset 1, canonical program `A361464.P557628188156379608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2233 terms. -/
def A361464 (n : ℕ) : ℤ :=
  (A361464.P557628188156379608.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2233 terms. -/
def A361464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361982.P15206867661244181468

`∑[A332793(1+n)]`
-/

namespace A361982.P15206867661244181468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332793 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361982.P15206867661244181468

noncomputable section

/-- A361982: a(n) = 1 + Sum_{k=2..n} (-1)^k * k * a(floor(n/k)).

Offset 1, canonical program `A361982.P15206867661244181468`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361982 (n : ℕ) : ℤ :=
  A361982.P15206867661244181468.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361982.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361983.P5895448872655417569

`∑[(1+n)*A332793(n+1)]`
-/

namespace A361983.P5895448872655417569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A332793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361983.P5895448872655417569

noncomputable section

/-- A361983: a(n) = 1 + Sum_{k=2..n} (-1)^k * k^2 * a(floor(n/k)).

Offset 1, canonical program `A361983.P5895448872655417569`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361983 (n : ℕ) : ℤ :=
  A361983.P5895448872655417569.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361983.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361987.P7806764670259422939

`(1+n)*A332793(n+1)`
-/

namespace A361987.P7806764670259422939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A332793 (n + 1)

end

end A361987.P7806764670259422939

noncomputable section

/-- A361987: a(1) = 1; a(n) = n^2 * Sum_{d|n, d < n} (-1)^(n/d) a(d) / d^2.

Offset 1, canonical program `A361987.P7806764670259422939`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361987 (n : ℕ) : ℤ :=
  A361987.P7806764670259422939.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A361987.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362008.P15802057352919654675

`eq[9, dr(A051953(n+1))]+1`
-/

namespace A362008.P15802057352919654675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A051953 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A362008.P15802057352919654675

noncomputable section

/-- A362008: Numbers whose Euler's cototient is divisible by 9.

Offset 1, canonical program `A362008.P15802057352919654675`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1609 terms. -/
def A362008 (n : ℕ) : ℤ :=
  (A362008.P15802057352919654675.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1609 terms. -/
def A362008.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362036.P11272790990554271734

`A000720(A362034(n))`
-/

namespace A362036.P11272790990554271734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A362034 n).toNat

end

end A362036.P11272790990554271734

noncomputable section

/-- A362036: The prime indices of A362034.

Offset 0, canonical program `A362036.P11272790990554271734`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A362034, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362036 (n : ℕ) : ℤ :=
  A362036.P11272790990554271734.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A362034, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A362036.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A362421.P15476662405559426444

`A049419(n+2)*A069513(n+2)`
-/

namespace A362421.P15476662405559426444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (n + 2) * A069513 (n + 2)

end

end A362421.P15476662405559426444

noncomputable section

/-- A362421: Number of nonisomorphic vector spaces consisting of n elements.

Offset 2, canonical program `A362421.P15476662405559426444`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A362421 (n : ℕ) : ℤ :=
  A362421.P15476662405559426444.a (n - 2)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 999 terms. -/
def A362421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362595.P1441981575621675091

`A194590(A004275(n))+A126120(2*n)`
-/

namespace A362595.P1441981575621675091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194590 (A004275 n).toNat + A126120 (2 * n)

end

end A362595.P1441981575621675091

noncomputable section

/-- A362595: Number of parking functions of size n avoiding the patterns 132 and 321.

Offset 0, canonical program `A362595.P1441981575621675091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A362595 (n : ℕ) : ℤ :=
  A362595.P1441981575621675091.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. -/
def A362595.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362613.P4984319992968099454

`A001221(n+1)-A001221(A062760(n+1))`
-/

namespace A362613.P4984319992968099454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A001221 (A062760 (n + 1)).toNat

end

end A362613.P4984319992968099454

noncomputable section

/-- A362613: Number of co-modes in the prime factorization of n.

Offset 1, canonical program `A362613.P4984319992968099454`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362613 (n : ℕ) : ℤ :=
  A362613.P4984319992968099454.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362613.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362685.P6275879267292374181

`(A059268(n)-1)*A056942(n)`
-/

namespace A362685.P6275879267292374181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059268 n - 1) * A056942 n

end

end A362685.P6275879267292374181

noncomputable section

/-- A362685: Triangle of numbers read by rows, T(n, k) = (n*(n-1))*Stirling2(k, 2), for n >= 1 and 1 <= k <= n.

Offset 1, canonical program `A362685.P6275879267292374181`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362685 (n : ℕ) : ℤ :=
  A362685.P6275879267292374181.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364067.P12319574783518078769

`A103627(A363891(n+1)+∑{d}[9*n+3, C(#, 2)%3])`
-/

namespace A364067.P12319574783518078769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A363891 (n + 1) + ((∑ d ∈ Nat.divisors (f1 n), Nat.choose d 2 % 3 : ℕ) : ℤ)).toNat

end

end A364067.P12319574783518078769

noncomputable section

/-- A364067: Expansion of Sum_{k>0} k * x^(2*k) / (1 - x^(3*k-1)).

Offset 1, canonical program `A364067.P12319574783518078769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3173 terms. -/
def A364067 (n : ℕ) : ℤ :=
  A364067.P12319574783518078769.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3173 terms. -/
def A364067.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364307.P8166646294760291665

`∩[A006073(n+1), A074851(n+1)]`
-/

namespace A364307.P8166646294760291665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364307.P8166646294760291665

noncomputable section

/-- A364307: Numbers k such that k, k+1 and k+2 have exactly 2 distinct prime factors.

Offset 1, canonical program `A364307.P8166646294760291665`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. -/
def A364307 (n : ℕ) : ℤ :=
  (A364307.P8166646294760291665.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2404 terms. -/
def A364307.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364933.P7847543960833524069

`A109606(n+1)-A055631(n+1)`
-/

namespace A364933.P7847543960833524069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) - A055631 (n + 1)

end

end A364933.P7847543960833524069

noncomputable section

/-- A364933: a(n) = Sum_{k=1..n} A191898(n,k)*[A191904(n,k) = A191898(n,k)].

Offset 1, canonical program `A364933.P7847543960833524069`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364933 (n : ℕ) : ℤ :=
  A364933.P7847543960833524069.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364933.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365298.P12368512743649777483

`A356192(n+1)/(n+1)`
-/

namespace A365298.P12368512743649777483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356192 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A365298.P12368512743649777483

noncomputable section

/-- A365298: a(n) is the smallest number k such that k*n is a cubefull exponentially odd number (A335988).

Offset 1, canonical program `A365298.P12368512743649777483`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356192, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365298 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A365298.P12368512743649777483.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A356192, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A365298.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365784.P9414466859234964261

`A126706(n+1)/A365783(n+1)`
-/

namespace A365784.P9414466859234964261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126706 (n + 1) : ℚ) / (A365783 (n + 1) : ℚ)

end

end A365784.P9414466859234964261

noncomputable section

/-- A365784: a(n) = A126706(n) divided by its squarefree kernel.

Offset 1, canonical program `A365784.P9414466859234964261`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126706, A365783, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365784 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A365784.P9414466859234964261.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A126706, A365783, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365784.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366524.P3925531874289408800

`A366523(A019554((n+1)*A019554(n+1)))`
-/

namespace A366524.P3925531874289408800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366523 (A019554 ((n + 1 : ℤ) * A019554 (n + 1)).toNat).toNat

end

end A366524.P3925531874289408800

noncomputable section

/-- A366524: Largest square divisor of n which is < sqrt(n), for n >= 2; a(1) = 1.

Offset 1, canonical program `A366524.P3925531874289408800`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A366524 (n : ℕ) : ℤ :=
  A366524.P3925531874289408800.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A366524.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366902.P5586725290956182853

`∏{e}[1+n, A159481(#)]`
-/

namespace A366902.P5586725290956182853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A159481 (Nat.factorization (f1 n) p)

end

end A366902.P5586725290956182853

noncomputable section

/-- A366902: The number of exponentially evil divisors of n.

Offset 1, canonical program `A366902.P5586725290956182853`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366902 (n : ℕ) : ℤ :=
  A366902.P5586725290956182853.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366902.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367203.P9050632869691583128

`A000188(n+1)*A001616(n+1)`
-/

namespace A367203.P9050632869691583128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1) * A001616 (n + 1)

end

end A367203.P9050632869691583128

noncomputable section

/-- A367203: Product of p^(v_p(n)-1) + p^(2*floor(v_p(n)/2)) over all prime divisors p of n with valuation v_p(n).

Offset 1, canonical program `A367203.P9050632869691583128`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367203 (n : ℕ) : ℤ :=
  A367203.P9050632869691583128.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A367203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367512.P6814161711481593875

`A001221(n+1)-A293439(n+1)`
-/

namespace A367512.P6814161711481593875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A293439 (n + 1)

end

end A367512.P6814161711481593875

noncomputable section

/-- A367512: Number of evil exponents in the prime factorization of n.

Offset 1, canonical program `A367512.P6814161711481593875`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293439, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367512 (n : ℕ) : ℤ :=
  A367512.P6814161711481593875.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293439, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367512.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A367515.P13637258747578568205

`2^A293439(n+1)`
-/

namespace A367515.P13637258747578568205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A293439 (n + 1) : ℤ)

end

end A367515.P13637258747578568205

noncomputable section

/-- A367515: The number of unitary divisors of n that are exponentially odious numbers (A270428).

Offset 1, canonical program `A367515.P13637258747578568205`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293439, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367515 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A367515.P13637258747578568205.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293439, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A367515.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A368542.P12499842272717580429

`∑{d}[n+1, A059841(#-1)*A364252((n+1)/#)]`
-/

namespace A368542.P12499842272717580429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059841 (d - 1) * A364252 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A368542.P12499842272717580429

noncomputable section

/-- A368542: The number of divisors of n whose prime factors are all Mersenne primes (A000668).

Offset 1, canonical program `A368542.P12499842272717580429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368542 (n : ℕ) : ℤ :=
  A368542.P12499842272717580429.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368542.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368638.P17895984335423066018

`∑[A103116(n)]+1`
-/

namespace A368638.P17895984335423066018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A368638.P17895984335423066018

noncomputable section

/-- A368638: a(n) is the number of triangular partitions whose Young diagram fits inside a square of side n.

Offset 0, canonical program `A368638.P17895984335423066018`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368638 (n : ℕ) : ℤ :=
  A368638.P17895984335423066018.a n

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

/-! ## A369894.P8931189529321044323

`∑{d}[1+n, A347134(#)]`
-/

namespace A369894.P8931189529321044323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347134 d

end

end A369894.P8931189529321044323

noncomputable section

/-- A369894: a(n) = n * Sum_{p|n, p prime} tau(n/p) / p.

Offset 1, canonical program `A369894.P8931189529321044323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A369894 (n : ℕ) : ℤ :=
  A369894.P8931189529321044323.a (n - 1)

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

/-! ## A370240.P18024747395398815377

`A351266(A062378(n+1))`
-/

namespace A370240.P18024747395398815377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351266 (A062378 (n + 1)).toNat

end

end A370240.P18024747395398815377

noncomputable section

/-- A370240: The sum of divisors of n that are cubes of squarefree numbers.

Offset 1, canonical program `A370240.P18024747395398815377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370240 (n : ℕ) : ℤ :=
  A370240.P18024747395398815377.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370240.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A370596.P8786147750041386051

`eq[0, A007920(val(n+1, 2))]+1`
-/

namespace A370596.P8786147750041386051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A370596.P8786147750041386051

noncomputable section

/-- A370596: Numbers k such that A007814(k) is a prime number.

Offset 1, canonical program `A370596.P8786147750041386051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A370596 (n : ℕ) : ℤ :=
  (A370596.P8786147750041386051.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
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

/-! ## A372619.P8959484213038358129

`A372673(1+n)+T(n-1,k-1)` with `a(0)=1`
-/

namespace A372619.P8959484213038358129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A372673 (1 + n) + SequenceMachineLib.triUpLeft a n

end

end A372619.P8959484213038358129

noncomputable section

/-- A372619: Square array T(n,k), n >= 1, k >= 1, read by antidiagonals downwards, where T(n,k) = 1/(phi(k)) * Sum_{j=1..n} phi(k*j).

Offset 1, canonical program `A372619.P8959484213038358129`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372619 (n : ℕ) : ℤ :=
  A372619.P8959484213038358129.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372619.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372621.P4182524832015078441

`∑[A195459(1+n)]`
-/

namespace A372621.P4182524832015078441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195459 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372621.P4182524832015078441

noncomputable section

/-- A372621: a(n) = (1/2) * Sum_{k=1..n} phi(3*k).

Offset 1, canonical program `A372621.P4182524832015078441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372621 (n : ℕ) : ℤ :=
  A372621.P4182524832015078441.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372621.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372622.P10529144845107002393

`∑[A359101(1+n)]`
-/

namespace A372622.P10529144845107002393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359101 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372622.P10529144845107002393

noncomputable section

/-- A372622: a(n) = (1/4) * Sum_{k=1..n} phi(5*k).

Offset 1, canonical program `A372622.P10529144845107002393`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372622 (n : ℕ) : ℤ :=
  A372622.P10529144845107002393.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372622.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372638.P16267323820796582946

`∑[A359102(1+n)]`
-/

namespace A372638.P16267323820796582946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359102 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372638.P16267323820796582946

noncomputable section

/-- A372638: a(n) = (1/6) * Sum_{k=1..n} phi(7*k).

Offset 1, canonical program `A372638.P16267323820796582946`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372638 (n : ℕ) : ℤ :=
  A372638.P16267323820796582946.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372638.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372639.P13949775401824829229

`∑[A372672(1+n)]`
-/

namespace A372639.P13949775401824829229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372672 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A372639.P13949775401824829229

noncomputable section

/-- A372639: a(n) = (1/4) * Sum_{k=1..n} phi(10*k).

Offset 1, canonical program `A372639.P13949775401824829229`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372639 (n : ℕ) : ℤ :=
  A372639.P13949775401824829229.a (n - 1)

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

/-! ## A373061.P12381271773894797464

`∑{d}[1+n, #*A341772(#)]`
-/

namespace A373061.P12381271773894797464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A341772 d

end

end A373061.P12381271773894797464

noncomputable section

/-- A373061: a(n) = Sum_{1 <= x_1, x_2, x_3 <= n} gcd(x_1, x_2, n)/gcd(x_1, x_2, x_3, n).

Offset 1, canonical program `A373061.P12381271773894797464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373061 (n : ℕ) : ℤ :=
  A373061.P12381271773894797464.a (n - 1)

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

/-! ## A373153.P18185026118129223806

`A234045(A065331(1+n))`
-/

namespace A373153.P18185026118129223806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234045 (A065331 (1 + n)).toNat

end

end A373153.P18185026118129223806

noncomputable section

/-- A373153: a(n) is -1, 0, or 1 such that a(n) == A276085(n) (mod 3), where A276085 is the primorial base log-function.

Offset 1, canonical program `A373153.P18185026118129223806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373153 (n : ℕ) : ℤ :=
  A373153.P18185026118129223806.a (n - 1)

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

/-! ## A373253.P13431068862952068197

`(1+A003415(n))%3-1`
-/

namespace A373253.P13431068862952068197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 + A003415 n) 3 - 1

end

end A373253.P13431068862952068197

noncomputable section

/-- A373253: a(n) is -1, 0, or 1 such that a(n) == A003415(n) (mod 3), where A003415 is the arithmetic derivative.

Offset 0, canonical program `A373253.P13431068862952068197`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373253 (n : ℕ) : ℤ :=
  A373253.P13431068862952068197.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373253.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373384.P6850270848834805582

`filter[3*(n+1), A373383(#)]`
-/

namespace A373384.P6850270848834805582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373383 (f1 j) = 1) n)

end

end A373384.P6850270848834805582

noncomputable section

/-- A373384: Numbers k that are multiples of 3 and also A059975(k) is a multiple of 3, where A059975 is fully additive with a(p) = p-1.

Offset 1, canonical program `A373384.P6850270848834805582`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373384 (n : ℕ) : ℤ :=
  (A373384.P6850270848834805582.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
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

/-! ## A373648.P4935592686855343092

`A296023(1+n)-1`
-/

namespace A373648.P4935592686855343092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296023 (1 + n) - 1

end

end A373648.P4935592686855343092

noncomputable section

/-- A373648: Integers k such that there are i groups of order k+i up to isomorphism, for i=1,2.

Offset 1, canonical program `A373648.P4935592686855343092`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A373648 (n : ℕ) : ℤ :=
  A373648.P4935592686855343092.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A373648.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373703.P799095936400560943

`A062760(n+1)*A066636(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A373703.P799095936400560943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062760 (n + 1) * A066636 (n + 1)

end

end A373703.P799095936400560943

noncomputable section

/-- A373703: a(n) = A062760(n)*A066636(n).

Offset 1, canonical program `A373703.P799095936400560943`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062760, A066636, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373703 (n : ℕ) : ℤ :=
  A373703.P799095936400560943.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062760, A066636, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A373703.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A373947.P8857403306256119126

`A037201(n+2)/2`
-/

namespace A373947.P8857403306256119126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037201 (n + 2) : ℚ) / 2

end

end A373947.P8857403306256119126

noncomputable section

/-- A373947: Halved and run-compressed first differences of consecutive odd primes.

Offset 1, canonical program `A373947.P8857403306256119126`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373947 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A373947.P8857403306256119126.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037201, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373947.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A373993.P4411129616619949872

`C(n, lcm(A000005(n+1), n))`
-/

namespace A373993.P4411129616619949872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Int.lcm (A000005 (n + 1)) (n : ℤ))

end

end A373993.P4411129616619949872

noncomputable section

/-- A373993: a(n) = 1 if the number of divisors of n divides n-1, otherwise 0.

Offset 1, canonical program `A373993.P4411129616619949872`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A373993 (n : ℕ) : ℤ :=
  (A373993.P4411129616619949872.a (n - 1) : ℤ)

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

/-! ## A374472.P363786697982449188

`lt[0, A374471(n+1)]+1`
-/

namespace A374472.P363786697982449188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374471 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A374472.P363786697982449188

noncomputable section

/-- A374472: Numbers k such that bigomega(k) and A064547(k) are both even, where A064547 is the count of 1-bits in the exponents of the prime factorization of n, and bigomega is the number of prime factors of n (with multiplicity).

Offset 1, canonical program `A374472.P363786697982449188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A374472 (n : ℕ) : ℤ :=
  (A374472.P363786697982449188.a (n - 1) : ℤ)

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

/-! ## A375108.P3999526629064181679

`A363887(2+n)-A363888(n+2)`
-/

namespace A375108.P3999526629064181679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363887 (2 + n) - A363888 (n + 2)

end

end A375108.P3999526629064181679

noncomputable section

/-- A375108: Expansion of Sum_{k in Z} x^(3*k) / (1 - x^(7*k+3)).

Offset 0, canonical program `A375108.P3999526629064181679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A375108 (n : ℕ) : ℤ :=
  A375108.P3999526629064181679.a n

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

/-! ## A375848.P1903731771788089328

`filter[A051903(n+1), A001285(#)]`
-/

namespace A375848.P1903731771788089328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A001285 (f1 j).toNat = 1) n)

end

end A375848.P1903731771788089328

noncomputable section

/-- A375848: The maximum exponent in the prime factorization of the numbers whose maximum exponent in their prime factorization is an evil number (A374590).

Offset 1, canonical program `A375848.P1903731771788089328`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A375848 (n : ℕ) : ℤ :=
  A375848.P1903731771788089328.a (n - 1)

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

/-! ## A376172.P11575196301997982904

`lt[A327219(or(2, A051904(n+1))), 1]+1`
-/

namespace A376172.P11575196301997982904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327219 (Int.lor 2 (A051904 (n + 1))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A376172.P11575196301997982904

noncomputable section

/-- A376172: Numbers whose prime factorization has an even minimum exponent.

Offset 1, canonical program `A376172.P11575196301997982904`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 367 terms. -/
def A376172 (n : ℕ) : ℤ :=
  (A376172.P11575196301997982904.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 367 terms. -/
def A376172.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A376663.P2676070495033295066

`A051904(A338041(3*(n+1))+A000005(n+3)*A060819(n+5))`
-/

namespace A376663.P2676070495033295066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A338041 (3 * (n + 1)) + A000005 (n + 3) * A060819 (n + 5)).toNat

end

end A376663.P2676070495033295066

noncomputable section

/-- A376663: Largest frequency of n in the multiset of multinomial coefficients k!/(x_1! * ... * x_j!) with 1 <= x_1 <= ... <= x_j for a fixed k = x_1 + ... + x_j, i.e., maximum number of times that n appears in a row of A036038.

Offset 1, canonical program `A376663.P2676070495033295066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A376663 (n : ℕ) : ℤ :=
  A376663.P2676070495033295066.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. -/
def A376663.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376715.P13326971557905108235

`filter[A265640(1+n), A066247(#)]`
-/

namespace A376715.P13326971557905108235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A376715.P13326971557905108235

noncomputable section

/-- A376715: Composite numbers in A265640.

Offset 1, canonical program `A376715.P13326971557905108235`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5018 terms. -/
def A376715 (n : ℕ) : ℤ :=
  A376715.P13326971557905108235.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5018 terms. -/
def A376715.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376720.P17042756248652470706

`A126706(1+n)*A365783(n+1)`
-/

namespace A376720.P17042756248652470706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (1 + n) * A365783 (n + 1)

end

end A376720.P17042756248652470706

noncomputable section

/-- A376720: Product of numbers m that are neither squarefree nor prime powers and rad(m), where rad = A007947.

Offset 1, canonical program `A376720.P17042756248652470706`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376720 (n : ℕ) : ℤ :=
  A376720.P17042756248652470706.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A376885.P14720572819041160036

`∑{e}[1+n, A276150(#)]`
-/

namespace A376885.P14720572819041160036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A276150 (Nat.factorization (f1 n) p)

end

end A376885.P14720572819041160036

noncomputable section

/-- A376885: The number of factors of n of the form p^(k!) counted with multiplicity, where p is a prime and k >= 1, when the factorization is uniquely done using the factorial-base representation of the exponents in the prime factorization of n.

Offset 1, canonical program `A376885.P14720572819041160036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376885 (n : ℕ) : ℤ :=
  A376885.P14720572819041160036.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A376885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A377278.P11682108343684824947

`A000203(A059268(n))*A000203(A059268(n+1))`
-/

namespace A377278.P11682108343684824947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A059268 n).toNat * A000203 (A059268 (n + 1)).toNat

end

end A377278.P11682108343684824947

noncomputable section

/-- A377278: Denominators in a harmonic triangle; q-analog of A126615, here q = 2.

Offset 1, canonical program `A377278.P11682108343684824947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A377278 (n : ℕ) : ℤ :=
  A377278.P11682108343684824947.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. -/
def A377278.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A378085.P15528226860395995619

`1-Δ[A378619(1+n)]`
-/

namespace A378085.P15528226860395995619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378619 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A378085.P15528226860395995619

noncomputable section

/-- A378085: First differences of A070321 (greatest squarefree number <= n).

Offset 1, canonical program `A378085.P15528226860395995619`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378085 (n : ℕ) : ℤ :=
  A378085.P15528226860395995619.a (n - 1)

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

/-! ## A379028.P7022439097960608132

`∏{e}[1+n, A000005(#+1)]`
-/

namespace A379028.P7022439097960608132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000005 (Nat.factorization (f1 n) p + 1)

end

end A379028.P7022439097960608132

noncomputable section

/-- A379028: The number of modified exponential divisors of n.

Offset 1, canonical program `A379028.P7022439097960608132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379028 (n : ℕ) : ℤ :=
  A379028.P7022439097960608132.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379028.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A379714.P17882990982975447119

`∑[A049419(1+n)*(-1)^n]`
-/

namespace A379714.P17882990982975447119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (1 + n) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379714.P17882990982975447119

noncomputable section

/-- A379714: Partial alternating sums of the number of exponential divisors function (A049419).

Offset 1, canonical program `A379714.P17882990982975447119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379714 (n : ℕ) : ℤ :=
  A379714.P17882990982975447119.a (n - 1)

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

/-! ## A381973.P5402880455865549250

`eq[1, A003415(A004128(n))]`
-/

namespace A381973.P5402880455865549250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A004128 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A381973.P5402880455865549250

noncomputable section

/-- A381973: Numbers m such that Sum_{k >= 0} floor(m/3^k) is prime.

Offset 1, canonical program `A381973.P5402880455865549250`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 830 terms. -/
def A381973 (n : ℕ) : ℤ :=
  (A381973.P5402880455865549250.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 830 terms. -/
def A381973.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A384021.P6096998698699556837

`∪[A000079(n), A030130(n+2)]`
-/

namespace A384021.P6096998698699556837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030130 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A384021.P6096998698699556837

noncomputable section

/-- A384021: Powers of 2 along with numbers one power of 2 less than binary repunits, but the power of two subtracted does not flip the leading bit.

Offset 1, canonical program `A384021.P6096998698699556837`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384021 (n : ℕ) : ℤ :=
  (A384021.P6096998698699556837.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384021.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A384423.P1983985072499211494

`∑{e}[1+n, A047994(#)]`
-/

namespace A384423.P1983985072499211494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A047994 (Nat.factorization (f1 n) p)

end

end A384423.P1983985072499211494

noncomputable section

/-- A384423: The number of prime powers (not including 1) p^e that divide n such that e is unitarily coprime to the p-adic valuation of n.

Offset 1, canonical program `A384423.P1983985072499211494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A384423 (n : ℕ) : ℤ :=
  A384423.P1983985072499211494.a (n - 1)

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

/-! ## A385147.P4172335762244898518

`∑[A066781(1+n)]`
-/

namespace A385147.P4172335762244898518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066781 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385147.P4172335762244898518

noncomputable section

/-- A385147: a(n) = Sum_{i=1..n} 2^phi(i), where phi=A000010.

Offset 1, canonical program `A385147.P4172335762244898518`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A385147 (n : ℕ) : ℤ :=
  A385147.P4172335762244898518.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. -/
def A385147.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385183.P5225721144157549085

`A341674(lt[1, A341674(1+n)]+1)`
-/

namespace A385183.P5225721144157549085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341674 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341674 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A385183.P5225721144157549085

noncomputable section

/-- A385183: The v sequence in quartets (1,u,v,w); see A385182.

Offset 1, canonical program `A385183.P5225721144157549085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7491 terms. -/
def A385183 (n : ℕ) : ℤ :=
  A385183.P5225721144157549085.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7491 terms. -/
def A385183.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385186.P17516618380962078124

`2*A147846(1+n)`
-/

namespace A385186.P17516618380962078124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A147846 (1 + n)

end

end A385186.P17516618380962078124

noncomputable section

/-- A385186: Oblong numbers of the form k*(k + 1) such that at least one of k and k + 1 is prime.

Offset 1, canonical program `A385186.P17516618380962078124`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385186 (n : ℕ) : ℤ :=
  A385186.P17516618380962078124.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385186.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385374.P17225711820736057586

`A060016(A000005(1+n)+∑[n])`
-/

namespace A385374.P17225711820736057586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060016 (A000005 (1 + n) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A385374.P17225711820736057586

noncomputable section

/-- A385374: a(n) is the number of partitions of n into tau(n) distinct parts.

Offset 1, canonical program `A385374.P17225711820736057586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A385374 (n : ℕ) : ℤ :=
  A385374.P17225711820736057586.a (n - 1)

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

/-! ## A385822.P1570709262193700311

`comp[A039770(1+n)-1]+1`
-/

namespace A385822.P1570709262193700311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039770 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A385822.P1570709262193700311

noncomputable section

/-- A385822: Numbers k such that phi(k) is not a perfect square.

Offset 1, canonical program `A385822.P1570709262193700311`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385822 (n : ℕ) : ℤ :=
  (A385822.P1570709262193700311.a (n - 1) : ℤ)

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

/-! ## A387728.P12558144183525184501

`lt[A387726(1+n), n+1]+1`
-/

namespace A387728.P12558144183525184501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387726 (1 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A387728.P12558144183525184501

noncomputable section

/-- A387728: Numbers k such that the powerful part of the sum of divisors of k (A387726) is less than k.

Offset 1, canonical program `A387728.P12558144183525184501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9195 terms. -/
def A387728 (n : ℕ) : ℤ :=
  (A387728.P12558144183525184501.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9195 terms. -/
def A387728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387892.P9700329356770673450

`lt[A344753(n+1), A000203(n+1)]+1`
-/

namespace A387892.P9700329356770673450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A387892.P9700329356770673450

noncomputable section

/-- A387892: Psi-deficient numbers: numbers k such that psi(k) < 2*k.

Offset 1, canonical program `A387892.P9700329356770673450`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8262 terms. -/
def A387892 (n : ℕ) : ℤ :=
  (A387892.P9700329356770673450.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8262 terms. -/
def A387892.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A388972.P1578162226267152276

`eq[1, gcd(3, A049419(n+1))]+1`
-/

namespace A388972.P1578162226267152276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A049419 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A388972.P1578162226267152276

noncomputable section

/-- A388972: Numbers whose number of exponential divisors is a power of 2.

Offset 1, canonical program `A388972.P1578162226267152276`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9581 terms. -/
def A388972 (n : ℕ) : ℤ :=
  (A388972.P1578162226267152276.a (n - 1) : ℤ)

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

/-! ## A390252.P14317934682542997083

`∪[A280076(1+n), A386637(n+1)]`
-/

namespace A390252.P14317934682542997083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280076 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386637 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390252.P14317934682542997083

noncomputable section

/-- A390252: Numbers k such that sigma(k) = psi(k) + omega(k)^3.

Offset 1, canonical program `A390252.P14317934682542997083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 991 terms. -/
def A390252 (n : ℕ) : ℤ :=
  (A390252.P14317934682542997083.a (n - 1) : ℤ)

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

/-! ## A391797.P8977873502925423305

`lt[A110854(n+1), 0]+1`
-/

namespace A391797.P8977873502925423305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110854 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A391797.P8977873502925423305

noncomputable section

/-- A391797: Numbers k such that prime(2*k + 2) - prime(2*k) < prime(2*k + 1) - prime(2*k - 1).

Offset 1, canonical program `A391797.P8977873502925423305`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4493 terms. -/
def A391797 (n : ℕ) : ℤ :=
  (A391797.P8977873502925423305.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4493 terms. -/
def A391797.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391799.P6194458329291869633

`lt[0, A110854(n+1)]+1`
-/

namespace A391799.P6194458329291869633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110854 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A391799.P6194458329291869633

noncomputable section

/-- A391799: Numbers k such that prime(2*k + 2) - prime(2*k) > prime(2*k + 1) - prime(2*k - 1).

Offset 1, canonical program `A391799.P6194458329291869633`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4535 terms. -/
def A391799 (n : ℕ) : ℤ :=
  (A391799.P6194458329291869633.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4535 terms. -/
def A391799.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A392111.P5877037555755260078

`∪[(1+25*n)²², A268328(n+1)]`
-/

namespace A392111.P5877037555755260078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((1 + 25 * n) ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392111.P5877037555755260078

noncomputable section

/-- A392111: Numbers k such that 5*k - (greatest prime < 5*k) = (least prime > 5*k) - 5*k.

Offset 1, canonical program `A392111.P5877037555755260078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A392111 (n : ℕ) : ℤ :=
  (A392111.P5877037555755260078.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. -/
def A392111.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A392114.P6166494852546552160

`A072570(2+n)/6`
-/

namespace A392114.P6166494852546552160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072570 (2 + n) : ℚ) / 6

end

end A392114.P6166494852546552160

noncomputable section

/-- A392114: Numbers k such that 6*k - (greatest prime < 6*n) = (least prime > 6*n) - 6*k.

Offset 1, canonical program `A392114.P6166494852546552160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A392114 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A392114.P6166494852546552160.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A392114.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A392341.P7067263475065933608

`A370905(1+n)-A000196(n+1)`
-/

namespace A392341.P7067263475065933608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370905 (1 + n) - A000196 (n + 1)

end

end A392341.P7067263475065933608

noncomputable section

/-- A392341: Number of pairs (x, y) with 1 <= x < y <= n such that gcd(x, y) is a perfect square.

Offset 1, canonical program `A392341.P7067263475065933608`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A392341 (n : ℕ) : ℤ :=
  A392341.P7067263475065933608.a (n - 1)

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

/-! ## A393043.P12511231345253403073

`eq[2, gcd(6, A003415(n))]`
-/

namespace A393043.P12511231345253403073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A003415 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A393043.P12511231345253403073

noncomputable section

/-- A393043: Numbers such that the least prime not dividing their arithmetic derivative is 3.

Offset 1, canonical program `A393043.P12511231345253403073`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3079 terms. -/
def A393043 (n : ℕ) : ℤ :=
  (A393043.P12511231345253403073.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3079 terms. -/
def A393043.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A395253.P6857231362227604878

`Δ[A395251(1+n)]`
-/

namespace A395253.P6857231362227604878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395251 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A395253.P6857231362227604878

noncomputable section

/-- A395253: Differences of A395251.

Offset 1, canonical program `A395253.P6857231362227604878`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A395253 (n : ℕ) : ℤ :=
  A395253.P6857231362227604878.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A395253.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A397387.P3236873794457607494

`∩[floor(A003277(n+3)/2), A003277(n+1)]`
-/

namespace A397387.P3236873794457607494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003277 (n + 3) : ℚ) / 2⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397387.P3236873794457607494

noncomputable section

/-- A397387: Sophie Germain cyclic numbers: numbers k such that k and 2*k+1 are both cyclic numbers (A003277).

Offset 1, canonical program `A397387.P3236873794457607494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2711 terms. -/
def A397387 (n : ℕ) : ℤ :=
  (A397387.P3236873794457607494.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2711 terms. -/
def A397387.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A399188.P10361508471299617653

`eq[-1, a(A000005(n+1))%2]+1` with `a(0)=7, a(1)=1, a(2)=-2, a(3)=-1, a(4)=4`
-/

namespace A399188.P10361508471299617653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [7, 1, -2, -1, 4] fun n f2 =>
  Int.tmod (f2 (A000005 (n + 1)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A399188.P10361508471299617653

noncomputable section

/-- A399188: Numbers x such that recursion {x -> A000005(x)+1} reaches a fixed-point of 4 rather than 3.

Offset 1, canonical program `A399188.P10361508471299617653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399188 (n : ℕ) : ℤ :=
  (A399188.P10361508471299617653.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A399188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A399969.P7561850304085371636

`lt[(n+3)%A000005(n+1), 1]+1`
-/

namespace A399969.P7561850304085371636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 3 : ℤ) (A000005 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A399969.P7561850304085371636

noncomputable section

/-- A399969: Numbers k such that the number of divisors of k divides k + 2.

Offset 1, canonical program `A399969.P7561850304085371636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7108 terms. -/
def A399969 (n : ℕ) : ℤ :=
  (A399969.P7561850304085371636.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7108 terms. -/
def A399969.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A358776.P5160008666837522864

`filter[A036554(n+1), A353669(#)]`
-/

namespace A358776.P5160008666837522864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353669 (f1 j).toNat = 1) n)

end

end A358776.P5160008666837522864

noncomputable section

/-- A358776: Positive integers with an even number of prime factors (counting repetitions) that sum to an odd number.

Offset 1, canonical program `A358776.P5160008666837522864`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5132 terms. -/
def A358776 (n : ℕ) : ℤ :=
  A358776.P5160008666837522864.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5132 terms. -/
def A358776.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359579.P14819525977453082377

`A112299(n+1)*A364252(n+1)`
-/

namespace A359579.P14819525977453082377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112299 (n + 1) * A364252 (n + 1)

end

end A359579.P14819525977453082377

noncomputable section

/-- A359579: Dirichlet inverse of A336923, where A336923(n) = 1 if sigma(2n) - sigma(n) is a power of 2, otherwise 0.

Offset 1, canonical program `A359579.P14819525977453082377`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359579 (n : ℕ) : ℤ :=
  A359579.P14819525977453082377.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359579.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359590.P10814553005928793103

`A359834(4*(n+1))`
-/

namespace A359590.P10814553005928793103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359834 (4 * (n + 1))

end

end A359590.P10814553005928793103

noncomputable section

/-- A359590: Absolute values of A355690, where A355690 is the Dirichlet inverse of the characteristic function of numbers not congruent to 2 mod 4.

Offset 1, canonical program `A359590.P10814553005928793103`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359590 (n : ℕ) : ℤ :=
  A359590.P10814553005928793103.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359590.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361267.P7495545048524852458

`eq[6, A075527(n)]`
-/

namespace A361267.P7495545048524852458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A361267.P7495545048524852458

noncomputable section

/-- A361267: Numbers k such that prime(k+2) - prime(k) = 6.

Offset 1, canonical program `A361267.P7495545048524852458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 526 terms. -/
def A361267 (n : ℕ) : ℤ :=
  (A361267.P7495545048524852458.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 526 terms. -/
def A361267.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361760.P2724643918178383863

`A000040(n+1)*A061214(n+1)`
-/

namespace A361760.P2724643918178383863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A061214 (n + 1)

end

end A361760.P2724643918178383863

noncomputable section

/-- A361760: a(n) = Product_{i=prime(n)..prime(n+1)-1} i.

Offset 1, canonical program `A361760.P2724643918178383863`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061214, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361760 (n : ℕ) : ℤ :=
  A361760.P2724643918178383863.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061214, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361760.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A361761.P7731919579724070524

`A006094(n+1)*A061214(n+1)`
-/

namespace A361761.P7731919579724070524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) * A061214 (n + 1)

end

end A361761.P7731919579724070524

noncomputable section

/-- A361761: a(n) = Product_{i=prime(n)..prime(n+1)} i.

Offset 1, canonical program `A361761.P7731919579724070524`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061214, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361761 (n : ℕ) : ℤ :=
  A361761.P7731919579724070524.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061214, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A361761.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A362605.P13958044388673276970

`comp[A356862(n+1)-2]+2`
-/

namespace A362605.P13958044388673276970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356862 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A362605.P13958044388673276970

noncomputable section

/-- A362605: Numbers whose prime factorization has more than one mode. Numbers without a unique exponent of maximum frequency in the prime signature.

Offset 1, canonical program `A362605.P13958044388673276970`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362605 (n : ℕ) : ℤ :=
  (A362605.P13958044388673276970.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A362605.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363421.P10423583748182634991

`A363735(n)-((∏{e}[n, #+1]+1)*(n-1)+2)`
-/

namespace A363421.P10423583748182634991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363735 n - (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) + 1 : ℕ) : ℤ) * ((n : ℤ) - 1) + 2)

end

end A363421.P10423583748182634991

noncomputable section

/-- A363421: a(n) = Sum_{k=0..n}(n^[not(k | n)] - n^[k | n]), where '[ ]' denotes the Iverson bracket.

Offset 0, canonical program `A363421.P10423583748182634991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363421 (n : ℕ) : ℤ :=
  A363421.P10423583748182634991.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A363421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363878.P17368432943258259261

`A363795(7*(n+1)-4)`
-/

namespace A363878.P17368432943258259261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363795 (7 * (n + 1) - 4)

end

end A363878.P17368432943258259261

noncomputable section

/-- A363878: Number of divisors of 7*n-4 of form 7*k+2.

Offset 1, canonical program `A363878.P17368432943258259261`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363795, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363878 (n : ℕ) : ℤ :=
  A363878.P17368432943258259261.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363795, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363878.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363879.P16011273899818667065

`A363795(7*n+1)`
-/

namespace A363879.P16011273899818667065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363795 (7 * n + 1)

end

end A363879.P16011273899818667065

noncomputable section

/-- A363879: Number of divisors of 7*n-6 of form 7*k+2.

Offset 1, canonical program `A363879.P16011273899818667065`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363795, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363879 (n : ℕ) : ℤ :=
  A363879.P16011273899818667065.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363795, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363879.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363885.P8366996725641736141

`A363795(7*(n+1)-3)`
-/

namespace A363885.P8366996725641736141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363795 (7 * (n + 1) - 3)

end

end A363885.P8366996725641736141

noncomputable section

/-- A363885: Number of divisors of 7*n-3 of form 7*k+2.

Offset 1, canonical program `A363885.P8366996725641736141`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363795, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363885 (n : ℕ) : ℤ :=
  A363885.P8366996725641736141.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A363795, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363885.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A364021.P12955701881080745028

`∑{d}[n+1, A000010(#)*A364045((n+1)/#)]`
-/

namespace A364021.P12955701881080745028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A364045 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364021.P12955701881080745028

noncomputable section

/-- A364021: Expansion of Sum_{k>0} k * x^(3*k) / (1 + x^(5*k)).

Offset 1, canonical program `A364021.P12955701881080745028`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364021 (n : ℕ) : ℤ :=
  A364021.P12955701881080745028.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364021.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364104.P16883579566316415671

`A363929(4+5*n)`
-/

namespace A364104.P16883579566316415671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363929 (4 + 5 * n)

end

end A364104.P16883579566316415671

noncomputable section

/-- A364104: Expansion of Sum_{k>0} k * x^k / (1 - x^(5*k-1)).

Offset 1, canonical program `A364104.P16883579566316415671`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364104 (n : ℕ) : ℤ :=
  A364104.P16883579566316415671.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364104.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364105.P1924825563724486364

`A363929(3+5*n)`
-/

namespace A364105.P1924825563724486364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363929 (3 + 5 * n)

end

end A364105.P1924825563724486364

noncomputable section

/-- A364105: Expansion of Sum_{k>0} k * x^(2*k) / (1 - x^(5*k-1)).

Offset 1, canonical program `A364105.P1924825563724486364`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364105 (n : ℕ) : ℤ :=
  A364105.P1924825563724486364.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364105.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364106.P3387051768492882436

`A363929(2+5*n)`
-/

namespace A364106.P3387051768492882436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363929 (2 + 5 * n)

end

end A364106.P3387051768492882436

noncomputable section

/-- A364106: Expansion of Sum_{k>0} k * x^(3*k) / (1 - x^(5*k-1)).

Offset 1, canonical program `A364106.P3387051768492882436`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364106 (n : ℕ) : ℤ :=
  A364106.P3387051768492882436.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364106.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364107.P11243191280621098222

`A363929(1+5*n)`
-/

namespace A364107.P11243191280621098222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363929 (1 + 5 * n)

end

end A364107.P11243191280621098222

noncomputable section

/-- A364107: Expansion of Sum_{k>0} k * x^(4*k) / (1 - x^(5*k-1)).

Offset 1, canonical program `A364107.P11243191280621098222`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364107 (n : ℕ) : ℤ :=
  A364107.P11243191280621098222.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. -/
def A364107.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364834.P10638082941698399586

`∑[(1+n)%A370566(1+n)]`
-/

namespace A364834.P10638082941698399586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 + n : ℤ) (A370566 (1 + n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364834.P10638082941698399586

noncomputable section

/-- A364834: Sum of positive integers <= n which are multiples of 2 or 5.

Offset 1, canonical program `A364834.P10638082941698399586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364834 (n : ℕ) : ℤ :=
  A364834.P10638082941698399586.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364834.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364905.P262514306637378074

`filter[A073249(n+1), A373975(#)]`
-/

namespace A364905.P262514306637378074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373975 (f1 j).toNat = 1) n)

end

end A364905.P262514306637378074

noncomputable section

/-- A364905: Sphenic numbers with no squarefree neighbors.

Offset 1, canonical program `A364905.P262514306637378074`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1965 terms. -/
def A364905 (n : ℕ) : ℤ :=
  A364905.P262514306637378074.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1965 terms. -/
def A364905.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366256.P11528095633646086388

`lt[0, A366255(n)]`
-/

namespace A366256.P11528095633646086388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366255 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A366256.P11528095633646086388

noncomputable section

/-- A366256: Positions of odd numbers in May code (A303767).

Offset 1, canonical program `A366256.P11528095633646086388`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366256 (n : ℕ) : ℤ :=
  (A366256.P11528095633646086388.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366256.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366257.P194233725417520756

`eq[0, A366255(n)]`
-/

namespace A366257.P194233725417520756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366255 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A366257.P194233725417520756

noncomputable section

/-- A366257: Positions of even numbers in May code (A303767).

Offset 1, canonical program `A366257.P194233725417520756`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366257 (n : ℕ) : ℤ :=
  (A366257.P194233725417520756.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A366257.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366274.P11829202406764329078

`A000720(A076273(n+2))-(n+1)`
-/

namespace A366274.P11829202406764329078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A076273 (n + 2)).toNat - (n + 1 : ℤ)

end

end A366274.P11829202406764329078

noncomputable section

/-- A366274: a(n) is the least k such that prime(n+1+k) >= prime(n)+prime(n+1).

Offset 1, canonical program `A366274.P11829202406764329078`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076273, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366274 (n : ℕ) : ℤ :=
  A366274.P11829202406764329078.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A076273, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366274.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366403.P15389599088929656846

`A099323(n)+A057427(n)`
-/

namespace A366403.P15389599088929656846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099323 n + A057427 n

end

end A366403.P15389599088929656846

noncomputable section

/-- A366403: G.f. A(x) satisfies A(x) = (1 + x / sqrt(A(x))) / (1 - x).

Offset 0, canonical program `A366403.P15389599088929656846`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A366403 (n : ℕ) : ℤ :=
  A366403.P15389599088929656846.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A366403.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366562.P1526609418940830950

`∏{p}[n+1, 1-#]*A229297((n+1)²/∏{p}[n+1, #])`
-/

namespace A366562.P1526609418940830950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℤ))) * A229297 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

end

end A366562.P1526609418940830950

noncomputable section

/-- A366562: a(n) = Sum_{k=1..n} A366561(n,k)*A023900(k)/n.

Offset 1, canonical program `A366562.P1526609418940830950`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A366562 (n : ℕ) : ℤ :=
  A366562.P1526609418940830950.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. -/
def A366562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366959.P2192269047836251233

`eq[A054054(n)+2, A054055(n)]`
-/

namespace A366959.P2192269047836251233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A366959.P2192269047836251233

noncomputable section

/-- A366959: Numbers whose difference between the largest and smallest digits is equal to 2.

Offset 1, canonical program `A366959.P2192269047836251233`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 487 terms. -/
def A366959 (n : ℕ) : ℤ :=
  (A366959.P2192269047836251233.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 487 terms. -/
def A366959.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366962.P16010517358609303097

`eq[A054054(n)+2, A054055(n)-3]`
-/

namespace A366962.P16010517358609303097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n - 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A366962.P16010517358609303097

noncomputable section

/-- A366962: Numbers whose difference between the largest and smallest digits is equal to 5.

Offset 1, canonical program `A366962.P16010517358609303097`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1567 terms. -/
def A366962 (n : ℕ) : ℤ :=
  (A366962.P16010517358609303097.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1567 terms. -/
def A366962.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A372023.P12562919444290838036

`A040000(n)*A099323(n)`
-/

namespace A372023.P12562919444290838036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n * A099323 n

end

end A372023.P12562919444290838036

noncomputable section

/-- A372023: Expansion of ( (1 + 3*x)/(1 - x) )^(1/2).

Offset 0, canonical program `A372023.P12562919444290838036`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A372023 (n : ℕ) : ℤ :=
  A372023.P12562919444290838036.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 219 terms. -/
def A372023.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A373303.P10871280826768265393

`A371176(n+2)-A371176(n+1)`
-/

namespace A373303.P10871280826768265393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371176 (n + 2) - A371176 (n + 1)

end

end A373303.P10871280826768265393

noncomputable section

/-- A373303: First differences of A371176.

Offset 1, canonical program `A373303.P10871280826768265393`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A371176, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373303 (n : ℕ) : ℤ :=
  A373303.P10871280826768265393.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A371176, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A373303.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A374047.P15202425446373321383

`filter[A374109(n+1), A166486(#)]`
-/

namespace A374047.P15202425446373321383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A374047.P15202425446373321383

noncomputable section

/-- A374047: Numbers k for which A328845(k) is odd, where A328845 is the first Fibonacci based variant of arithmetic derivative.

Offset 1, canonical program `A374047.P15202425446373321383`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9593 terms. -/
def A374047 (n : ℕ) : ℤ :=
  A374047.P15202425446373321383.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9593 terms. -/
def A374047.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A375272.P13151626788742865521

`log2(A331109(n+1))`
-/

namespace A375272.P13151626788742865521
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A331109 (n + 1) : ℝ)

end

end A375272.P13151626788742865521

noncomputable section

/-- A375272: The number of factors of n of the form p^Fibonacci(k), where p is a prime and k >= 2, when the factorization is uniquely done using the dual Zeckendorf representation of the exponents in the prime factorization of n.

Offset 1, canonical program `A375272.P13151626788742865521`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A331109, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375272 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A375272.P13151626788742865521.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A331109, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A375272.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A375779.P16239665562094852958

`fo[A176988(n)-1]`
-/

namespace A375779.P16239665562094852958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176988 n - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0

end

end A375779.P16239665562094852958

noncomputable section

/-- A375779: Noll index series of Zernike polynomials converted to ANSI index.

Offset 1, canonical program `A375779.P16239665562094852958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A375779 (n : ℕ) : ℤ :=
  (A375779.P16239665562094852958.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. -/
def A375779.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A376250.P16493689991352694122

`filter[A356862(1+n), A355447(#)]`
-/

namespace A376250.P16493689991352694122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356862 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A376250.P16493689991352694122

noncomputable section

/-- A376250: Numbers with a unique largest prime exponent (A356862) that are not prime powers (A246655).

Offset 1, canonical program `A376250.P16493689991352694122`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7585 terms. -/
def A376250 (n : ℕ) : ℤ :=
  A376250.P16493689991352694122.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7585 terms. -/
def A376250.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A382415.P6643677276476163217

`comp[A023721(1+n)]`
-/

namespace A382415.P6643677276476163217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023721 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382415.P6643677276476163217

noncomputable section

/-- A382415: Numbers with at least one zero in their base-5 representation.

Offset 1, canonical program `A382415.P6643677276476163217`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A382415 (n : ℕ) : ℤ :=
  (A382415.P6643677276476163217.a (n - 1) : ℤ)

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

/-! ## A383276.P454612654592047912

`fp[A383278(n+1)]+1`
-/

namespace A383276.P454612654592047912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383278 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 + 1

end

end A383276.P454612654592047912

noncomputable section

/-- A383276: Numbers of the form A034444(k) * k.

Offset 1, canonical program `A383276.P454612654592047912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2247 terms. -/
def A383276 (n : ℕ) : ℤ :=
  (A383276.P454612654592047912.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2247 terms. -/
def A383276.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A383423.P9146618663533705755

`∩[floor(ϕ*n)-1, A383427(n+1)]`
-/

namespace A383423.P9146618663533705755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋ - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A383423.P9146618663533705755

noncomputable section

/-- A383423: Indices k such that A003849(k) = 0 and A383422(k) = 0.

Offset 1, canonical program `A383423.P9146618663533705755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5623 terms. -/
def A383423 (n : ℕ) : ℤ :=
  (A383423.P9146618663533705755.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5623 terms. -/
def A383423.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A385056.P8356949584126606895

`∩[A038618(n+1), A062372(n+1)]`
-/

namespace A385056.P8356949584126606895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385056.P8356949584126606895

noncomputable section

/-- A385056: Prime numbers whose digit product is a positive cube.

Offset 1, canonical program `A385056.P8356949584126606895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 369 terms. -/
def A385056 (n : ℕ) : ℤ :=
  (A385056.P8356949584126606895.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 369 terms. -/
def A385056.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A386320.P14006571934998227672

`∩[A038604(n+1), A038618(n+1)]`
-/

namespace A386320.P14006571934998227672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386320.P14006571934998227672

noncomputable section

/-- A386320: Primes without {0, 2} as digits.

Offset 1, canonical program `A386320.P14006571934998227672`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6078 terms. -/
def A386320 (n : ℕ) : ℤ :=
  (A386320.P14006571934998227672.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6078 terms. -/
def A386320.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386321.P12129189404841943891

`∩[A038611(n+1), A038618(n+1)]`
-/

namespace A386321.P12129189404841943891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386321.P12129189404841943891

noncomputable section

/-- A386321: Primes without {0, 3} as digits.

Offset 1, canonical program `A386321.P12129189404841943891`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4539 terms. -/
def A386321 (n : ℕ) : ℤ :=
  (A386321.P12129189404841943891.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4539 terms. -/
def A386321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387096.P7323598219798929571

`lt[A111972(n+1), A001222(n+1)]+1`
-/

namespace A387096.P7323598219798929571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A387096.P7323598219798929571

noncomputable section

/-- A387096: Numbers k such that k < prime(bigomega(k))#, where prime(bigomega(k))# is the product of the first bigomega(k) primes and bigomega(k) is the number of prime divisors of k (counted multiplicity).

Offset 1, canonical program `A387096.P7323598219798929571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4433 terms. -/
def A387096 (n : ℕ) : ℤ :=
  (A387096.P7323598219798929571.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4433 terms. -/
def A387096.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A389425.P17457791161868218869

`A199716(n+2)-A199716(n+1)`
-/

namespace A389425.P17457791161868218869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199716 (n + 2) - A199716 (n + 1)

end

end A389425.P17457791161868218869

noncomputable section

/-- A389425: First differences of A199716.

Offset 1, canonical program `A389425.P17457791161868218869`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A199716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389425 (n : ℕ) : ℤ :=
  A389425.P17457791161868218869.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A199716, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A389425.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A389923.P14713725332339076935

`A371176(lt[runs[floor(n/ϕ)], 2]-1)`
-/

namespace A389923.P14713725332339076935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371176 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n - 1)

end

end A389923.P14713725332339076935

noncomputable section

/-- A389923: Standard composition numbers of integer compositions with last part = length.

Offset 1, canonical program `A389923.P14713725332339076935`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4181 terms. -/
def A389923 (n : ℕ) : ℤ :=
  A389923.P14713725332339076935.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4181 terms. -/
def A389923.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A391585.P14461622973833260868

`∪[A003714(n), A048717(n)]`
-/

namespace A391585.P14461622973833260868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048717 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391585.P14461622973833260868

noncomputable section

/-- A391585: Numbers k such that 3*k = A048720(m,k) for some m, where A048720 is carryless base-2 multiplication.

Offset 1, canonical program `A391585.P14461622973833260868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391585 (n : ℕ) : ℤ :=
  (A391585.P14461622973833260868.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391585.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A391798.P17538702185658702091

`A000720(A391801(n+1))`
-/

namespace A391798.P17538702185658702091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A391801 (n + 1)).toNat

end

end A391798.P17538702185658702091

noncomputable section

/-- A391798: Numbers k such that prime(2*k + 2) - prime(2*k) = prime(2*k + 1) - prime(2*k - 1).

Offset 1, canonical program `A391798.P17538702185658702091`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 932 terms. -/
def A391798 (n : ℕ) : ℤ :=
  A391798.P17538702185658702091.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 932 terms. -/
def A391798.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A395114.P315620387427671144

`A005590(A103354(2+n))`
-/

namespace A395114.P315620387427671144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005590 (A103354 (2 + n)).toNat

end

end A395114.P315620387427671144

noncomputable section

/-- A395114: Irregular triangle, next row is the previous row with the difference between consecutive numbers inserted between, starting with row 1 1.

Offset 1, canonical program `A395114.P315620387427671144`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A395114 (n : ℕ) : ℤ :=
  A395114.P315620387427671144.a (n - 1)

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

/-! ## A359058.P8369782960568005774

`A359216(n)²+A359217(n)²`
-/

namespace A359058.P8369782960568005774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359216 n ^ 2 + A359217 n ^ 2

end

end A359058.P8369782960568005774

noncomputable section

/-- A359058: a(n) = squared distance to the origin of the n-th vertex on a counterclockwise undulating spiral in a square grid.

Offset 0, canonical program `A359058.P8369782960568005774`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359216, A359217, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359058 (n : ℕ) : ℤ :=
  A359058.P8369782960568005774.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359216, A359217, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359058.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A361822.P6850116414336837406

`∩[A038604(n+1), A038613(n+1)]`
-/

namespace A361822.P6850116414336837406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361822.P6850116414336837406

noncomputable section

/-- A361822: Primes without {2, 5} as digits.

Offset 1, canonical program `A361822.P6850116414336837406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6069 terms. -/
def A361822 (n : ℕ) : ℤ :=
  (A361822.P6850116414336837406.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6069 terms. -/
def A361822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A362030.P12016388317107495669

`A062050(A258410(1+n))`
-/

namespace A362030.P12016388317107495669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (A258410 (1 + n)).toNat

end

end A362030.P12016388317107495669

noncomputable section

/-- A362030: Irregular triangle read by rows where row n contains the balanced binary words of length 2n interpreted as binary numbers.

Offset 1, canonical program `A362030.P12016388317107495669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1274 terms. -/
def A362030 (n : ℕ) : ℤ :=
  A362030.P12016388317107495669.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1274 terms. -/
def A362030.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A382417.P7643387567039946399

`comp[A255805(1+n)]`
-/

namespace A382417.P7643387567039946399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255805 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A382417.P7643387567039946399

noncomputable section

/-- A382417: Numbers with at least one zero in their base-8 representation.

Offset 1, canonical program `A382417.P7643387567039946399`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6381 terms. -/
def A382417 (n : ℕ) : ℤ :=
  (A382417.P7643387567039946399.a (n - 1) : ℤ)

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

/-! ## A386323.P8391634571326051456

`∩[A038613(n+1), A038618(n+1)]`
-/

namespace A386323.P8391634571326051456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386323.P8391634571326051456

noncomputable section

/-- A386323: Primes without {0, 5} as digits.

Offset 1, canonical program `A386323.P8391634571326051456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6265 terms. -/
def A386323 (n : ℕ) : ℤ :=
  (A386323.P8391634571326051456.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6265 terms. -/
def A386323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386324.P16760202649174605299

`∩[A038614(n+1), A038618(n+1)]`
-/

namespace A386324.P16760202649174605299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386324.P16760202649174605299

noncomputable section

/-- A386324: Primes without {0, 6} as digits.

Offset 1, canonical program `A386324.P16760202649174605299`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6574 terms. -/
def A386324 (n : ℕ) : ℤ :=
  (A386324.P16760202649174605299.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6574 terms. -/
def A386324.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386326.P17139648770102794594

`∩[A038616(n+1), A038618(n+1)]`
-/

namespace A386326.P17139648770102794594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386326.P17139648770102794594

noncomputable section

/-- A386326: Primes without {0, 8} as digits.

Offset 1, canonical program `A386326.P17139648770102794594`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6650 terms. -/
def A386326 (n : ℕ) : ℤ :=
  (A386326.P17139648770102794594.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6650 terms. -/
def A386326.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A391958.P6800546754486593406

`A011371(n)+2*A187059(n)`
-/

namespace A391958.P6800546754486593406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n + 2 * A187059 n

end

end A391958.P6800546754486593406

noncomputable section

/-- A391958: First column of A391957.

Offset 0, canonical program `A391958.P6800546754486593406`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A391958 (n : ℕ) : ℤ :=
  A391958.P6800546754486593406.a n

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

/-! ## A359433.P4608172396385939507

`(-1)^∑{e}[n+1, #]*A125131(∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A359433.P4608172396385939507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * A125131 (∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

end

end A359433.P4608172396385939507

noncomputable section

/-- A359433: Dirichlet inverse of A071773.

Offset 1, canonical program `A359433.P4608172396385939507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359433 (n : ℕ) : ℤ :=
  A359433.P4608172396385939507.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359433.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A359495.P14356946249672535810

`A230877(n)-A029931(n)`
-/

namespace A359495.P14356946249672535810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230877 n - A029931 n

end

end A359495.P14356946249672535810

noncomputable section

/-- A359495: Sum of positions of 1's in binary expansion minus sum of positions of 1's in reversed binary expansion, where positions in a sequence are read starting with 1 from the left.

Offset 0, canonical program `A359495.P14356946249672535810`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029931, A230877, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359495 (n : ℕ) : ℤ :=
  A359495.P14356946249672535810.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029931, A230877, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A359495.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363359.P5416786752996279757

`A050452(4*(n+1)-1)`
-/

namespace A363359.P5416786752996279757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050452 (4 * (n + 1) - 1)

end

end A363359.P5416786752996279757

noncomputable section

/-- A363359: Sum of divisors of 4*n-1 of form 4*k+3.

Offset 1, canonical program `A363359.P5416786752996279757`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050452, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363359 (n : ℕ) : ℤ :=
  A363359.P5416786752996279757.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050452, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363359.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363392.P17888585954708400925

`A050452(4*(n+1)-2)`
-/

namespace A363392.P17888585954708400925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050452 (4 * (n + 1) - 2)

end

end A363392.P17888585954708400925

noncomputable section

/-- A363392: Sum of divisors of 4*n-2 of form 4*k+3.

Offset 1, canonical program `A363392.P17888585954708400925`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050452, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363392 (n : ℕ) : ℤ :=
  A363392.P17888585954708400925.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050452, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363392.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363407.P16355104600949627013

`A050452(4*n+1)`
-/

namespace A363407.P16355104600949627013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050452 (4 * n + 1)

end

end A363407.P16355104600949627013

noncomputable section

/-- A363407: Sum of divisors of 4*n-3 of form 4*k+3.

Offset 1, canonical program `A363407.P16355104600949627013`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050452, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363407 (n : ℕ) : ℤ :=
  A363407.P16355104600949627013.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050452, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363407.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363904.P4106271239872733580

`(A001842(n+1)+A050452(n+1))/4`
-/

namespace A363904.P4106271239872733580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001842 (n + 1) + A050452 (n + 1) : ℚ) / 4

end

end A363904.P4106271239872733580

noncomputable section

/-- A363904: Expansion of Sum_{k>0} x^(3*k) / (1 - x^(4*k))^2.

Offset 1, canonical program `A363904.P4106271239872733580`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050452, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363904 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A363904.P4106271239872733580.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050452, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A363904.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A363976.P4088196395977743014

`A026741(A363971(n+1)+A363902(n+1))`
-/

namespace A363976.P4088196395977743014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A363971 (n + 1) + A363902 (n + 1)).toNat

end

end A363976.P4088196395977743014

noncomputable section

/-- A363976: Expansion of Sum_{k>0} x^(2*k) / (1 - x^(3*k))^3.

Offset 1, canonical program `A363976.P4088196395977743014`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 295 terms. -/
def A363976 (n : ℕ) : ℤ :=
  A363976.P4088196395977743014.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 295 terms. -/
def A363976.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364043.P10368916526282945248

`A083911(n+1)-A083916(n+1)`
-/

namespace A364043.P10368916526282945248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083911 (n + 1) - A083916 (n + 1)

end

end A364043.P10368916526282945248

noncomputable section

/-- A364043: Expansion of Sum_{k>0} x^k / (1 + x^(5*k)).

Offset 1, canonical program `A364043.P10368916526282945248`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364043 (n : ℕ) : ℤ :=
  A364043.P10368916526282945248.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364043.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364082.P8960664835970015103

`A363903(3+4*n)`
-/

namespace A364082.P8960664835970015103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363903 (3 + 4 * n)

end

end A364082.P8960664835970015103

noncomputable section

/-- A364082: Expansion of Sum_{k>0} k * x^(3*k-2) / (1 - x^(4*k-3)).

Offset 1, canonical program `A364082.P8960664835970015103`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A364082 (n : ℕ) : ℤ :=
  A364082.P8960664835970015103.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A364082.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364083.P8333759366889863168

`A363903(1+4*n)`
-/

namespace A364083.P8333759366889863168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363903 (1 + 4 * n)

end

end A364083.P8333759366889863168

noncomputable section

/-- A364083: Expansion of Sum_{k>0} k * x^k / (1 - x^(4*k-3)).

Offset 1, canonical program `A364083.P8333759366889863168`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A364083 (n : ℕ) : ℤ :=
  A364083.P8333759366889863168.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. -/
def A364083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365857.P2641707062679739397

`A032189(2*(1+n))`
-/

namespace A365857.P2641707062679739397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032189 (2 * (1 + n))

end

end A365857.P2641707062679739397

noncomputable section

/-- A365857: Number of cyclic compositions of 2*n into odd parts.

Offset 1, canonical program `A365857.P2641707062679739397`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A365857 (n : ℕ) : ℤ :=
  A365857.P2641707062679739397.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 245 terms. -/
def A365857.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366147.P10283015225632227018

`A000005(A360539(n+1))`
-/

namespace A366147.P10283015225632227018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A360539 (n + 1)).toNat

end

end A366147.P10283015225632227018

noncomputable section

/-- A366147: The number of divisors of the cubefree part of n (A360539).

Offset 1, canonical program `A366147.P10283015225632227018`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360539, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366147 (n : ℕ) : ℤ :=
  A366147.P10283015225632227018.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360539, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366147.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366309.P14240225199999852292

`2^A366247(n+1)`
-/

namespace A366309.P14240225199999852292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A366247 (n + 1) : ℤ)

end

end A366309.P14240225199999852292

noncomputable section

/-- A366309: The number of infinitary divisors of n that are terms of A366243.

Offset 1, canonical program `A366309.P14240225199999852292`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366247, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366309 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A366309.P14240225199999852292.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A366247, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A366309.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A366833.P5308282873906407344

`Δ[A024620(1+n)]`
-/

namespace A366833.P5308282873906407344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024620 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A366833.P5308282873906407344

noncomputable section

/-- A366833: Number of times n appears in A362965 (number of primes <= the n-th prime power).

Offset 1, canonical program `A366833.P5308282873906407344`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A366833 (n : ℕ) : ℤ :=
  A366833.P5308282873906407344.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A366833.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A367076.P8374161418526432458

`abs(∑[A365968(n)])`
-/

namespace A367076.P8374161418526432458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A367076.P8374161418526432458

noncomputable section

/-- A367076: Irregular triangle read by rows: T(n,k) (0 <= n, 0 <= k < 2^n). T(n,k) = -Sum_{i=0..k} A365968(n,i).

Offset 0, canonical program `A367076.P8374161418526432458`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A367076 (n : ℕ) : ℤ :=
  A367076.P8374161418526432458.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8191 terms. -/
def A367076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368170.P5620048226902129238

`A057521(A350390(1+n))`
-/

namespace A368170.P5620048226902129238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A350390 (1 + n)).toNat

end

end A368170.P5620048226902129238

noncomputable section

/-- A368170: The largest cubefull exponentially odd divisor of n.

Offset 1, canonical program `A368170.P5620048226902129238`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368170 (n : ℕ) : ℤ :=
  A368170.P5620048226902129238.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A368170.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368251.P3199248697924659099

`A327527(n+1)-A034444(n+1)`
-/

namespace A368251.P3199248697924659099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327527 (n + 1) - A034444 (n + 1)

end

end A368251.P3199248697924659099

noncomputable section

/-- A368251: The number of nonsquarefree divisors of n that are powers of squarefree numbers (A072777).

Offset 1, canonical program `A368251.P3199248697924659099`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327527, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368251 (n : ℕ) : ℤ :=
  A368251.P3199248697924659099.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327527, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368251.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A368886.P14991200523902703916

`(n+1)/A368884(n+1)`
-/

namespace A368886.P14991200523902703916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A368884 (n + 1) : ℚ)

end

end A368886.P14991200523902703916

noncomputable section

/-- A368886: The largest unitary divisor of n without an exponent 2 in its prime factorization (A337050).

Offset 1, canonical program `A368886.P14991200523902703916`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368884, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368886 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A368886.P14991200523902703916.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368884, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A368886.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A369668.P5612230000554155073

`2*A359151(n+1)`
-/

namespace A369668.P5612230000554155073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A359151 (n + 1)

end

end A369668.P5612230000554155073

noncomputable section

/-- A369668: Numbers that have an even number of prime factors with multiplicity and whose arithmetic derivative is of the form 4k+3.

Offset 1, canonical program `A369668.P5612230000554155073`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359151, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369668 (n : ℕ) : ℤ :=
  A369668.P5612230000554155073.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359151, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A369668.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A371442.P15531083043545525994

`A309952(A377414(n))`
-/

namespace A371442.P15531083043545525994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309952 (A377414 n).toNat

end

end A371442.P15531083043545525994

noncomputable section

/-- A371442: For any positive integer n with binary digits (b_1, ..., b_w) (where b_1 = 1), the binary digits of a(n) are (b_1, b_3, ..., b_{2*ceiling(w/2)-1}); a(0) = 0.

Offset 0, canonical program `A371442.P15531083043545525994`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A371442 (n : ℕ) : ℤ :=
  A371442.P15531083043545525994.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. -/
def A371442.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A382810.P4884462468454984887

`∩[A023201(n+1)-10, A023201(n+1)]`
-/

namespace A382810.P4884462468454984887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1) - 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382810.P4884462468454984887

noncomputable section

/-- A382810: Primes p such that p + 6, p + 10 and p + 16 are also primes.

Offset 1, canonical program `A382810.P4884462468454984887`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 349 terms. -/
def A382810 (n : ℕ) : ℤ :=
  (A382810.P4884462468454984887.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 349 terms. -/
def A382810.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A384049.P5600847465475785129

`A047994(A360540(n+1))*A360539(n+1)`
-/

namespace A384049.P5600847465475785129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A360540 (n + 1)).toNat * A360539 (n + 1)

end

end A384049.P5600847465475785129

noncomputable section

/-- A384049: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is cubefree.

Offset 1, canonical program `A384049.P5600847465475785129`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360539, A360540, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384049 (n : ℕ) : ℤ :=
  A384049.P5600847465475785129.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360539, A360540, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384049.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384051.P18231078601636617959

`A047994(A360539(n+1))*A360540(n+1)`
-/

namespace A384051.P18231078601636617959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A360539 (n + 1)).toNat * A360540 (n + 1)

end

end A384051.P18231078601636617959

noncomputable section

/-- A384051: The number of integers k from 1 to n such that the greatest divisor of k that is a unitary divisor of n is a cubefull number.

Offset 1, canonical program `A384051.P18231078601636617959`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360539, A360540, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384051 (n : ℕ) : ℤ :=
  A384051.P18231078601636617959.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360539, A360540, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A384051.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A384526.P14913814158777160632

`∩[A023201(n+1)-14, A023201(n+1)]`
-/

namespace A384526.P14913814158777160632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1) - 14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384526.P14913814158777160632

noncomputable section

/-- A384526: Primes p such that p + 6, p + 14 and p + 20 are also primes.

Offset 1, canonical program `A384526.P14913814158777160632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 390 terms. -/
def A384526 (n : ℕ) : ℤ :=
  (A384526.P14913814158777160632.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 390 terms. -/
def A384526.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A385137.P2260347267990170437

`∑{d}[1+n, A372671(#)]`
-/

namespace A385137.P2260347267990170437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A372671 d

end

end A385137.P2260347267990170437

noncomputable section

/-- A385137: The sum of divisors d of n such that n/d is a 3-smooth number (A003586).

Offset 1, canonical program `A385137.P2260347267990170437`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385137 (n : ℕ) : ℤ :=
  A385137.P2260347267990170437.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A385137.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A391074.P7066598171140740427

`A000005(n+1)-A327527(n+1)`
-/

namespace A391074.P7066598171140740427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A327527 (n + 1)

end

end A391074.P7066598171140740427

noncomputable section

/-- A391074: a(n) is the number of nonuniform divisors of n.

Offset 1, canonical program `A391074.P7066598171140740427`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327527, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391074 (n : ℕ) : ℤ :=
  A391074.P7066598171140740427.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327527, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A391074.provenance : SequenceMachineLib.Provenance := .conditional

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

/-! ## A359371.P15865394443635031041

`lt[0, A359370(n+1)]+1`
-/

namespace A359371.P15865394443635031041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359370 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A359371.P15865394443635031041

noncomputable section

/-- A359371: Nonmultiples of 4 that have an even number of prime factors (with multiplicity).

Offset 1, canonical program `A359371.P15865394443635031041`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359371 (n : ℕ) : ℤ :=
  (A359371.P15865394443635031041.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A359371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360014.P9859742446175900433

`∩[comp[A356862(n+1)], A360015(n+1)]`
-/

namespace A360014.P9859742446175900433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356862 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A360014.P9859742446175900433

noncomputable section

/-- A360014: Numbers whose exponent of 2 in their canonical prime factorization is equal to the maximum of the other exponents.

Offset 1, canonical program `A360014.P9859742446175900433`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4278 terms. -/
def A360014 (n : ℕ) : ℤ :=
  (A360014.P9859742446175900433.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4278 terms. -/
def A360014.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A360639.P11777009454422486410

`∩[A175522(n+1)-2, A175522(n+1)]`
-/

namespace A360639.P11777009454422486410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175522 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175522 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360639.P11777009454422486410

noncomputable section

/-- A360639: Numbers k such that k and k+2 are both A000120-perfect numbers (A175522).

Offset 1, canonical program `A360639.P11777009454422486410`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A360639 (n : ℕ) : ℤ :=
  (A360639.P11777009454422486410.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 465 terms. -/
def A360639.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A363258.P12380158314372331947

`A363903(Δ[n²])`
-/

namespace A363258.P12380158314372331947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363903 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A363258.P12380158314372331947

noncomputable section

/-- A363258: Expansion of Sum_{k>0} k * x^(2*k-1) / (1 - x^(4*k-3)).

Offset 1, canonical program `A363258.P12380158314372331947`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A363258 (n : ℕ) : ℤ :=
  A363258.P12380158314372331947.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A363258.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364020.P9511425186973274188

`∑{d}[n+1, A000010(#)*A364044((n+1)/#)]`
-/

namespace A364020.P9511425186973274188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A364044 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A364020.P9511425186973274188

noncomputable section

/-- A364020: Expansion of Sum_{k>0} k * x^(2*k) / (1 + x^(5*k)).

Offset 1, canonical program `A364020.P9511425186973274188`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364020 (n : ℕ) : ℤ :=
  A364020.P9511425186973274188.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A364020.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A364214.P5493688075755003813

`A050292(eq[n, A030101(A028310(n))])`
-/

namespace A364214.P5493688075755003813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A364214.P5493688075755003813

noncomputable section

/-- A364214: Numbers whose canonical representation as a sum of distinct Jacobsthal numbers (A280049) is palindromic.

Offset 1, canonical program `A364214.P5493688075755003813`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. -/
def A364214 (n : ℕ) : ℤ :=
  A364214.P5493688075755003813.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. -/
def A364214.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A368406.P237978820823627177

`eq[5, a(n-1)+A064179(n)]` with `a(0)=-4, a(1)=6`
-/

namespace A368406.P237978820823627177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-4, 6] fun n f2 =>
  f2 (n - 1) + A064179 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A368406.P237978820823627177

noncomputable section

/-- A368406: Numbers k such that A368405(k) = 0.

Offset 1, canonical program `A368406.P237978820823627177`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 780 terms. -/
def A368406 (n : ℕ) : ℤ :=
  (A368406.P237978820823627177.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 780 terms. -/
def A368406.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A372885.P2835536282125461072

`A000040(A372886(1+n))`
-/

namespace A372885.P2835536282125461072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A372886 (1 + n)).toNat

end

end A372885.P2835536282125461072

noncomputable section

/-- A372885: Prime numbers whose binary indices (positions of ones in reversed binary expansion) sum to another prime number.

Offset 1, canonical program `A372885.P2835536282125461072`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2535 terms. -/
def A372885 (n : ℕ) : ℤ :=
  A372885.P2835536282125461072.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2535 terms. -/
def A372885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A373316.P9821015898385036712

`filter[filter[2*(n+1), A294930(#)]-2, A294930(#)]`
-/

namespace A373316.P9821015898385036712
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => A294930 (f2 j) = 1) n) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294930 (f1 j).toNat = 1) n)

end

end A373316.P9821015898385036712

noncomputable section

/-- A373316: Numbers k such that k and k+2 are both primitive abundant numbers.

Offset 1, canonical program `A373316.P9821015898385036712`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A373316 (n : ℕ) : ℤ :=
  A373316.P9821015898385036712.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. -/
def A373316.provenance : SequenceMachineLib.Provenance := .conjectured

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

/-! ## A358839.P16533912957850485554

`A359370(n+1)-A359372(n+1)`
-/

namespace A358839.P16533912957850485554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359370 (n + 1) - A359372 (n + 1)

end

end A358839.P16533912957850485554

noncomputable section

/-- A358839: Dirichlet inverse of A353627, the characteristic function of the squarefree numbers multiplied by binary powers.

Offset 1, canonical program `A358839.P16533912957850485554`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359370, A359372, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358839 (n : ℕ) : ℤ :=
  A358839.P16533912957850485554.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359370, A359372, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A358839.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A365785.P6855440073540334258

`A387944(A365783(n+1))`
-/

namespace A365785.P6855440073540334258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387944 (A365783 (n + 1)).toNat

end

end A365785.P6855440073540334258

noncomputable section

/-- A365785: a(n) = k such that A120944(k) is the squarefree kernel of A126706(n).

Offset 1, canonical program `A365785.P6855440073540334258`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7774 terms. -/
def A365785 (n : ℕ) : ℤ :=
  A365785.P6855440073540334258.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7774 terms. -/
def A365785.provenance : SequenceMachineLib.Provenance := .conjectured

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

